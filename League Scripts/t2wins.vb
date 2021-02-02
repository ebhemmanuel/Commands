Set objFileToRead = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\t2check.txt",1)
Dim team2
do while not objFileToRead.AtEndOfStream
     team2 = objFileToRead.ReadLine()
     'Do something with the line
loop
objFileToRead.Close
Set objFileToRead = Nothing


Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\maptemp.txt",2,true)
objFileToWrite.WriteLine(team2+" Wins")
objFileToWrite.Close
Set objFileToWrite = Nothing