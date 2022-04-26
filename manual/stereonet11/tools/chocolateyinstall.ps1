$ErrorActionPreference = 'Stop';

$Checksum = 'D31904CE46CDE0808C13934E4C9E7EA263E3D2FD4DF0EC204230B6A2733C9131'
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
