Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")
    objShell.Run "F:\Commands\scripts\reset.vbs" 
    objShell.Run "F:\Commands\scripts\mapreset.vbs" 
Set objShell = Nothing