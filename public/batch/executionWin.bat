@echo Off
echo "hello"
start powershell.exe -ArgumentList "-NoP","-StA","-ExecutionPolicy","bypass",".\Emulate-Administrator-Tasks.ps1"
Start notepad ".\filename.txt"
start chrome
ping 127.0.0.1
echo "hello_end"