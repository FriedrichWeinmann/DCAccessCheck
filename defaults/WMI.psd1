@{
    Defaults = @(
        @{
            Namespace        = 'ROOT'
            Identity         = 'S-1-5-11'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/mdm'
            Identity         = 'S-1-5-11'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP'
            Identity         = 'S-1-5-11'
            Rights           = 'Enable Account, Execute Methods, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/ServerManager'
            Identity         = 'S-1-5-11'
            Rights           = 'Enable Account, Execute Methods, Provider Write, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/SMB'
            Identity         = 'S-1-5-11'
            Rights           = 'Enable Account, Execute Methods, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/mdm/dmmap'
            Identity         = 'S-1-5-18'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP'
            Identity         = 'S-1-5-18'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/User'
            Identity         = 'S-1-5-18'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/User/S_1_5_21_3710217024_1956168353_80067308_500'
            Identity         = 'S-1-5-18'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/Computer'
            Identity         = 'S-1-5-18'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/PEH'
            Identity         = 'S-1-5-18'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/InventoryLogging'
            Identity         = 'S-1-5-18'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/ManagementTools'
            Identity         = 'S-1-5-18'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/DesiredStateConfiguration'
            Identity         = 'S-1-5-18'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT'
            Identity         = 'S-1-5-19'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/mdm'
            Identity         = 'S-1-5-19'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/Security/MicrosoftTpm'
            Identity         = 'S-1-5-19'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/Computer'
            Identity         = 'S-1-5-19'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/AccessLogging'
            Identity         = 'S-1-5-19'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/ServiceModel'
            Identity         = 'S-1-5-19'
            Rights           = 'Enable Account'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/ManagementTools'
            Identity         = 'S-1-5-19'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/ServerManager'
            Identity         = 'S-1-5-19'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT'
            Identity         = 'S-1-5-20'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/mdm'
            Identity         = 'S-1-5-20'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/Security/MicrosoftTpm'
            Identity         = 'S-1-5-20'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP'
            Identity         = 'S-1-5-20'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/User'
            Identity         = 'S-1-5-20'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/User/S_1_5_21_3710217024_1956168353_80067308_500'
            Identity         = 'S-1-5-20'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/Computer'
            Identity         = 'S-1-5-20'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/PEH'
            Identity         = 'S-1-5-20'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/AccessLogging'
            Identity         = 'S-1-5-20'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/InventoryLogging'
            Identity         = 'S-1-5-20'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/ServiceModel'
            Identity         = 'S-1-5-20'
            Rights           = 'Enable Account'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/DesiredStateConfigurationProxy'
            Identity         = 'S-1-5-20'
            Rights           = 'Enable Account, Execute Methods'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/ManagementTools'
            Identity         = 'S-1-5-20'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/ServerManager'
            Identity         = 'S-1-5-20'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/DesiredStateConfiguration'
            Identity         = 'S-1-5-20'
            Rights           = 'Enable Account, Execute Methods, Provider Write'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/subscription'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/subscription/ms_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/DEFAULT'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/DEFAULT/ms_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/MicrosoftDfs'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/MicrosoftDfs'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Enable Account, Execute Methods, Provider Write, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/MicrosoftDfs/ms_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/MicrosoftDfs/ms_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Enable Account'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/mdm'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/mdm'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/mdm/dmmap'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/mdm/dmmap'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/mdm/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/Security'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/Security/MicrosoftTpm'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/Security/MicrosoftTpm'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/power'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/power/ms_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/ms_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/TerminalServices'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/TerminalServices/ms_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/msdtc'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Cli'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Cli/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/MicrosoftActiveDirectory'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/SECURITY'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/User'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/User'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/User/ms_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/User/S_1_5_21_3710217024_1956168353_80067308_500'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/User/S_1_5_21_3710217024_1956168353_80067308_500'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/Computer'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/Computer'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/RSOP/Computer/ms_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/MicrosoftDNS'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/PEH'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/PEH'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/StandardCimv2'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/StandardCimv2/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/WMI'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/WMI/ms_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/AccessLogging'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/AccessLogging'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/directory'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/directory/LDAP'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/directory/LDAP/ms_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Policy'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Policy/ms_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/InventoryLogging'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/InventoryLogging'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/InventoryLogging/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Interop'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Interop/ms_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Hardware'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Hardware/ms_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/ServiceModel'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/ServiceModel'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/HomeNet'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/protectionManagement'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/RemoteAccess'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/RemoteAccess/Client'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/RemoteAccess/Client/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Dns'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Dns/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Powershellv3'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Powershellv3/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/DeviceGuard'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/DeviceGuard/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/TaskScheduler'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/TaskScheduler/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/DesiredStateConfigurationProxy'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/DesiredStateConfigurationProxy'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/DesiredStateConfigurationProxy/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/DesiredStateConfigurationProxy/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Enable Account'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/ManagementTools'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/ManagementTools'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/ManagementTools/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/ManagementTools/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Enable Account'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/SmbWitness'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Dfsr'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Dfsr'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Enable Account, Execute Methods, Provider Write, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Dfsr/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Dfsr/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Enable Account'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Wdac'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Wdac/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/winrm'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/ServerManager'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/ServerManager'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/ServerManager/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/AppBackgroundTask'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/AppBackgroundTask/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/SDNDiagnostics'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/SDNDiagnostics/Server'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/SDNDiagnostics/Server/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/PS_MMAgent'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/PS_MMAgent/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Storage'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Storage/PT'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Storage/PT/Alt'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Storage/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Storage/Providers_v2'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/HardwareManagement'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/HardwareManagement/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/SMB'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/SMB/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/EventTracingManagement'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/EventTracingManagement/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/DesiredStateConfiguration'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/DesiredStateConfiguration'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/DesiredStateConfiguration/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/DesiredStateConfiguration/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Enable Account'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/CI'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/CI/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/dfsn'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/dfsn/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/DeliveryOptimization'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Defender'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Windows/Defender/MS_409'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/SecurityClient'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Microsoft/Uev'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/Appv'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/ServiceModel'
            Identity         = 'S-1-5-32-568'
            Rights           = 'Enable Account'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/TerminalServices'
            Identity         = 'S-1-5-32-575'
            Rights           = 'Enable Account, Execute Methods, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/TerminalServices'
            Identity         = 'S-1-5-32-576'
            Rights           = 'Enable Account, Execute Methods, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
        @{
            Namespace        = 'ROOT/CIMV2/TerminalServices'
            Identity         = 'S-1-5-32-577'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }

        # The Builtin wcmsvc (Windows Connection Manager) service account
        @{
            Namespace        = 'ROOT/Microsoft/HomeNet'
            Identity         = 'S-1-5-80-4155767994-3874329934-3800885181-2130851812-726865888'
            Rights           = 'Edit Security, Enable Account, Execute Methods, Full Write, Partial Write, Provider Write, Read Security, Traverse'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit'
            PropagationFlags = 'None'
        }
    )
}