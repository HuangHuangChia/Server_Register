@echo off

if not exist m:\ goto RemountMN
if not exist n:\ goto RemountMN

goto okokok

:RemountMN
net use m: /delete /yes >nul
net use n: /delete /yes >nul
net use m: \\s1\progs95 /yes /persistent:yes
net use n: \\s1\vision95 /yes /persistent:yes

timeout /t 10 >nul
if not exist m:\ goto notify
if not exist n:\ goto notify

goto okokok

:notify
C:\LineNotify\LineNotify_general.exe "0xQH1k7AuD1CERF9Hy12XNv8MnTOE8V6MwitbfdJHe9" "C:\LineNotify\alert1.txt"

:okokok

exit
