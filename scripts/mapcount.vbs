
Set objFileToRead = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\mapcount.txt",1)
Dim mapCount
do while not objFileToRead.AtEndOfStream
     mapCount = objFileToRead.ReadLine()
     'Do something with the line
loop
objFileToRead.Close
Set objFileToRead = Nothing

Set mapState = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\mapcount.txt",2,true)
mapState.WriteLine(mapCount+1)
mapState.Close
Set mapState = Nothing

Set readCount = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\mapcount.txt",1)
do while not readCount.AtEndOfStream
     mapCount = readCount.ReadLine()
     'Do something with the line
loop
readCount.Close
Set readCount = Nothing

Set mapState = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\maptemp.txt",2,true)

map = "MAP "
mapD = " OF 3"
If mapCount > 3 Then
    Dim objShell
    Set objShell = Wscript.CreateObject("WScript.Shell")
    objShell.Run "F:\Commands\scripts\mapreset.vbs" 
    Set objShell = Nothing
End If
mapState.WriteLine(map+mapCount+mapD)
mapState.Close
Set mapState = Nothing