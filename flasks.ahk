#SingleInstance ignore

flasks := true

Gui 69:-caption -Border +alwaysontop
c:= "006900"
Gui 69:color, %c%
h:= (A_ScreenHeight * 0.005)
w:= (A_ScreenWidth * 0.25)
x:= (A_ScreenWidth // 2) - (w // 2)
y:= (A_ScreenHeight) - h
Gui 69:show, w%w% h%h% x%x% y%y%, No Activation

f8::
flasks := !flasks
c:= (flasks ? "006900" : "690000")
Gui 69:color, %c%
return

#if  WinActive("ahk_class POEWindowClass") && flasks
Space::
Send, 12345
return

#if WinActive("ahk_class POEWindowClass")
Sc029::
Send {LControl Down}
While GetKeyState("Sc029", "P")
{
  random, x, 20, 50
  Click
  sleep x
}
Send {LControl Up}
return

#if WinActive("ahk_class POEWindowClass")
+Sc029::
Send {RShift Down}
While GetKeyState("~", "P")
{
  random, x, 20, 50
  Click
  sleep x
}
Send {RShift Up}
return
