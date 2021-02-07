Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")

' Gets Team Name & Check Score
Include("F:\Commands\scripts\readnames.vbs")
Include("F:\Commands\scripts\getcurrentset.vbs")

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
' Set writeWinner = Nothing

Sub Include(sIncludeFile)
  Const OpenAsDefault = -2
  Const FailIfNotExist = 0
  Const ForReading = 1
  Set oIncludeFSO = CreateObject("Scripting.FileSystemObject")
  'Check for existance of include
  If Not oIncludeFSO.FileExists(sIncludeFile) Then
    Wscript.Echo "Error: Include File Not Found."
    Exit Sub
  End If
  Set oIncludeFile = oIncludeFSO.OpenTextFile(sIncludeFile, ForReading, _
  FailIfNotExist, OpenAsDefault)
  sIncludeCode = oIncludeFile.ReadAll
  oIncludeFile.Close
  'Cleanup
  Set oIncludeFSO = Nothing
  Set oIncludeFile = Nothing
  'Execute Include
  ExecuteGlobal sIncludeCode 
End Sub