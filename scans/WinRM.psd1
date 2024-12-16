@{
    # Properties that must be equal for a default entry to be considered equal to a found entry
    Properties       = @(
        'Name'
        'PSVersion'
        'Enabled'
        'Sddl'
        'Architecture'
        'Filename'
        'RunAsUser'
    )

    # Properties on the found entries that have their domainSID value replaced with the literal "%DomainSID%",
    # which should be used in default entries.
    DomainSIDResolve = @(
        'Sddl'
    )

    # Where to select the default values from
    DefaultPaths     = @(
        'defaults\WinRM.psd1'
    )
}