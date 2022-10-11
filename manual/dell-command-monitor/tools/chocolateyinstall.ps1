$ErrorActionPreference = 'Stop';

[string]$FileLink = "https://dl.dell.com/FOLDER08796448M/1/Dell-Command-Monitor_KJ0VF_WIN_10.8.0.284_A00.EXE"                    
[string]$fileType = 'exe'
[string]$silentArgs   = '/s'   
[string]$ChecksumType = 'sha256'
[string]$Checksum64 = 'b9201ed7a56c3fe70b6b97d2ef33f36f0e5a9ec8bfd5737afb2431dc5446abf3'    
$validExitCodes= @(0,2,6)                               

$InstallArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = $fileType 
  url64bit       = $FileLink
  ChecksumType64 = $ChecksumType
  Checksum64     = $Checksum64
  silentArgs     = $silentArgs
  validExitCodes = $validExitCodes
  
}

Install-ChocolateyPackage @InstallArgs
