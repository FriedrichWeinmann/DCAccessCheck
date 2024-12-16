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
    function Get-Access {
        [CmdletBinding()]
        param (
            [string]
            $Path,

            [string]
            $PathType,

            [string]
            $Server,

            [switch]
            $IncludeInherited
        )

        $acl = Get-Acl -Path $Path
        [PSCustomObject]@{
            Server           = $Server
            PathType         = $PathType
            Path             = $Path
            Identity         = "$($acl.GetOwner([System.Security.Principal.SecurityIdentifier]))"
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $false
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }

        foreach ($ace in $acl.GetAccessRules($true, $IncludeInherited.ToBool(), [System.Security.Principal.SecurityIdentifier])) {
            [PSCustomObject]@{
                Server           = $Server
                PathType         = $PathType
                Path             = $Path
                Identity         = "$($ace.IdentityReference)"
                Rights           = $ace.FileSystemRights -as [string]
                Type             = $ace.AccessControlType -as [string]
                Inherited        = $ace.IsInherited
                InheritanceFlags = $ace.InheritanceFlags -as [string]
                PropagationFlags = $ace.PropagationFlags -as [string]
            }
        }
    }
    #endregion Functions

    $serverName = $PSSenderInfo.ConnectionString -replace '^.+?//|:\d{1,5}/wsman.+'

    $sysvolShare = Get-SmbShare -Name SYSVOL -ErrorAction SilentlyContinue
    if (-not $sysvolShare) {
        Write-Warning "$serverName ($env:COMPUTERNAME): No Sysvol share found!"
        return
    }

    # Root Folder
    Get-Access -Path $sysvolShare.Path -PathType Sysvol -Server $serverName -IncludeInherited

    # Domain Folders
    $domainRoots = Get-ChildItem -Path $sysvolShare.Path
    foreach ($domainRoot in $domainRoots) {
        Get-Access -Path $domainRoot.FullName -PathType DomainRoot -Server $serverName
    }

    # Content Folders & Files
    $types = @{
        $true  = 'Directory'
        $false = 'File'
    }
    foreach ($domainRoot in $domainRoots) {
        Get-ChildItem -LiteralPath $domainRoot.FullName -Force -Recurse | ForEach-Object {
            $pathType = $types[$_.PSIsContainer]
            if ($_.FullName -eq "$($domainRoot.FullName)\DfsrPrivate") { $pathType = 'DfsrRoot' }
            elseif ($_.FullName -eq "$($domainRoot.FullName)\Policies") { $pathType = 'GposRoot' }
            elseif ($_.FullName -eq "$($domainRoot.FullName)\Scripts") { $pathType = 'ScriptsDir' }
            elseif ($_.FullName -match "^$([regex]::Escape("$($domainRoot.FullName)\Policies"))\\\{(([0-9a-fA-F]){8}-([0-9a-fA-F]){4}-([0-9a-fA-F]){4}-([0-9a-fA-F]){4}-([0-9a-fA-F]){12})\}$") {
                $pathType = 'GpoDirectory'
                if ($_.Name -in $DomainData[$serverName].DefaultPolicies) { $pathType = 'DefaultPolicyDir' }
            }
            Get-Access -Path $_.FullName -PathType $pathType -Server $serverName
        }
    }
}