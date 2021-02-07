Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")

Include("F:\Commands\scripts\readnames.vbs")
objShell.Run "F:\Commands\scripts\reset.vbs"
teamA.WriteLine(teamName1)
teamB.WriteLine(teamName2)
teamA.close
teamB.close

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