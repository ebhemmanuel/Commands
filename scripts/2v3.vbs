Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")
' Include("F:\Commands\scripts\readnames.vbs")

  Set rtn1 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t2name.txt",1)
  Set rtn2 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t3name.txt",1)
  Set writeTeamA = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\nameph1.txt",2,true)
  Set writeTeamB = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\nameph2.txt",2,true)

  Dim teamNameA
  Dim teamNameB

  teamNameA = rtn1.ReadLine()
  teamNameB = rtn2.ReadLine()

  writeTeamA.WriteLine(teamNameA)
  writeTeamB.WriteLine(teamNameB)
objShell.Run "F:\Commands\scripts\reset.vbs"
