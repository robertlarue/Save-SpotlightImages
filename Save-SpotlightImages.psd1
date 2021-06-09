#
# Module manifest for module 'Save-SpotlightImages'
#
# @robertlarue
#

@{

    # Script module or binary module file associated with this manifest.
    RootModule = 'Save-SpotlightImages'

    # Version number of this module.
    ModuleVersion = '1.0'

    # ID used to uniquely identify this module
    GUID = 'c31a181c-59e8-49cc-8e72-19a18a7f647e'

    # Author of this module
    Author = 'robertlarue'

    # Company or vendor of this module
    CompanyName = 'la-rue.com'

    # Copyright statement for this module
    Copyright = '(c) 2021 robertlarue. All rights reserved.'

    # Description of the functionality provided by this module
    Description = 'Saves spotlight images from the Windows lock screen to a user''s Pictures folder'

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '2.0'

    # Functions to export from this module
    FunctionsToExport = 'Save-SpotlightImages'

    # Cmdlets to export from this module
    CmdletsToExport = ''

    # Variables to export from this module
    VariablesToExport = ''

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = @(
                'Save'
                'Spotlight'
                'Image'
                'Lock'
                'Screen'
                'Desktop'
                'Pictures'
            )

            # A URL to the license for this module.
            LicenseUri = 'https://github.com/robertlarue/Save-SpotlightImages/blob/master/LICENSE'

            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/robertlarue/Save-SpotlightImages'

            # ReleaseNotes of this module
            ReleaseNotes = 'Refer to Readme.md'

        } # End of PSData hashtable

    } # End of PrivateData hashtable

}

