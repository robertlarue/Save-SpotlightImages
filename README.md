# Save-SpotlightImages

Save images from the Windows lock screen to the Pictures folder

## Installation

```Powershell
Install-Module Save-SpotlightImages
```

To install for current user only
```Powershell
Install-Module Save-SpotlightImages -Scope CurrentUser
```

## Examples
```Powershell
Save-SpotlightImages
Error Skipped AlreadyPresent Copied
----- ------- -------------- ------
    0       4              0      4
```
### Additional Parameters
`-IncludePortrait`

By default, only images in landscape orientation are saved. With this flag, all images are saved including those in portrait orientation.

`-Destination`
    
By default, images are saved to `~\Pictures\LogonImages`. With this parameter, an alternate destination can be specified.

```Powershell
Save-SpotlightImages -Destination C:\Images
Error Skipped AlreadyPresent Copied
----- ------- -------------- ------
    0       2              2      2
```