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
    function Get-CimNamespace {
        [CmdletBinding()]
        param (
            [Parameter(Mandatory = $true)]
            [string]
            $Path,

            [switch]
            $Recurse,

            [Microsoft.Management.Infrastructure.CimSession]
            $CimSession
        )

        $cimParam = @{}
        if ($CimSession) { $cimParam.CimSession = $CimSession }

        if ($Path -eq 'ROOT') {
            $result = [PSCustomObject]@{
                PSTypeName = 'CIM.Namespace'
                Name       = 'ROOT'
                Parent     = ''
                FullName   = 'ROOT'
            }
        }
        else {
            $parent = $Path -replace '/[^/]+$'
            $name = $Path -replace '^.+/'
            $namespace = Get-CimInstance @cimParam -Namespace $parent -ClassName __NAMESPACE | Where-Object Name -EQ $name
            if (-not $namespace) {
                Write-Error "CIM Namespace not found: $Path"
                return
            }

            $result = [PSCustomObject]@{
                PSTypeName = 'CIM.Namespace'
                Name       = $namespace.Name
                Parent     = $namespace.CimClass.CimSystemProperties.Namespace
                FullName   = '{0}/{1}' -f $namespace.CimClass.CimSystemProperties.Namespace, $namespace.Name
            }
        }
        $result

        if (-not $Recurse) {
            return
        }

        foreach ($namespace in Get-CimInstance @cimParam -Namespace $result.FullName -ClassName __NAMESPACE) {
            Get-CimNamespace @cimParam -Path ('{0}/{1}' -f $namespace.CimClass.CimSystemProperties.Namespace, $namespace.Name) -Recurse
        }
    }

    function Get-CimAcl {
        <#
        Permissions:
        - Execute Methods: CreateFiles | 2
        - Full Write: CreateDirectories | 4
        - Partial Write: ReadExtendedAttributes | 8
        - Provider Write: WriteExtendedAttributes | 16
        - Enable Account: ListDirectory | 1
        - Remote Enable: Traverse | 32
        - Read Security: ReadPermissions | 131072
        - Edit Security: ChangePermissions | 262144
        #>
        [CmdletBinding()]
        param (
            [Parameter(Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
            [Alias('FullName')]
            [string[]]
            $Namespace,

            [Microsoft.Management.Infrastructure.CimSession]
            $CimSession
        )

        begin {
            $cimParam = @{}
            $computerName = $env:COMPUTER
            if ($CimSession) {
                $cimParam.CimSession = $CimSession
                $computerName = $CimSession.ComputerName
            }

        }
        process {
            foreach ($entry in $Namespace) {
                $acl = [System.Security.AccessControl.DirectorySecurity]::new()
                $securityData = Invoke-CimMethod @cimParam -Namespace $entry -ClassName __SystemSecurity -MethodName GetSD
                $acl.SetSecurityDescriptorBinaryForm($securityData.SD)

                Add-Member -InputObject $acl -MemberType NoteProperty -Name ComputerName -Value $computerName -Force
                Add-Member -InputObject $acl -MemberType NoteProperty -Name Namespace -Value $entry -Force
                $acl
            }
        }
    }

    function Get-Access {
        [CmdletBinding()]
        param (
            $Acl,

            [string]
            $Server
        )

        # Owner
        [PSCustomObject]@{
            Server           = $Server
            Namespace        = $Acl.Namespace
            Identity         = "$($Acl.GetOwner([System.Security.Principal.SecurityIdentifier]))"
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $false
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }

        <#
        Permissions:
        - Execute Methods: CreateFiles | 2
        - Full Write: CreateDirectories | 4
        - Partial Write: ReadExtendedAttributes | 8
        - Provider Write: WriteExtendedAttributes | 16
        - Enable Account: ListDirectory | 1
        - Remote Enable: Traverse | 32
        - Read Security: ReadPermissions | 131072
        - Edit Security: ChangePermissions | 262144
        #>
        $accessMask = @{
            'Enable Account'  = 1
            'Execute Methods' = 2
            'Full Write'      = 4
            'Partial Write'   = 8
            'Provider Write'  = 16
            'Traverse'        = 32
            'Read Security'   = 131072
            'Edit Security'   = 262144
        }

        # Access Rules
        foreach ($ace in $Acl.GetAccessRules($true, $false, [System.Security.Principal.SecurityIdentifier])) {
            $rights = $accessMask.GetEnumerator().Where{ $_.Value -band $ace.FileSystemRights }.ForEach{ $_.Key }
            [PSCustomObject]@{
                Server           = $Server
                Namespace        = $Acl.Namespace
                Identity         = "$($ace.IdentityReference)"
                Rights           = ($rights | Sort-Object) -join ', '
                Type             = $ace.AccessControlType -as [string]
                Inherited        = $ace.IsInherited
                InheritanceFlags = $ace.InheritanceFlags -as [string]
                PropagationFlags = $ace.PropagationFlags -as [string]
            }
        }
    }
    #endregion Functions

    $serverName = $PSSenderInfo.ConnectionString -replace '^.+?//|:\d{1,5}/wsman.+'

    $access = Get-CimNamespace -Path 'ROOT' -Recurse | Get-CimAcl
    foreach ($entry in $access) {
        Get-Access -Acl $entry -Server $serverName
    }
}