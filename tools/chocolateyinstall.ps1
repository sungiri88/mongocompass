$packageName = 'mongocompass'
$installerType = 'exe'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://downloads.mongodb.com/compass/mongodb-compass-community-1.15.4-win32-x64.exe'
$validExitCodes = @(0,3010)
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes