@{

RootModule = 'Posh-ACME.psm1'
ModuleVersion = '3.16.1'
GUID = 'f14adab4-278e-4dcb-b843-421fa5a5e688'
Author = 'Ryan Bolger'
Copyright = '(c) 2018 Ryan Bolger. All rights reserved.'
Description = @'
ACMEv2 protocol client for generating certificates using Let''s Encrypt (or other ACMEv2 compliant CA)

This is a custom build intended allow compatibility with .NET 4.6.1. It should not be used with PowerShell Core and you should only attempt to use RSA based key options.
'@
CompatiblePSEditions = @('Desktop')
PowerShellVersion = '5.1'
DotNetFrameworkVersion = '4.6.1'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = @('lib\BC.Crypto.1.8.5.dll')

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'Posh-ACME.Format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @(
    'Get-DnsPluginHelp'
    'Get-DnsPlugins'
    'Get-KeyAuthorization'
    'Get-PAAccount'
    'Get-PAAuthorizations'
    'Get-PACertificate'
    'Get-PAOrder'
    'Get-PAServer'
    'Install-PACertificate'
    'Invoke-HttpChallengeListener'
    'New-PAAccount'
    'New-PACertificate'
    'New-PAOrder'
    'Publish-DnsChallenge'
    'Remove-PAAccount'
    'Remove-PAOrder'
    'Remove-PAServer'
    'Revoke-PAAuthorization'
    'Save-DnsChallenge'
    'Send-ChallengeAck'
    'Set-PAAccount'
    'Set-PAOrder'
    'Set-PAServer'
    'Submit-ChallengeValidation'
    'Submit-OrderFinalize'
    'Submit-Renewal'
    'Unpublish-DnsChallenge'
)

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @(
    'Get-PAAuthorization'
)

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'LetsEncrypt','ssl','tls','certificates','acme'

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/rmbolger/Posh-ACME/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/rmbolger/Posh-ACME'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = @'
## 3.16.0 (2020-08-31)

* Added new DNS plugin [NameSilo](https://www.namesilo.com) (Thanks @rkone)
* Added Preferred Chain support
  * There is a new `-PreferredChain` parameter on `New-PACertificate`, `New-PAOrder`, and `Set-PAOrder`.
  * For new or existing orders, you may select an alternate CA chain based on the Issuing CA subject name if alternate chains are offered by the CA.
  * Example: `-PreferredChain 'ISRG Root X1'`
* Fixed a bug with `Submit-Renewal` that wasn't properly using `-PluginArgs` and `-NoSkipManualDns` parameters when `-AllOrders` or `-AllAccounts` switches were also used (#266 #275). (Thanks @f-bader)
* deSEC plugin has added retry logic to address API throttling issues for certs with many names (#275).
* Fixed a bug with Azure plugin when using `AZCertPfx` authentication from Windows.
'@

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
