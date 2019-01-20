#IfWinActive, vscode.ahk 
~^s::
  MsgBox reloaded
  Reload
  return
#IfWinActive, Ahk_exe Code.exe 
; move to left tab
vk1D & h::
  send ^{PgUp}
  return
; move to right tab
vk1D & l::
  send ^{PgDn}
  return
; focus to explorer
vk1C & o::
  send +^e
  return
; open file
vk1C & v::
  run, "sub\vscode.ahk"
  return
vk1C & a::
  run, "AutoHotkeyU64.ahk"
  return
vk1C & c::
  run, "sub\chrome.ahk"
  return
vk1C & e::
  run, "sub\explore.ahk"
  return
vk1C & k::
  run, "C:\Users\Yarman\AppData\Roaming\Code\User\keybindings.json"
  return
vk1C & s::
  run, "C:\Users\Yarman\AppData\Roaming\Code\User\settings.json"
  return
Return

#IfWinNotActive, Ahk_exe Code.exe 
vk1D & v:: WinActivate ,Ahk_exe Code.exe
Return

#IfWinExist, Ahk_exe Code.exe 
Return
#IfWinNotExist, Ahk_exe Code.exe 
Return