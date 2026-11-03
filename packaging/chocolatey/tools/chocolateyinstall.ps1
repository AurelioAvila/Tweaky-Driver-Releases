$ErrorActionPreference = 'Stop'

if ($env:PROCESSOR_ARCHITECTURE -ne 'AMD64' -and $env:PROCESSOR_ARCHITEW6432 -ne 'AMD64') {
  throw 'Tweaky Driver requires Windows x64.'
}

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/AurelioAvila/Tweaky-Driver-Releases/releases/download/v0.1.44/Tweaky-Driver-0.1.44-x64-setup.exe'
  checksum64     = '770804b382486f5f0ea86b03c0e9725036dcc18bbf905836f2cd8ef3dda58c57'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'Tweaky Driver'
}

Install-ChocolateyPackage @packageArgs
