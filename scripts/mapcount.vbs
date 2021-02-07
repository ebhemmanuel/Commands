
Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")
Set readMapCount = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\mapcount.txt",1)
Dim mapCount
do while not readMapCount.AtEndOfStream
     mapCount = readMapCount.ReadLine()
     'Do something with the line
loop
readMapCount.Close
' Set readMapCount = Nothing

Set mapCountState = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\mapcount.txt",2,true)
mapCountState.WriteLine(mapCount+1)
mapCountState.Close
Set mapCountState = Nothing

Set recheckCount = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\mapcount.txt",1)
do while not recheckCount.AtEndOfStream
     mapCount = recheckCount.ReadLine()
     'Do something with the line
loop
recheckCount.Close
Set recheckCount = Nothing

Set mapFormat = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\maptemp.txt",2,true)

map = "MAP "
mapD = " OF 3"
If mapCount > 3 Then
    objShell.Run "F:\Commands\scripts\mapreset.vbs" 
Else 
     mapFormat.WriteLine(map+mapCount+mapD)
End If
mapFormat.Close
objShell.Close
Set objShell = Nothing
Set mapFormat = Nothing