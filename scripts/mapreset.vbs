' Read Map Count
Set readMapCount = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\mapcount.txt",1)
Dim strLine
do while not readMapCount.AtEndOfStream
     strLine = readMapCount.ReadLine()
     'Do something with the line
loop
readMapCount.Close
Set readMapCount = Nothing
' Write Default map count
Set mapCount = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\mapcount.txt",2,true)
mapCount.WriteLine(1)
mapCount.Close
Set mapCount = Nothing

' Format map count
Set mapCountState = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\maptemp.txt",2,true)
map = "MAP "
mapCount = strLine
mapD = " OF 3"
mapCountState.WriteLine(map+mapCount+mapD)
mapCountState.Close
Set mapCountState = Nothing