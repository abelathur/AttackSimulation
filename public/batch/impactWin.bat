@echo Off
taskkill.exe /f /im spoolsv.exe
powershell.exe -ExecutionPolicy Bypass -C ".\wifi.ps1 -Off" 
cmd.exe /C wbadmin delete catalog -quiet