#requires -Modules PowerShellGet


$ReleaseNotes =@'

Save-SpotlightImages

Saves spotlight images from the Windows lock screen to a user''s Pictures folder.

Images shown on the Windows lock screen are located in the AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets folder.
This utilty will save them to a user''s Pictures folder or any other destination.
By default it only saves images in the landscape orientation.

Script Help
-----------

<#
.Synopsis
    This function saves images from the Windows lock screen to a user''s Pictures folder
.Description
    Saves spotlight images from the Windows lock screen
.Example
    Save-SpotlightImages
    Error Skipped AlreadyPresent Copied
    ----- ------- -------------- ------
        0       4              0      4
.Parameter IncludePortrait
    By default, only images in landscape orientation are saved. With this flag, all images are saved including those in portrait orientation.
.Parameter Destination
    By default, images are saved to ~\Pictures\LogonImages. With this parameter, an alternate destination can be specified.
#>


Version History:
---------------
V1.0
> Initial release to the PowerShell Gallery
'@

$Tags = @(
    'Save'
    'Spotlight'
    'Image'
    'Lock'
    'Screen'
    'Desktop'
    'Pictures'
)


$PublishParams = @{
    Name            = '.\Save-SpotlightImages.psd1'
    NuGetApiKey     = '***Redacted***'
    ReleaseNotes    = $ReleaseNotes
    Tags            = $Tags
    ProjectUri      = 'https://github.com/robertlarue/Save-SpotlightImages'
}



Publish-Module @PublishParams
