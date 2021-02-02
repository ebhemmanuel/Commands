Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")
    objShell.Run "F:\Commands\t1reset.vbs" 
    objShell.Run "F:\Commands\t2reset.vbs"
    objShell.Run "F:\Commands\mapreset.vbs" 
Set objShell = Nothing