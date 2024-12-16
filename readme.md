# Domain Controller Access Scanner

Welcome to a PowerShell-based toolkit to scan Active Directory Domain Controllers for any non-standard delegations.
In order to run this, download the entire project and run `Invoke-DCAccessCheck.ps1` (more examples on that later on).

> Dependencies and Security

The only thing this script needs is the Active Directory module.
The code is designed to have no community dependencies and be in a scale that can be reasonably code-reviewed.

## Profit

To run this script, you need to have local admin rights on the Domain Controllers targeted.
This usually required either membership in the `Administrators` or `Domain-Admins` group.

> Example 1: Generate a Report

This will generate a report of all non-default permissions across DCOM, sysvol, WinRM and WMI rights.
Each category gets its own file, all DCs in the current domain are scanned.

```powershell
.\Invoke-DCAccessCheck.ps1 -Scan DCOM,sysvol-access,WinRM,WMI -All -Path C:\reports
```

> Example 2: Include default permissions, target specific dcs

This will again scan all right categories, but only on two specified DCs.
The export files will also include all the default delegations (each entry will be flagged as "IsDefault" or not).

```powershell
.\Invoke-DCAccessCheck.ps1 -Scan DCOM,sysvol-access,WinRM,WMI -Server dc1.contoso.com, dc2.contoso.com -Path C:\reports -IncludeDefault
```

> Example 3: Use Custom Credentials

Not always will your current account have all the rights needed.
You can of course provide custom credentials for your requests:

```powershell
.\Invoke-DCAccessCheck.ps1 -Scan DCOM,sysvol-access,WinRM,WMI -All -Credential (Get-Credential) -Path C:\reports -IncludeDefault
```

> Example 4: Output Objects

You do not _have_ to generate reports.
It is quite possible to receive output objects instead of (or in addition to) the report files:

```powershell
.\Invoke-DCAccessCheck.ps1 -Scan WMI -All -Credential (Get-Credential) -Passthru -IncludeDefault
```

## Parallelization

The scans are built to process all computers in parallel.
Do not build a custom loop around this script, unless you want to slow down the overall execution.

## Structure of a scan

Each scan consists of three kinds of files:

+ The Script File
+ The Config File
+ The Defaults File(s)

The Script & Config files must have the same name with just a different extension (`ps1` and `psd1` respectively).
They must be placed in the `scans` folder.

You can find documented examples in the `templates` folder.

> The Script File

Implements the actual data collection.
Must accept three parameters:

+ Server (String[]): List of computers to scan via PSRemoting. Must be provided, may be only one, may be multiple.
+ Credential (pscredential): Credential object to authenticate with. May be empty.
+ DomainData (hashtable): Contains the domain data for each targeted server. Notably includes the DomainSID, DomainName and the Default Domain Policy IDs

Returns the raw access objects, each object should have the exact same properties.

> The Config File

The configuration file contains the settings for the scan.
Notably, it includes:

+ Properties: List of Properties that must be equal between scan results and a matching default permission.
+ DomainSIDResolve: List of Properties where the scan results will have the DomainSID placeholder inserted, to allow the same defaults apply to multiple domains.
+ DefaultPaths: List of paths (relative to the project root) where default settings are included.

If you want to add your own, intentional settings to the defaults, I recommend adding your own defaults file and adding it to the DefaultsPath entry.

> The Defaults File

These config files contain a single hashtable with one entry - `Defaults` - which contains an array of all the default entries.
These files are configured by the Config File.
Multiple files can be merged for a single scan, so feel free to add your own, intentional delegations in your own custom defaults files.
