''''' GENERATED WITH NOOBS CMDR v1.0.2.0 '''''

Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "OBSCommand.exe /server=127.0.0.1:4444 /password="""" /command=SetCurrentTransition,transition-name=""Move"" /delay=0.2 /scene=""Be Right Back"" /hidesource=""Music""/""idle-music"" /hidesource=""Music""/""bg-ending-music"" /hidesource=""Music""/""bg-battle-music"" /showsource=""Music""/""bg-music"" /setvolume=""bg-music"",1,10", 0