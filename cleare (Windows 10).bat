:::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                   by mmichaelKo                     ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@ECHO OFF
setlocal EnableDelayedExpansion
CHCP 65001>NUL
COLOR f9
TITLE cleare by mmichaelKo

cls

MODE 80,26
ECHO.
ECHO.
ECHO.
ECHO.
CALL :COLOR f5
CALL :ECHO "                                       ###"
CALL :COLOR f5
CALL :ECHO "                                    #######"
CALL :COLOR f5
CALL :ECHO "                                  #########" 
CALL :COLOR f5
CALL :ECHO "                                 #########"
CALL :COLOR fD
CALL :ECHO "                               ###########" /
CALL :COLOR fD
CALL :ECHO "    #####"
CALL :COLOR fD
CALL :ECHO "                              ###########" /
CALL :COLOR fD
CALL :ECHO "  ########" 
CALL :COLOR f1
CALL :ECHO "                             #####" /
CALL :COLOR f1
CALL :ECHO "  ###############" 
CALL :COLOR f1
CALL :ECHO "                             ####" /
CALL :COLOR f1
CALL :ECHO "   ###############"
CALL :COLOR f9
CALL :ECHO "                                    #######" /
CALL :COLOR f9
CALL :ECHO "  ######" 
CALL :COLOR f9
CALL :ECHO "                                     ###" /
CALL :COLOR f9
CALL :ECHO "     #####"
CALL :COLOR f3
CALL :ECHO "                                             ####"
CALL :COLOR f3
CALL :ECHO "                                            ####"
CALL :COLOR f3
CALL :ECHO "                                            ####" 
CALL :COLOR f3
CALL :ECHO "                                            ####"
CALL :COLOR fB
CALL :ECHO "                                            ####"
CALL :COLOR fB
CALL :ECHO "                                           #####"
CALL :COLOR fB
CALL :ECHO "                                            ####" 
CALL :COLOR fB
CALL :ECHO "                                             ####" 
ping localhost -n 2 >NUL
goto clean
exit/b

:COLOR
 set c=%1& exit/b
:ECHO
 for /f %%i in ('"prompt $h& for %%i in (.) do rem"') do (
  pushd "%~dp0"& <NUL>"%~1_" set/p="%%i%%i  "& findstr/a:%c% . "%~1_*"
  (if "%~2" neq "/" ECHO.)& del "%~1_"& popd& set c=& exit/b
 )

:clean

cls

