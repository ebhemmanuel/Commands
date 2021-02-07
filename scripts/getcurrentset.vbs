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

Set writeSet1 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t1set.txt",2,true)
Set writeSet2 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t2set.txt",2,true)
Set writeSet3 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t3set.txt",2,true)
Set writeSet4 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t4set.txt",2,true)

