Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")

' Gets Team Name & Check Score
Include("F:\Commands\scripts\getcurrentscore.vbs")
Include("F:\Commands\scripts\getcurrentset.vbs")

' Declare Winner if score is equal or above 2

If team1SCore >=2 Then
     writeSet1.WriteLine(team1Set+1)
ElseIf team2SCore >=2 Then
     writeSet2.WriteLine(team2Set+1)
ElseIf team3SCore >=2 Then
     writeSet3.WriteLine(team3Set+1)
ElseIf team4SCore >=2 Then
     writeSet4.WriteLine(team4Set+1)
Else
     objShell.Run "F:\Commands\scripts\mapcount.vbs"
End If

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