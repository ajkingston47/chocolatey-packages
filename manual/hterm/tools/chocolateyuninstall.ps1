$DesktopShortcut = "$env:Public\desktop\HTerm.lnk"

if($(Test-Path -Path $DesktopShortcut)){
    Remove-Item -Path $DesktopShortcut
  }