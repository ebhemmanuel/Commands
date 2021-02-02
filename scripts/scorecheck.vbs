Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")
' Gets Team Name
Set rtn1 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t1name.txt",1)
Set rtn2 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t2name.txt",1)
Set rtn3 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t3name.txt",1)
Set rtn4 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t4name.txt",1)

teamName1 = rtn1.ReadLine()
teamName2 = rtn2.ReadLine()
teamName3 = rtn3.ReadLine()
teamName4 = rtn4.ReadLine()

' Gets Current Score
Set rts1 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t1score.txt",1)
Set rts2 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t2score.txt",1)
Set rts3 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t3score.txt",1)
Set rts4 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t4score.txt",1)

team1Score = rts1.ReadLine()
team2Score = rts2.ReadLine()
team3Score = rts3.ReadLine()
team4Score = rts4.ReadLine()

' Declare Winner if score is equal or above 2
Set writeWinner = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\maptemp.txt",2,true)
If team1SCore >=2 Then
     writeWinner.WriteLine(teamName1+" Wins")
ElseIf team2SCore >=2 Then
     writeWinner.WriteLine(teamName2+" Wins")
ElseIf team3SCore >=2 Then
     writeWinner.WriteLine(teamName3+" Wins")
ElseIf team4SCore >=2 Then
     writeWinner.WriteLine(teamName4+" Wins")
Else
     objShell.Run "F:\Commands\scripts\mapcount.vbs"
End If
writeWinner.Close
' Set writeWinner = Nothing