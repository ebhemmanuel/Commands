Set objFileToRead = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t1name.txt",1)
Dim teamName
do while not objFileToRead.AtEndOfStream
     teamName = objFileToRead.ReadLine()
     'Do something with the line
loop
objFileToRead.Close
Set objFileToRead = Nothing

Set objFileToCorrect = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\maptemp.txt",2,true)
objFileToCorrect.WriteLine(teamName+" Wins")
objFileToCorrect.Close
Set objFileToCorrect = Nothing