$ErrorActionPreference = 'Stop'
$toolsDir = Split-Path $MyInvocation.MyCommand.Definition 
$packageArgs = @{
  packageName    = 'mongocompass'
  fileType       = 'exe'
  file           = "$toolsDir\mongodb-compass-1.15.4-win32-x64.exe"
  silentArgs     = '/quiet /qn /norestart'
  validExitCodes = @(0, 3010)
}
Install-ChocolateyInstallPackage @packageArgs