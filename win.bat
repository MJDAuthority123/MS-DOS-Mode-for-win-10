@echo off
echo MS-DOS Mode Implementation for Windows 10 by MJD Authority (Elevation exploit by Matt)
echo.
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo Running as NT AUTHORITY, no elevation needed
echo =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo.
echo Starting the file... 
ping localhost -n 2 > nul
echo Exiting MS-DOS (recovery) mode...
echo.
echo Tweaking the registry...
reg add HKLM\System\Setup /v CmdLine /t REG_SZ /d "" /f
reg add HKLM\System\Setup /v SystemSetupInProgress /t REG_DWORD /d 0 /f > nul
reg add HKLM\System\Setup /v SetupType /t REG_DWORD /d 0 /f > nul
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v EnableCursorSuppression /t REG_DWORD /d 1 /f > nul
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 1 /f > nul
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v VerboseStatus /t REG_DWORD /d 0 /f > nul
echo.
pause
echo.
echo Done, rebooting. (3 attempts)
echo Attempt #1
shutdown -r -t 0
ping localhost -n 3 > nul
echo Rebooting...
echo Attempt #2
shutdown -r -t 0
ping localhost -n 3 > nul
Rebooting...
echo Attempt #3
shutdown -r -t 0
echo Rebooting...
echo If Windows hasn't rebooted yet, try resetting the machine.
@echo off