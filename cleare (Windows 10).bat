:::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                   by mmichaelKo                     ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@ECHO OFF
setlocal EnableDelayedExpansion
CHCP 65001>NUL
COLOR F9
TITLE cleare (Windows 10) by mmichaelKo

MODE 62,26
COLOR F9
ECHO.
ECHO.
ECHO.
ECHO.
CALL :COLOR F5
CALL :ECHO "                              ###"
CALL :COLOR F5
CALL :ECHO "                           #######"
CALL :COLOR F5
CALL :ECHO "                         #########"
CALL :COLOR F5
CALL :ECHO "                        #########"
CALL :COLOR FD
CALL :ECHO "                      ###########" /
CALL :COLOR FD
CALL :ECHO "    #####"
CALL :COLOR FD
CALL :ECHO "                     ###########" /
CALL :COLOR FD
CALL :ECHO "  ########"
CALL :COLOR F1
CALL :ECHO "                    #####" /
CALL :COLOR F1
CALL :ECHO "  ###############"
CALL :COLOR F1
CALL :ECHO "                    ####" /
CALL :COLOR F1
CALL :ECHO "   ###############"
CALL :COLOR F9
CALL :ECHO "                           #######" /
CALL :COLOR F9
CALL :ECHO "  ######"
CALL :COLOR F9
CALL :ECHO "                            ###" /
CALL :COLOR F9
CALL :ECHO "     #####"
CALL :COLOR F3
CALL :ECHO "                                    ####"
CALL :COLOR F3
CALL :ECHO "                                   ####"
CALL :COLOR F3
CALL :ECHO "                                   ####"
CALL :COLOR F3
CALL :ECHO "                                   ####"
CALL :COLOR FB
CALL :ECHO "                                   ####"
CALL :COLOR FB
CALL :ECHO "                                  #####"
CALL :COLOR FB
CALL :ECHO "                                   ####"
CALL :COLOR FB
CALL :ECHO "                                    ####"
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

