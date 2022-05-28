cd %~dp0%
wmic process where caption="javaw.exe" get caption,commandline /value > args.txt