[CmdletBinding()]
param (
    [Parameter(Mandatory = $true)]
    [string[]]
    $Server,

    [PSCredential]
    $Credential,

    [hashtable]
    $DomainData
)

$param = @{ ComputerName = $Server }
if ($Credential) { $param.Credential = $Credential }

Invoke-Command @param -ArgumentList $DomainData -ScriptBlock {
    param (
        $DomainData
    )

    #region Functions
    function Get-DComApplication {
        [CmdletBinding()]
        param (
            [string[]]
            $ComputerName,

            [pscredential]
            $Credential
        )

        $param = @{}
        if ($ComputerName) { $param.ComputerName = $ComputerName }
        if ($Credential) { $param.Credential = $Credential }

        Get-CimInstance @param -ClassName Win32_DCOMApplication | ForEach-Object {
            [PSCustomObject]@{
                ComputerName = $_.CimSystemProperties.ServerName
                AppID        = $_.AppID
                Name         = $_.Name
                Caption      = $_.Caption
                Description  = $_.Description
                Object       = $_
            }
        }
    }

    function Get-DComPermission {
        [CmdletBinding()]
        param(
            [Parameter(Mandatory = $true, ValueFromPipelineByPropertyName = $true, ValueFromPipeline = $true)]
            [Alias("AppID")]
            [string[]]
            $ApplicationID,

            [Parameter(ValueFromPipelineByPropertyName = $true)]
            [ValidateSet("Launch", "Access")]
            [string[]]
            $Type = @('Launch', 'Access'),

            [string]
            $Server = $env:COMPUTERNAME
        )

        begin {
            New-PSDrive -PSProvider Registry -Root HKEY_CLASSES_ROOT -Name HKCR -Scope Local -ErrorAction SilentlyContinue | Out-Null

            function Resolve-Right {
                [CmdletBinding()]
                param (
                    [string]
                    $Mask,

                    [string]
                    $Type
                )

                $rights = @{
                    Execute        = 1
                    ExecuteLocal   = 2
                    ExecuteRemote  = 4
                    ActivateLocal  = 8
                    ActivateRemote = 16
                }

                # When -band on this returns 1, it's correct
                $extendedRights = @{
                    ExecuteLocal   = 1 + 4 + 8 + 16  # 29
                    ExecuteRemote  = 1 + 2 + 8 + 16 # 27
                    ActivateLocal  = 1 + 2 + 4 + 16 # 23
                    ActivateRemote = 1 + 2 + 4 + 8 # 15
                }

                switch ($Type) {
                    'Access' {
                        if (
                            ($Mask -band $rights.ExecuteLocal) -or
                            (($Mask -band $extendedRights.ExecuteLocal) -eq 1)
                        ) { 'LocalAccess' }

                        if (
                            ($Mask -band $rights.ExecuteRemote) -or
                            (($Mask -band $extendedRights.ExecuteRemote) -eq 1)
                        ) { 'RemoteAccess' }
                    }
                    'Launch' {
                        if (
                            ($Mask -band $rights.ExecuteLocal) -or
                            (($Mask -band $extendedRights.ExecuteLocal) -eq 1)
                        ) { 'LocalLaunch' }

                        if (
                            ($Mask -band $rights.ExecuteRemote) -or
                            (($Mask -band $extendedRights.ExecuteRemote) -eq 1)
                        ) { 'RemoteLaunch' }

                        if (
                            ($Mask -band $rights.ActivateLocal) -or
                            (($Mask -band $extendedRights.ActivateLocal) -eq 1)
                        ) { 'LocalActivation' }

                        if (
                            ($Mask -band $rights.ActivateRemote) -or
                            (($Mask -band $extendedRights.ActivateRemote) -eq 1)
                        ) { 'RemoteActivation' }
                    }
                    default {
                        throw "Unexpected permission type: $Type"
                    }
                }
            }

        }
        process {
            foreach ($appID in $ApplicationID) {
                $regkey = Get-Item -Path "HKCR:\AppID\$appID"

                try {
                    $properties = Get-ItemProperty -Path $regkey.PSPath -ErrorAction Stop
                }
                catch {
                    Write-Warning -Message "[$Server] Error accessing registry key $regkey - $_"
                    continue
                }

                foreach ($permType in $Type) {
                    if (-not $properties."$($permType)Permission") { continue }

                    $descriptor = [System.Security.AccessControl.RawSecurityDescriptor]::new($properties."$($permType)Permission", 0)

                    [PSCustomObject]@{
                        Server        = $Server
                        ApplicationID = $appID
                        Identity      = $descriptor.Owner
                        Rights        = "Owner$($permType)"
                        Type          = 'Own'
                        AccessMask    = 0
                    }

                    foreach ($accessRule in $descriptor.DiscretionaryAcl) {
                        [PSCustomObject]@{
                            Server        = $Server
                            ApplicationID = $appID
                            Identity      = $accessRule.SecurityIdentifier -as [string]
                            Rights        = (Resolve-Right -Mask $accessRule.AccessMask -Type $permType | Sort-Object) -join ', '
                            Type          = $accessRule.AceType -as [string]
                            AccessMask    = $accessRule.AccessMask
                        }
                    }
                }
            }
        }
    }
    #endregion Functions

    $serverName = $PSSenderInfo.ConnectionString -replace '^.+?//|:\d{1,5}/wsman.+'

    Get-DComApplication | Get-DComPermission -Server $serverName
}