MODE 80,10

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Windows Disk Cleanup..
ECHO                Очистка диска Windows..
ECHO                [32m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Active Setup Temp Folders" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\BranchCache" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Delivery Optimization Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Diagnostic Data Viewer database files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\RetailDemo Offline Content" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Downloaded Program Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\GameNewsFiles" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\GameStatisticsFiles" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\GameUpdateFiles" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Internet Cache Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Memory Dump Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Offline Pages Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Old ChkDsk Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Previous Installations" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
:: REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Recycle Bin" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Service Pack Cleanup" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Setup Log Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error memory dump files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error minidump files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Setup Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Sync Files" /V StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Update Cleanup" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>NUL 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Upgrade Discarded Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\User file versions" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Defender" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Archive Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Queue Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting System Archive Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting System Queue Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows ESD installation files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Upgrade Log Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
cleanmgr.exe /sagerun:99 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting temporary files..
ECHO                Удаление временных файлов..
ECHO                [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Windows\Temp\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Temp\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\LocalService\AppData\Local\Temp\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Temp\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Removing Windows update files..
ECHO                Удаление файлов обновления Windows..
ECHO                [32m██████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\$WinREAgent' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\$Windows.~BT' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\$Windows.~WS' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows10Upgrade' -Recurse -Force" 2>nul >nul
net stop cryptsvc 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\catroot2\*' -Recurse -Force" 2>nul >nul
net start cryptsvc 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\Logs\WindowsUpdate\*.log' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SoftwareDistribution\Download\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Cache\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting memory dumps..
ECHO                Удаление дампов памяти..
ECHO                [32m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CrashDumps\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting Microsoft Store cache..
ECHO                Удаление кэша Microsoft Store..
ECHO                [32m████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
:: CD "C:\Windows\system32\"
:: WSReset.exe
:: REM taskkill /IM WinStore.App.exe /F 2>NUL

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Reset DNS cache..
ECHO                Сброс DNS кэша..
ECHO                [32m█████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
ipconfig /flushdns 2>nul >nul
ipconfig /registerdns 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Clear ARP cache..
ECHO                Сброс ARP кэша..
ECHO                [32m█████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
netsh interface ip delete arpcache 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Cleaning up the WinSxS folder..
ECHO                Очистка папки WinSxS..
ECHO                [32m███████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
Dism.exe /Online /Cleanup-Image /StartComponentCleanup 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Removing empty unnecessary folders in system32 (fix)
ECHO                Удаление пустых ненужных папок в system32 (фикс)..
ECHO                [32m████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
schtasks /change /disable /tn "\Microsoft\Windows\Management\Provisioning\Logon" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\config\systemprofile\AppData\Local\*.tmp' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting the RDP cache..
ECHO                Удаление кэша RDP..
ECHO                [32m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Terminal Server Client\cache\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Removing logs..
ECHO                Удаление логов..
ECHO                [32m██████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\windows\*.log' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\inf\*.log' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\logs\*.log' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\Panther\*.log' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\windows\logs\cbs\*.log' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\Logs\MoSetup\*.log' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\Microsoft.NET\*.log' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Windows\WebCache\*.log' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\*.log' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Windows\SettingSync\*.log' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Logs\*.etl' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Removing unnecessary Windows folders..
ECHO                Удаление ненужных папок Windows..
ECHO                [32m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\tmp' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\AMD' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\temp' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\INTEL' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\NVIDIA' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\PerfLogs' -Recurse -Force" 2>nul >nul


cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Removing Nvidia cache..
ECHO                Удаление кэша Nvidia..
ECHO                [32m██████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\ProgramData\NVIDIA\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\D3DSCache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA\GLCache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\ProgramData\NVIDIA Corporation\GeForce Experience\Logs\*.log' -Recurse -Force" 2>nul >nul
PowerShell -command "Get-ChildItem -path 'C:\ProgramData\NVIDIA Corporation\Downloader' -recurse | where {$_.Name -match '[0-9A-Z]{32}$'} | Remove-Item -Force -Recurse"

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting the Microsoft Office cache..
ECHO                Удаление кэша Microsoft Office..
ECHO                [32m███████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Office\*.tmp' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Office\Recent\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Outlook\RoamCache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\OneNote\16.0\cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Office\15.0\OfficeFileCache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Office\16.0\OfficeFileCache\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Delete the history of the last opened files.
ECHO                Удаление истории последних открытых файлов..
ECHO                [32m███████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
:: PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Windows\Recent\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting the program cache..
ECHO                Удаление кэша программ..
ECHO                [32m████████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\ProgramData\Package Cache\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Removing network shortcuts..
ECHO                Удаление сетевых ярлыков..
ECHO                [32m█████████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Windows\Network Shortcuts\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting Windows history..
ECHO                Удаление истории Windows..
ECHO                [32m██████████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Windows\History\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Removing Java cache..
ECHO                Удаление кэша Java..
ECHO                [32m███████████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\Sun\Java\Deployment\cache\*' -Recurse -Force" 2>nul >null

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting Discord cache..
ECHO                Удаление кэша Discord..
ECHO                [32m████████████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Discord\Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Discord\GPUCache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Discord\Code Cache\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting the Adobe cache..
ECHO                Удаление кэша Adobe..
ECHO                [32m███████████████████████████░░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Adobe\Common\Media Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\Adobe\Common\Media Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Adobe\Common\Media Cache Files\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\Adobe\Common\Media Cache Files\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting the RedGiant cache..
ECHO                Удаление кэша RedGiant..
ECHO                [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\ProgramData\Maxon\Service\Downloads\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\ProgramData\Red Giant\Red Giant Service\Downloads\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting Spotify cache..
ECHO                Удаление кэша Spotify..
ECHO                [32m█████████████████████████████░░░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Spotify\Data\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\SpotifyAB.SpotifyMusic_zpdnekdrzrea0\LocalCache\Spotify\Data\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting the iTunes cache..
ECHO                Удаление кэша ITunes..
ECHO                [32m███████████████████████████████░░░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Apple Computer\iTunes\iPhone Software Updates\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting Steam cache..
ECHO                Удаление кэша Steam..
ECHO                [32m█████████████████████████████████░░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Program Files (x86)\Steam\appcache\librarycache\*.jpg' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files (x86)\Steam\appcache\librarycache\*.png' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting the Internet Explorer cache..
ECHO                Удаление кэша Internet Explorer..
ECHO                [32m██████████████████████████████████░░░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8 2>NUL

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting the Microsoft Edge cache..
ECHO                Удаление кэша Microsoft Edge..
ECHO                [32m[5m████████████████████████████████████░░░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Program Files (x86)\Microsoft\EdgeUpdate\Download\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\Default\Code Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\Default\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\Profile*\Code Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\Profile*\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting Google Chrome cache..
ECHO                Удаление кэша Google Chrome..
ECHO                [32m[5m██████████████████████████████████████░░░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Program Files\Google\Update\Download\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files (x86)\Google\Update\Download\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Update\Download\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\Default\Code Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\Default\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\Profile*\Code Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\Profile*\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting Yandex Browser cache..
ECHO                Удаление кэша Yandex Browser..
ECHO                [32m[5m████████████████████████████████████████░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\Default\Code Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\Default\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\Profile*\Code Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\Profile*\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting Firefox cache..
ECHO                Удаление кэша Firefox..
ECHO                [32m[5m████████████████████████████████████████░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*.default-release\cache2\entries\*' -Recurse -Force"

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting Opera cache..
ECHO                Удаление кэша Opera..
ECHO                [32m[5m████████████████████████████████████████░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Opera Software\Opera Stable\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Opera Software\Opera GX Stable\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Opera Software\Opera GX Stable\_side_profiles\*\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting Cent Browser cache..
ECHO                Удаление кэша Cent Browser..
ECHO                [32m[5m████████████████████████████████████████░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CentBrowser\User Data\Default\Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CentBrowser\User Data\Default\Code Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CentBrowser\User Data\Profile*\Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CentBrowser\User Data\Profile*\Code Cache\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting Atom cache..
ECHO                Удаление кэша Atom..
ECHO                [32m[5m████████████████████████████████████████░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\Default\Code Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\Default\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\Profile*\Code Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\Profile*\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting Vivaldi cache..
ECHO                Удаление кэша Vivaldi..
ECHO                [32m[5m████████████████████████████████████████░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\Default\Code Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\Default\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\Profile*\Code Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\Profile*\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting BraveBrowser cache..
ECHO                Удаление кэша BraveBrowser..
ECHO                [32m[5m████████████████████████████████████████░░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Program Files\BraveSoftware\Update\Download\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files (x86)\BraveSoftware\Update\Download\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\Default\Code Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\Default\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\Profile*\Code Cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\Profile*\Cache\Cache_Data\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Deleting the Microsoft Teams сache..
ECHO                Удаление кэша Microsoft Teams..
ECHO                [32m█████████████████████████████████████████░░░░░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Teams\tmp\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Teams\Cache\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Clearing the cache of fonts and icons..
ECHO                Очистка кэша шрифтов и значков..
ECHO                [32m█████████████████████████████████████████████░░░░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
reg delete "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /f 2>nul >nul
net stop "FontCache" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\FNTCACHE.DAT' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\LocalService\AppData\Local\FontCache\*.dat' -Recurse -Force" 2>nul >nul
net start "FontCache" 2>nul >nul
taskkill /f /im explorer.exe 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Windows\Explorer\*.db' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\IconCache.db' -Recurse -Force" 2>nul >nul
start explorer.exe

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Disabling hibernation..
ECHO                Отключение гибернации..
ECHO                [32m████████████████████████████████████████████████░░
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
powercfg.exe /hibernate off

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO                Clearing RAM..
ECHO                Очистка оперативной памяти..
ECHO                [32m██████████████████████████████████████████████████
ECHO.
ECHO.
ECHO.
CHCP 866>NUL
CD "C:\Windows\SysWOW64\"
rundll32.exe

cls

CHCP 65001>NUL
PowerShell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Cache and junk files removed successfully!                            Кэш и ненужные файлы успешно удалены!', 'Successful cleaning | Успешная очистка', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
exit