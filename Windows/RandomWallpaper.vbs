
Set objShell = CreateObject("WScript.Shell")
objShell.Run "taskkill /IM powershell.exe /F", 0, True
objShell.Run "powershell -ExecutionPolicy Bypass -File C:\Scripts\RandomWallpaper.ps1", 0, False
