Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")
    objShell.Run "F:\Commands\scripts\reset.vbs"
    objShell.Run "F:\Commands\scripts\resetset.vbs"
Set objShell = Nothing