@{
    Defaults = @(
        #region Sysvol
        @{
            PathType         = 'Sysvol'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'Sysvol'
            Identity         = 'S-1-3-0'
            Rights           = '-536084480'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'Sysvol'
            Identity         = 'S-1-5-11'
            Rights           = '-1610612736'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'Sysvol'
            Identity         = 'S-1-5-11'
            Rights           = 'ReadAndExecute, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'Sysvol'
            Identity         = 'S-1-5-18'
            Rights           = '268435456'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'Sysvol'
            Identity         = 'S-1-5-18'
            Rights           = 'FullControl'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'Sysvol'
            Identity         = 'S-1-5-32-544'
            Rights           = '-536084480'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'Sysvol'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Write, ReadAndExecute, ChangePermissions, TakeOwnership, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'Sysvol'
            Identity         = 'S-1-5-32-549'
            Rights           = '-1610612736'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'Sysvol'
            Identity         = 'S-1-5-32-549'
            Rights           = 'ReadAndExecute, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        #endregion Sysvol

        #region DomainRoot
        @{
            PathType         = 'DomainRoot'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        #endregion DomainRoot

        #region Files
        @{
            PathType         = 'File'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        #endregion Files

        #region Directory
        @{
            PathType         = 'Directory'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        #endregion Directory

        #region DfsrRoot
        @{
            PathType         = 'DfsrRoot'
            Identity         = 'S-1-5-18'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        #endregion DfsrRoot

        #region ScriptsDir
        @{
            PathType         = 'ScriptsDir'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'ScriptsDir'
            Identity         = 'S-1-3-0'
            Rights           = '268435456'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'ScriptsDir'
            Identity         = 'S-1-5-11'
            Rights           = '-1610612736'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'ScriptsDir'
            Identity         = 'S-1-5-11'
            Rights           = 'ReadAndExecute, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'ScriptsDir'
            Identity         = 'S-1-5-18'
            Rights           = '268435456'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'ScriptsDir'
            Identity         = 'S-1-5-18'
            Rights           = 'FullControl'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'ScriptsDir'
            Identity         = 'S-1-5-32-544'
            Rights           = '268435456'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'ScriptsDir'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Write, ReadAndExecute, ChangePermissions, TakeOwnership, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'ScriptsDir'
            Identity         = 'S-1-5-32-549'
            Rights           = '-1610612736'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'ScriptsDir'
            Identity         = 'S-1-5-32-549'
            Rights           = 'ReadAndExecute, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        #endregion ScriptsDir

        #region GposRoot
        @{
            PathType         = 'GposRoot'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'GposRoot'
            Identity         = 'S-1-3-0'
            Rights           = '268435456'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'GposRoot'
            Identity         = 'S-1-5-11'
            Rights           = '-1610612736'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'GposRoot'
            Identity         = 'S-1-5-11'
            Rights           = 'ReadAndExecute, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'GposRoot'
            Identity         = 'S-1-5-18'
            Rights           = '268435456'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'GposRoot'
            Identity         = 'S-1-5-18'
            Rights           = 'FullControl'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'GposRoot'
            Identity         = 'S-1-5-32-544'
            Rights           = '268435456'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'GposRoot'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Write, ReadAndExecute, ChangePermissions, TakeOwnership, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'GposRoot'
            Identity         = 'S-1-5-32-549'
            Rights           = '-1610612736'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'GposRoot'
            Identity         = 'S-1-5-32-549'
            Rights           = 'ReadAndExecute, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'GposRoot'
            Identity         = '%DomainSID%-520'
            Rights           = 'Write, ReadAndExecute, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'GposRoot'
            Identity         = '%DomainSID%-520'
            Rights           = '-536870912'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        #endregion GposRoot

        #region GpoDirectory
        @{
            PathType         = 'GpoDirectory'
            Identity         = '%DomainSID%-512'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'GpoDirectory'
            Identity         = 'S-1-3-0'
            Rights           = 'FullControl'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'GpoDirectory'
            Identity         = 'S-1-5-9'
            Rights           = 'ReadAndExecute, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'GpoDirectory'
            Identity         = 'S-1-5-11'
            Rights           = 'ReadAndExecute, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'GpoDirectory'
            Identity         = 'S-1-5-18'
            Rights           = 'FullControl'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'GpoDirectory'
            Identity         = '%DomainSID%-512'
            Rights           = 'FullControl'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'GpoDirectory'
            Identity         = '%DomainSID%-519'
            Rights           = 'FullControl'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'None'
        }
        #endregion GpoDirectory

        #region DefaultPolicyDir
        @{
            PathType         = 'DefaultPolicyDir'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Owner'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'DefaultPolicyDir'
            Identity         = 'S-1-3-0'
            Rights           = '268435456'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'DefaultPolicyDir'
            Identity         = 'S-1-5-11'
            Rights           = '-1610612736'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'DefaultPolicyDir'
            Identity         = 'S-1-5-11'
            Rights           = 'ReadAndExecute, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'DefaultPolicyDir'
            Identity         = 'S-1-5-18'
            Rights           = '268435456'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'DefaultPolicyDir'
            Identity         = 'S-1-5-18'
            Rights           = 'FullControl'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'DefaultPolicyDir'
            Identity         = 'S-1-5-32-544'
            Rights           = '268435456'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'DefaultPolicyDir'
            Identity         = 'S-1-5-32-544'
            Rights           = 'Write, ReadAndExecute, ChangePermissions, TakeOwnership, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        @{
            PathType         = 'DefaultPolicyDir'
            Identity         = 'S-1-5-32-549'
            Rights           = '-1610612736'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'ContainerInherit, ObjectInherit'
            PropagationFlags = 'InheritOnly'
        }
        @{
            PathType         = 'DefaultPolicyDir'
            Identity         = 'S-1-5-32-549'
            Rights           = 'ReadAndExecute, Synchronize'
            Type             = 'Allow'
            Inherited        = $False
            InheritanceFlags = 'None'
            PropagationFlags = 'None'
        }
        #endregion DefaultPolicyDir
    )
}