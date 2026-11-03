$ErrorActionPreference = 'Stop'

[array]$registryEntries = Get-UninstallRegistryKey -SoftwareName 'Tweaky Driver'
if ($registryEntries.Count -eq 1) {
  $packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    silentArgs     = '/S'
    validExitCodes = @(0)
    file           = $registryEntries[0].UninstallString.Trim('"')
  }
  Uninstall-ChocolateyPackage @packageArgs
} elseif ($registryEntries.Count -eq 0) {
  Write-Warning 'Tweaky Driver has already been uninstalled by other means.'
} else {
  Write-Warning 'Multiple exact Tweaky Driver entries were found; no uninstaller was run. Review Installed apps.'
}
