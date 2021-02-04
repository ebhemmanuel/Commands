' Gets Current Score
Set rts1 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t1score.txt",1)
Set rts2 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t2score.txt",1)
Set rts3 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t3score.txt",1)
Set rts4 = CreateObject("Scripting.FileSystemObject").OpenTextFile("F:\Commands\scripts\t4score.txt",1)

team1Score = rts1.ReadLine()
team2Score = rts2.ReadLine()
team3Score = rts3.ReadLine()
team4Score = rts4.ReadLine()