
Set objFileToRead = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\mapcount.txt",1)
Dim strLine
do while not objFileToRead.AtEndOfStream
     strLine = objFileToRead.ReadLine()
     'Do something with the line
loop
objFileToRead.Close
Set objFileToRead = Nothing

Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\mapcount.txt",2,true)
objFileToWrite.WriteLine(strLine+1)
objFileToWrite.Close
Set objFileToWrite = Nothing

Set objFileToRead = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\mapcount.txt",1)
do while not objFileToRead.AtEndOfStream
     strLine = objFileToRead.ReadLine()
     'Do something with the line
loop
objFileToRead.Close
Set objFileToRead = Nothing

Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\maptemp.txt",2,true)
Dim map
Dim mapCount
Dim mapD

map = "MAP "
mapCount = strLine
mapD = " OF 3"
If mapCount > 3 Then
    Dim objShell
    Set objShell = Wscript.CreateObject("WScript.Shell")
    objShell.Run "F:\Commands\scripts\mapreset.vbs" 
    Set objShell = Nothing
End If
objFileToWrite.WriteLine(map+mapCount+mapD)
objFileToWrite.Close
Set objFileToWrite = Nothing