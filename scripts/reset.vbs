' Reset Score of all Teams
' Dim objShell
' Set objShell = Wscript.CreateObject("WScript.Shell")
' objShell.Run "F:\Commands\scripts\mapreset.vbs"
' set objShell = Nothing
' Set wts1 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\scores\t1score.txt",2,true)
' Set wts2 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\scores\t2score.txt",2,true)
' Set wts3 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\scores\t3score.txt",2,true)
' Set wts4 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\scores\t4score.txt",2,true)
' Set wps1 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\scores\scoreAph.txt",2,true)
' Set wps2 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\scores\scoreBph.txt",2,true)
' wts1.WriteLine(0)
' wts2.WriteLine(0)
' wts3.WriteLine(0)
' wts4.WriteLine(0)
' wps1.WriteLine(0)
' wps2.WriteLine(0)
' wts1.Close
' wts2.Close
' wts3.Close
' wts4.Close
' wps1.Close
' wps2.Close

' Function checkPh(x)
'file extension to look for
Option Explicit  
'On Error Resume Next

Dim strDirectory, nThreshold, counter, extension, msgtext  
Dim objFSO, objFolder, objFile, Logfile  

extension = "txt"  

'directory to look in
strDirectory = "F:\Commands\scripts\scores\"  

i = 0  

Set objFSO = CreateObject("Scripting.FileSystemObject")  
Set objFolder = objFSO.GetFolder(strDirectory) 

numFiles = objFolder.Files.Count
For Each objFile In objFolder.Files  
	if LCase((objFSO.GetExtensionName(objFile))) = LCase(extension) then 
        i = i+1
        Set val+i= objFSO.OpenTextFile(objFile,2,true)
Next  

msgbox("The number of txt files in " & strDirectory & " is: " & counter) 