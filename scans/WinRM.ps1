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

    $serverName = $PSSenderInfo.ConnectionString -replace '^.+?//|:\d{1,5}/wsman.+'
    $sessionConfigurations = Get-PSSessionConfiguration
    foreach ($configuration in $sessionConfigurations) {
        [PSCustomObject]@{
            Server         = $serverName
            # Different PS7 Version can be registered in parallel but will be treated as one from scanning perspective
            Name           = $configuration.Name -replace '^PowerShell\.(\d+)\.\d+\.\d+$', 'PowerShell.$1'
            NameActual     = $configuration.Name
            PSVersion      = $configuration.PSVersion
            Enabled        = $configuration.Enabled
            Sddl           = $configuration.SecurityDescriptorSddl
            Permission     = $configuration.Permission
            Architecture   = $configuration.Architecture
            # Different PS7 versions come with different Filenames, but they are all equally valid
            Filename       = $configuration.Filename -replace '%windir%\\system32\\PowerShell\\\d+\.\d+\.\d+\\pwrshplugin.dll', '%windir%\system32\PowerShell\*\pwrshplugin.dll'
            FilenameActual = $configuration.Filename
            RunAsUser      = $configuration.RunAsUser
        }
    }
}