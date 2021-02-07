Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")

' Gets Current Score
Set readTeamScore = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t1score.txt",1)
Set readTeamSet = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t1set.txt",1)
Dim teamScore
Dim teamSet
teamScore = readTeamScore.ReadLine()
readTeamScore.Close
teamSet = readTeamSet.ReadLine()
readTeamSet.Close

' Update Score
Set writeTeamScore = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t1score.txt",2,true)
Set writeTeamSet = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t1set.txt",2,true)
writeTeamSet.WriteLine(teamSet)
If teamScore < 2 Then
     writeTeamScore.WriteLine(teamScore+1)
     objShell.Run "F:\Commands\scripts\mapcount.vbs"

Else
     writeTeamScore.WriteLine(teamScore)
End If

objShell.Run "F:\Commands\scripts\scorecheck.vbs"
objShell.Run "F:\Commands\scripts\setcheck.vbs"

' Set readTeamScore = Nothing
' Set readTeamSet = Nothing
Set objShell = Nothing
