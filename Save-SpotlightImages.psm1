function Save-SpotlightImages {
    param (
        [Switch]
        $IncludePortrait,
        $Destination = "~\Pictures\LogonImages"
    )
    [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
    New-Item -ItemType Directory -Path $Destination -Force | Out-Null
    $imageList = Get-ChildItem -Path ~\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets
    $imagesAlreadyPresent = 0;
    $imagesCopied = 0;
    $imagesSkipped = 0;
    $imagesError = 0;
    foreach($image in $imageList){
        $destinationPath = Join-Path -Path $Destination -ChildPath "$($image.Name).jpg"
        if(-not(Test-Path -Path $destinationPath)){
            $jpg = [System.Drawing.Image]::FromFile($image.FullName)
            try{
                if($IncludePortrait -or $jpg.height -lt $jpg.width){
                    Copy-Item -Path $image.FullName -Destination $destinationPath
                    $imagesCopied++;
                } else {
                    $imagesSkipped++;
                }
            } catch {
                $imagesError++;
            }
            finally {
                $jpg.Dispose()
            }
        } else {
            $imagesAlreadyPresent++;
        }
    }
    $results = New-Object PSObject -Property @{
        AlreadyPresent = $imagesAlreadyPresent
        Copied = $imagesCopied
        Skipped = $imagesSkipped
        Error = $imagesError
    }
    Write-Output $results
}