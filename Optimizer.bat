title JSO (Jimputin System Optimizer)
color a7 
cls

echo Press any key to start optimization
pause
echo Disable Dynamic Tick
echo Disable Synthetic Timers
bcdedit /set disabledynamictick yes
bcdedit /deletevalue useplatformclock
bcdedit /set useplatformtick yes
PowerShell "Disable-MMAgent -MemoryCompression"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IntelPPM" /v Start /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AmdPPM" /v Start /t REG_DWORD /d 3 /f
@echo off
Fsutil behavior set memoryusage 2
sfc /scannow
echo thank you for using JSO
pause

