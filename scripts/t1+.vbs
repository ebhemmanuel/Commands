Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")

Set rtn1 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\nameph1.txt",1)
Dim teamNameA
teamNameA = rtn1.ReadLine()

' Gets Current Score
Set readTeam1Score = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t1score.txt",1)
Set readTeam2Score = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t2score.txt",1)
Set readTeam3Score = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t3score.txt",1)
Set readTeam4Score = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t4score.txt",1)
Set readScoreAph = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\scoreAph.txt",1)
Dim team1Score
Dim team2Score
Dim team3Score
Dim team4Score
team1Score = readTeam1Score.ReadLine()
team2Score = readTeam2Score.ReadLine()
team3Score = readTeam3Score.ReadLine()
team4Score = readTeam4Score.ReadLine()
Dim scoreAph
scoreAph = readScoreAph.ReadLine()
readTeam1Score.Close
readTeam2Score.Close
readTeam3Score.Close
readTeam4Score.Close

' Update Score
Set writeTeam1Score = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t1score.txt",2,true)
Set writeTeam2Score = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t2score.txt",2,true)
Set writeTeam3Score = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t3score.txt",2,true)
Set writeTeam4Score = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t4score.txt",2,true)
Set writeScoreAph = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\scoreAph.txt",2,true)
If scoreAph < 2 Then
     If teamNameA = "T1" Then
          writeScoreAph.WriteLine(scoreAph+1)
          writeTeam1Score.WriteLine(team1Score+1)
          writeTeam2Score.WriteLine(team2Score)
          writeTeam3Score.WriteLine(team3Score)
          writeTeam4Score.WriteLine(team4Score)
     Elseif teamNameA = "T2" Then
          writeScoreAph.WriteLine(scoreAph+1)
          writeTeam1Score.WriteLine(team1Score)
          writeTeam2Score.WriteLine(team2Score+1)
          writeTeam3Score.WriteLine(team3Score)
          writeTeam4Score.WriteLine(team4Score)
     Elseif teamNameA = "T3" Then
          writeScoreAph.WriteLine(scoreAph+1)
          writeTeam1Score.WriteLine(team1Score)
          writeTeam2Score.WriteLine(team2Score)
          writeTeam3Score.WriteLine(team3Score+1)
          writeTeam4Score.WriteLine(team4Score)
     Elseif teamNameA = "T4" Then
          writeScoreAph.WriteLine(scoreAph+1)
          writeTeam1Score.WriteLine(team1Score)
          writeTeam2Score.WriteLine(team2Score)
          writeTeam3Score.WriteLine(team3Score)
          writeTeam4Score.WriteLine(team4Score+1)
     End If
Else
     writeScoreAph.WriteLine(scoreAph)
     writeTeam1Score.WriteLine(team1Score)
     writeTeam2Score.WriteLine(team2Score)
     writeTeam3Score.WriteLine(team3Score)
     writeTeam4Score.WriteLine(team4Score)
End If
     
objShell.Run "F:\Commands\scripts\scorecheck.vbs"
objShell.Run "F:\Commands\scripts\setcheck.vbs"

' Set readTeamScore = Nothing
' Set readTeamSet = Nothing
Set objShell = Nothing
