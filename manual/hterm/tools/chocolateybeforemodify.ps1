$Shortcuts = @{
    DesktopShortcut = "$env:Public\desktop\HTerm.lnk"
    StartMenuShortcut = "$env:ProgramData\Microsoft\Windows\Start Menu\Programs\Hterm\HTerm.lnk"
  }
  
  if($(Test-Path -Path $Shortcuts['DesktopShortcut']) -or $(Test-Path -Path $Shortcuts['StartMenuShortcut'])){
    $($Shortcuts.GetEnumerator()).Value | Remove-Item
  }