@{
    Defaults = @(
        @{
            Name         = 'microsoft.powershell'
            PSVersion    = '5.1'
            Enabled      = 'true'
            Sddl         = 'O:NSG:BAD:P(A;;GA;;;BA)(A;;GA;;;IU)(A;;GA;;;RM)S:P(AU;FA;GA;;;WD)(AU;SA;GXGW;;;WD)'
            Architecture = '64'
            Filename     = '%windir%\system32\pwrshplugin.dll'
            RunAsUser    = ''
        }
        @{
            Name         = 'microsoft.powershell.workflow'
            PSVersion    = '5.1'
            Enabled      = 'true'
            Sddl         = 'O:NSG:BAD:P(A;;GA;;;BA)(A;;GA;;;RM)S:P(AU;FA;GA;;;WD)(AU;SA;GXGW;;;WD)'
            Architecture = '64'
            Filename     = '%windir%\system32\pwrshplugin.dll'
            RunAsUser    = ''
        }
        @{
            Name         = 'microsoft.powershell32'
            PSVersion    = '5.1'
            Enabled      = 'true'
            Sddl         = 'O:NSG:BAD:P(A;;GA;;;BA)(A;;GA;;;IU)(A;;GA;;;RM)S:P(AU;FA;GA;;;WD)(AU;SA;GXGW;;;WD)'
            Architecture = '32'
            Filename     = '%windir%\system32\pwrshplugin.dll'
            RunAsUser    = ''
        }
        @{
            Name         = 'microsoft.windows.servermanagerworkflows'
            PSVersion    = '3.0'
            Enabled      = 'true'
            Sddl         = 'O:NSG:BAD:P(A;;GA;;;BA)(A;;GA;;;IU)S:P(AU;FA;GA;;;WD)(AU;SA;GXGW;;;WD)'
            Architecture = '64'
            Filename     = 'C:\Windows\system32\pwrshplugin.dll'
            RunAsUser    = ''
        }
        @{
            Name         = 'PowerShell.7'
            PSVersion    = '7.4'
            Enabled      = 'True'
            Sddl         = 'O:NSG:BAD:P(A;;GA;;;BA)(A;;GA;;;RM)(A;;GA;;;IU)S:P(AU;FA;GA;;;WD)(AU;SA;GXGW;;;WD)'
            Architecture = '64'
            Filename     = '%windir%\system32\PowerShell\*\pwrshplugin.dll'
            RunAsUser    = ''
        }
    )
}