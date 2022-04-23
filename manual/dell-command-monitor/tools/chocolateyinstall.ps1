$ErrorActionPreference = 'Stop';

[string]$FileLink = "https://dl.dell.com/FOLDER08397184M/1/Dell-Command-Monitor_6R5YG_WIN64_10.7.0.232_A00.EXE"                    
[string]$fileType = 'exe'
[string]$silentArgs   = '/s'   
[string]$ChecksumType = 'sha256'
[string]$Checksum64 = 'fa0ca4af4a6ea579708dcf890c66e22897baffb92bb73872100e291a20d4185a'    
$validExitCodes= @(0, 3010, 1641)                               

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
