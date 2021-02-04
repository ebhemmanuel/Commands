Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")

' Gets Current Score
Set readTeamScore = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t1score.txt",1)
Dim teamScore
teamScore = readTeamScore.ReadLine()

' Update Score
Set writeTeamScore = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t1score.txt",2,true)
If teamScore < 2 Then
     writeTeamScore.WriteLine(teamScore+1)
     Else
     writeTeamScore.WriteLine(teamScore)
End If
objShell.Run "F:\Commands\scripts\scorecheck.vbs"
readTeamScore.Close
Set readTeamScore = Nothing
Set objShell = Nothing

' Win counter - to 6 - wins the tournament

' Create files for every round

' Write to Round file
' Round x Team X Wins + award point+1 

' Write to Set file
' Set 1 Fights - If Team x Wins then add 1 to the set win if their teamScore = 2
' Set 2 Fights - If Team x Wins then add 1 to the set win if their teamScore = 4
' If a team has 2 set wins they win the tournament.



