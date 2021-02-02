Set objFileToWrite = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\t1score.txt",2,true)
objFileToWrite.WriteLine(0)
objFileToWrite.Close
Set objFileToWrite = Nothing