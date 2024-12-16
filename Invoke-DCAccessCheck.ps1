[CmdletBinding(DefaultParameterSetName = 'name')]
param (
    [Parameter(Mandatory = $true)]
    [ArgumentCompleter({
        (Get-ChildItem -Path "$PSScriptRoot\scans" -Filter *.ps1).BaseName
        })]
    [string[]]
    $Scan,

    [Parameter(Mandatory = $true, ParameterSetName = 'name')]
    [string[]]
    $Server,

	[Parameter(Mandatory = $true, ParameterSetName = 'all')]
	[switch]
	$All,

    [string]
    $Path,

    [PSCredential]
    $Credential,

    [switch]
    $PassThru,

    [switch]
    $IncludeDefault
)

$ErrorActionPreference = 'Stop'
trap {
    Write-Warning "Script failed: $_"
    throw $_
}

#region Functions
function Get-DomainData {
    [outputtype([hashtable])]
    [CmdletBinding()]
    param (
        [string[]]
        $Server,

        [pscredential]
        $Credential
    )

    $param = @{}
    if ($Credential) { $param.Credential = $Credential }
    $results = Invoke-Command @param -ComputerName $Server -ScriptBlock {
        [PSCustomObject]@{
            ComputerName    = $env:COMPUTERNAME
            Server          = $PSSenderInfo.ConnectionString -replace '^.+?//|:\d{1,5}/wsman.+'
            DomainSID       = ''
            DomainName      = (Get-CimInstance -ClassName win32_ComputerSystem).Domain
            DefaultPolicies = @()
        }
    }
    $byDomain = $results | Group-Object -Property DomainName
    $domainSIDs = @{}
    $domainPolicies = @{ }
    foreach ($domain in $byDomain.Name) {
        $domainSIDs[$domain] = (Get-ADDomain -Server $domain @param).DomainSID
        $domainPolicies[$domain] = (Get-ADObject -Server $domain @param -LDAPFilter '(&(objectCategory=groupPolicyContainer)(isCriticalSystemObject=TRUE))' -Properties CN).CN
    }
    $resultHash = @{ }
    foreach ($result in $results) {
        $result.DomainSID = $domainSIDs[$result.DomainName]
        $result.DefaultPolicies = $domainPolicies[$result.domainName]
        $resultHash[$result.Server] = $result
    }
    $resultHash
}

function Resolve-TargetComputer {
	[CmdletBinding()]
	param (
		[AllowEmptyCollection()]
		[AllowNull()]
		[string[]]
		$Server,

		[AllowNull()]
		[pscredential]
		$Credential,

		[switch]
		$All
	)

	if ($Server) {
		return $Server
	}

	$param = @{}
	if ($Credential) { $param.Credential = $Credential }

	(Get-ADComputer @param -LdapFilter '(primaryGroupID=516)').DNSHostName
}

function Import-ScanConfiguration {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true)]
        [string]
        $Path
    )

    Import-PowerShellDataFile -Path $Path
}

function Invoke-Scan {
    [CmdletBinding()]
    param (
        [string]
        $Name,

        [string]
        $Path,

        [string[]]
        $Server,

        [PSCredential]
        $Credential,

        [hashtable]
        $DomainData
    )

    $serverString = $Server -Join ', '
    if ($Server.Count -gt 4) { $serverString = '{0}, ...' -f ($Server[0..3] -join ', ') }
    Write-Host "Executing Scan $Name against $serverString ($($Server.Count) total)"
    & "$Path\$Name.ps1" -Server $Server -Credential $Credential -DomainData $DomainData
}

function Get-DefaultValue {
    [CmdletBinding()]
    param (
        [string]
        $Path,

        [hashtable]
        $Configuration
    )

    foreach ($defaultPath in $Configuration.DefaultPaths) {
        $importPath = Join-Path -Path $Path -ChildPath $defaultPath
        if (-not (Test-Path -Path $importPath)) {
            Write-Warning "Unable to find defaults for scan $($Scan): $importPath`nThis will likely yield an excessive number of results."
            continue
        }
        $data = Import-PowerShellDataFile -Path $importPath -ErrorAction Stop
        $data.Defaults
    }

}

function Compare-ScanData {
    [CmdletBinding()]
    param (
        $Data,

        [AllowEmptyCollection()]
        [AllowNull()]
        $Defaults,

        [hashtable]
        $Configuration,

        [hashtable]
        $DomainData,

        [switch]
        $IncludeDefault
    )

    :main foreach ($datum in $Data) {
        $domain = $DomainData[$datum.Server]
        foreach ($property in $Configuration.DomainSIDResolve) {
            $datum.$property = $datum.$property -replace $domain.DomainSID, '%DomainSID%'
            $isDefault = $false
            :defaults foreach ($defaultEntry in $Defaults) {
                foreach ($property in $Configuration.Properties) {
                    if ($datum.$property -ne $defaultEntry.$property) {
                        continue defaults
                    }
                }

                if (-not $IncludeDefault) { continue main }
                $isDefault = $true
                break
            }

            Add-Member -InputObject $datum -MemberType NoteProperty -Name IsDefault -Value $isDefault -Force
            $datum
        }
    }
}

function Export-ScanResult {
    [CmdletBinding()]
    param (
        $Data,

        [AllowEmptyString()]
        [string]
        $Path,

        [string]
        $Scan
    )

    if (-not $Path) { return }

    $exportData = $Data
    if (-not $exportData) { $exportData = [PSCustomObject]@{ NoData = '<NoData>' } }
    $exportPath = Join-Path -Path $Path -ChildPath "$scanName-$(Get-Date -Format yyyy-MM-dd).csv"
    $exportData | Export-Csv -Path $exportPath
}
#endregion Functions

$actualServer = Resolve-TargetComputer -All:$All -Server $Server -Credential $Credential
$domainData = Get-DomainData -Server $actualServer -Credential $Credential
foreach ($scanName in $Scan) {
    $scanConfig = Import-ScanConfiguration -Path "$PSScriptRoot\scans\$scanName.psd1"
    $data = Invoke-Scan -Name $scanName -Path "$PSScriptRoot\scans" -Server $actualServer -Credential $Credential -DomainData $domainData
    $defaults = Get-DefaultValue -Path $PSScriptRoot -Configuration $scanConfig
    $results = Compare-ScanData -Data $data -Defaults $defaults -Configuration $scanConfig -DomainData $domainData -IncludeDefault:$IncludeDefault
    Export-ScanResult -Data $results -Path $Path -Scan $scanName
    if ($PassThru -or -not $Path) { $results }
}