Set wtss1 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t1set.txt",2,true)
Set wtss2 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t2set.txt",2,true)
Set wtss3 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t3set.txt",2,true)
Set wtss4 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t4set.txt",2,true)
wtss1.WriteLine(0)
wtss2.WriteLine(0)
wtss3.WriteLine(0)
wtss4.WriteLine(0)
wtss1.Close
wtss2.Close
wtss3.Close
wtss4.Close