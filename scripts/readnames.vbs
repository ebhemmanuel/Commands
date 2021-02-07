
Set rtn1 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t1name.txt",1)
Set rtn2 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t2name.txt",1)
Set rtn3 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t3name.txt",1)
Set rtn4 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t4name.txt",1)Set teamA = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\nameph1.txt",2,true)
Set readTeamB = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\nameph1.txt",2,true)
Set readTeamA = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\nameph2.txt",2,true)
Set writeTeamA = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\nameph1.txt",2,true)
Set writeTeamB = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\nameph2.txt",2,true)

Dim teamName1
Dim teamName2
Dim teamName3
Dim teamName4
teamName1 = rtn1.ReadLine()
teamName2 = rtn2.ReadLine()
teamName3 = rtn3.ReadLine()
teamName4 = rtn4.ReadLine()

Dim teamA
Dim teamB

' teamA = readTeamA.ReadLine()
' teamB = readTeamA.ReadLine()