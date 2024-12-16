@{
    # Properties that must be equal for a default entry to be considered equal to a found entry
    Properties       = @(
        'PathType'
        'Identity'
        'Rights'
        'Type'
        'Inherited'
        'InheritanceFlags'
        'PropagationFlags'
    )

    # Properties on the found entries that have their domainSID value replaced with the literal "%DomainSID%",
    # which should be used in default entries.
    DomainSIDResolve = @(
        'Identity'
    )

    # Where to select the default values from
    DefaultPaths     = @(
        'defaults\sysvol-access.psd1'
    )
}