:::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                   by  MilesthoN                     ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@ECHO OFF
CHCP 65001>NUL
COLOR F9
TITLE cleare (Windows 10, 11) by MilesthoN

:: goto noupdate

COLOR F9
ECHO.&ECHO.
ECHO        Check update..
ECHO        Проверка обновлений..
curl -# --ssl-no-revoke --insecure -L https://github.com/milesthon/cleare/raw/main/cleare%%20Admin%%20(Windows%%2010%%2C%%2011).bat -o "%temp%\CheckcleareVersion.txt"
if %errorlevel% neq 0 goto noupdate
ECHO.&ECHO.
findstr /c:"CheckcleareVersion 18072025" "%temp%\CheckcleareVersion.txt" > nul
if %errorlevel%==0 (
goto noupdate
) else (
cls
COLOR F9
ECHO.&ECHO.
ECHO        Update..
curl -# --ssl-no-revoke --insecure -L https://codeload.github.com/milesthon/cleare/zip/refs/heads/main  -o "%temp%\cleare-main.zip"
ECHO        [32m[5m░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
powershell -command "Expand-Archive -Path "%temp%\cleare-main.zip" -DestinationPath "%temp%\cleare-main" -Force"         2>nul >nul
copy "%temp%\cleare-main\cleare-main\*" "%~dp0"                                                                          2>nul >nul
start "" "%~f0"&exit
)

:noupdate
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
'%SystemDrive%\ProgramData\Temp\*'                                          , ^
'%SystemDrive%\Windows\assembly\*\Temp\*'                                   , ^
'%SystemDrive%\Windows\assembly\Temp\*'                                     , ^
'%SystemDrive%\Windows\assembly\tmp\*'                                      , ^
'%SystemDrive%\Windows\Temp\*'                                              , ^
'%SystemDrive%\Windows\ServiceProfiles\LocalService\AppData\Local\Temp\*'   , ^
'%SystemDrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\Temp\*' , ^
'%SystemDrive%\Windows\System32\config\systemprofile\AppData\Local\Temp\*'  , ^
'%SystemDrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Temp\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\Temp\*'                                , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\AC\Temp\*'                    ^
-Recurse -Force                                                      2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Windows update files..
ECHO        Удаление файлов обновления Windows..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
net stop cryptsvc /yes                                                                                       2>nul >nul
PowerShell -Command                                                                                                   ^
Remove-Item                                                                                                           ^
'%SystemDrive%\$GetCurrent'                                                                                         , ^
'%SystemDrive%\$SysReset'                                                                                           , ^
'%SystemDrive%\$Windows.~BT'                                                                                        , ^
'%SystemDrive%\$Windows.~WS'                                                                                        , ^
'%SystemDrive%\$WinREAgent'                                                                                         , ^
'%SystemDrive%\ESD'                                                                                                 , ^
'%SystemDrive%\Windows10Upgrade'                                                                                    , ^
'%SystemDrive%\Windows\Installer\$PatchCache$\Managed\*'                                                            , ^
'%SystemDrive%\Windows\System32\catroot2\*'                                                                         , ^
'%SystemDrive%\Windows\Logs\WindowsUpdate\*.log'                                                                    , ^
'%SystemDrive%\Windows\SoftwareDistribution\DataStore\Logs\*'                                                       , ^
'%SystemDrive%\Windows\SoftwareDistribution\Download\*'                                                             , ^
'%SystemDrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Cache\*'   ^
-Recurse -Force                                                                                              2>nul >nul
net start cryptsvc                                                                                           2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing logs..
ECHO        Удаление логов..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command                                                                                                      ^
Remove-Item                                                                                                              ^
'%SystemDrive%\Windows\*.log'                                                                                          , ^
'%SystemDrive%\Windows\inf\*.log'                                                                                      , ^
'%SystemDrive%\Windows\logs\*.log'                                                                                     , ^
'%SystemDrive%\windows\logs\cbs\*.log'                                                                                 , ^
'%SystemDrive%\Windows\logs\MoSetup\*.log'                                                                             , ^
'%SystemDrive%\Windows\Microsoft.NET\*.log'                                                                            , ^
'%SystemDrive%\Windows\Panther\*.log'                                                                                  , ^
'%SystemDrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Logs\*.etl' , ^
'%SystemDrive%\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\Windows\WebCache\*.log'                    , ^
'%SystemDrive%\Windows\ServiceProfiles\LocalService\AppData\Local\CLR_v4.0\UsageLogs\*.log'                            , ^
'%SystemDrive%\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\Windows\SettingSync\*.log'                 , ^
'%SystemDrive%\Windows\ServiceProfiles\LocalService\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'               , ^
'%SystemDrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\WebCache\*.log'                  , ^
'%SystemDrive%\Windows\ServiceProfiles\NetworkService\AppData\LocalCLR_v4.0\UsageLogs\*.log'                           , ^
'%SystemDrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\SettingSync\*.log'               , ^
'%SystemDrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'             , ^
'%SystemDrive%\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\WebCache\*.log'                   , ^
'%SystemDrive%\Windows\System32\config\systemprofile\AppData\Local\CLR_v4.0\UsageLogs\*.log'                           , ^
'%SystemDrive%\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Windows\SettingSync\*.log'                , ^
'%SystemDrive%\Windows\System32\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'              , ^
'%SystemDrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\WebCache\*.log'                   , ^
'%SystemDrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\CLR_v4.0\UsageLogs\*.log'                           , ^
'%SystemDrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Windows\SettingSync\*.log'                , ^
'%SystemDrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'              , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Windows\WebCache\*.log'                                                 , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\*.log'                                               , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Windows\SettingSync\*.log'                                              , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'                                              ^
-Recurse -Force                                                                                                 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing unnecessary Windows folders..
ECHO        Удаление ненужных папок Windows..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
:: PowerShell -Command "if (Test-Path '%SystemDrive%\AMD')      {Remove-Item '%SystemDrive%\AMD'      -Recurse -Force}" 2>nul >nul
PowerShell -Command "if (Test-Path '%SystemDrive%\INTEL')    {Remove-Item '%SystemDrive%\INTEL'    -Recurse -Force}" 2>nul >nul
PowerShell -Command "if (Test-Path '%SystemDrive%\NVIDIA')   {Remove-Item '%SystemDrive%\NVIDIA'   -Recurse -Force}" 2>nul >nul
PowerShell -Command "if (Test-Path '%SystemDrive%\PerfLogs') {Remove-Item '%SystemDrive%\PerfLogs' -Recurse -Force}" 2>nul >nul
PowerShell -Command "if (Test-Path '%SystemDrive%\Temp')     {Remove-Item '%SystemDrive%\Temp'     -Recurse -Force}" 2>nul >nul
PowerShell -Command "if (Test-Path '%SystemDrive%\tmp')      {Remove-Item '%SystemDrive%\tmp'      -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting memory dumps..
ECHO        Удаление дампов памяти..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command                                                                 ^
Remove-Item                                                                         ^
'%SystemDrive%\Windows\ServiceProfiles\LocalService\AppData\Local\CrashDumps\*'   , ^
'%SystemDrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\CrashDumps\*' , ^
'%SystemDrive%\Windows\System32\config\systemprofile\AppData\Local\CrashDumps\*'  , ^
'%SystemDrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\CrashDumps\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\CrashDumps\*'                                  ^
-Recurse -Force                                                            2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting SRUDB.dat..
ECHO        Удаление SRUDB.dat..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
net stop DPS /yes                                                                        2>nul >nul
PowerShell -command "Remove-Item '%SystemDrive%\Windows\System32\sru\*' -Recurse -Force" 2>nul >nul
net start DPS                                                                            2>nul >nul

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
ECHO        Cleaning up Windows Search (Windows.edb)..
ECHO        Очистка Поиск Windows (Windows.edb)..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
Sc config wsearch start=disabled                                                                   2>nul >nul
Net stop wsearch                                                                                   2>nul >nul
EsentUtl.exe /d "%SystemDrive%\ProgramData\Microsoft\Search\Data\Applications\Windows\Windows.edb" 2>nul >nul
Sc config wsearch start=delayed-auto                                                               2>nul >nul
Net start wsearch                                                                                  2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing empty unnecessary folders in system32..
ECHO        Удаление пустых ненужных папок в system32..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
schtasks /change /disable /tn "\Microsoft\Windows\Management\Provisioning\Logon"                                            2>nul >nul
PowerShell -command "Remove-Item '%SystemDrive%\Windows\System32\config\systemprofile\AppData\Local\*.tmp' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Disable program cache..
ECHO        Отключение кэша программ..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
:: "%SystemDrive%\Program Files\Microsoft Visual Studio\Installer\vs_installer.exe"          --nocache 2>nul >nul
:: "%SystemDrive%\Program Files (x86)\Microsoft Visual Studio\Installer\vs_installer.exe"    --nocache 2>nul >nul
PowerShell -command "Remove-Item '%SystemDrive%\Windows\Installer\*.tmp'           -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Windows history..
ECHO        Удаление истории Windows..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item '%SystemDrive%\Users\*\AppData\Local\Microsoft\Windows\History\*' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Delete history of last opened files..
ECHO        Удаление истории последних открытых файлов..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item '%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Windows\Recent\*' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing network shortcuts..
ECHO        Удаление сетевых ярлыков..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item '%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Windows\Network Shortcuts\*' -Recurse -Force" 2>nul >nul

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
PowerShell -command "Remove-Item '%SystemDrive%\Users\*\AppData\Local\Microsoft\Terminal Server Client\cache\*' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting DirectX Shrader cache..
ECHO        Удаление кэша DirectX..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command                                                                ^
Remove-Item                                                                        ^
'%SystemDrive%\Windows\ServiceProfiles\LocalService\AppData\Local\D3DSCache\*'   , ^
'%SystemDrive%\Windows\ServiceProfiles\NetworkService\AppData\Local\D3DSCache\*' , ^
'%SystemDrive%\Windows\System32\config\systemprofile\AppData\Local\D3DSCache\*'  , ^
'%SystemDrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\D3DSCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\D3DSCache\*'                                  ^
-Recurse -Force}                                                          2>nul >nul

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
PowerShell -Command                                                                                   ^
Remove-Item                                                                                           ^
'%SystemDrive%\Program Files*\Microsoft OneDrive\setup\logs\*'                                      , ^
'%SystemDrive%\Windows\System32\config\systemprofile\AppData\Local\Microsoft\OneDrive\setup\logs\*' , ^
'%SystemDrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\OneDrive\setup\logs\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\OneDrive\logs\Common\*'                              , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\OneDrive\setup\logs\*'                                 ^
-Recurse -Force                                                                              2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Google Drive cache..
ECHO        Удаление кэша Google Drive..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Google\DriveFS')        ^
{Remove-Item                                                                                   ^
'%SystemDrive%\Users\*\AppData\Local\Google\DriveFS\*\content_cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Google\DriveFS\*\thumbnails_cache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Google\DriveFS\cef_cache\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Google\DriveFS\cef_cache\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Google\DriveFS\cef_cache\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Google\DriveFS\cef_cache\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Google\DriveFS\cef_cache\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\Google\DriveFS\Crashpad\*'                                ^
-Recurse -Force}                                                                      2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Dropbox cache..
ECHO        Удаление кэша Dropbox..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\Dropbox')    ^
{Remove-Item                                                          ^
'%SystemDrive%\Program Files*\Dropbox\Update\Download\*'            , ^
'%SystemDrive%\Program Files*\Dropbox\Update\Install\*'             , ^
'%SystemDrive%\Program Files*\Dropbox\Update\Offline\*'             , ^
'%SystemDrive%\Users\*\Dropbox\.dropbox.cache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Dropbox\avatar_cache\*'        , ^
'%SystemDrive%\Users\*\AppData\Local\Dropbox\Crashpad\*'            , ^
'%SystemDrive%\Users\*\AppData\Local\Dropbox\instance*\sync\temp\*'   ^
-Recurse -Force}                                             2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Office cache..
ECHO        Удаление кэша Microsoft Office..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Microsoft\Office')                        ^
{Remove-Item                                                                                                     ^
'%SystemDrive%\Windows\System32\config\systemprofile\AppData\Local\Microsoft\Office\OTele\*'                   , ^
'%SystemDrive%\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\Office\OTele\*'                   , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\OneNote\*\cache\*'                                              , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Office\OTele\*'                                                 , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Office\*\OfficeFileCache\*'                                     , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Office\*\WebServiceCache\AllUsers\officeclient.microsoft.com\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Office\Spw\*'                                                   , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Outlook\RoamCache\*'                                            , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Office\*.tmp'                                                 , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Office\Recent\*'                                                ^
-Recurse -Force}                                                                                        2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Nvidia cache..
ECHO        Удаление кэша Nvidia..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\ProgramData\NVIDIA')                                                       ^
{Remove-Item                                                                                                                ^
'%SystemDrive%\ProgramData\NVIDIA\*'                                                                                      , ^
'%SystemDrive%\ProgramData\NVIDIA Corporation\GeForce Experience\Logs\*.log'                                              , ^
'%SystemDrive%\ProgramData\NVIDIA Corporation\NV_Cache\*'                                                                 , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA\GLCache\*'                                                                    , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NV_Cache\*'                                                       , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Cache\*'                             , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Code Cache\*'                        , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Crashpad\*'                          , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\GPUCache\*'                          , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Service Worker\CacheStorage\*'       , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Service Worker\ScriptCache\*'        , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Cache\*'                                    , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Code Cache\*'                               , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Crashpad\*'                                 , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\GPUCache\*'                                 , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Service Worker\CacheStorage\*'              , ^
'%SystemDrive%\Users\*\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Service Worker\ScriptCache\*'                 ^
-Recurse -Force}                                                                                                   2>nul >nul
PowerShell -Command if (Test-Path '%SystemDrive%\ProgramData\NVIDIA')                                                       ^
{Get-ChildItem -Path                                                                                                        ^
'%SystemDrive%\ProgramData\NVIDIA Corporation\Downloader'                                                                 , ^
'%SystemDrive%\ProgramData\NVIDIA Corporation\NVIDIA app\UpdateFramework\ota-artifacts'                                   , ^
'%SystemDrive%\ProgramData\NVIDIA Corporation\NVIDIA app\UpdateFramework\ota-artifacts\grd'                               , ^
'%SystemDrive%\ProgramData\NVIDIA Corporation\NVIDIA app\UpdateFramework\ota-artifacts\grd\post-processing'               , ^
'%SystemDrive%\ProgramData\NVIDIA Corporation\NVIDIA app\UpdateFramework\ota-artifacts\nvapp'                             , ^
'%SystemDrive%\ProgramData\NVIDIA Corporation\NVIDIA app\UpdateFramework\ota-artifacts\nvapp\post-processing'             , ^
'%SystemDrive%\ProgramData\NVIDIA Corporation\NvApp-UpdateFramework\ota-artifacts'                                        , ^
'%SystemDrive%\ProgramData\NVIDIA Corporation\NvApp-UpdateFramework\ota-artifacts\grd'                                    , ^
'%SystemDrive%\ProgramData\NVIDIA Corporation\NvApp-UpdateFramework\ota-artifacts\grd\post-processing'                    , ^
'%SystemDrive%\ProgramData\NVIDIA Corporation\NvApp-UpdateFramework\ota-artifacts\nvapp'                                  , ^
'%SystemDrive%\ProgramData\NVIDIA Corporation\NvApp-UpdateFramework\ota-artifacts\nvapp\post-processing'                    ^
-Recurse ^| Where {$_.Name -as [guid]} ^| Remove-Item -Recurse -Force}                                             2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Adobe cache..
ECHO        Удаление кэша Adobe..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\Adobe')                                              ^
{Remove-Item                                                                                                                  ^
'%SystemDrive%\Users\*\AppData\LocalLow\Adobe\Common\Media Cache\*'                                                         , ^
'%SystemDrive%\Users\*\AppData\LocalLow\Adobe\Common\Media Cache Files\*'                                                   , ^
'%SystemDrive%\Users\*\AppData\LocalLow\Adobe\Common\Peak Files\*'                                                          , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\Common\Media Cache\*'                                                          , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\Common\Media Cache Files\*'                                                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\Common\Peak Files\*'                                                           , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Cache\*'                                                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Code Cache\*'                                               , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Crashpad\*'                                                 , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\GPUCache\*'                                                 , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Service Worker\CacheStorage\*'                              , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\*\*\web-cache-temp\Service Worker\ScriptCache\*'                               , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\UXP\PluginsStorage\*\*\Shared\EBWebView\Crashpad\*'                            , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\UXP\PluginsStorage\*\*\Shared\EBWebView\GrShaderCache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\UXP\PluginsStorage\*\*\Shared\EBWebView\ShaderCache\*'                         , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\UXP\PluginsStorage\*\*\Shared\EBWebView\Crashpad\*'                            , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\UXP\PluginsStorage\*\*\Shared\EBWebView\Default\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\UXP\PluginsStorage\*\*\Shared\EBWebView\Default\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\UXP\PluginsStorage\*\*\Shared\EBWebView\Default\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\UXP\PluginsStorage\*\*\Shared\EBWebView\Default\File System\*'                 , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\UXP\PluginsStorage\*\*\Shared\EBWebView\Default\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\UXP\PluginsStorage\*\*\Shared\EBWebView\Default\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Roaming\Adobe\UXP\PluginsStorage\*\*\Shared\EBWebView\Default\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                                     2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting MaxonApp (RedGiant) cache..
ECHO        Удаление кэша MaxonApp (RedGiant)..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\ProgramData\Red Giant')                                  ^
{Remove-Item                                                                                              ^
'%SystemDrive%\ProgramData\Maxon\Service\Downloads\*'                                                   , ^
'%SystemDrive%\ProgramData\Red Giant\Red Giant Service\Downloads\*'                                     , ^
'%SystemDrive%\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Crashpad\*'                            , ^
'%SystemDrive%\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\GrShaderCache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\Cache\Cache_Data\*'            , ^
'%SystemDrive%\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\Default\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\MaxonApp\UserData\EBWebView\ShaderCache\*'                           ^
-Recurse -Force}                                                                                 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Skype сache..
ECHO        Удаление кэша Skype..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Skype for Desktop')                              ^
{Remove-Item                                                                                                                        ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Cache\*'                                                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Code Cache\*'                                                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Crashpad\*'                                                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\GPUCache\*'                                                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Service Worker\CacheStorage\*'                                 , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Skype for Desktop\Service Worker\ScriptCache\*'                                    ^
-Recurse -Force}                                                                                                           2>nul >nul
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Packages\*Skype*')                                           ^
{Remove-Item                                                                                                                        ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                                           2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Teams сache..
ECHO        Удаление кэша Microsoft Teams..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Microsoft\Teams')             ^
{Remove-Item                                                                                         ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Teams\Cache\*'                                      , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Teams\tmp\*'                                        , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Teams\logs.txt'                                   , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Teams\Cache\*'                                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Teams\Code Cache\*'                               , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Teams\Crashpad\*'                                 , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Teams\GPUCache\*'                                 , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Teams\Service Worker\CacheStorage\*'              , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Teams\Service Worker\ScriptCache\*'               , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Roaming\Microsoft\Teams\Partitions\*\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                            2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Zoom сache..
ECHO        Удаление кэша Zoom..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\Zoom')                                               ^
{Remove-Item                                                                                                                  ^
'%SystemDrive%\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Cache\Cache_Data\*'            , ^
'%SystemDrive%\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\ShaderCache\*'                           ^
-Recurse -Force}                                                                                                     2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Telegram cache..
ECHO        Удаление кэша Telegram..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\Telegram Desktop')                                         ^
{Remove-Item                                                                                                                        ^
'%SystemDrive%\Users\*\AppData\Roaming\Telegram Desktop\tdata\emoji\*'                                                            , ^
'%SystemDrive%\Users\*\AppData\Roaming\Telegram Desktop\tdata\user_data*\cache\*\*'                                               , ^
'%SystemDrive%\Users\*\AppData\Roaming\Telegram Desktop\tdata\user_data*\media_cache\*\*'                                           ^
-Recurse -Force}                                                                                                           2>nul >nul
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Packages\Telegram*')                                         ^
{Remove-Item                                                                                                                        ^
'%SystemDrive%\Users\*\AppData\Local\Packages\Telegram*\LocalCache\Roaming\Telegram Desktop UWP\tdata\emoji\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\Telegram*\LocalCache\Roaming\Telegram Desktop UWP\tdata\user_data*\cache\*\*'       , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\Telegram*\LocalCache\Roaming\Telegram Desktop UWP\tdata\user_data*\media_cache\*\*'   ^
-Recurse -Force}                                                                                                           2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Discord cache..
ECHO        Удаление кэша Discord..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\Discord')   ^
{Remove-Item                                                                         ^
'%SystemDrive%\Users\*\AppData\Roaming\Discord\Cache\*'                            , ^
'%SystemDrive%\Users\*\AppData\Roaming\Discord\Code Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\Discord\Crashpad\*'                         , ^
'%SystemDrive%\Users\*\AppData\Roaming\Discord\GPUCache\*'                         , ^
'%SystemDrive%\Users\*\AppData\Roaming\Discord\Service Worker\CacheStorage\*'      , ^
'%SystemDrive%\Users\*\AppData\Roaming\Discord\Service Worker\ScriptCache\*'         ^
-Recurse -Force}                                                            2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting VK Messenger cache..
ECHO        Удаление кэша VK Messenger..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\VK')                                      ^
{Remove-Item                                                                                                       ^
'%SystemDrive%\Users\*\AppData\Roaming\VK\Cache\*'                                                               , ^
'%SystemDrive%\Users\*\AppData\Roaming\VK\Code Cache\*'                                                          , ^
'%SystemDrive%\Users\*\AppData\Roaming\VK\Crashpad\*'                                                            , ^
'%SystemDrive%\Users\*\AppData\Roaming\VK\GPUCache\*'                                                            , ^
'%SystemDrive%\Users\*\AppData\Roaming\VK\Service Worker\CacheStorage\*'                                         , ^
'%SystemDrive%\Users\*\AppData\Roaming\VK\Service Worker\ScriptCache\*'                                            ^
-Recurse -Force}                                                                               2>nul >nul
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Packages\*VKMessenger*')                    ^
{Remove-Item                                                                                                       ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                          2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting WhatsApp cache..
ECHO        Удаление кэша WhatsApp..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\WhatsApp')                                          ^
{Remove-Item                                                                                                                 ^
'%SystemDrive%\Users\*\AppData\Roaming\WhatsApp\Cache\*'                                                                   , ^
'%SystemDrive%\Users\*\AppData\Roaming\WhatsApp\Code Cache\*'                                                              , ^
'%SystemDrive%\Users\*\AppData\Roaming\WhatsApp\Crashpad\*'                                                                , ^
'%SystemDrive%\Users\*\AppData\Roaming\WhatsApp\File System\*'                                                             , ^
'%SystemDrive%\Users\*\AppData\Roaming\WhatsApp\GPUCache\*'                                                                , ^
'%SystemDrive%\Users\*\AppData\Roaming\WhatsApp\Service Worker\CacheStorage\*'                                             , ^
'%SystemDrive%\Users\*\AppData\Roaming\WhatsApp\Service Worker\ScriptCache\*'                                                ^
-Recurse -Force}                                                                                                    2>nul >nul
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Packages\*WhatsAppDesktop*')                          ^
{Remove-Item                                                                                                                 ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalState\shared\transfers\*'                             , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\File System\*'                 , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                                    2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Viber cache..
ECHO        Удаление кэша Viber..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\ViberPC')                            ^
{Remove-Item                                                                                                  ^
'%SystemDrive%\Users\*\AppData\Roaming\ViberPC\*\QmlUrlCache\data*\*'                                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\ViberPC\*\QmlWebCache\data*\*'                                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\ViberPC\*\Thumbnails\*'                                              , ^
'%SystemDrive%\Users\*\AppData\Roaming\ViberPC\data\stickers\*'                                               ^
-Recurse -Force}                                                                                     2>nul >nul
:: PowerShell -command "Remove-Item '%SystemDrive%\Users\*\Documents\ViberDownloads\*' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting ICQ cache..
ECHO        Удаление кэша ICQ..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\ICQ')   ^
{Remove-Item                                                                     ^
'%SystemDrive%\Users\*\AppData\Roaming\ICQ\cache\*'                            , ^
'%SystemDrive%\Users\*\AppData\Roaming\ICQ\*\content.cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\ICQ\*\info\cache'                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\ICQ\*\stickers\*'                         ^
-Recurse -Force}                                                        2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting 1C cache..
ECHO        Удаление кэша 1C..
ECHO        [32m[5m█████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\1C\')    ^
{Get-ChildItem -Path                                                            ^
'%SystemDrive%\Users\*\AppData\Local\1C\*'                                      ^
-Recurse ^| Where {$_.Name -as [guid]} ^| Remove-Item -Recurse -Force} 2>nul >nul
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\1C\')  ^
{Get-ChildItem -Path                                                            ^
'%SystemDrive%\Users\*\AppData\Local\1C\*'                                      ^
-Recurse ^| Where {$_.Name -as [guid]} ^| Remove-Item -Recurse -Force} 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Bitrix24 cache..
ECHO        Удаление кэша Bitrix24..
ECHO        [32m[5m█████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\Bitrix24')                ^
{Remove-Item                                                                                       ^
'%SystemDrive%\Users\*\AppData\Local\Bitrix24\User Data\Crashpad\*'                              , ^
'%SystemDrive%\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                          2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Slack cache..
ECHO        Удаление кэша Slack..
ECHO        [32m[5m█████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\Slack')   ^
{Remove-Item                                                                       ^
'%SystemDrive%\Users\*\AppData\Roaming\Slack\Cache\*'                            , ^
'%SystemDrive%\Users\*\AppData\Roaming\Slack\Code Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\Slack\Crashpad\*'                         , ^
'%SystemDrive%\Users\*\AppData\Roaming\Slack\GPUCache\*'                         , ^
'%SystemDrive%\Users\*\AppData\Roaming\Slack\Service Worker\CacheStorage\*'      , ^
'%SystemDrive%\Users\*\AppData\Roaming\Slack\Service Worker\ScriptCache\*'         ^
-Recurse -Force}                                                          2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting OBS cache..
ECHO        Удаление кэша OBS..
ECHO        [32m[5m████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\obs-studio')                                              ^
{Remove-Item                                                                                                                       ^
'%SystemDrive%\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Cache\*'                                             , ^
'%SystemDrive%\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Code Cache\*'                                        , ^
'%SystemDrive%\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Crashpad\*'                                          , ^
'%SystemDrive%\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\GPUCache\*'                                          , ^
'%SystemDrive%\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Service Worker\CacheStorage\*'                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\Service Worker\ScriptCache\*'                        , ^
'%SystemDrive%\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                                          2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Streamlabs cache..
ECHO        Удаление кэша Streamlabs..
ECHO        [32m[5m████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\slobs-client')                        ^
{Remove-Item                                                                                                   ^
'%SystemDrive%\Users\*\AppData\Roaming\slobs-client\Cache\*'                                                 , ^
'%SystemDrive%\Users\*\AppData\Roaming\slobs-client\Code Cache\*'                                            , ^
'%SystemDrive%\Users\*\AppData\Roaming\slobs-client\Crashpad\*'                                              , ^
'%SystemDrive%\Users\*\AppData\Roaming\slobs-client\GPUCache\*'                                              , ^
'%SystemDrive%\Users\*\AppData\Roaming\slobs-client\Service Worker\CacheStorage\*'                           , ^
'%SystemDrive%\Users\*\AppData\Roaming\slobs-client\Service Worker\ScriptCache\*'                            , ^
'%SystemDrive%\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Roaming\slobs-client\plugin_config\obs-browser\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                      2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Twitch Studio cache..
ECHO        Удаление кэша Twitch Studio..
ECHO        [32m[5m████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\slobs-client')   ^
{Remove-Item                                                                              ^
'%SystemDrive%\Users\*\AppData\Roaming\Twitch Studio\*\Cache\*'                         , ^
'%SystemDrive%\Users\*\AppData\Roaming\Twitch Studio\*\Code Cache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\Twitch Studio\*\Crashpad\*'                      , ^
'%SystemDrive%\Users\*\AppData\Roaming\Twitch Studio\*\GPUCache\*'                      , ^
'%SystemDrive%\Users\*\AppData\Roaming\Twitch Studio\*\Service Worker\CacheStorage\*'   , ^
'%SystemDrive%\Users\*\AppData\Roaming\Twitch Studio\*\Service Worker\ScriptCache\*'      ^
-Recurse -Force}                                                                 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Apple (iTunes) cache..
ECHO        Удаление кэша Apple (iTunes)..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Apple')            ^
{Remove-Item                                                                              ^
'%SystemDrive%\ProgramData\Apple\Installer Cache\*'                                     , ^
'%SystemDrive%\ProgramData\Apple Computer\Installer Cache\*'                            , ^
'%SystemDrive%\Users\*\Music\iTunes\Album Artwork\Cache\*'                              , ^
'%SystemDrive%\Users\*\AppData\Local\Apple\Apple Software Update\*'                     , ^
'%SystemDrive%\Users\*\AppData\Local\Apple Computer\iTunes\PlayCache\*'                 , ^
'%SystemDrive%\Users\*\AppData\Local\Apple Computer\iTunes\SubscriptionPlayCache\*'     , ^
'%SystemDrive%\Users\*\AppData\Roaming\Apple Computer\iTunes\iPhone Software Updates\*' , ^
'%SystemDrive%\Users\*\AppData\Roaming\Apple Computer\Logs\*'                             ^
-Recurse -Force}                                                                 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Spotify cache..
ECHO        Удаление кэша Spotify..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Spotify')                                    ^
{Remove-Item                                                                                                        ^
'%SystemDrive%\Users\*\AppData\Local\Spotify\Data\*'                                                              , ^
'%SystemDrive%\Users\*\AppData\Local\Spotify\Browser\Cache\Cache_Data\*'                                          , ^
'%SystemDrive%\Users\*\AppData\Local\Spotify\Browser\Code Cache\*'                                                , ^
'%SystemDrive%\Users\*\AppData\Local\Spotify\Browser\Crashpad\*'                                                  , ^
'%SystemDrive%\Users\*\AppData\Local\Spotify\Browser\GPUCache\*'                                                  , ^
'%SystemDrive%\Users\*\AppData\Local\Spotify\Browser\Service Worker\CacheStorage\*'                               , ^
'%SystemDrive%\Users\*\AppData\Local\Spotify\Browser\Service Worker\ScriptCache\*'                                  ^
-Recurse -Force}                                                                                           2>nul >nul
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Packages\*Spotify*')                         ^
{Remove-Item                                                                                                        ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Data\*'                                , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Cache\Cache_Data\*'            , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                           2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Yandex.Music cache..
ECHO        Удаление кэша Yandex.Music..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Packages\*Yandex.Music*')   ^
{Remove-Item                                                                                       ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Yandex.Music*\LocalState\CachedCovers\*'          , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Yandex.Music*\LocalCache\MusicCache\*'              ^
-Recurse -Force}                                                                          2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Clipchamp cache..
ECHO        Удаление кэша Clipchamp..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Packages\Clipchamp*')                           ^
{Remove-Item                                                                                                           ^
'%SystemDrive%\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Crashpad\*'                            , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Cache\Cache_Data\*'            , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\GrShaderCache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\ShaderCache\*'                           ^
-Recurse -Force}                                                                                              2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting PowerToys cache..
ECHO        Удаление кэша PowerToys..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Microsoft\PowerToys') {Remove-Item '%SystemDrive%\Users\*\AppData\Local\Microsoft\PowerToys\Updates\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting ScreenClip cache..
ECHO        Удаление кэша ScreenClip..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.CBS*\TempState\ScreenClip') {Remove-Item '%SystemDrive%\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.CBS*\TempState\ScreenClip\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Python (pip) cache..
ECHO        Удаление кэша Python (pip)..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path '%SystemDrive%\Users\*\AppData\Local\pip') {Remove-Item '%SystemDrive%\Users\*\AppData\Local\pip\cache\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Microsoft Visual Studio cache..
ECHO        Удаление кэша Microsoft Visual Studio..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Microsoft\VisualStudio') {Remove-Item '%SystemDrive%\Users\*\AppData\Local\Microsoft\VisualStudio\*\ComponentModelCache\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing GitHub Desktop cache..
ECHO        Удаление кэша GitHub Desktop..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\GitHub Desktop')   ^
{Remove-Item                                                                                ^
'%SystemDrive%\Users\*\AppData\Roaming\GitHub Desktop\Cache\Cache_Data\*'                 , ^
'%SystemDrive%\Users\*\AppData\Roaming\GitHub Desktop\Code Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\GitHub Desktop\GPUCache\*'                         , ^
'%SystemDrive%\Users\*\AppData\Roaming\GitHub Desktop\Crashpad\*'                         , ^
'%SystemDrive%\Users\*\AppData\Roaming\GitHub Desktop\Service Worker\CacheStorage\*'      , ^
'%SystemDrive%\Users\*\AppData\Roaming\GitHub Desktop\Service Worker\ScriptCache\*'         ^
-Recurse -Force}                                                                   2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Unity cache..
ECHO        Удаление кэша Unity..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Unity')                                                     ^
{Remove-Item                                                                                                                       ^
'%SystemDrive%\Program Files*\Unity\Cache\*'                                                                                     , ^
'%SystemDrive%\Program Files*\Unity\Hub\Editor\*\Editor\Data\Resources\PackageManager\ProjectTemplates\libcache\*\ShaderCache\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Unity\Cache\*'                                                                              , ^
'%SystemDrive%\Users\*\AppData\Local\unityhub-updater\*'                                                                         , ^
'%SystemDrive%\Users\*\AppData\LocalLow\Unity\Cache\*'                                                                           , ^
'%SystemDrive%\Users\*\AppData\LocalLow\Unity\Caches\*'                                                                          , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\Cache\*'                                                                         , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\Code Cache\*'                                                                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\Crashpad\*'                                                                      , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\GPUCache\*'                                                                      , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\Service Worker\CacheStorage\*'                                                   , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\Service Worker\ScriptCache\*'                                                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\graphqlCache\*'                                                                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\logs\*'                                                                          , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\Service Worker\CacheStorage\*'                                                   , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\Service Worker\ScriptCache\*'                                                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Cache\*'                                                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Code Cache\*'                                                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Crashpad\*'                                                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\GPUCache\*'                                                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Service Worker\CacheStorage\*'                                 , ^
'%SystemDrive%\Users\*\AppData\Roaming\UnityHub\storage\ext\*\def\Service Worker\ScriptCache\*'                                    ^
-Recurse -Force}                                                                                                          2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Java cache..
ECHO        Удаление кэша Java..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path '%SystemDrive%\Users\*\AppData\LocalLow\Sun\Java') {Remove-Item '%SystemDrive%\Users\*\AppData\LocalLow\Sun\Java\Deployment\cache\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Minecraft cache..
ECHO        Удаление кэша Minecraft..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\.minecraft')                    ^
{Remove-Item                                                                                             ^
'%SystemDrive%\Users\*\AppData\Roaming\.minecraft\webcache*\Cache\*'                                   , ^
'%SystemDrive%\Users\*\AppData\Roaming\.minecraft\webcache*\Code Cache\*'                              , ^
'%SystemDrive%\Users\*\AppData\Roaming\.minecraft\webcache*\Crashpad\*'                                , ^
'%SystemDrive%\Users\*\AppData\Roaming\.minecraft\webcache*\GPUCache\*'                                , ^
'%SystemDrive%\Users\*\AppData\Roaming\.minecraft\webcache*\Service Worker\CacheStorage\*'             , ^
'%SystemDrive%\Users\*\AppData\Roaming\.minecraft\webcache*\Service Worker\ScriptCache\*'              , ^
'%SystemDrive%\Users\*\AppData\Roaming\minecraftedu\minecraft\webcache*\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\minecraftedu\minecraft\webcache*\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\minecraftedu\minecraft\webcache*\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\minecraftedu\minecraft\webcache*\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\minecraftedu\minecraft\webcache*\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Roaming\minecraftedu\minecraft\webcache*\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Minecraft*\LocalCache\minecraftpe\CatalogCache\*'       , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*Minecraft*\LocalCache\minecraftpe\ContentCache\*'         ^
-Recurse -Force}                                                                                2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Steam cache..
ECHO        Удаление кэша Steam..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Steam')            ^
{Remove-Item                                                                              ^
'%SystemDrive%\Program Files*\Steam\appcache\httpcache\*'                               , ^
'%SystemDrive%\Program Files*\Steam\appcache\librarycache\*'                            , ^
'%SystemDrive%\Program Files*\Steam\depotcache\*'                                       , ^
'%SystemDrive%\Program Files*\Steam\steam\cached\*'                                     , ^
::'%SystemDrive%\Program Files*\Steam\steamapps\common\Steamworks Shared\_CommonRedist\*' , ^
'%SystemDrive%\Program Files*\Steam\SteamApps\downloading\*'                            , ^
'%SystemDrive%\Program Files*\Steam\SteamApps\temp\*'                                   , ^
'%SystemDrive%\Program Files*\Steam\SteamApps\workshop\temp\*'                          , ^
'%SystemDrive%\Program Files*\Steam\SteamApps\workshop\downloads\*'                     , ^
'%SystemDrive%\Users\*\AppData\Local\Steam\htmlcache\Cache\*'                           , ^
'%SystemDrive%\Users\*\AppData\Local\Steam\htmlcache\Code Cache\*'                      , ^
'%SystemDrive%\Users\*\AppData\Local\Steam\htmlcache\Crashpad\*'                        , ^
'%SystemDrive%\Users\*\AppData\Local\Steam\htmlcache\GPUCache\*'                        , ^
'%SystemDrive%\Users\*\AppData\Local\Steam\htmlcache\Service Worker\CacheStorage\*'     , ^
'%SystemDrive%\Users\*\AppData\Local\Steam\htmlcache\Service Worker\ScriptCache\*'        ^
-Recurse -Force}                                                                 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Epic Launcher cache..
ECHO        Удаление кэша Epic Launcher..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Epic Games')                                   ^
{Remove-Item                                                                                                          ^
'%SystemDrive%\ProgramData\Epic\EpicGamesLauncher\Data\ContentCache\*'                                              , ^
'%SystemDrive%\ProgramData\Epic\EpicGamesLauncher\Data\EMS\EpicGamesLauncher\*.png'                                 , ^
'%SystemDrive%\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Cache\*'                                    , ^
'%SystemDrive%\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Code Cache\*'                               , ^
'%SystemDrive%\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Crashpad\*'                                 , ^
'%SystemDrive%\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\GPUCache\*'                                 , ^
'%SystemDrive%\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Service Worker\CacheStorage\*'              , ^
'%SystemDrive%\Users\*\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Service Worker\ScriptCache\*'               , ^
'%SystemDrive%\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Cache\*'                                             , ^
'%SystemDrive%\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Code Cache\*'                                        , ^
'%SystemDrive%\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Crashpad\*'                                          , ^
'%SystemDrive%\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\GPUCache\*'                                          , ^
'%SystemDrive%\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Service Worker\CacheStorage\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\EpicGamesLauncher\Saved\*\Service Worker\ScriptCache\*'                          ^
-Recurse -Force}                                                                                             2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Origin / EA Launcher cache..
ECHO        Удаление кэша Origin / EA Launcher..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Origin')                         ^
{Remove-Item                                                                                            ^
'%SystemDrive%\ProgramData\Origin\CatalogCache\*'                                                     , ^
'%SystemDrive%\ProgramData\Origin\DownloadCache\*'                                                    , ^
'%SystemDrive%\Windows\SysWOW64\config\systemprofile\AppData\Roaming\Origin\*'                        , ^
'%SystemDrive%\Users\*\AppData\Local\Origin\Origin\cache\QtWebEngine\Default\Cache\*'                 , ^
'%SystemDrive%\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Origin\Origin\QtWebEngine\Default\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                               2>nul >nul
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\EADesktop')                      ^
{Remove-Item                                                                                            ^
'%SystemDrive%\Users\*\AppData\Local\EADesktop\cache\QtWebEngine\Default\Cache\*'                     , ^
'%SystemDrive%\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\Code Cache\*'                      , ^
'%SystemDrive%\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\Crashpad\*'                        , ^
'%SystemDrive%\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\GPUCache\*'                        , ^
'%SystemDrive%\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\Service Worker\CacheStorage\*'     , ^
'%SystemDrive%\Users\*\AppData\Local\EADesktop\QtWebEngine\Default\Service Worker\ScriptCache\*'        ^
-Recurse -Force}                                                                               2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Battle.net cache..
ECHO        Удаление кэша Battle.net..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Battle.net')           ^
{Remove-Item                                                                                  ^
'%SystemDrive%\ProgramData\Battle.net\Agent\data\cache\*'                                   , ^
'%SystemDrive%\Users\*\AppData\Local\Battle.net\Cache\*'                                    , ^
'%SystemDrive%\Users\*\AppData\Local\Battle.net\BrowserCache\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Battle.net\BrowserCache\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Battle.net\BrowserCache\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Battle.net\BrowserCache\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Battle.net\BrowserCache\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Battle.net\BrowserCache\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\Blizzard Entertainment\Telemetry\*'                      ^
-Recurse -Force}                                                                     2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Ubisoft Connect (Uplay) cache..
ECHO        Удаление кэша Ubisoft Connect (Uplay)..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Program Files*\Ubisoft\Ubisoft Game Launcher')          ^
{Remove-Item                                                                                             ^
'%SystemDrive%\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\assets\*'                            , ^
'%SystemDrive%\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Cache\*'                       , ^
'%SystemDrive%\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Code Cache\*'                  , ^
'%SystemDrive%\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Crashpad\*'                    , ^
'%SystemDrive%\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\GPUCache\*'                    , ^
'%SystemDrive%\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Program Files*\Ubisoft\Ubisoft Game Launcher\cache\http2\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Rockstar Games cache..
ECHO        Удаление кэша Rockstar Games..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\Documents\Rockstar Games\Social Club')                ^
{Remove-Item                                                                                                   ^
'%SystemDrive%\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Cache\*'                       , ^
'%SystemDrive%\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\Documents\Rockstar Games\Social Club\Launcher\Renderer\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\Documents\Rockstar Games\Social Club\Renderer\Cache\*'                                , ^
'%SystemDrive%\Users\*\Documents\Rockstar Games\Social Club\Renderer\Code Cache\*'                           , ^
'%SystemDrive%\Users\*\Documents\Rockstar Games\Social Club\Renderer\Crashpad\*'                             , ^
'%SystemDrive%\Users\*\Documents\Rockstar Games\Social Club\Renderer\GPUCache\*'                             , ^
'%SystemDrive%\Users\*\Documents\Rockstar Games\Social Club\Renderer\Service Worker\CacheStorage\*'          , ^
'%SystemDrive%\Users\*\Documents\Rockstar Games\Social Club\Renderer\Service Worker\ScriptCache\*'             ^
-Recurse -Force}                                                                                      2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting GOG cache..
ECHO        Удаление кэша GOG..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\ProgramData\GOG.com')                     ^
{Remove-Item                                                                               ^
'%SystemDrive%\ProgramData\GOG.com\Galaxy\webcache\common\Cache\*'                       , ^
'%SystemDrive%\ProgramData\GOG.com\Galaxy\webcache\common\Code Cache\*'                  , ^
'%SystemDrive%\ProgramData\GOG.com\Galaxy\webcache\common\Crashpad\*'                    , ^
'%SystemDrive%\ProgramData\GOG.com\Galaxy\webcache\common\GPUCache\*'                    , ^
'%SystemDrive%\ProgramData\GOG.com\Galaxy\webcache\common\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\ProgramData\GOG.com\Galaxy\webcache\common\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                  2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting SteelSeries GG cache..
ECHO        Удаление кэша SteelSeries GG..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\ProgramData\SteelSeries\GG')                 ^
{Remove-Item                                                                                  ^
'%SystemDrive%\ProgramData\SteelSeries\GG\updates\*'                                        , ^
'%SystemDrive%\Users\*\AppData\Roaming\steelseries-gg-client\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\steelseries-gg-client\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\steelseries-gg-client\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\steelseries-gg-client\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\steelseries-gg-client\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Roaming\steelseries-gg-client\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                     2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting OpenVPN Connect..
ECHO        Удаление кэша OpenVPN Connect..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Roaming\OpenVPN Connect')   ^
{Remove-Item                                                                                 ^
'%SystemDrive%\Users\*\AppData\Roaming\OpenVPN Connect\Cache\*'                            , ^
'%SystemDrive%\Users\*\AppData\Roaming\OpenVPN Connect\Code Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Roaming\OpenVPN Connect\Crashpad\*'                         , ^
'%SystemDrive%\Users\*\AppData\Roaming\OpenVPN Connect\GPUCache\*'                         , ^
'%SystemDrive%\Users\*\AppData\Roaming\OpenVPN Connect\Service Worker\CacheStorage\*'      , ^
'%SystemDrive%\Users\*\AppData\Roaming\OpenVPN Connect\Service Worker\ScriptCache\*'         ^
-Recurse -Force}                                                                    2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Windows 11 Widgets cache..
ECHO        Удаление кэша виджетов Windows 11..
ECHO        [32m[5m█████████████████████████████░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*')                           ^
{Remove-Item                                                                                                                                       ^
'%SystemDrive%\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Crashpad\*'                            , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Cache\Cache_Data\*'            , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\GrShaderCache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\ShaderCache\*'                           ^
-Recurse -Force}                                                                                                                          2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting CryptnetUrlCache cache..
ECHO        Удаление кэша CryptnetUrlCache..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command                                                                                             ^
Remove-Item                                                                                                     ^
'%SystemDrive%\Windows\ServiceProfiles\LocalService\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'    , ^
'%SystemDrive%\Windows\ServiceProfiles\LocalService\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*'   , ^
'%SystemDrive%\Windows\ServiceProfiles\NetworkService\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'  , ^
'%SystemDrive%\Windows\ServiceProfiles\NetworkService\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*' , ^
'%SystemDrive%\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'   , ^
'%SystemDrive%\Windows\System32\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*'  , ^
'%SystemDrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'   , ^
'%SystemDrive%\Windows\SysWOW64\config\systemprofile\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*'  , ^
'%SystemDrive%\Users\*\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'                                 , ^
'%SystemDrive%\Users\*\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*'                                  ^
-Recurse -Force                                                                                        2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Internet Explorer cache..
ECHO        Удаление кэша Internet Explorer..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8              2>nul >nul
PowerShell -Command                                                     ^
Remove-Item                                                             ^
'%SystemDrive%\Users\*\AppData\Local\cache\*'                         , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Windows\WebCache.old*'   ^
-Recurse -Force                                                2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Edge cache..
ECHO        Удаление кэша Microsoft Edge..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command                                                                                ^
Remove-Item                                                                                        ^
'%SystemDrive%\Program Files*\Microsoft\EdgeUpdate\Download\*'                                   , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Edge\User Data\Crashpad\*'                        , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Cache\Cache_Data\*'              , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Code Cache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Edge\User Data\*\File System\*'                   , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Edge\User Data\*\GPUCache\*'                      , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Service Worker\CacheStorage\*'   , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Edge\User Data\*\Service Worker\ScriptCache\*'    , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Edge\User Data\GrShaderCache\*'                   , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Edge\User Data\ShaderCache\*'                     , ^
'%SystemDrive%\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\Crashpad\*'                      , ^
'%SystemDrive%\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\*\Cache\Cache_Data\*'            , ^
'%SystemDrive%\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\*\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\*\File System\*'                 , ^
'%SystemDrive%\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\*\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\*\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\*\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\GrShaderCache\*'                 , ^
'%SystemDrive%\Users\*\AppData\LocalLow\webviewdata\*\EBWebView\ShaderCache\*'                     ^
-Recurse -Force                                                                           2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Google Chrome cache..
ECHO        Удаление кэша Google Chrome..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Google\Chrome')                                 ^
{Remove-Item                                                                                                           ^
'%SystemDrive%\Program Files*\Google\Update\Download\*'                                                              , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\Crashpad\*'                                             , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\*\Cache\Cache_Data\*'                                   , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\*\Code Cache\*'                                         , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\*\File System\*'                                        , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\*\GPUCache\*'                                           , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\*\Service Worker\CacheStorage\*'                        , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\*\Service Worker\ScriptCache\*'                         , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Cache\*'                            , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Code Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\File System\*'                      , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\GPUCache\*'                         , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*'      , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'       , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\GrShaderCache\*'                                        , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome\User Data\ShaderCache\*'                                          , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Update\Download\*'                                                         ^
-Recurse -Force}                                                                                              2>nul >nul
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta')                            ^
{Remove-Item                                                                                                           ^
'%SystemDrive%\Program Files*\Google\Update\Download\*'                                                              , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\Crashpad\*'                                        , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Cache\Cache_Data\*'                              , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Code Cache\*'                                    , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\File System\*'                                   , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\GPUCache\*'                                      , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Service Worker\CacheStorage\*'                   , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Service Worker\ScriptCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\File System\*'                 , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\GrShaderCache\*'                                   , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome Beta\User Data\ShaderCache\*'                                     , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Update\Download\*'                                                         ^
-Recurse -Force}                                                                                              2>nul >nul
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS')                             ^
{Remove-Item                                                                                                           ^
'%SystemDrive%\Program Files*\Google\Update\Download\*'                                                              , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\Crashpad\*'                                         , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Cache\Cache_Data\*'                               , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Code Cache\*'                                     , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\File System\*'                                    , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\GPUCache\*'                                       , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Service Worker\CacheStorage\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Service Worker\ScriptCache\*'                     , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Cache\*'                        , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Code Cache\*'                   , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\File System\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\GPUCache\*'                     , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'   , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\GrShaderCache\*'                                    , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chrome SxS\User Data\ShaderCache\*'                                      , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Update\Download\*'                                                         ^
-Recurse -Force}                                                                                              2>nul >nul
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Google\Chromium')                               ^
{Remove-Item                                                                                                           ^
'%SystemDrive%\Program Files*\Google\Update\Download\*'                                                              , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\Crashpad\*'                                           , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\*\Cache\Cache_Data\*'                                 , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\*\Code Cache\*'                                       , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\*\File System\*'                                      , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\*\GPUCache\*'                                         , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\*\Service Worker\CacheStorage\*'                      , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\*\Service Worker\ScriptCache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Cache\*'                          , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Code Cache\*'                     , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\File System\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\GPUCache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*'    , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'     , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\GrShaderCache\*'                                      , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Chromium\User Data\ShaderCache\*'                                        , ^
'%SystemDrive%\Users\*\AppData\Local\Google\Update\Download\*'                                                         ^
-Recurse -Force}                                                                                              2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Yandex Browser cache..
ECHO        Удаление кэша Yandex Browser..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Yandex')                        ^
{Remove-Item                                                                                           ^
'%SystemDrive%\Program Files*\Yandex\YandexBrowser\Temp\*'                                           , ^
'%SystemDrive%\Users\*\AppData\Local\Yandex\YandexBrowser\Temp\*'                                    , ^
'%SystemDrive%\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\Crashpad\*'                      , ^
'%SystemDrive%\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\Cache\Cache_Data\*'            , ^
'%SystemDrive%\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\File System\*'                 , ^
'%SystemDrive%\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\*\TurboAppCache\*'               , ^
'%SystemDrive%\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\GrShaderCache\*'                 , ^
'%SystemDrive%\Users\*\AppData\Local\Yandex\YandexBrowser\User Data\ShaderCache\*'                     ^
-Recurse -Force}                                                                              2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Opera cache..
ECHO        Удаление кэша Opera..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Opera Software\Opera Stable')                    ^
{Remove-Item                                                                                                            ^
'%SystemDrive%\Users\*\AppData\Local\Opera Software\Opera Stable\Cache\Cache_Data\*'                                  , ^
'%SystemDrive%\Users\*\AppData\Local\Opera Software\Opera Stable\System Cache\Cache_Data\*'                           , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera Stable\Code Cache\*'                                      , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera Stable\Crash Reports\*'                                   , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera Stable\File System\*'                                     , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera Stable\GPUCache\*'                                        , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera Stable\GrShaderCache\*'                                   , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera Stable\Service Worker\CacheStorage\*'                     , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera Stable\Service Worker\ScriptCache\*'                      , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera Stable\ShaderCache\*'                                       ^
-Recurse -Force}                                                                                               2>nul >nul
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Opera Software\Opera GX Stable')                 ^
{Remove-Item                                                                                                            ^
'%SystemDrive%\Users\*\AppData\Local\Opera Software\Opera GX Stable\_side_profiles\*\Cache\Cache_Data\*'              , ^
'%SystemDrive%\Users\*\AppData\Local\Opera Software\Opera GX Stable\_side_profiles\*\System Cache\Cache_Data\*'       , ^
'%SystemDrive%\Users\*\AppData\Local\Opera Software\Opera GX Stable\Cache\Cache_Data\*'                               , ^
'%SystemDrive%\Users\*\AppData\Local\Opera Software\Opera GX Stable\System Cache\Cache_Data\*'                        , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Crash Reports\*'               , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\File System\*'                 , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\GrShaderCache\*'               , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\ShaderCache\*'                 , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\Code Cache\*'                                   , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\Crash Reports\*'                                , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\File System\*'                                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\GPUCache\*'                                     , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\GrShaderCache\*'                                , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\Service Worker\CacheStorage\*'                  , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\Service Worker\ScriptCache\*'                   , ^
'%SystemDrive%\Users\*\AppData\Roaming\Opera Software\Opera GX Stable\ShaderCache\*'                                    ^
-Recurse -Force}                                                                                               2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Mozilla Firefox cache..
ECHO        Удаление кэша Mozilla Firefox..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Mozilla\Firefox')   ^
{Remove-Item                                                                               ^
'%SystemDrive%\Program Files*\Mozilla Maintenance Service\update\*                       , ^
'%SystemDrive%\ProgramData\Mozilla*\updates\*\updates\*'                                 , ^
'%SystemDrive%\Users\*\AppData\Local\Mozilla\Firefox\Profiles\*\cache2\entries\*'          ^
-Recurse -Force}                                                                  2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Thunderbird cache..
ECHO        Удаление кэша Thunderbird..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Thunderbird')     ^
{Remove-Item                                                                             ^
'%SystemDrive%\Program Files*\Mozilla Maintenance Service\update\*                     , ^
'%SystemDrive%\ProgramData\Mozilla*\updates\*\updates\*'                               , ^
'%SystemDrive%\Users\*\AppData\Local\Thunderbird\Profiles\*\cache2\entries\*'            ^
-Recurse -Force}                                                                2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Cent Browser cache..
ECHO        Удаление кэша Cent Browser..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\CentBrowser')          ^
{Remove-Item                                                                                  ^
'%SystemDrive%\Users\*\AppData\Local\CentBrowser\User Data\Crashpad\*'                      , ^
'%SystemDrive%\Users\*\AppData\Local\CentBrowser\User Data\*\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\CentBrowser\User Data\*\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\CentBrowser\User Data\*\File System\*'                 , ^
'%SystemDrive%\Users\*\AppData\Local\CentBrowser\User Data\*\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\CentBrowser\User Data\*\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\CentBrowser\User Data\*\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\CentBrowser\User Data\GrShaderCache\*'                 , ^
'%SystemDrive%\Users\*\AppData\Local\CentBrowser\User Data\ShaderCache\*'                     ^
-Recurse -Force}                                                                     2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Atom cache..
ECHO        Удаление кэша Atom..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom')                            ^
{Remove-Item                                                                                                     ^
'%SystemDrive%\Program Files*\Mail.Ru\Atom\Temp\*'                                                             , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\Temp\*'                                                      , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\Crashpad\*'                                        , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Cache\Cache_Data\*'                              , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Code Cache\*'                                    , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\File System\*'                                   , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\GPUCache\*'                                      , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Service Worker\CacheStorage\*'                   , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Service Worker\ScriptCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\File System\*'                 , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\GrShaderCache\*'                                   , ^
'%SystemDrive%\Users\*\AppData\Local\Mail.Ru\Atom\User Data\ShaderCache\*'                                       ^
-Recurse -Force}                                                                                        2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Vivaldi cache..
ECHO        Удаление кэша Vivaldi..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Vivaldi')                                  ^
{Remove-Item                                                                                                      ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\Crashpad\*'                                              , ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\*\Cache\Cache_Data\*'                                    , ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\*\Code Cache\*'                                          , ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\*\File System\*'                                         , ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\*\GPUCache\*'                                            , ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\*\Service Worker\CacheStorage\*'                         , ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\*\Service Worker\ScriptCache\*'                          , ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\File System\*'                 , ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\GrShaderCache\*'                                         , ^
'%SystemDrive%\Users\*\AppData\Local\Vivaldi\User Data\ShaderCache\*'                                             ^
-Recurse -Force}                                                                                         2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Brave Browser cache..
ECHO        Удаление кэша Brave Browser..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\BraveSoftware\Brave-Browser')          ^
{Remove-Item                                                                                                  ^
'%SystemDrive%\Program Files*\BraveSoftware\Update\Download\*'                                              , ^
'%SystemDrive%\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\Crashpad\*'                      , ^
'%SystemDrive%\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Cache\Cache_Data\*'            , ^
'%SystemDrive%\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\File System\*'                 , ^
'%SystemDrive%\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\GrShaderCache\*'                 , ^
'%SystemDrive%\Users\*\AppData\Local\BraveSoftware\Brave-Browser\User Data\ShaderCache\*'                   , ^
'%SystemDrive%\Users\*\AppData\Local\BraveSoftware\Update\Download\*'                                         ^
-Recurse -Force}                                                                                     2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Comodo Dragon Browser cache..
ECHO        Удаление кэша Comodo Dragon Browser..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Comodo\Dragon')          ^
{Remove-Item                                                                                    ^
'%SystemDrive%\Users\*\AppData\Local\Comodo\Dragon\User Data\Crashpad\*'                      , ^
'%SystemDrive%\Users\*\AppData\Local\Comodo\Dragon\User Data\*\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Comodo\Dragon\User Data\*\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Comodo\Dragon\User Data\*\File System\*'                 , ^
'%SystemDrive%\Users\*\AppData\Local\Comodo\Dragon\User Data\*\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Comodo\Dragon\User Data\*\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Comodo\Dragon\User Data\*\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\Comodo\Dragon\User Data\GrShaderCache\*'                 , ^
'%SystemDrive%\Users\*\AppData\Local\Comodo\Dragon\User Data\ShaderCache\*'                     ^
-Recurse -Force}                                                                       2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Pale Moon cache..
ECHO        Удаление кэша Pale Moon..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path '%SystemDrive%\Users\*\AppData\Local\Moonchild Productions\Pale Moon') {Remove-Item '%SystemDrive%\Users\*\AppData\Local\Moonchild Productions\Pale Moon\Profiles\*\cache2\entries\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting a potential Cache..
ECHO        Удаление потенциального кэша..
ECHO        [32m[5m██████████████████████████████████████████░░░░░░
ECHO.&ECHO.
PowerShell -Command                                                                                    ^
Remove-Item                                                                                            ^
'%SystemDrive%\Users\*\AppData\Local\*\Cache\*'                                                      , ^
'%SystemDrive%\Users\*\AppData\Local\*\Code Cache\*'                                                 , ^
'%SystemDrive%\Users\*\AppData\Local\*\Crashpad\*'                                                   , ^
'%SystemDrive%\Users\*\AppData\Local\*\GPUCache\*'                                                   , ^
'%SystemDrive%\Users\*\AppData\Local\*\Service Worker\CacheStorage\*'                                , ^
'%SystemDrive%\Users\*\AppData\Local\*\Service Worker\ScriptCache\*'                                 , ^
'%SystemDrive%\Users\*\AppData\LocalLow\*\Cache\*'                                                   , ^
'%SystemDrive%\Users\*\AppData\LocalLow\*\Code Cache\*'                                              , ^
'%SystemDrive%\Users\*\AppData\LocalLow\*\Crashpad\*'                                                , ^
'%SystemDrive%\Users\*\AppData\LocalLow\*\GPUCache\*'                                                , ^
'%SystemDrive%\Users\*\AppData\LocalLow\*\Service Worker\CacheStorage\*'                             , ^
'%SystemDrive%\Users\*\AppData\LocalLow\*\Service Worker\ScriptCache\*'                              , ^
'%SystemDrive%\Users\*\AppData\Roaming\*\Cache\*'                                                    , ^
'%SystemDrive%\Users\*\AppData\Roaming\*\Code Cache\*'                                               , ^
'%SystemDrive%\Users\*\AppData\Roaming\*\Crashpad\*'                                                 , ^
'%SystemDrive%\Users\*\AppData\Roaming\*\GPUCache\*'                                                 , ^
'%SystemDrive%\Users\*\AppData\Roaming\*\Service Worker\CacheStorage\*'                              , ^
'%SystemDrive%\Users\*\AppData\Roaming\*\Service Worker\ScriptCache\*'                               , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Cache\*'                          , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Code Cache\*'                     , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Crashpad\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\GPUCache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Service Worker\CacheStorage\*'    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\Local\*\Service Worker\ScriptCache\*'     , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Cache\*'                       , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Code Cache\*'                  , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Crashpad\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\GPUCache\*'                    , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Service Worker\CacheStorage\*' , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\LocalLow\*\Service Worker\ScriptCache\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Cache\*'                        , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Code Cache\*'                   , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Crashpad\*'                     , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\GPUCache\*'                     , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Service Worker\CacheStorage\*'  , ^
'%SystemDrive%\Users\*\AppData\Local\Packages\*\LocalCache\Roaming\*\Service Worker\ScriptCache\*'     ^
-Recurse -Force                                                                               2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Clearing cache of fonts and icons..
ECHO        Очистка кэша шрифтов и значков..
ECHO        [32m[5m████████████████████████████████████████████░░░░
ECHO.&ECHO.
PowerShell @^(^(New-Object -com shell.application^).Windows^(^)^).Document.Folder.Self.Path >> "%temp%\paths.txt"
TaskKill /F /IM Explorer.exe                                                                                                                                                 2>nul >nul
net Stop "FontCache" /yes                                                                                                                                                    2>nul >nul
PowerShell -Command                                                                                                                                                                   ^
Remove-Item                                                                                                                                                                           ^
'%SystemDrive%\Windows\ServiceProfiles\LocalService\AppData\Local\FontCache\*.dat'                                                                                                  , ^
'%SystemDrive%\Windows\System32\FNTCACHE.DAT'                                                                                                                                       , ^
'%SystemDrive%\Users\*\AppData\Local\IconCache.db'                                                                                                                                  , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Windows\Explorer\*.db'                                                                                                               , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Windows\Explorer\IconCacheToDelete\*'                                                                                                , ^
'%SystemDrive%\Users\*\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*'                                                                                                 ^
-Recurse -Force                                                                                                                                                              2>nul >nul
ie4uinit.exe -show                                                                                                                                                           2>nul >nul
:: Deleting SageThumbs cahce | Удаление кэша SageThumbs
PowerShell -Command "if (Test-Path '%SystemDrive%\Users\*\AppData\Local\SageThumbs.db3') {Remove-Item '%SystemDrive%\Users\*\AppData\Local\SageThumbs.db3' -Recurse -Force}" 2>nul >nul
REG DELETE "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify"                                                                    /F 2>nul >nul
net Start "FontCache"                                                                                                                                                        2>nul >nul
Start Explorer.exe                                                                                                                                                           2>nul >nul
FOR /F "tokens=*" %%f IN (%temp%\paths.txt) DO (
set "var=%%f"
set "firstletters=!var:~0,2!"
IF "!firstletters!" == "::" ( start /min shell:%%~f ) ELSE ( start /min "" "%%~f" )
)                                                                                                                                                                            2>nul >nul
DEL "%temp%\paths.txt"                                                                                                                                                       2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Disabling hibernation..
ECHO        Отключение гибернации..
ECHO        [32m[5m█████████████████████████████████████████████░░░
ECHO.&ECHO.
powercfg /h off           2>nul >nul
::powercfg /h /type reduced 2>nul >nul


cls

:: start /wait SystemPropertiesProtection

cls

PowerShell -command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show(\"Cache and junk files removed successfully! `nКэш и ненужные файлы успешно удалены!\", \"Successful cleaning ^| Успешная очистка\", \"OK\", [System.Windows.Forms.MessageBoxIcon]::Information);}"
EXIT