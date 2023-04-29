Rem . This file is to run your filters that you placed in the f.txt file.  Priorities can be Normal, Idle, High, RealTime, BelowNormal, AboveNormal https://superuser.com/questions/620724/changing-windows-process-priority-via-command-line remember that the path 'C:\mkp224o\mkp224o.exe' will vary based on the location of your mkp224o.exe file.

Rem start mkp224o.exe -f f.txt

start /b /wait powershell.exe -command "C:\mkp224o\mkp224o.exe -f f.txt;$prog = Get-Process -Name mkp224o;$prog.PriorityClass = [System.Diagnostics.ProcessPriorityClass]::BelowNormal"

