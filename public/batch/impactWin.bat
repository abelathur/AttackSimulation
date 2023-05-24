@echo Off
taskkill.exe /f /im spoolsv.exe
powershell.exe -ExecutionPolicy Bypass -C ".\wifi.ps1 -Off" 
cmd.exe /C wbadmin delete catalog -quiet
calc
start notepad
start chrome
New-Item -Type Directory "PathToAtomicsFolder\T1137.006\bin\Addins\" -Force | Out-Null
Invoke-Webrequest -Uri "https://github.com/redcanaryco/atomic-red-team/raw/master/atomics/T1137.006/bin/Addins/excelxll_x64.xll" -UseBasicParsing -OutFile "PathToAtomicsFolder\T1137.006\bin\Addins\excelxll_x64.xll"
Invoke-Webrequest -Uri "https://github.com/redcanaryco/atomic-red-team/raw/master/atomics/T1137.006/bin/Addins/excelxll_x86.xll" -UseBasicParsing -OutFile "PathToAtomicsFolder\T1137.006\bin\Addins\excelxll_x86.xll"