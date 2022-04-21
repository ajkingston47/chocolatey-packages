$ErrorActionPreference = 'Stop';

[string]$FileLink = "https://dl.dell.com/FOLDER08397202M/1/Dell-Command-Configure_95F54_WIN_4.7.0.433_A00.EXE"                    
[string]$fileType = 'exe'
[string]$silentArgs   = '/s'   
[string]$ChecksumType = 'sha256'
[string]$Checksum64 = 'f74c37bfd51dd4207e6ea5f6c3b945dbb8f7335f0583d2bd7d8948b3740d90fa'    
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


try{
Remove-Item -Path "$Env:Public\desktop\Dell Command Configure Wizard.lnk" -Force}
catch{
  Write-Warning 'Failed to remove desktop shortcut.'
}