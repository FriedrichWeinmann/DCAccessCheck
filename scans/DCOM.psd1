@{
    # Properties that must be equal for a default entry to be considered equal to a found entry
    Properties       = @(
        'ApplicationID'
        'Identity'
        'Rights'
        'Type'
        'AccessMask'
    )

    # Properties on the found entries that have their domainSID value replaced with the literal "%DomainSID%",
    # which should be used in default entries.
    DomainSIDResolve = @(
        'Identity'
    )

    # Where to select the default values from
    DefaultPaths     = @(
        'defaults\DCOM-01.psd1'
        'defaults\DCOM-02.psd1'
        'defaults\DCOM-03.psd1'
        'defaults\DCOM-04.psd1'
        'defaults\DCOM-05.psd1'
        'defaults\DCOM-06.psd1'
    )
}