#requires -Modules PowerShellGet
param(
    $NuGetApiKey
)
$PublishParams = @{
    Path            = '.'
    NuGetApiKey     = $NuGetApiKey
}

Publish-Module @PublishParams
