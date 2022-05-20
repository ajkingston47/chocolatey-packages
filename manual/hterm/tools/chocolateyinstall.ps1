$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$Checksum = '3A7EF7D71ECDAF80C4435E61A3FD9E7BD8BDE4DE3E2BE9837E8D085D30AD19DD72076F6DE470A1BAB23EF968CB8D62B08344449513440E6586AB3FE954E57093'
$ChecksumType = 'sha512'
$url        = 'https://www.der-hammer.info/terminal/hterm-windows.zip' 
$pp = Get-PackageParameters

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
            url = $url
  UnzipLocation = $toolsDir
       checksum = $Checksum
   checksumType = $ChecksumType

}

$DesktopShortcut = @{
  ShortcutFilePath = "$env:Public\desktop\HTerm.lnk"
        TargetPath = "$toolsdir\hterm.exe"
      IconLocation = "$toolsdir\hterm.exe"
} 

Install-ChocolateyZipPackage @packageArgs

if($pp['DesktopShortCut'] -eq $True){
  
  Install-ChocolateyShortcut @DesktopShortcut
}

