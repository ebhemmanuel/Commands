Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")

' Gets Team Name & Check Score
' Include("F:\Commands\scripts\readnames.vbs")
' Adding TeamNames
     Set rtn1 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t1name.txt",1)
     Set rtn2 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t2name.txt",1)
     Set rtn3 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t3name.txt",1)
     Set rtn4 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\gdrive\smc-league\team-names\t4name.txt",1)

     Dim teamName1
     Dim teamName2
     Dim teamName3
     Dim teamName4

     teamName1 = rtn1.ReadLine()
     teamName2 = rtn2.ReadLine()
     teamName3 = rtn3.ReadLine()
     teamName4 = rtn4.ReadLine()

' Adding Placeholder Names

' Include("F:\Commands\scripts\getcurrentset.vbs")
     Set gameCount1 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t1set.txt",1)
     Set gameCount2 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t2set.txt",1)
     Set gameCount3 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t3set.txt",1)
     Set gameCount4 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t4set.txt",1)

     Dim team1Set
     Dim team2Set
     Dim team3Set
     Dim team4Set

     team1Set = gameCount1.ReadLine()
     team2Set = gameCount2.ReadLine()
     team3Set = gameCount3.ReadLine()
     team4Set = gameCount4.ReadLine()


' Declare Winner if score is equal or above 2
Set writeWinner = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\maptemp.txt",2,true)
If team1Set >=2 Then
     writeWinner.WriteLine(teamName1+" Win!")
     WScript.Sleep(1400)
     objShell.Run "F:\Commands\actions\show-winner.vbs"
ElseIf team2Set >=2 Then
     writeWinner.WriteLine(teamName2+" Win!")
     WScript.Sleep(1400)
     objShell.Run "F:\Commands\actions\show-winner.vbs"
ElseIf team3Set >=2 Then
     writeWinner.WriteLine(teamName3+" Win!")
     WScript.Sleep(1400)
     objShell.Run "F:\Commands\actions\show-winner.vbs"
ElseIf team4Set >=2 Then
     writeWinner.WriteLine(teamName4+" Win!")
      WScript.Sleep(1400)
     objShell.Run "F:\Commands\actions\show-winner.vbs"
End If
writeWinner.Close
Set writeWinner = Nothing
