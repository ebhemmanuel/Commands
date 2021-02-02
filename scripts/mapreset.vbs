Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\mapcount.txt",2,true)
objFileToWrite.WriteLine(1)
objFileToWrite.Close
Set objFileToWrite = Nothing

Set objFileToRead = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\mapcount.txt",1)
Dim strLine
do while not objFileToRead.AtEndOfStream
     strLine = objFileToRead.ReadLine()
     'Do something with the line
loop
objFileToRead.Close
Set objFileToRead = Nothing

Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\maptemp.txt",2,true)
map = "MAP "
mapCount = strLine
mapD = " OF 3"
objFileToWrite.WriteLine(map+mapCount+mapD)
objFileToWrite.Close
Set objFileToWrite = Nothing