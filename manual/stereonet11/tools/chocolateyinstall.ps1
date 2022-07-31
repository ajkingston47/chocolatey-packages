$ErrorActionPreference = 'Stop';

$Checksum = '265C730ABE219BE26CC8D48CEE67ACD9C520C158D7BC8E8B6EFB617AC50A205D'
$checksumType = 'sha256'
$url        = 'https://www.rickallmendinger.net/s/SetupStereonet64.exe'
$fileType = 'exe'
$SoftwareName = 'stereonet*'
$SilentArgs = '/VERYSILENT /NORESTART /CLOSEAPPLICATIONS'
$validExitCodes = @(0)

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = $fileType
  url           = $url
  softwareName  = $SoftwareName
  checksum      = $Checksum
  checksumType  = $checksumType
  silentArgs    = $SilentArgs
  validExitCodes= $validExitCodes
}

Install-ChocolateyPackage @packageArgs 
