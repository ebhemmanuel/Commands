Set readTeamName = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t2name.txt",1)
Dim teamName
do while not readTeamName.AtEndOfStream
     teamName = readTeamName.ReadLine()
     'Do something with the line
loop
readTeamName.Close
Set readTeamName = Nothing