:::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                   by  MilesthoN                     ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@ECHO OFF
CHCP 65001>NUL
COLOR F9
TITLE cleare (Windows 10, 11) by MilesthoN
MODE 62,8
ECHO.&ECHO.&ECHO.&ECHO                Run as Administrator..&ECHO                Запуск от имени Администратора..&ECHO.&ECHO.
net sess>NUL 2>&1||(powershell try{saps '%0'-Verb RunAs}catch{}&exit)

cls

MODE 62,26
COLOR F9
ECHO.&ECHO.&ECHO.&ECHO.
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

COLOR F9
ECHO.&ECHO.
ECHO        Windows Disk Cleanup..
ECHO        Очистка диска Windows..
ECHO        [32m[5m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
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

COLOR F9
ECHO.&ECHO.
ECHO        Deleting temporary files..
ECHO        Удаление временных файлов..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command                                                ^
Remove-Item                                                        ^
'C:\ProgramData\Temp\*'                                          , ^
'C:\Windows\assembly\*\Temp\*'                                   , ^
'C:\Windows\assembly\Temp\*'                                     , ^
'C:\Windows\assembly\tmp\*'                                      , ^
'C:\Windows\Temp\*'                                              , ^
'C:\Windows\ServiceProfiles\LocalService\AppData\Local\Temp\*'   , ^
'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Temp\*' , ^
'C:\Windows\System32\config\systemprofile\AppData\Local\Temp\*'  , ^
'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Temp\*'  , ^
'C:\Users\*\AppData\Local\Temp\*'                                , ^
'C:\Users\*\AppData\Local\Packages\*\AC\Temp\*'                    ^
-Recurse -Force                                           2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Windows update files..
ECHO        Удаление файлов обновления Windows..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
net stop cryptsvc /yes                                                                            2>nul >nul
PowerShell -Command                                                                                        ^
Remove-Item                                                                                                ^
'C:\$GetCurrent'                                                                                         , ^
'C:\$SysReset'                                                                                           , ^
'C:\$Windows.~BT'                                                                                        , ^
'C:\$Windows.~WS'                                                                                        , ^
'C:\$WinREAgent'                                                                                         , ^
'C:\ESD'                                                                                                 , ^
'C:\Windows10Upgrade'                                                                                    , ^
'C:\Windows\Installer\$PatchCache$\Managed\*'                                                            , ^
'C:\Windows\System32\catroot2\*'                                                                         , ^
'C:\Windows\Logs\WindowsUpdate\*.log'                                                                    , ^
'C:\Windows\SoftwareDistribution\DataStore\Logs\*'                                                       , ^
'C:\Windows\SoftwareDistribution\Download\*'                                                             , ^
'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Cache\*'   ^
-Recurse -Force                                                                                   2>nul >nul
net start cryptsvc                                                                                2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing logs..
ECHO        Удаление логов..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command                                                                                           ^
Remove-Item                                                                                                   ^
'C:\Windows\*.log'                                                                                          , ^
'C:\Windows\inf\*.log'                                                                                      , ^
'C:\Windows\logs\*.log'                                                                                     , ^
'C:\windows\logs\cbs\*.log'                                                                                 , ^
'C:\Windows\logs\MoSetup\*.log'                                                                             , ^
'C:\Windows\Microsoft.NET\*.log'                                                                            , ^
'C:\Windows\Panther\*.log'                                                                                  , ^
'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Logs\*.etl' , ^
'C:\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\Windows\WebCache\*.log'                    , ^
'C:\Windows\ServiceProfiles\LocalService\AppData\Local\CLR_v4.0\UsageLogs\*.log'                            , ^
'C:\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\Windows\SettingSync\*.log'                 , ^
'C:\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'               , ^
'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\WebCache\*.log'                  , ^
'C:\Windows\ServiceProfiles\NetworkService\AppData\LocalCLR_v4.0\UsageLogs\*.log'                           , ^
'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\SettingSync\*.log'               , ^
'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'             , ^
'C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\WebCache\*.log'                   , ^
'C:\Windows\System32\config\systemprofile\AppData\Local\CLR_v4.0\UsageLogs\*.log'                           , ^
'C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\SettingSync\*.log'                , ^
'C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'              , ^
'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\WebCache\*.log'                   , ^
'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\CLR_v4.0\UsageLogs\*.log'                           , ^
'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\SettingSync\*.log'                , ^
'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'              , ^
'C:\Users\*\AppData\Local\Microsoft\Windows\WebCache\*.log'                                                 , ^
'C:\Users\*\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\*.log'                                               , ^
'C:\Users\*\AppData\Local\Microsoft\Windows\SettingSync\*.log'                                              , ^
'C:\Users\*\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'                                              ^
-Recurse -Force                                                                                      2>nul >nul


cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing unnecessary Windows folders..
ECHO        Удаление ненужных папок Windows..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
:: PowerShell -Command "if (Test-Path 'C:\AMD')      {Remove-Item 'C:\AMD'      -Recurse -Force}" 2>nul >nul
PowerShell -Command "if (Test-Path 'C:\INTEL')    {Remove-Item 'C:\INTEL'    -Recurse -Force}" 2>nul >nul
PowerShell -Command "if (Test-Path 'C:\NVIDIA')   {Remove-Item 'C:\NVIDIA'   -Recurse -Force}" 2>nul >nul
PowerShell -Command "if (Test-Path 'C:\PerfLogs') {Remove-Item 'C:\PerfLogs' -Recurse -Force}" 2>nul >nul
PowerShell -Command "if (Test-Path 'C:\Temp')     {Remove-Item 'C:\Temp'     -Recurse -Force}" 2>nul >nul
PowerShell -Command "if (Test-Path 'C:\tmp')      {Remove-Item 'C:\tmp'      -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting memory dumps..
ECHO        Удаление дампов памяти..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command                                                      ^
Remove-Item                                                              ^
'C:\Windows\ServiceProfiles\LocalService\AppData\Local\CrashDumps\*'   , ^
'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\CrashDumps\*' , ^
'C:\Windows\System32\config\systemprofile\AppData\Local\CrashDumps\*'  , ^
'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\CrashDumps\*'  , ^
'C:\Users\*\AppData\Local\CrashDumps\*'                                  ^
-Recurse -Force                                                 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting SRUDB.dat..
ECHO        Удаление SRUDB.dat..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
net stop DPS /yes                                                             2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\sru\*' -Recurse -Force" 2>nul >nul
net start DPS                                                                 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Cleaning up WinSxS folder..
ECHO        Очистка папки WinSxS..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
Dism.exe /Online /Cleanup-Image /StartComponentCleanup            2>nul >nul
Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase 2>nul >nul
Dism.exe /online /Cleanup-Image /SPSuperseded                     2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing empty unnecessary folders in system32..
ECHO        Удаление пустых ненужных папок в system32..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
schtasks /change /disable /tn "\Microsoft\Windows\Management\Provisioning\Logon"                                 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\System32\config\systemprofile\AppData\Local\*.tmp' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Disable program cache..
ECHO        Отключение кэша программ..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
:: "C:\Program Files\Microsoft Visual Studio\Installer\vs_installer.exe"          --nocache 2>nul >nul
:: "C:\Program Files (x86)\Microsoft Visual Studio\Installer\vs_installer.exe"    --nocache 2>nul >nul
PowerShell -command "Remove-Item 'C:\Windows\Installer\*.tmp'           -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Windows history..
ECHO        Удаление истории Windows..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Windows\History\*' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Delete history of last opened files..
ECHO        Удаление истории последних открытых файлов..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Windows\Recent\*' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing network shortcuts..
ECHO        Удаление сетевых ярлыков..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Roaming\Microsoft\Windows\Network Shortcuts\*' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Reset DNS cache..
ECHO        Сброс DNS кэша..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
ipconfig /flushdns    2>nul >nul
ipconfig /registerdns 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Clear ARP cache..
ECHO        Сброс ARP кэша..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
netsh interface ip delete arpcache 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting RDP cache..
ECHO        Удаление кэша RDP..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item 'C:\Users\*\AppData\Local\Microsoft\Terminal Server Client\cache\*' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting DirectX Shrader cache..
ECHO        Удаление кэша DirectX..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command                                                     ^
Remove-Item                                                             ^
'C:\Windows\ServiceProfiles\LocalService\AppData\Local\D3DSCache\*'   , ^
'C:\Windows\ServiceProfiles\NetworkService\AppData\Local\D3DSCache\*' , ^
'C:\Windows\System32\config\systemprofile\AppData\Local\D3DSCache\*'  , ^
'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\D3DSCache\*'  , ^
'C:\Users\*\AppData\Local\D3DSCache\*'                                  ^
-Recurse -Force}                                               2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Store cache..
ECHO        Удаление кэша Microsoft Store..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
Start /min /wait WSReset.exe     2>nul >nul
TaskKill /IM WinStore.App.exe /F 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting OneDrive cache..
ECHO        Удаление кэша OneDrive..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command                                                                        ^
Remove-Item                                                                                ^
'C:\Program Files*\Microsoft OneDrive\setup\logs\*'                                      , ^
'C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\OneDrive\setup\logs\*' , ^
'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\OneDrive\setup\logs\*' , ^
'C:\Users\*\AppData\Local\Microsoft\OneDrive\logs\Common\*'                              , ^
'C:\Users\*\AppData\Local\Microsoft\OneDrive\setup\logs\*'                                 ^
-Recurse -Force                                                                   2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Google Drive cache..
ECHO        Удаление кэша Google Drive..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Google\DriveFS')        ^
{Remove-Item                                                                        ^
'C:\Users\*\AppData\Local\Google\DriveFS\*\content_cache\*'                       , ^
'C:\Users\*\AppData\Local\Google\DriveFS\*\thumbnails_cache\*'                    , ^
'C:\Users\*\AppData\Local\Google\DriveFS\cef_cache\Cache\*'                       , ^
'C:\Users\*\AppData\Local\Google\DriveFS\cef_cache\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Google\DriveFS\cef_cache\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Google\DriveFS\cef_cache\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Google\DriveFS\cef_cache\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\Google\DriveFS\Crashpad\*'                                ^
-Recurse -Force}                                                           2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Dropbox cache..
ECHO        Удаление кэша Dropbox..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\Dropbox')    ^
{Remove-Item                                               ^
'C:\Program Files*\Dropbox\Update\Download\*'            , ^
'C:\Program Files*\Dropbox\Update\Install\*'             , ^
'C:\Program Files*\Dropbox\Update\Offline\*'             , ^
'C:\Users\*\Dropbox\.dropbox.cache\*'                    , ^
'C:\Users\*\AppData\Local\Dropbox\avatar_cache\*'        , ^
'C:\Users\*\AppData\Local\Dropbox\Crashpad\*'            , ^
'C:\Users\*\AppData\Local\Dropbox\instance*\sync\temp\*'   ^
-Recurse -Force}                                  2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Office cache..
ECHO        Удаление кэша Microsoft Office..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Microsoft\Office')                        ^
{Remove-Item                                                                                          ^
'C:\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Office\OTele\*'                   , ^
'C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Office\OTele\*'                   , ^
'C:\Users\*\AppData\Local\Microsoft\OneNote\*\cache\*'                                              , ^
'C:\Users\*\AppData\Local\Microsoft\Office\OTele\*'                                                 , ^
'C:\Users\*\AppData\Local\Microsoft\Office\*\OfficeFileCache\*'                                     , ^
'C:\Users\*\AppData\Local\Microsoft\Office\*\WebServiceCache\AllUsers\officeclient.microsoft.com\*' , ^
'C:\Users\*\AppData\Local\Microsoft\Office\Spw\*'                                                   , ^
'C:\Users\*\AppData\Local\Microsoft\Outlook\RoamCache\*'                                            , ^
'C:\Users\*\AppData\Roaming\Microsoft\Office\*.tmp'                                                 , ^
'C:\Users\*\AppData\Roaming\Microsoft\Office\Recent\*'                                                ^
-Recurse -Force}                                                                             2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Nvidia cache..
ECHO        Удаление кэша Nvidia..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\ProgramData\NVIDIA')                                                       ^
{Remove-Item                                                                                                     ^
'C:\ProgramData\NVIDIA\*'                                                                                      , ^
'C:\ProgramData\NVIDIA Corporation\GeForce Experience\Logs\*.log'                                              , ^
'C:\ProgramData\NVIDIA Corporation\NV_Cache\*'                                                                 , ^
'C:\Users\*\AppData\Local\NVIDIA\GLCache\*'                                                                    , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NV_Cache\*'                                                       , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Cache\*'                       , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Crashpad\*'                    , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Cache\*'                             , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Code Cache\*'                        , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Crashpad\*'                          , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\GPUCache\*'                          , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Service Worker\CacheStorage\*'       , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Service Worker\ScriptCache\*'        , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Cache\*'                                    , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Code Cache\*'                               , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Crashpad\*'                                 , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\GPUCache\*'                                 , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Service Worker\CacheStorage\*'              , ^
'C:\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Service Worker\ScriptCache\*'                 ^
-Recurse -Force}                                                                                        2>nul >nul
PowerShell -Command if (Test-Path 'C:\ProgramData\NVIDIA')                                                       ^
{Get-ChildItem -Path                                                                                             ^
'C:\ProgramData\NVIDIA Corporation\Downloader' -Recurse ^| Where {$_.Name -as [guid]} ^| Remove-Item             ^
-Recurse -Force}                                                                                        2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Adobe cache..
ECHO        Удаление кэша Adobe..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\Adobe')                 ^
{Remove-Item                                                                          ^
'C:\Users\*\AppData\LocalLow\Adobe\Common\Media Cache\*'                            , ^
'C:\Users\*\AppData\LocalLow\Adobe\Common\Media Cache Files\*'                      , ^
'C:\Users\*\AppData\LocalLow\Adobe\Common\Peak Files\*'                             , ^
'C:\Users\*\AppData\Roaming\Adobe\Common\Media Cache\*'                             , ^
'C:\Users\*\AppData\Roaming\Adobe\Common\Media Cache Files\*'                       , ^
'C:\Users\*\AppData\Roaming\Adobe\Common\Peak Files\*'                              , ^
'C:\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Cache\*'                       , ^
'C:\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Code Cache\*'                  , ^
'C:\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Crashpad\*'                    , ^
'C:\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\GPUCache\*'                    , ^
'C:\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                             2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting MaxonApp (RedGiant) cache..
ECHO        Удаление кэша MaxonApp (RedGiant)..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\ProgramData\Red Giant')                                  ^
{Remove-Item                                                                                   ^
'C:\ProgramData\Maxon\Service\Downloads\*'                                                   , ^
'C:\ProgramData\Red Giant\Red Giant Service\Downloads\*'                                     , ^
'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Crashpad\*'                            , ^
'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\GrShaderCache\*'                       , ^
'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\Cache\Cache_Data\*'            , ^
'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\ShaderCache\*'                           ^
-Recurse -Force}                                                                      2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Skype сache..
ECHO        Удаление кэша Skype..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop')                              ^
{Remove-Item                                                                                                             ^
'C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Cache\*'                                                       , ^
'C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Code Cache\*'                                                  , ^
'C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Crashpad\*'                                                    , ^
'C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\GPUCache\*'                                                    , ^
'C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Service Worker\CacheStorage\*'                                 , ^
'C:\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Service Worker\ScriptCache\*'                                    ^
-Recurse -Force}                                                                                                2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Packages\*Skype*')                                           ^
{Remove-Item                                                                                                             ^
'C:\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Cache\*'                       , ^
'C:\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Crashpad\*'                    , ^
'C:\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                                2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Teams сache..
ECHO        Удаление кэша Microsoft Teams..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Microsoft\Teams')             ^
{Remove-Item                                                                              ^
'C:\Users\*\AppData\Local\Microsoft\Teams\Cache\*'                                      , ^
'C:\Users\*\AppData\Local\Microsoft\Teams\tmp\*'                                        , ^
'C:\Users\*\AppData\Roaming\Microsoft\Teams\logs.txt'                                   , ^
'C:\Users\*\AppData\Roaming\Microsoft\Teams\Cache\*'                                    , ^
'C:\Users\*\AppData\Roaming\Microsoft\Teams\Code Cache\*'                               , ^
'C:\Users\*\AppData\Roaming\Microsoft\Teams\Crashpad\*'                                 , ^
'C:\Users\*\AppData\Roaming\Microsoft\Teams\GPUCache\*'                                 , ^
'C:\Users\*\AppData\Roaming\Microsoft\Teams\Service Worker\CacheStorage\*'              , ^
'C:\Users\*\AppData\Roaming\Microsoft\Teams\Service Worker\ScriptCache\*'               , ^
'C:\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Cache\*'                       , ^
'C:\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Code Cache\*'                  , ^
'C:\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Crashpad\*'                    , ^
'C:\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\GPUCache\*'                    , ^
'C:\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Zoom сache..
ECHO        Удаление кэша Zoom..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\Zoom')                                               ^
{Remove-Item                                                                                                       ^
'C:\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Cache\Cache_Data\*'            , ^
'C:\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Code Cache\*'                  , ^
'C:\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Crashpad\*'                    , ^
'C:\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\GPUCache\*'                    , ^
'C:\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\ShaderCache\*'                           ^
-Recurse -Force}                                                                                          2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Telegram cache..
ECHO        Удаление кэша Telegram..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\Telegram Desktop')                                         ^
{Remove-Item                                                                                                             ^
'C:\Users\*\AppData\Roaming\Telegram Desktop\tdata\emoji\*'                                                            , ^
'C:\Users\*\AppData\Roaming\Telegram Desktop\tdata\user_data*\cache\0\*'                                               , ^
'C:\Users\*\AppData\Roaming\Telegram Desktop\tdata\user_data*\media_cache\0\*'                                           ^
-Recurse -Force}                                                                                                2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Packages\Telegram*')                                         ^
{Remove-Item                                                                                                             ^
'C:\Users\*\AppData\Local\Packages\Telegram*\LocalCache\Roaming\Telegram Desktop UWP\tdata\emoji\*'                    , ^
'C:\Users\*\AppData\Local\Packages\Telegram*\LocalCache\Roaming\Telegram Desktop UWP\tdata\user_data*\cache\0\*'       , ^
'C:\Users\*\AppData\Local\Packages\Telegram*\LocalCache\Roaming\Telegram Desktop UWP\tdata\user_data*\media_cache\0\*'   ^
-Recurse -Force}                                                                                                2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting VK Messenger cache..
ECHO        Удаление кэша VK Messenger..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\VK')                                      ^
{Remove-Item                                                                                            ^
'C:\Users\*\AppData\Roaming\VK\Cache\*'                                                               , ^
'C:\Users\*\AppData\Roaming\VK\Code Cache\*'                                                          , ^
'C:\Users\*\AppData\Roaming\VK\Crashpad\*'                                                            , ^
'C:\Users\*\AppData\Roaming\VK\GPUCache\*'                                                            , ^
'C:\Users\*\AppData\Roaming\VK\Service Worker\CacheStorage\*'                                         , ^
'C:\Users\*\AppData\Roaming\VK\Service Worker\ScriptCache\*'                                            ^
-Recurse -Force}                                                                               2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Packages\*VKMessenger*')                    ^
{Remove-Item                                                                                            ^
'C:\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Cache\*'                       , ^
'C:\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Crashpad\*'                    , ^
'C:\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                               2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Discord cache..
ECHO        Удаление кэша Discord..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\Discord')   ^
{Remove-Item                                                              ^
'C:\Users\*\AppData\Roaming\Discord\Cache\*'                            , ^
'C:\Users\*\AppData\Roaming\Discord\Code Cache\*'                       , ^
'C:\Users\*\AppData\Roaming\Discord\Crashpad\*'                         , ^
'C:\Users\*\AppData\Roaming\Discord\GPUCache\*'                         , ^
'C:\Users\*\AppData\Roaming\Discord\Service Worker\CacheStorage\*'      , ^
'C:\Users\*\AppData\Roaming\Discord\Service Worker\ScriptCache\*'         ^
-Recurse -Force}                                                 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting WhatsApp cache..
ECHO        Удаление кэша WhatsApp..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\WhatsApp')                                          ^
{Remove-Item                                                                                                      ^
'C:\Users\*\AppData\Roaming\WhatsApp\Cache\*'                                                                   , ^
'C:\Users\*\AppData\Roaming\WhatsApp\Code Cache\*'                                                              , ^
'C:\Users\*\AppData\Roaming\WhatsApp\Crashpad\*'                                                                , ^
'C:\Users\*\AppData\Roaming\WhatsApp\File System\*'                                                             , ^
'C:\Users\*\AppData\Roaming\WhatsApp\GPUCache\*'                                                                , ^
'C:\Users\*\AppData\Roaming\WhatsApp\Service Worker\CacheStorage\*'                                             , ^
'C:\Users\*\AppData\Roaming\WhatsApp\Service Worker\ScriptCache\*'                                                ^
-Recurse -Force}                                                                                         2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*')                          ^
{Remove-Item                                                                                                      ^
'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Cache\*'                       , ^
'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Crashpad\*'                    , ^
'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\File System\*'                 , ^
'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                         2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Viber cache..
ECHO        Удаление кэша Viber..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\ViberPC')                            ^
{Remove-Item                                                                                       ^
'C:\Users\*\AppData\Roaming\ViberPC\*\QmlUrlCache\data*\*'                                       , ^
'C:\Users\*\AppData\Roaming\ViberPC\*\QmlWebCache\data*\*'                                       , ^
'C:\Users\*\AppData\Roaming\ViberPC\*\Thumbnails\*'                                              , ^
'C:\Users\*\AppData\Roaming\ViberPC\data\stickers\*'                                               ^
-Recurse -Force}                                                                          2>nul >nul
:: PowerShell -command "Remove-Item 'C:\Users\*\Documents\ViberDownloads\*' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting ICQ cache..
ECHO        Удаление кэша ICQ..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\ICQ')   ^
{Remove-Item                                                          ^
'C:\Users\*\AppData\Roaming\ICQ\cache\*'                            , ^
'C:\Users\*\AppData\Roaming\ICQ\*\content.cache\*'                  , ^
'C:\Users\*\AppData\Roaming\ICQ\*\info\cache'                       , ^
'C:\Users\*\AppData\Roaming\ICQ\*\stickers\*'                         ^
-Recurse -Force}                                             2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting 1C cache..
ECHO        Удаление кэша 1C..
ECHO        [32m[5m█████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\1C\')                      ^
{Get-ChildItem -Path                                                                   ^
'C:\Users\*\AppData\Local\1C\*' -Recurse ^| Where {$_.Name -as [guid]} ^| Remove-Item  ^
-Recurse -Force}                                                              2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\1C\')                    ^
{Get-ChildItem -Path                                                                   ^
'C:\Users\*\AppData\Local\1C\*' -Recurse ^| Where {$_.Name -as [guid]} ^| Remove-Item  ^
-Recurse -Force}                                                              2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Bitrix24 cache..
ECHO        Удаление кэша Bitrix24..
ECHO        [32m[5m█████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\Bitrix24')                ^
{Remove-Item                                                                            ^
'C:\Users\*\AppData\Local\Bitrix24\User Data\Crashpad\*'                              , ^
'C:\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Cache\*'                       , ^
'C:\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Code Cache\*'                  , ^
'C:\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\GPUCache\*'                    , ^
'C:\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                               2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Slack cache..
ECHO        Удаление кэша Slack..
ECHO        [32m[5m█████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\Slack')   ^
{Remove-Item                                                            ^
'C:\Users\*\AppData\Roaming\Slack\Cache\*'                            , ^
'C:\Users\*\AppData\Roaming\Slack\Code Cache\*'                       , ^
'C:\Users\*\AppData\Roaming\Slack\Crashpad\*'                         , ^
'C:\Users\*\AppData\Roaming\Slack\GPUCache\*'                         , ^
'C:\Users\*\AppData\Roaming\Slack\Service Worker\CacheStorage\*'      , ^
'C:\Users\*\AppData\Roaming\Slack\Service Worker\ScriptCache\*'         ^
-Recurse -Force}                                               2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting OBS cache..
ECHO        Удаление кэша OBS..
ECHO        [32m[5m████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\obs-studio')                                              ^
{Remove-Item                                                                                                            ^
'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Cache\*'                                             , ^
'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Code Cache\*'                                        , ^
'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Crashpad\*'                                          , ^
'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\GPUCache\*'                                          , ^
'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Service Worker\CacheStorage\*'                       , ^
'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Service Worker\ScriptCache\*'                        , ^
'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Cache\*'                       , ^
'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Code Cache\*'                  , ^
'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Crashpad\*'                    , ^
'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\GPUCache\*'                    , ^
'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                               2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Streamlabs cache..
ECHO        Удаление кэша Streamlabs..
ECHO        [32m[5m████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\slobs-client')                        ^
{Remove-Item                                                                                        ^
'C:\Users\*\AppData\Roaming\slobs-client\Cache\*'                                                 , ^
'C:\Users\*\AppData\Roaming\slobs-client\Code Cache\*'                                            , ^
'C:\Users\*\AppData\Roaming\slobs-client\Crashpad\*'                                              , ^
'C:\Users\*\AppData\Roaming\slobs-client\GPUCache\*'                                              , ^
'C:\Users\*\AppData\Roaming\slobs-client\Service Worker\CacheStorage\*'                           , ^
'C:\Users\*\AppData\Roaming\slobs-client\Service Worker\ScriptCache\*'                            , ^
'C:\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Cache\*'                       , ^
'C:\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Code Cache\*'                  , ^
'C:\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Crashpad\*'                    , ^
'C:\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\GPUCache\*'                    , ^
'C:\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                           2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Twitch Studio cache..
ECHO        Удаление кэша Twitch Studio..
ECHO        [32m[5m████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\slobs-client')   ^
{Remove-Item                                                                   ^
'C:\Users\*\AppData\Roaming\Twitch Studio\*\Cache\*'                         , ^
'C:\Users\*\AppData\Roaming\Twitch Studio\*\Code Cache\*'                    , ^
'C:\Users\*\AppData\Roaming\Twitch Studio\*\Crashpad\*'                      , ^
'C:\Users\*\AppData\Roaming\Twitch Studio\*\GPUCache\*'                      , ^
'C:\Users\*\AppData\Roaming\Twitch Studio\*\Service Worker\CacheStorage\*'   , ^
'C:\Users\*\AppData\Roaming\Twitch Studio\*\Service Worker\ScriptCache\*'      ^
-Recurse -Force}                                                      2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Apple (iTunes) cache..
ECHO        Удаление кэша Apple (iTunes)..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Apple')            ^
{Remove-Item                                                                   ^
'C:\ProgramData\Apple\Installer Cache\*'                                     , ^
'C:\ProgramData\Apple Computer\Installer Cache\*'                            , ^
'C:\Users\*\Music\iTunes\Album Artwork\Cache\*'                              , ^
'C:\Users\*\AppData\Local\Apple\Apple Software Update\*'                     , ^
'C:\Users\*\AppData\Local\Apple Computer\iTunes\PlayCache\*'                 , ^
'C:\Users\*\AppData\Local\Apple Computer\iTunes\SubscriptionPlayCache\*'     , ^
'C:\Users\*\AppData\Roaming\Apple Computer\iTunes\iPhone Software Updates\*' , ^
'C:\Users\*\AppData\Roaming\Apple Computer\Logs\*'                             ^
-Recurse -Force}                                                      2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Spotify cache..
ECHO        Удаление кэша Spotify..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Spotify')                                    ^
{Remove-Item                                                                                             ^
'C:\Users\*\AppData\Local\Spotify\Data\*'                                                              , ^
'C:\Users\*\AppData\Local\Spotify\Browser\Cache\Cache_Data\*'                                          , ^
'C:\Users\*\AppData\Local\Spotify\Browser\Code Cache\*'                                                , ^
'C:\Users\*\AppData\Local\Spotify\Browser\Crashpad\*'                                                  , ^
'C:\Users\*\AppData\Local\Spotify\Browser\GPUCache\*'                                                  , ^
'C:\Users\*\AppData\Local\Spotify\Browser\Service Worker\CacheStorage\*'                               , ^
'C:\Users\*\AppData\Local\Spotify\Browser\Service Worker\ScriptCache\*'                                  ^
-Recurse -Force}                                                                                2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Packages\*Spotify*')                         ^
{Remove-Item                                                                                             ^
'C:\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Data\*'                                , ^
'C:\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Cache\Cache_Data\*'            , ^
'C:\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Crashpad\*'                    , ^
'C:\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Yandex.Music cache..
ECHO        Удаление кэша Yandex.Music..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Packages\*Yandex.Music*')   ^
{Remove-Item                                                                            ^
'C:\Users\*\AppData\Local\Packages\*Yandex.Music*\LocalState\CachedCovers\*'          , ^
'C:\Users\*\AppData\Local\Packages\*Yandex.Music*\LocalCache\MusicCache\*'              ^
-Recurse -Force}                                                               2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Clipchamp cache..
ECHO        Удаление кэша Clipchamp..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Packages\Clipchamp*')                           ^
{Remove-Item                                                                                                ^
'C:\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Crashpad\*'                            , ^
'C:\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Cache\Cache_Data\*'            , ^
'C:\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Crashpad\*'                    , ^
'C:\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\GrShaderCache\*'                       , ^
'C:\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\ShaderCache\*'                           ^
-Recurse -Force}                                                                                   2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting ScreenClip cache..
ECHO        Удаление кэша ScreenClip..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path 'C:\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.CBS*\TempState\ScreenClip') {Remove-Item 'C:\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.CBS*\TempState\ScreenClip\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Python (pip) cache..
ECHO        Удаление кэша Python (pip)..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path 'C:\Users\*\AppData\Local\pip') {Remove-Item 'C:\Users\*\AppData\Local\pip\cache\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Microsoft Visual Studio cache..
ECHO        Удаление кэша Microsoft Visual Studio..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path 'C:\Users\*\AppData\Local\Microsoft\VisualStudio') {Remove-Item 'C:\Users\*\AppData\Local\Microsoft\VisualStudio\*\ComponentModelCache\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing GitHub Desktop cache..
ECHO        Удаление кэша GitHub Desktop..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\GitHub Desktop')   ^
{Remove-Item                                                                     ^
'C:\Users\*\AppData\Roaming\GitHub Desktop\Cache\Cache_Data\*'                 , ^
'C:\Users\*\AppData\Roaming\GitHub Desktop\Code Cache\*'                       , ^
'C:\Users\*\AppData\Roaming\GitHub Desktop\GPUCache\*'                         , ^
'C:\Users\*\AppData\Roaming\GitHub Desktop\Crashpad\*'                         , ^
'C:\Users\*\AppData\Roaming\GitHub Desktop\Service Worker\CacheStorage\*'      , ^
'C:\Users\*\AppData\Roaming\GitHub Desktop\Service Worker\ScriptCache\*'         ^
-Recurse -Force}                                                        2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Unity cache..
ECHO        Удаление кэша Unity..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Unity')                                                     ^
{Remove-Item                                                                                                            ^
'C:\Program Files*\Unity\Cache\*'                                                                                     , ^
'C:\Program Files*\Unity\Hub\Editor\*\Editor\Data\Resources\PackageManager\ProjectTemplates\libcache\*\ShaderCache\*' , ^
'C:\Users\*\AppData\Local\Unity\Cache\*'                                                                              , ^
'C:\Users\*\AppData\Local\unityhub-updater\*'                                                                         , ^
'C:\Users\*\AppData\LocalLow\Unity\Cache\*'                                                                           , ^
'C:\Users\*\AppData\LocalLow\Unity\Caches\*'                                                                          , ^
'C:\Users\*\AppData\Roaming\UnityHub\Cache\*'                                                                         , ^
'C:\Users\*\AppData\Roaming\UnityHub\Code Cache\*'                                                                    , ^
'C:\Users\*\AppData\Roaming\UnityHub\Crashpad\*'                                                                      , ^
'C:\Users\*\AppData\Roaming\UnityHub\GPUCache\*'                                                                      , ^
'C:\Users\*\AppData\Roaming\UnityHub\Service Worker\CacheStorage\*'                                                   , ^
'C:\Users\*\AppData\Roaming\UnityHub\Service Worker\ScriptCache\*'                                                    , ^
'C:\Users\*\AppData\Roaming\UnityHub\graphqlCache\*'                                                                  , ^
'C:\Users\*\AppData\Roaming\UnityHub\logs\*'                                                                          , ^
'C:\Users\*\AppData\Roaming\UnityHub\Service Worker\CacheStorage\*'                                                   , ^
'C:\Users\*\AppData\Roaming\UnityHub\Service Worker\ScriptCache\*'                                                    , ^
'C:\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Cache\*'                                                       , ^
'C:\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Code Cache\*'                                                  , ^
'C:\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Crashpad\*'                                                    , ^
'C:\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\GPUCache\*'                                                    , ^
'C:\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Service Worker\CacheStorage\*'                                 , ^
'C:\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Service Worker\ScriptCache\*'                                    ^
-Recurse -Force}                                                                                               2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Java cache..
ECHO        Удаление кэша Java..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path 'C:\Users\*\AppData\LocalLow\Sun\Java') {Remove-Item 'C:\Users\*\AppData\LocalLow\Sun\Java\Deployment\cache\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Minecraft cache..
ECHO        Удаление кэша Minecraft..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\.minecraft')                    ^
{Remove-Item                                                                                  ^
'C:\Users\*\AppData\Roaming\.minecraft\webcache*\Cache\*'                                   , ^
'C:\Users\*\AppData\Roaming\.minecraft\webcache*\Code Cache\*'                              , ^
'C:\Users\*\AppData\Roaming\.minecraft\webcache*\Crashpad\*'                                , ^
'C:\Users\*\AppData\Roaming\.minecraft\webcache*\GPUCache\*'                                , ^
'C:\Users\*\AppData\Roaming\.minecraft\webcache*\Service Worker\CacheStorage\*'             , ^
'C:\Users\*\AppData\Roaming\.minecraft\webcache*\Service Worker\ScriptCache\*'              , ^
'C:\Users\*\AppData\Roaming\minecraftedu\minecraft\webcache*\Cache\*'                       , ^
'C:\Users\*\AppData\Roaming\minecraftedu\minecraft\webcache*\Code Cache\*'                  , ^
'C:\Users\*\AppData\Roaming\minecraftedu\minecraft\webcache*\Crashpad\*'                    , ^
'C:\Users\*\AppData\Roaming\minecraftedu\minecraft\webcache*\GPUCache\*'                    , ^
'C:\Users\*\AppData\Roaming\minecraftedu\minecraft\webcache*\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Roaming\minecraftedu\minecraft\webcache*\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\Packages\*Minecraft*\LocalCache\minecraftpe\CatalogCache\*'       , ^
'C:\Users\*\AppData\Local\Packages\*Minecraft*\LocalCache\minecraftpe\ContentCache\*'         ^
-Recurse -Force}                                                                     2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Steam cache..
ECHO        Удаление кэша Steam..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Steam')            ^
{Remove-Item                                                                   ^
'C:\Program Files*\Steam\appcache\httpcache\*'                               , ^
'C:\Program Files*\Steam\appcache\librarycache\*.jpg'                        , ^
'C:\Program Files*\Steam\appcache\librarycache\*.png'                        , ^
'C:\Program Files*\Steam\depotcache\*'                                       , ^
'C:\Program Files*\Steam\steam\cached\*'                                     , ^
'C:\Program Files*\Steam\steamapps\common\Steamworks Shared\_CommonRedist\*' , ^
'C:\Program Files*\Steam\SteamApps\downloading\*'                            , ^
'C:\Program Files*\Steam\SteamApps\temp\*'                                   , ^
'C:\Program Files*\Steam\SteamApps\workshop\temp\*'                          , ^
'C:\Program Files*\Steam\SteamApps\workshop\downloads\*'                     , ^
'C:\Users\*\AppData\Local\Steam\htmlcache\Cache\*'                           , ^
'C:\Users\*\AppData\Local\Steam\htmlcache\Code Cache\*'                      , ^
'C:\Users\*\AppData\Local\Steam\htmlcache\Crashpad\*'                        , ^
'C:\Users\*\AppData\Local\Steam\htmlcache\GPUCache\*'                        , ^
'C:\Users\*\AppData\Local\Steam\htmlcache\Service Worker\CacheStorage\*'     , ^
'C:\Users\*\AppData\Local\Steam\htmlcache\Service Worker\ScriptCache\*'        ^
-Recurse -Force}                                                      2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Epic Launcher cache..
ECHO        Удаление кэша Epic Launcher..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Epic Games')                                   ^
{Remove-Item                                                                                               ^
'C:\ProgramData\Epic\EpicGamesLauncher\Data\ContentCache\*'                                              , ^
'C:\ProgramData\Epic\EpicGamesLauncher\Data\EMS\EpicGamesLauncher\*.png'                                 , ^
'C:\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Cache\*'                                    , ^
'C:\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Code Cache\*'                               , ^
'C:\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Crashpad\*'                                 , ^
'C:\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\GPUCache\*'                                 , ^
'C:\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Service Worker\CacheStorage\*'              , ^
'C:\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Service Worker\ScriptCache\*'               , ^
'C:\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Cache\*'                       , ^
'C:\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Crashpad\*'                    , ^
'C:\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Cache\*'                                             , ^
'C:\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Code Cache\*'                                        , ^
'C:\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Crashpad\*'                                          , ^
'C:\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\GPUCache\*'                                          , ^
'C:\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Service Worker\CacheStorage\*'                       , ^
'C:\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Service Worker\ScriptCache\*'                          ^
-Recurse -Force}                                                                                  2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Origin / EA Launcher cache..
ECHO        Удаление кэша Origin / EA Launcher..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Origin')                         ^
{Remove-Item                                                                                 ^
'C:\ProgramData\Origin\CatalogCache\*'                                                     , ^
'C:\ProgramData\Origin\DownloadCache\*'                                                    , ^
'C:\Windows\SysWOW64\config\systemprofile\AppData\Roaming\Origin\*'                        , ^
'C:\Users\*\AppData\Local\Origin\Origin\cache\QtWebEngine\Default\Cache\*'                 , ^
'C:\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\Crashpad\*'                    , ^
'C:\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                    2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\EADesktop')                      ^
{Remove-Item                                                                                 ^
'C:\Users\*\AppData\Local\EADesktop\cache\QtWebEngine\Default\Cache\*'                     , ^
'C:\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\Code Cache\*'                      , ^
'C:\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\Crashpad\*'                        , ^
'C:\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\GPUCache\*'                        , ^
'C:\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\Service Worker\CacheStorage\*'     , ^
'C:\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\Service Worker\ScriptCache\*'        ^
-Recurse -Force}                                                                    2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Battle.net cache..
ECHO        Удаление кэша Battle.net..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Battle.net')           ^
{Remove-Item                                                                       ^
'C:\ProgramData\Battle.net\Agent\data\cache\*'                                   , ^
'C:\Users\*\AppData\Local\Battle.net\Cache\*'                                    , ^
'C:\Users\*\AppData\Local\Battle.net\BrowserCache\Cache\*'                       , ^
'C:\Users\*\AppData\Local\Battle.net\BrowserCache\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Battle.net\BrowserCache\Crashpad\*'                    , ^
'C:\Users\*\AppData\Local\Battle.net\BrowserCache\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Battle.net\BrowserCache\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Battle.net\BrowserCache\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\Blizzard Entertainment\Telemetry\*'                      ^
-Recurse -Force}                                                          2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Ubisoft Connect (Uplay) cache..
ECHO        Удаление кэша Ubisoft Connect (Uplay)..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Program Files*\Ubisoft\Ubisoft Game Launcher')          ^
{Remove-Item                                                                                  ^
'C:\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\assets\*'                            , ^
'C:\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Cache\*'                       , ^
'C:\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Code Cache\*'                  , ^
'C:\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Crashpad\*'                    , ^
'C:\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\GPUCache\*'                    , ^
'C:\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Service Worker\CacheStorage\*' , ^
'C:\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                     2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Rockstar Games cache..
ECHO        Удаление кэша Rockstar Games..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\Documents\Rockstar Games\Social Club')                ^
{Remove-Item                                                                                        ^
'C:\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Cache\*'                       , ^
'C:\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Code Cache\*'                  , ^
'C:\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Crashpad\*'                    , ^
'C:\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\GPUCache\*'                    , ^
'C:\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Service Worker\CacheStorage\*' , ^
'C:\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\Documents\Rockstar Games\Social Club\Renderer\Cache\*'                                , ^
'C:\Users\*\Documents\Rockstar Games\Social Club\Renderer\Code Cache\*'                           , ^
'C:\Users\*\Documents\Rockstar Games\Social Club\Renderer\Crashpad\*'                             , ^
'C:\Users\*\Documents\Rockstar Games\Social Club\Renderer\GPUCache\*'                             , ^
'C:\Users\*\Documents\Rockstar Games\Social Club\Renderer\Service Worker\CacheStorage\*'          , ^
'C:\Users\*\Documents\Rockstar Games\Social Club\Renderer\Service Worker\ScriptCache\*'             ^
-Recurse -Force}                                                                           2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting GOG cache..
ECHO        Удаление кэша GOG..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\ProgramData\GOG.com')                     ^
{Remove-Item                                                                    ^
'C:\ProgramData\GOG.com\Galaxy\webcache\common\Cache\*'                       , ^
'C:\ProgramData\GOG.com\Galaxy\webcache\common\Code Cache\*'                  , ^
'C:\ProgramData\GOG.com\Galaxy\webcache\common\Crashpad\*'                    , ^
'C:\ProgramData\GOG.com\Galaxy\webcache\common\GPUCache\*'                    , ^
'C:\ProgramData\GOG.com\Galaxy\webcache\common\Service Worker\CacheStorage\*' , ^
'C:\ProgramData\GOG.com\Galaxy\webcache\common\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                       2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting SteelSeries GG cache..
ECHO        Удаление кэша SteelSeries GG..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\ProgramData\SteelSeries\GG')                 ^
{Remove-Item                                                                       ^
'C:\ProgramData\SteelSeries\GG\updates\*'                                        , ^
'C:\Users\*\AppData\Roaming\steelseries-gg-client\Cache\*'                       , ^
'C:\Users\*\AppData\Roaming\steelseries-gg-client\Code Cache\*'                  , ^
'C:\Users\*\AppData\Roaming\steelseries-gg-client\Crashpad\*'                    , ^
'C:\Users\*\AppData\Roaming\steelseries-gg-client\GPUCache\*'                    , ^
'C:\Users\*\AppData\Roaming\steelseries-gg-client\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Roaming\steelseries-gg-client\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                          2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting OpenVPN Connect..
ECHO        Удаление кэша OpenVPN Connect..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Roaming\OpenVPN Connect')   ^
{Remove-Item                                                                      ^
'C:\Users\*\AppData\Roaming\OpenVPN Connect\Cache\*'                            , ^
'C:\Users\*\AppData\Roaming\OpenVPN Connect\Code Cache\*'                       , ^
'C:\Users\*\AppData\Roaming\OpenVPN Connect\Crashpad\*'                         , ^
'C:\Users\*\AppData\Roaming\OpenVPN Connect\GPUCache\*'                         , ^
'C:\Users\*\AppData\Roaming\OpenVPN Connect\Service Worker\CacheStorage\*'      , ^
'C:\Users\*\AppData\Roaming\OpenVPN Connect\Service Worker\ScriptCache\*'         ^
-Recurse -Force}                                                         2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Windows 11 Widgets cache..
ECHO        Удаление кэша виджетов Windows 11..
ECHO        [32m[5m█████████████████████████████░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*')                           ^
{Remove-Item                                                                                                                            ^
'C:\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Crashpad\*'                            , ^
'C:\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Cache\Cache_Data\*'            , ^
'C:\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Crashpad\*'                    , ^
'C:\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\GrShaderCache\*'                       , ^
'C:\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\ShaderCache\*'                           ^
-Recurse -Force}                                                                                                               2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting CryptnetUrlCache cache..
ECHO        Удаление кэша CryptnetUrlCache..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command                                                                                  ^
Remove-Item                                                                                          ^
'C:\Windows\ServiceProfiles\LocalService\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'    , ^
'C:\Windows\ServiceProfiles\LocalService\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*'   , ^
'C:\Windows\ServiceProfiles\NetworkService\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'  , ^
'C:\Windows\ServiceProfiles\NetworkService\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*' , ^
'C:\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'   , ^
'C:\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*'  , ^
'C:\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'   , ^
'C:\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*'  , ^
'C:\Users\*\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'                                 , ^
'C:\Users\*\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*'                                  ^
-Recurse -Force                                                                             2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Internet Explorer cache..
ECHO        Удаление кэша Internet Explorer..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8   2>nul >nul
PowerShell -Command                                          ^
Remove-Item                                                  ^
'C:\Users\*\AppData\Local\cache\*'                         , ^
'C:\Users\*\AppData\Local\Microsoft\Windows\WebCache.old*'   ^
-Recurse -Force                                     2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Edge cache..
ECHO        Удаление кэша Microsoft Edge..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command                                                                     ^
Remove-Item                                                                             ^
'C:\Program Files*\Microsoft\EdgeUpdate\Download\*'                                   , ^
'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\Crashpad\*'                        , ^
'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Cache\Cache_Data\*'              , ^
'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Code Cache\*'                    , ^
'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\File System\*'                   , ^
'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\GPUCache\*'                      , ^
'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Service Worker\CacheStorage\*'   , ^
'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Service Worker\ScriptCache\*'    , ^
'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\GrShaderCache\*'                   , ^
'C:\Users\*\AppData\Local\Microsoft\Edge\User Data\ShaderCache\*'                     , ^
'C:\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\Crashpad\*'                      , ^
'C:\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\*\Cache\Cache_Data\*'            , ^
'C:\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\*\Code Cache\*'                  , ^
'C:\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\*\File System\*'                 , ^
'C:\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\*\GPUCache\*'                    , ^
'C:\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\*\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\*\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\GrShaderCache\*'                 , ^
'C:\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\ShaderCache\*'                     ^
-Recurse -Force                                                                2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Google Chrome cache..
ECHO        Удаление кэша Google Chrome..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Google\Chrome')                                 ^
{Remove-Item                                                                                                ^
'C:\Program Files*\Google\Update\Download\*'                                                              , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\Crashpad\*'                                             , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Cache\Cache_Data\*'                                   , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Code Cache\*'                                         , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\File System\*'                                        , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\GPUCache\*'                                           , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Service Worker\CacheStorage\*'                        , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Service Worker\ScriptCache\*'                         , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Cache\*'                            , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Code Cache\*'                       , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\File System\*'                      , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\GPUCache\*'                         , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*'      , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'       , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\GrShaderCache\*'                                        , ^
'C:\Users\*\AppData\Local\Google\Chrome\User Data\ShaderCache\*'                                          , ^
'C:\Users\*\AppData\Local\Google\Update\Download\*'                                                         ^
-Recurse -Force}                                                                                   2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Google\Chrome Beta')                            ^
{Remove-Item                                                                                                ^
'C:\Program Files*\Google\Update\Download\*'                                                              , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\Crashpad\*'                                        , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Cache\Cache_Data\*'                              , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Code Cache\*'                                    , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\File System\*'                                   , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\GPUCache\*'                                      , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Service Worker\CacheStorage\*'                   , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Service Worker\ScriptCache\*'                    , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Cache\*'                       , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\File System\*'                 , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\GrShaderCache\*'                                   , ^
'C:\Users\*\AppData\Local\Google\Chrome Beta\User Data\ShaderCache\*'                                     , ^
'C:\Users\*\AppData\Local\Google\Update\Download\*'                                                         ^
-Recurse -Force}                                                                                   2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Google\Chrome SxS')                             ^
{Remove-Item                                                                                                ^
'C:\Program Files*\Google\Update\Download\*'                                                              , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\Crashpad\*'                                         , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Cache\Cache_Data\*'                               , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Code Cache\*'                                     , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\File System\*'                                    , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\GPUCache\*'                                       , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Service Worker\CacheStorage\*'                    , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Service Worker\ScriptCache\*'                     , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Cache\*'                        , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Code Cache\*'                   , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\File System\*'                  , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\GPUCache\*'                     , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*'  , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'   , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\GrShaderCache\*'                                    , ^
'C:\Users\*\AppData\Local\Google\Chrome SxS\User Data\ShaderCache\*'                                      , ^
'C:\Users\*\AppData\Local\Google\Update\Download\*'                                                         ^
-Recurse -Force}                                                                                   2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Google\Chromium')                               ^
{Remove-Item                                                                                                ^
'C:\Program Files*\Google\Update\Download\*'                                                              , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\Crashpad\*'                                           , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Cache\Cache_Data\*'                                 , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Code Cache\*'                                       , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\File System\*'                                      , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\GPUCache\*'                                         , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Service Worker\CacheStorage\*'                      , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Service Worker\ScriptCache\*'                       , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Cache\*'                          , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Code Cache\*'                     , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\File System\*'                    , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\GPUCache\*'                       , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*'    , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'     , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\GrShaderCache\*'                                      , ^
'C:\Users\*\AppData\Local\Google\Chromium\User Data\ShaderCache\*'                                        , ^
'C:\Users\*\AppData\Local\Google\Update\Download\*'                                                         ^
-Recurse -Force}                                                                                   2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Yandex Browser cache..
ECHO        Удаление кэша Yandex Browser..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Yandex')                        ^
{Remove-Item                                                                                ^
'C:\Program Files*\Yandex\YandexBrowser\Temp\*'                                           , ^
'C:\Users\*\AppData\Local\Yandex\YandexBrowser\Temp\*'                                    , ^
'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\Crashpad\*'                      , ^
'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\Cache\Cache_Data\*'            , ^
'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\File System\*'                 , ^
'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\TurboAppCache\*'               , ^
'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\GrShaderCache\*'                 , ^
'C:\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\ShaderCache\*'                     ^
-Recurse -Force}                                                                   2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Opera cache..
ECHO        Удаление кэша Opera..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Opera Software\Opera Stable')                    ^
{Remove-Item                                                                                                 ^
'C:\Users\*\AppData\Local\Opera Software\Opera Stable\Cache\Cache_Data\*'                                  , ^
'C:\Users\*\AppData\Local\Opera Software\Opera Stable\System Cache\Cache_Data\*'                           , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\Code Cache\*'                                      , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\Crash Reports\*'                                   , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\File System\*'                                     , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\GPUCache\*'                                        , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\GrShaderCache\*'                                   , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\Service Worker\CacheStorage\*'                     , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\Service Worker\ScriptCache\*'                      , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera Stable\ShaderCache\*'                                       ^
-Recurse -Force}                                                                                    2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Opera Software\Opera GX Stable')                 ^
{Remove-Item                                                                                                 ^
'C:\Users\*\AppData\Local\Opera Software\Opera GX Stable\_side_profiles\*\Cache\Cache_Data\*'              , ^
'C:\Users\*\AppData\Local\Opera Software\Opera GX Stable\_side_profiles\*\System Cache\Cache_Data\*'       , ^
'C:\Users\*\AppData\Local\Opera Software\Opera GX Stable\Cache\Cache_Data\*'                               , ^
'C:\Users\*\AppData\Local\Opera Software\Opera GX Stable\System Cache\Cache_Data\*'                        , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Code Cache\*'                  , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Crash Reports\*'               , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\File System\*'                 , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\GPUCache\*'                    , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\GrShaderCache\*'               , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\ShaderCache\*'                 , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\Code Cache\*'                                   , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\Crash Reports\*'                                , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\File System\*'                                  , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\GPUCache\*'                                     , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\GrShaderCache\*'                                , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\Service Worker\CacheStorage\*'                  , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\Service Worker\ScriptCache\*'                   , ^
'C:\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\ShaderCache\*'                                    ^
-Recurse -Force}                                                                                    2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Mozilla Firefox cache..
ECHO        Удаление кэша Mozilla Firefox..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Mozilla\Firefox')   ^
{Remove-Item                                                                    ^
'C:\Program Files*\Mozilla Maintenance Service\update\*                       , ^
'C:\ProgramData\Mozilla*\updates\*\updates\*'                                 , ^
'C:\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*\cache2\entries\*'          ^
-Recurse -Force}                                                       2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Thunderbird cache..
ECHO        Удаление кэша Thunderbird..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Thunderbird')     ^
{Remove-Item                                                                  ^
'C:\Program Files*\Mozilla Maintenance Service\update\*                     , ^
'C:\ProgramData\Mozilla*\updates\*\updates\*'                               , ^
'C:\Users\*\AppData\Local\Thunderbird\Profiles\*\cache2\entries\*'            ^
-Recurse -Force}                                                     2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Cent Browser cache..
ECHO        Удаление кэша Cent Browser..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\CentBrowser')          ^
{Remove-Item                                                                       ^
'C:\Users\*\AppData\Local\CentBrowser\User Data\Crashpad\*'                      , ^
'C:\Users\*\AppData\Local\CentBrowser\User Data\*\Cache\*'                       , ^
'C:\Users\*\AppData\Local\CentBrowser\User Data\*\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\CentBrowser\User Data\*\File System\*'                 , ^
'C:\Users\*\AppData\Local\CentBrowser\User Data\*\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\CentBrowser\User Data\*\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\CentBrowser\User Data\*\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\CentBrowser\User Data\GrShaderCache\*'                 , ^
'C:\Users\*\AppData\Local\CentBrowser\User Data\ShaderCache\*'                     ^
-Recurse -Force}                                                          2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Atom cache..
ECHO        Удаление кэша Atom..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Mail.Ru\Atom')                            ^
{Remove-Item                                                                                          ^
'C:\Program Files*\Mail.Ru\Atom\Temp\*'                                                             , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\Temp\*'                                                      , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\Crashpad\*'                                        , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Cache\Cache_Data\*'                              , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Code Cache\*'                                    , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\File System\*'                                   , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\GPUCache\*'                                      , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Service Worker\CacheStorage\*'                   , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Service Worker\ScriptCache\*'                    , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Cache\*'                       , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\File System\*'                 , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\GrShaderCache\*'                                   , ^
'C:\Users\*\AppData\Local\Mail.Ru\Atom\User Data\ShaderCache\*'                                       ^
-Recurse -Force}                                                                             2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Vivaldi cache..
ECHO        Удаление кэша Vivaldi..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Vivaldi')                                  ^
{Remove-Item                                                                                           ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\Crashpad\*'                                              , ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\*\Cache\Cache_Data\*'                                    , ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\*\Code Cache\*'                                          , ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\*\File System\*'                                         , ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\*\GPUCache\*'                                            , ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\*\Service Worker\CacheStorage\*'                         , ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\*\Service Worker\ScriptCache\*'                          , ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Cache\*'                       , ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\File System\*'                 , ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\GrShaderCache\*'                                         , ^
'C:\Users\*\AppData\Local\Vivaldi\User Data\ShaderCache\*'                                             ^
-Recurse -Force}                                                                              2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Brave Browser cache..
ECHO        Удаление кэша Brave Browser..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser')          ^
{Remove-Item                                                                                       ^
'C:\Program Files*\BraveSoftware\Update\Download\*'                                              , ^
'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\Crashpad\*'                      , ^
'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Cache\Cache_Data\*'            , ^
'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\File System\*'                 , ^
'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\GrShaderCache\*'                 , ^
'C:\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\ShaderCache\*'                   , ^
'C:\Users\*\AppData\Local\BraveSoftware\Update\Download\*'                                         ^
-Recurse -Force}                                                                          2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Comodo Dragon Browser cache..
ECHO        Удаление кэша Comodo Dragon Browser..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\*\AppData\Local\Comodo\Dragon')          ^
{Remove-Item                                                                         ^
'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\Crashpad\*'                      , ^
'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\*\Cache\*'                       , ^
'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\*\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\*\File System\*'                 , ^
'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\*\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\*\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\*\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\GrShaderCache\*'                 , ^
'C:\Users\*\AppData\Local\Comodo\Dragon\User Data\ShaderCache\*'                     ^
-Recurse -Force}                                                            2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Pale Moon cache..
ECHO        Удаление кэша Pale Moon..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path 'C:\Users\*\AppData\Local\Moonchild Productions\Pale Moon') {Remove-Item 'C:\Users\*\AppData\Local\Moonchild Productions\Pale Moon\Profiles\*\cache2\entries\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting a potential Cache..
ECHO        Удаление потенциального кэша..
ECHO        [32m[5m██████████████████████████████████████████░░░░░░
ECHO.&ECHO.
PowerShell -Command                                                                         ^
Remove-Item                                                                                 ^
'C:\Users\*\AppData\Local\*\Cache\*'                                                      , ^
'C:\Users\*\AppData\Local\*\Code Cache\*'                                                 , ^
'C:\Users\*\AppData\Local\*\Crashpad\*'                                                   , ^
'C:\Users\*\AppData\Local\*\GPUCache\*'                                                   , ^
'C:\Users\*\AppData\Local\*\Service Worker\CacheStorage\*'                                , ^
'C:\Users\*\AppData\Local\*\Service Worker\ScriptCache\*'                                 , ^
'C:\Users\*\AppData\LocalLow\*\Cache\*'                                                   , ^
'C:\Users\*\AppData\LocalLow\*\Code Cache\*'                                              , ^
'C:\Users\*\AppData\LocalLow\*\Crashpad\*'                                                , ^
'C:\Users\*\AppData\LocalLow\*\GPUCache\*'                                                , ^
'C:\Users\*\AppData\LocalLow\*\Service Worker\CacheStorage\*'                             , ^
'C:\Users\*\AppData\LocalLow\*\Service Worker\ScriptCache\*'                              , ^
'C:\Users\*\AppData\Roaming\*\Cache\*'                                                    , ^
'C:\Users\*\AppData\Roaming\*\Code Cache\*'                                               , ^
'C:\Users\*\AppData\Roaming\*\Crashpad\*'                                                 , ^
'C:\Users\*\AppData\Roaming\*\GPUCache\*'                                                 , ^
'C:\Users\*\AppData\Roaming\*\Service Worker\CacheStorage\*'                              , ^
'C:\Users\*\AppData\Roaming\*\Service Worker\ScriptCache\*'                               , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Cache\*'                          , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Code Cache\*'                     , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Crashpad\*'                       , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\GPUCache\*'                       , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Service Worker\CacheStorage\*'    , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Service Worker\ScriptCache\*'     , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Cache\*'                       , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Code Cache\*'                  , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Crashpad\*'                    , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\GPUCache\*'                    , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Service Worker\CacheStorage\*' , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Service Worker\ScriptCache\*'  , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Cache\*'                        , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Code Cache\*'                   , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Crashpad\*'                     , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\GPUCache\*'                     , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Service Worker\CacheStorage\*'  , ^
'C:\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Service Worker\ScriptCache\*'     ^
-Recurse -Force                                                                    2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Clearing cache of fonts and icons..
ECHO        Очистка кэша шрифтов и значков..
ECHO        [32m[5m████████████████████████████████████████████░░░░
ECHO.&ECHO.
TaskKill /F /IM Explorer.exe                                                                                                                           2>nul >nul
net Stop "FontCache" /yes                                                                                                                              2>nul >nul
PowerShell -Command                                                                                                                                             ^
Remove-Item                                                                                                                                                     ^
'C:\Windows\ServiceProfiles\LocalService\AppData\Local\FontCache\*.dat'                                                                                       , ^
'C:\Windows\System32\FNTCACHE.DAT'                                                                                                                            , ^
'C:\Users\*\AppData\Local\IconCache.db'                                                                                                                       , ^
'C:\Users\*\AppData\Local\Microsoft\Windows\Explorer\*.db'                                                                                                    , ^
'C:\Users\*\AppData\Local\Microsoft\Windows\Explorer\IconCacheToDelete\*'                                                                                     , ^
'C:\Users\*\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*'                                                                                      ^
-Recurse -Force                                                                                                                                        2>nul >nul
:: Deleting SageThumbs cahce | Удаление кэша SageThumbs
PowerShell -Command "if (Test-Path 'C:\Users\*\AppData\Local\SageThumbs.db3') {Remove-Item 'C:\Users\*\AppData\Local\SageThumbs.db3' -Recurse -Force}" 2>nul >nul
REG DELETE "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify"                                              /F 2>nul >nul
net Start "FontCache"                                                                                                                                  2>nul >nul
Start Explorer.exe                                                                                                                                     2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Disabling hibernation..
ECHO        Отключение гибернации..
ECHO        [32m[5m█████████████████████████████████████████████░░░
ECHO.&ECHO.
powercfg.exe /hibernate off 2>nul >nul

cls

:: start /wait SystemPropertiesProtection

cls

PowerShell -command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show(\"Cache and junk files removed successfully! `nКэш и ненужные файлы успешно удалены!\", \"Successful cleaning ^| Успешная очистка\", \"OK\", [System.Windows.Forms.MessageBoxIcon]::Information);}"
EXIT