MODE 62,8

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Windows Disk Cleanup..
ECHO        Очистка диска Windows..
ECHO        [32m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Active Setup Temp Folders"                    /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\BranchCache"                                  /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Delivery Optimization Files"                  /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Diagnostic Data Viewer database files"        /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\RetailDemo Offline Content"                   /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Downloaded Program Files"                     /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\GameNewsFiles"                                /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\GameStatisticsFiles"                          /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\GameUpdateFiles"                              /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Internet Cache Files"                         /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Memory Dump Files"                            /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Offline Pages Files"                          /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Old ChkDsk Files"                             /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Previous Installations"                       /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
:: REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Recycle Bin"                                  /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Service Pack Cleanup"                         /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Setup Log Files"                              /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error memory dump files"               /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\System error minidump files"                  /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Files"                              /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Setup Files"                        /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Temporary Sync Files"                         /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Thumbnail Cache"                              /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Update Cleanup"                               /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Upgrade Discarded Files"                      /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\User file versions"                           /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Defender"                             /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Archive Files"        /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting Queue Files"          /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting System Archive Files" /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Error Reporting System Queue Files"   /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows ESD installation files"               /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Windows Upgrade Log Files"                    /V StateFlags0099 /D 2 /T REG_DWORD /F 2>nul >nul
cleanmgr.exe /sagerun:99 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting temporary files..
ECHO        Удаление временных файлов..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Windows\assembly\*\Temp\*'                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\assembly\Temp\*'                                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\assembly\tmp\*'                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\Temp\*'                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\LocalService\AppData\Local\Temp\*'   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Temp\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\config\systemprofile\AppData\Local\Temp\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Temp\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Temp\*'                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\AC\Temp\*'                  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Removing Windows update files..
ECHO        Удаление файлов обновления Windows..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\$GetCurrent'                                                                                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\$SysReset'                                                                                           -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\$Windows.~BT'                                                                                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\$Windows.~WS'                                                                                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\$WinREAgent'                                                                                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\ESD'                                                                                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows10Upgrade'                                                                                    -Recurse -Force" 2>nul >nul
net stop cryptsvc                                                                                                                                          2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\catroot2\*'                                                                         -Recurse -Force" 2>nul >nul
net start cryptsvc                                                                                                                                         2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\Logs\WindowsUpdate\*.log'                                                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SoftwareDistribution\DataStore\Logs\*'                                                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SoftwareDistribution\Download\*'                                                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Cache\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Removing logs..
ECHO        Удаление логов..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Windows\*.log'                                                                                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\inf\*.log'                                                                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\logs\*.log'                                                                                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\windows\logs\cbs\*.log'                                                                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\logs\MoSetup\*.log'                                                                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\Microsoft.NET\*.log'                                                                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\Panther\*.log'                                                                                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Logs\*.etl' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\Windows\WebCache\*.log'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\LocalService\AppData\Local\CLR_v4.0\UsageLogs\*.log'                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\Windows\SettingSync\*.log'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\WebCache\*.log'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\NetworkService\AppData\LocalCLR_v4.0\UsageLogs\*.log'                           -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\SettingSync\*.log'               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\WebCache\*.log'                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\config\systemprofile\AppData\Local\CLR_v4.0\UsageLogs\*.log'                           -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\SettingSync\*.log'                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\WebCache\*.log'                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\CLR_v4.0\UsageLogs\*.log'                           -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\SettingSync\*.log'                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Windows\WebCache\*.log'                                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\*.log'                                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Windows\SettingSync\*.log'                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'                                            -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Removing unnecessary Windows folders..
ECHO        Удаление ненужных папок Windows..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\AMD'      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\INTEL'    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\NVIDIA'   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\PerfLogs' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Temp'     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\tmp'      -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting memory dumps..
ECHO        Удаление дампов памяти..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\LocalService\AppData\Local\CrashDumps\*'   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\CrashDumps\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\config\systemprofile\AppData\Local\CrashDumps\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\CrashDumps\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CrashDumps\*'                                -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting SRUDB.dat..
ECHO        Удаление SRUDB.dat..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
net stop DPS                                                                  2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\sru\*' -Recurse -Force" 2>nul >nul
net start DPS                                                                 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Cleaning up servicing\LCU folder..
ECHO        Очистка папки servicing\LCU..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Windows\servicing\LCU\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Cleaning up WinSxS folder..
ECHO        Очистка папки WinSxS..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
Dism.exe /Online /Cleanup-Image /StartComponentCleanup            2>nul >nul
Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase 2>nul >nul
Dism.exe /online /Cleanup-Image /SPSuperseded                     2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Removing empty unnecessary folders in system32..
ECHO        Удаление пустых ненужных папок в system32..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
schtasks /change /disable /tn "\Microsoft\Windows\Management\Provisioning\Logon"                                 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\config\systemprofile\AppData\Local\*.tmp' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Disable program cache..
ECHO        Отключение кэша программ..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
:: "C:\Program Files\Microsoft Visual Studio\Installer\vs_installer.exe"          --nocache 2>nul >nul
:: "C:\Program Files (x86)\Microsoft Visual Studio\Installer\vs_installer.exe"    --nocache 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\Installer\*.tmp'           -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Windows history..
ECHO        Удаление истории Windows..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Windows\History\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Delete history of last opened files..
ECHO        Удаление истории последних открытых файлов..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Windows\Recent\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Removing network shortcuts..
ECHO        Удаление сетевых ярлыков..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Windows\Network Shortcuts\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Reset DNS cache..
ECHO        Сброс DNS кэша..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
ipconfig /flushdns    2>nul >nul
ipconfig /registerdns 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Clear ARP cache..
ECHO        Сброс ARP кэша..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
netsh interface ip delete arpcache 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting RDP cache..
ECHO        Удаление кэша RDP..
ECHO        [32m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Terminal Server Client\cache\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Store cache..
ECHO        Удаление кэша Microsoft Store..
ECHO        [32m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
WSReset.exe                      2>nul >nul
taskkill /IM WinStore.App.exe /F 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting OneDrive cache..
ECHO        Удаление кэша OneDrive..
ECHO        [32m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Program Files*\Microsoft OneDrive\setup\logs\*'                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\OneDrive\setup\logs\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\OneDrive\setup\logs\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\OneDrive\logs\Common\*'                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\OneDrive\setup\logs\*'                               -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Google Drive cache..
ECHO        Удаление кэша Google Drive..
ECHO        [32m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\DriveFS\*\content_cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\DriveFS\*\thumbnails_cache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\DriveFS\cef_cache\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\DriveFS\cef_cache\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\DriveFS\cef_cache\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\DriveFS\cef_cache\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\DriveFS\cef_cache\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\DriveFS\Crashpad\*'                              -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Dropbox cache..
ECHO        Удаление кэша Dropbox..
ECHO        [32m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Program Files*\Dropbox\Update\Download\*'            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Dropbox\Update\Install\*'             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Dropbox\Update\Offline\*'             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\Dropbox\.dropbox.cache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Dropbox\avatar_cache\*'        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Dropbox\Crashpad\*'            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Dropbox\instance*\sync\temp\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Office cache..
ECHO        Удаление кэша Microsoft Office..
ECHO        [32m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Office\OTele\*'                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Office\OTele\*'                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\OneNote\*\cache\*'                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Office\OTele\*'                                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Office\*\OfficeFileCache\*'                                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Office\*\WebServiceCache\AllUsers\officeclient.microsoft.com\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Office\Spw\*'                                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Outlook\RoamCache\*'                                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Office\*.tmp'                                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Office\Recent\*'                                              -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Removing Nvidia cache..
ECHO        Удаление кэша Nvidia..
ECHO        [32m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\ProgramData\NVIDIA\*'                                                                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\ProgramData\NVIDIA Corporation\GeForce Experience\Logs\*.log'                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\ProgramData\NVIDIA Corporation\NV_Cache\*'                                                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\LocalService\AppData\Local\D3DSCache\*'                                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\D3DSCache\*'                                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\config\systemprofile\AppData\Local\D3DSCache\*'                                           -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\D3DSCache\*'                                           -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\D3DSCache\*'                                                                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA\GLCache\*'                                                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NV_Cache\*'                                                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Cache\*'                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Code Cache\*'                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Crashpad\*'                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\GPUCache\*'                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Service Worker\CacheStorage\*'       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Service Worker\ScriptCache\*'        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Cache\*'                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Code Cache\*'                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Crashpad\*'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\GPUCache\*'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Service Worker\CacheStorage\*'              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Service Worker\ScriptCache\*'               -Recurse -Force" 2>nul >nul
PowerShell -command "Get-ChildItem -Path 'C:\ProgramData\NVIDIA Corporation\Downloader' -Recurse | Where {$_.Name -as [guid]} | Remove-Item     -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Adobe cache..
ECHO        Удаление кэша Adobe..
ECHO        [32m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\Adobe\Common\Media Cache\*'                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\Adobe\Common\Media Cache Files\*'                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\Adobe\Common\Peak Files\*'                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Adobe\Common\Media Cache\*'                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Adobe\Common\Media Cache Files\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Adobe\Common\Peak Files\*'                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting MaxonApp (RedGiant) cache..
ECHO        Удаление кэша MaxonApp (RedGiant)..
ECHO        [32m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\ProgramData\Maxon\Service\Downloads\*'                                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\ProgramData\Red Giant\Red Giant Service\Downloads\*'                                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Crashpad\*'                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\GrShaderCache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\Cache\Cache_Data\*'            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\ShaderCache\*'                         -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Skype сache..
ECHO        Удаление кэша Skype..
ECHO        [32m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Cache\*'                                                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Code Cache\*'                                                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Crashpad\*'                                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\GPUCache\*'                                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Service Worker\CacheStorage\*'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Service Worker\ScriptCache\*'                                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Teams сache..
ECHO        Удаление кэша Microsoft Teams..
ECHO        [32m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Teams\Cache\*'                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Teams\tmp\*'                                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Teams\Cache\*'                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Teams\Code Cache\*'                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Teams\Crashpad\*'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Teams\GPUCache\*'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Teams\Service Worker\CacheStorage\*'              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Teams\Service Worker\ScriptCache\*'               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Zoom сache..
ECHO        Удаление кэша Zoom..
ECHO        [32m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Cache\Cache_Data\*'            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\ShaderCache\*'                         -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Telegram cache..
ECHO        Удаление кэша Telegram..
ECHO        [32m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Telegram Desktop\tdata\emoji\*'                                                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Telegram Desktop\tdata\user_data*\cache\0\*'                                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Telegram Desktop\tdata\user_data*\media_cache\0\*'                                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\Telegram*\LocalCache\Roaming\Telegram Desktop UWP\tdata\emoji\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\Telegram*\LocalCache\Roaming\Telegram Desktop UWP\tdata\user_data*\cache\0\*'       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\Telegram*\LocalCache\Roaming\Telegram Desktop UWP\tdata\user_data*\media_cache\0\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting VK Messenger cache..
ECHO        Удаление кэша VK Messenger..
ECHO        [32m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\VK\Cache\*'                                                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\VK\Code Cache\*'                                                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\VK\Crashpad\*'                                                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\VK\GPUCache\*'                                                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\VK\Service Worker\CacheStorage\*'                                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\VK\Service Worker\ScriptCache\*'                                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Discord cache..
ECHO        Удаление кэша Discord..
ECHO        [32m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Discord\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Discord\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Discord\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Discord\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Discord\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Discord\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting WhatsApp cache..
ECHO        Удаление кэша WhatsApp..
ECHO        [32m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\WhatsApp\Cache\*'                                                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\WhatsApp\Code Cache\*'                                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\WhatsApp\Crashpad\*'                                                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\WhatsApp\File System\*'                                                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\WhatsApp\GPUCache\*'                                                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\WhatsApp\Service Worker\CacheStorage\*'                                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\WhatsApp\Service Worker\ScriptCache\*'                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\File System\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Viber cache..
ECHO        Удаление кэша Viber..
ECHO        [32m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
:: PowerShell -command "Remove-Item 'C:\Users\*\Documents\ViberDownloads\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\ViberPC\*\QmlUrlCache\data*\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\ViberPC\*\QmlWebCache\data*\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\ViberPC\*\Thumbnails\*'        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\ViberPC\data\stickers\*'       -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting ICQ cache..
ECHO        Удаление кэша ICQ..
ECHO        [32m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\ICQ\cache\*'           -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\ICQ\*\content.cache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\ICQ\*\info\cache'      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\ICQ\*\stickers\*'      -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting 1C cache..
ECHO        Удаление кэша 1C..
ECHO        [32m█████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Get-ChildItem 'C:\Users\*\AppData\Local\1C\*\'   -Recurse | Where {$_.Name -as [guid]} | Remove-Item -Force -Recurse" 2>nul >nul
PowerShell -command "Get-ChildItem 'C:\Users\*\AppData\Roaming\1C\*\' -Recurse | Where {$_.Name -as [guid]} | Remove-Item -Force -Recurse" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Bitrix24 cache..
ECHO        Удаление кэша Bitrix24..
ECHO        [32m█████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Bitrix24\User Data\Crashpad\*'                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Slack cache..
ECHO        Удаление кэша Slack..
ECHO        [32m█████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Slack\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Slack\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Slack\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Slack\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Slack\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Slack\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting OBS cache..
ECHO        Удаление кэша OBS..
ECHO        [32m████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Cache\*'                                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Code Cache\*'                                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Crashpad\*'                                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\GPUCache\*'                                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Service Worker\CacheStorage\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Service Worker\ScriptCache\*'                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Streamlabs cache..
ECHO        Удаление кэша Streamlabs..
ECHO        [32m████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\slobs-client\Cache\*'                                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\slobs-client\Code Cache\*'                                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\slobs-client\Crashpad\*'                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\slobs-client\GPUCache\*'                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\slobs-client\Service Worker\CacheStorage\*'                           -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\slobs-client\Service Worker\ScriptCache\*'                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Twitch Studio cache..
ECHO        Удаление кэша Twitch Studio..
ECHO        [32m████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Twitch Studio\*\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Twitch Studio\*\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Twitch Studio\*\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Twitch Studio\*\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Twitch Studio\*\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Twitch Studio\*\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Apple (iTunes) cache..
ECHO        Удаление кэша Apple (iTunes)..
ECHO        [32m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\ProgramData\Apple\Installer Cache\*'                                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\ProgramData\Apple Computer\Installer Cache\*'                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Apple\Apple Software Update\*'                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Apple Computer\iTunes\PlayCache\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Apple Computer\iTunes\SubscriptionPlayCache\*'     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Apple Computer\iTunes\iPhone Software Updates\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Apple Computer\Logs\*'                           -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Spotify cache..
ECHO        Удаление кэша Spotify..
ECHO        [32m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Spotify\Data\*'                                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Spotify\Browser\Cache\Cache_Data\*'                                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Spotify\Browser\Code Cache\*'                                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Spotify\Browser\Crashpad\*'                                                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Spotify\Browser\GPUCache\*'                                                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Spotify\Browser\Service Worker\CacheStorage\*'                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Spotify\Browser\Service Worker\ScriptCache\*'                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Data\*'                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Cache\Cache_Data\*'            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Yandex.Music cache..
ECHO        Удаление кэша Yandex.Music..
ECHO        [32m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Yandex.Music*\LocalState\CachedCovers\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Yandex.Music*\LocalCache\MusicCache\*'   -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting ScreenClip cache..
ECHO        Удаление кэша ScreenClip..
ECHO        [32m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.CBS*\TempState\ScreenClip\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Removing Python (pip) cache..
ECHO        Удаление кэша Python (pip)..
ECHO        [32m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\pip\cache\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Removing Microsoft Visual Studio cache..
ECHO        Удаление кэша Microsoft Visual Studio..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\VisualStudio\*\ComponentModelCache\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Removing GitHub Desktop cache..
ECHO        Удаление кэша GitHub Desktop..
ECHO        [32m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\GitHub Desktop\Cache\Cache_Data\*'            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\GitHub Desktop\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\GitHub Desktop\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\GitHub Desktop\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\GitHub Desktop\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\GitHub Desktop\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Removing Unity cache..
ECHO        Удаление кэша Unity..
ECHO        [32m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Program Files*\Unity\Cache\*'                                                                                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Unity\Hub\Editor\*\Editor\Data\Resources\PackageManager\ProjectTemplates\libcache\*\ShaderCache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Unity\Cache\*'                                                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\unityhub-updater\*'                                                                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\Unity\Cache\*'                                                                           -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\Unity\Caches\*'                                                                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\Cache\*'                                                                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\Code Cache\*'                                                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\Crashpad\*'                                                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\GPUCache\*'                                                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\Service Worker\CacheStorage\*'                                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\Service Worker\ScriptCache\*'                                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\graphqlCache\*'                                                                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\logs\*'                                                                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\Service Worker\CacheStorage\*'                                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\Service Worker\ScriptCache\*'                                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Cache\*'                                                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Code Cache\*'                                                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Crashpad\*'                                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\GPUCache\*'                                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Service Worker\CacheStorage\*'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Service Worker\ScriptCache\*'                                  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Removing Java cache..
ECHO        Удаление кэша Java..
ECHO        [32m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\Sun\Java\Deployment\cache\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Minecraft cache..
ECHO        Удаление кэша Minecraft..
ECHO        [32m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\.minecraft\webcache*\Cache\*'                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\.minecraft\webcache*\Code Cache\*'                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\.minecraft\webcache*\Crashpad\*'                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\.minecraft\webcache*\GPUCache\*'                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\.minecraft\webcache*\Service Worker\CacheStorage\*'       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\.minecraft\webcache*\Service Worker\ScriptCache\*'        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Minecraft*\LocalCache\minecraftpe\CatalogCache\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*Minecraft*\LocalCache\minecraftpe\ContentCache\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Steam cache..
ECHO        Удаление кэша Steam..
ECHO        [32m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Program Files*\Steam\appcache\librarycache\*.jpg'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Steam\appcache\librarycache\*.png'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Steam\steam\cached\*'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Steam\SteamApps\downloading\*'                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Steam\SteamApps\temp\*'                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Steam\SteamApps\workshop\temp\*'                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Steam\SteamApps\workshop\downloads\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Steam\htmlcache\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Steam\htmlcache\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Steam\htmlcache\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Steam\htmlcache\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Steam\htmlcache\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Steam\htmlcache\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Epic Launcher cache..
ECHO        Удаление кэша Epic Launcher..
ECHO        [32m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\ProgramData\Epic\EpicGamesLauncher\Data\ContentCache\*'                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\ProgramData\Epic\EpicGamesLauncher\Data\EMS\EpicGamesLauncher\*.png'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Cache\*'                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Code Cache\*'                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Crashpad\*'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\GPUCache\*'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Service Worker\CacheStorage\*'              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Service Worker\ScriptCache\*'               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Cache\*'                                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Code Cache\*'                                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Crashpad\*'                                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\GPUCache\*'                                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Service Worker\CacheStorage\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Service Worker\ScriptCache\*'                        -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Origin / EA Launcher cache..
ECHO        Удаление кэша Origin / EA Launcher..
ECHO        [32m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\ProgramData\Origin\CatalogCache\*'                                                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\ProgramData\Origin\DownloadCache\*'                                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SysWOW64\config\systemprofile\AppData\Roaming\Origin\*'                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\EADesktop\cache\QtWebEngine\Default\Cache\*'                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\Code Cache\*'                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\Crashpad\*'                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\GPUCache\*'                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\Service Worker\CacheStorage\*'     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\Service Worker\ScriptCache\*'      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Origin\Origin\cache\QtWebEngine\Default\Cache\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Battle.net cache..
ECHO        Удаление кэша Battle.net..
ECHO        [32m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\ProgramData\Battle.net\Agent\data\cache\*'                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Battle.net\Cache\*'                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Battle.net\BrowserCache\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Battle.net\BrowserCache\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Battle.net\BrowserCache\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Battle.net\BrowserCache\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Battle.net\BrowserCache\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Battle.net\BrowserCache\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Blizzard Entertainment\Telemetry\*'                    -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Uplay cache..
ECHO        Удаление кэша Uplay..
ECHO        [32m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\assets\*'                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Rockstar Games cache..
ECHO        Удаление кэша Rockstar Games..
ECHO        [32m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\Documents\Rockstar Games\Social Club\Renderer\Cache\*'                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\Documents\Rockstar Games\Social Club\Renderer\Code Cache\*'                           -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\Documents\Rockstar Games\Social Club\Renderer\Crashpad\*'                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\Documents\Rockstar Games\Social Club\Renderer\GPUCache\*'                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\Documents\Rockstar Games\Social Club\Renderer\Service Worker\CacheStorage\*'          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\Documents\Rockstar Games\Social Club\Renderer\Service Worker\ScriptCache\*'           -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting GOG cache..
ECHO        Удаление кэша GOG..
ECHO        [32m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\ProgramData\GOG.com\Galaxy\webcache\common\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\ProgramData\GOG.com\Galaxy\webcache\common\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\ProgramData\GOG.com\Galaxy\webcache\common\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\ProgramData\GOG.com\Galaxy\webcache\common\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\ProgramData\GOG.com\Galaxy\webcache\common\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\ProgramData\GOG.com\Galaxy\webcache\common\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting OpenVPN Connect..
ECHO        Удаление кэша OpenVPN Connect..
ECHO        [32m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\OpenVPN Connect\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\OpenVPN Connect\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\OpenVPN Connect\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\OpenVPN Connect\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\OpenVPN Connect\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\OpenVPN Connect\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting CryptnetUrlCache cache..
ECHO        Удаление кэша CryptnetUrlCache..
ECHO        [32m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\LocalService\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\LocalService\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*'   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\NetworkService\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\NetworkService\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*'                                -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Internet Explorer cache..
ECHO        Удаление кэша Internet Explorer..
ECHO        [32m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8                                                            2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\cache\*'                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Windows\WebCache.old*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Edge cache..
ECHO        Удаление кэша Microsoft Edge..
ECHO        [32m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Program Files*\Microsoft\EdgeUpdate\Download\*'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\Crashpad\*'                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Cache\Cache_Data\*'            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\File System\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\GrShaderCache\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\ShaderCache\*'                   -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Google Chrome cache..
ECHO        Удаление кэша Google Chrome..
ECHO        [32m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Program Files*\Google\Update\Download\*'                                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\Crashpad\*'                                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Cache\Cache_Data\*'                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Code Cache\*'                                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\File System\*'                                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\GPUCache\*'                                           -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Service Worker\CacheStorage\*'                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Service Worker\ScriptCache\*'                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Cache\*'                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Code Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\File System\*'                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\GPUCache\*'                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*'      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\GrShaderCache\*'                                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome\User Data\ShaderCache\*'                                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\Crashpad\*'                                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Cache\Cache_Data\*'                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Code Cache\*'                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\File System\*'                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\GPUCache\*'                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Service Worker\CacheStorage\*'                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Service Worker\ScriptCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\File System\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\GrShaderCache\*'                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\ShaderCache\*'                                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\Crashpad\*'                                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Cache\Cache_Data\*'                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Code Cache\*'                                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\File System\*'                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\GPUCache\*'                                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Service Worker\CacheStorage\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Service Worker\ScriptCache\*'                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Cache\*'                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Code Cache\*'                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\File System\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\GPUCache\*'                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\GrShaderCache\*'                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\ShaderCache\*'                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\Crashpad\*'                                           -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Cache\Cache_Data\*'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Code Cache\*'                                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\File System\*'                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\GPUCache\*'                                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Service Worker\CacheStorage\*'                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Service Worker\ScriptCache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Cache\*'                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Code Cache\*'                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\File System\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\GPUCache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*'    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\GrShaderCache\*'                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Chromium\User Data\ShaderCache\*'                                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Google\Update\Download\*'                                                       -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Yandex Browser cache..
ECHO        Удаление кэша Yandex Browser..
ECHO        [32m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Program Files*\Yandex\YandexBrowser\Temp\*'                                           -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\Temp\*'                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\Crashpad\*'                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\Cache\Cache_Data\*'            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\File System\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\TurboAppCache\*'               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\GrShaderCache\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\ShaderCache\*'                   -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Opera cache..
ECHO        Удаление кэша Opera..
ECHO        [32m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Opera Software\Opera GX Stable\_side_profiles\*\Cache\Cache_Data\*'              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Opera Software\Opera GX Stable\_side_profiles\*\System Cache\Cache_Data\*'       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Opera Software\Opera GX Stable\Cache\Cache_Data\*'                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Opera Software\Opera GX Stable\System Cache\Cache_Data\*'                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Opera Software\Opera Stable\Cache\Cache_Data\*'                                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Opera Software\Opera Stable\System Cache\Cache_Data\*'                           -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Crash Reports\*'               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\File System\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\GrShaderCache\*'               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\ShaderCache\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\Code Cache\*'                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\Crash Reports\*'                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\File System\*'                                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\GPUCache\*'                                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\GrShaderCache\*'                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\Service Worker\CacheStorage\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\Service Worker\ScriptCache\*'                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\ShaderCache\*'                                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\Code Cache\*'                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\Crash Reports\*'                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\File System\*'                                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\GPUCache\*'                                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\GrShaderCache\*'                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\Service Worker\CacheStorage\*'                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\Service Worker\ScriptCache\*'                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\ShaderCache\*'                                     -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Mozilla Firefox cache..
ECHO        Удаление кэша Mozilla Firefox..
ECHO        [32m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\ProgramData\Mozilla*\updates\*\updates\*'                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*\cache2\entries\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Cent Browser cache..
ECHO        Удаление кэша Cent Browser..
ECHO        [32m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CentBrowser\User Data\Crashpad\*'                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CentBrowser\User Data\*\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CentBrowser\User Data\*\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CentBrowser\User Data\*\File System\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CentBrowser\User Data\*\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CentBrowser\User Data\*\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CentBrowser\User Data\*\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CentBrowser\User Data\GrShaderCache\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\CentBrowser\User Data\ShaderCache\*'                   -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Atom cache..
ECHO        Удаление кэша Atom..
ECHO        [32m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Program Files*\Mail.Ru\Atom\Temp\*'                                                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\Temp\*'                                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\Crashpad\*'                                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Cache\Cache_Data\*'                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Code Cache\*'                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\File System\*'                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\GPUCache\*'                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Service Worker\CacheStorage\*'                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Service Worker\ScriptCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\File System\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\GrShaderCache\*'                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\ShaderCache\*'                                     -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Vivaldi cache..
ECHO        Удаление кэша Vivaldi..
ECHO        [32m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\Crashpad\*'                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\*\Cache\Cache_Data\*'                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\*\Code Cache\*'                                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\*\File System\*'                                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\*\GPUCache\*'                                            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\*\Service Worker\CacheStorage\*'                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\*\Service Worker\ScriptCache\*'                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\File System\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\GrShaderCache\*'                                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Vivaldi\User Data\ShaderCache\*'                                           -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Brave Browser cache..
ECHO        Удаление кэша Brave Browser..
ECHO        [32m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Program Files*\BraveSoftware\Update\Download\*'                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\Crashpad\*'                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Cache\Cache_Data\*'            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\File System\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\GrShaderCache\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\ShaderCache\*'                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\BraveSoftware\Update\Download\*'                                       -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Comodo Dragon Browser cache..
ECHO        Удаление кэша Comodo Dragon Browser..
ECHO        [32m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\Crashpad\*'                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\*\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\*\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\*\File System\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\*\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\*\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\*\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\GrShaderCache\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\ShaderCache\*'                   -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting Pale Moon cache..
ECHO        Удаление кэша Pale Moon..
ECHO        [32m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Moonchild Productions\Pale Moon\Profiles\*\cache2\entries\*' -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Deleting a potential Cache..
ECHO        Удаление потенциального кэша..
ECHO        [32m██████████████████████████████████████████░░░░░░
ECHO.&ECHO.
CHCP 866>NUL
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\*\Cache\*'                                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\*\Code Cache\*'                                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\*\Crashpad\*'                                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\*\GPUCache\*'                                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\*\Service Worker\CacheStorage\*'                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\*\Service Worker\ScriptCache\*'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\*\Cache\*'                                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\*\Code Cache\*'                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\*\Crashpad\*'                                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\*\GPUCache\*'                                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\*\Service Worker\CacheStorage\*'                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\LocalLow\*\Service Worker\ScriptCache\*'                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\*\Cache\*'                                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\*\Code Cache\*'                                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\*\Crashpad\*'                                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\*\GPUCache\*'                                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\*\Service Worker\CacheStorage\*'                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\*\Service Worker\ScriptCache\*'                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Cache\*'                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Code Cache\*'                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Crashpad\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\GPUCache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Service Worker\CacheStorage\*'    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Service Worker\ScriptCache\*'     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Cache\*'                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Code Cache\*'                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Crashpad\*'                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\GPUCache\*'                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Service Worker\CacheStorage\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Service Worker\ScriptCache\*'   -Recurse -Force" 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Clearing cache of fonts and icons..
ECHO        Очистка кэша шрифтов и значков..
ECHO        [32m████████████████████████████████████████████░░░░
ECHO.&ECHO.
CHCP 866>NUL
taskkill /F /IM Explorer.exe                                                                                              2>nul >nul
NET Stop "FontCache"                                                                                                      2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\ServiceProfiles\LocalService\AppData\Local\FontCache\*.dat' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\FNTCACHE.DAT'                                      -Recurse -Force" 2>nul >nul
NET Start "FontCache"                                                                                                     2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\IconCache.db'                                 -Recurse -Force" 2>nul >nul
:: Deleting SageThumbs cahce | Удаление кэша SageThumbs
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\SageThumbs.db3'                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Windows\Explorer\*.db'              -Recurse -Force" 2>nul >nul
REG DELETE "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify"                 /F 2>nul >nul
Start Explorer.exe                                                                                                        2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Disabling hibernation..
ECHO        Отключение гибернации..
ECHO        [32m█████████████████████████████████████████████░░░
ECHO.&ECHO.
CHCP 866>NUL
powercfg.exe /hibernate off 2>nul >nul

cls

CHCP 65001>NUL
COLOR F9
ECHO.&ECHO.
ECHO        Clearing RAM..
ECHO        Очистка оперативной памяти..
ECHO        [32m███████████████████████████████████████████████░
ECHO.&ECHO.
CHCP 866>NUL
rundll32.exe              2>nul >nul

cls

setlocal DisableDelayedExpansion
CHCP 65001>NUL
PowerShell -command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show(\"Cache and junk files removed successfully! `nКэш и ненужные файлы успешно удалены!\", \"Successful cleaning ^| Успешная очистка\", \"OK\", [System.Windows.Forms.MessageBoxIcon]::Information);}"
EXIT