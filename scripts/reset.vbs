' Reset Score of all Teams
Set wts1 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t1score.txt",2,true)
Set wts2 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t2score.txt",2,true)
Set wts3 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t3score.txt",2,true)
Set wts4 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t4score.txt",2,true)
wts1.WriteLine(0)
wts2.WriteLine(0)
wts3.WriteLine(0)
wts4.WriteLine(0)
wts1.Close
wts2.Close
wts3.Close
wts4.Close