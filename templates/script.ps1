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

    throw "Not implemented yet!"
}