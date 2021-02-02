Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")

' Gets Current Score
Set readTeamScore = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\t1score.txt",1)
Dim teamScore
teamScore = readTeamScore.ReadLine()

' Update Score
Set writeTeamScore = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\t1score.txt",2,true)
If teamScore < 2 Then
     writeTeamScore.WriteLine(teamScore+1)
     Else
     writeTeamScore.WriteLine(teamScore)
End If
objShell.Run "F:\Commands\scorecheck.vbs"
readTeamScore.Close
Set readTeamScore = Nothing
Set objShell = Nothing