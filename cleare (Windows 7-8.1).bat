:: ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
:: ░                    by mmichaelKo                      ░
:: ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@ECHO OFF
setlocal EnableDelayedExpansion
CHCP 65001>NUL
TITLE Очистка кэша by mmichaelKo
MODE 80,26
COLOR f9

echo.
echo.
echo.                   
echo                                     ###                    
echo                                  #######                   
echo                                #########                   
echo                               #########                    
echo                             ###########    #####           
echo                            ###########  ########           
echo                           #####  ###############           
echo                           ####   ###############           
echo                                  #######  ######            
echo                                   ###     #####            
echo                                           ####             
echo                                          ####             
echo                                          ####             
echo                                          ####              
echo                                          ####              
echo                                         #####              
echo                                          ####              
echo                                           ####              
chcp 866>NUL
ping localhost -n 4 >NUL

cls

MODE 80,10

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Очистка дисков Windows..
ECHO                 ███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Active Setup Temp Folders" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\BranchCache" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Downloaded Program Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\GameNewsFiles" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\GameStatisticsFiles" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\GameUpdateFiles" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Internet Cache Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Memory Dump Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Offline Pages Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Old ChkDsk Files" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Previous Installations" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
REM REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\Recycle Bin" /v StateFlags0099 /d 2 /t REG_DWORD /f 2>nul >nul
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
ECHO.
ECHO                 Удаление временных файлов пользователя..
ECHO                 ████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Local\Temp\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Temp\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление временных файлов диск C..
ECHO                 ████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Windows\Temp\*.*" 2>nul >nul
for /d %%p in ("C:\Windows\Temp\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление файлов обновления Windows..
ECHO                 ██████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Windows\SoftwareDistribution\Download\*.*" 2>nul >nul
for /d %%p in ("C:\Windows\SoftwareDistribution\Download\*.*") do rmdir "%%p" /s /q 2>nul >nul
net stop cryptsvc 2>nul >nul
del /s /q "C:\Windows\System32\catroot2\*.*" 2>nul >nul
for /d %%p in ("C:\Windows\System32\catroot2\*.*") do rmdir "%%p" /s /q 2>nul >nul
net start cryptsvc 2>nul >nul
del /s /q "C:\$WinREAgent\*.*" 2>nul >nul
for /d %%p in ("C:\$WinREAgent\*.*") do rmdir "%%p" /s /q 2>nul >nul
rd /s /q "C:\$WinREAgent\" 2>nul >nul
del /s /q "C:\$Windows.~BT\*.*" 2>nul >nul
for /d %%p in ("C:\$Windows.~BT\*.*") do rmdir "%%p" /s /q 2>nul >nul
rd /s /q "C:\$Windows.~BT\" 2>nul >nul
del /s /q "C:\$Windows.~WS\*.*" 2>nul >nul
for /d %%p in ("C:\$Windows.~WS\*.*") do rmdir "%%p" /s /q 2>nul >nul
rd /s /q "C:\$Windows.~WS\" 2>nul >nul
del /s /q "C:\Windows10Upgrade\*.*" 2>nul >nul
for /d %%p in ("C:\Windows10Upgrade\*.*") do rmdir "%%p" /s /q 2>nul >nul
rd /s /q "C:\Windows10Upgrade\" 2>nul >nul
REM for /d %%p in ("C:\Windows\servicing\LCU\*.*") do rmdir "%%p" /s /q 2>nul >nul
REM rd /s /q "C:\Windows\servicing\LCU\" 2>nul >nul
del /s /q "C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Cache\*.*" 2>nul >nul
for /d %%p in ("C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Cache\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление дампов памяти..
ECHO                 ███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Local\CrashDumps\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\CrashDumps\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша Microsoft Store..
ECHO                 ████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
REM cd "C:\Windows\system32\"
REM WSReset.exe
REM taskkill /IM WinStore.App.exe /F 2>NUL

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Сброс DNS кэша..
ECHO                 █████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
ipconfig /flushdns 2>nul >nul
ipconfig /registerdns 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Сброс ARP кэша..
ECHO                 █████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
netsh interface ip delete arpcache 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Очистка папки WinSxS..
ECHO                 ███████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
Dism.exe /Online /Cleanup-Image /StartComponentCleanup 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша RDP..
ECHO                 █████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\Terminal Server Client\cache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\Terminal Server Client\cache\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление логов..
ECHO                 ██████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\windows\*.log" 2>nul >nul
for /d %%p in ("C:\windows\*.log") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\windows\logs\cbs\*.log" 2>nul >nul
for /d %%p in ("C:\windows\logs\cbs\*.log") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Windows\Logs\MoSetup\*.log" 2>nul >nul
for /d %%p in ("C:\Windows\Logs\MoSetup\*.log") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Windows\Panther\*.log" 2>nul >nul
for /d %%p in ("C:\Windows\Panther\*.log") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Windows\inf\*.log" 2>nul >nul
for /d %%p in ("C:\Windows\inf\*.log") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Windows\logs\*.log" 2>nul >nul
for /d %%p in ("C:\Windows\logs\*.log") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Windows\Microsoft.NET\*.log" 2>nul >nul
for /d %%p in ("C:\Windows\Microsoft.NET\*.log") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Windows\Logs\WindowsUpdate\*.log" 2>nul >nul
for /d %%p in ("C:\Windows\Logs\WindowsUpdate\*.log") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\Windows\WebCache\*.log" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\Windows\WebCache\*.log") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\Windows\SettingSync\*.log" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\Windows\SettingSync\*.log") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\*.log" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\*.log") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log" 2>nul >nul
for /d %%p in ("C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Logs\*.etl" 2>nul >nul
for /d %%p in ("C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization\Logs\*.etl") do rmdir "%%p" /s /q 2>nul >nul


cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление ненужных папок Windows..
ECHO                 ███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\tmp\*.*" 2>nul >nul
for /d %%p in ("C:\tmp\*.*") do rmdir "%%p" /s /q 2>nul >nul
rd /s /q "C:\tmp\" 2>nul >nul
del /s /q "C:\temp\*.*" 2>nul >nul
for /d %%p in ("C:\temp\*.*") do rmdir "%%p" /s /q 2>nul >nul
rd /s /q "C:\temp\" 2>nul >nul
del /s /q "C:\PerfLogs\*.*" 2>nul >nul
for /d %%p in ("C:\PerfLogs\*.*") do rmdir "%%p" /s /q 2>nul >nul
rd /s /q "C:\PerfLogs\" 2>nul >nul
del /s /q "C:\AMD\*.*" 2>nul >nul
for /d %%p in ("C:\AMD\*.*") do rmdir "%%p" /s /q 2>nul >nul
rd /s /q "C:\AMD\" 2>nul >nul
del /s /q "C:\INTEL\*.*" 2>nul >nul
for /d %%p in ("C:\INTEL\*.*") do rmdir "%%p" /s /q 2>nul >nul
rd /s /q "C:\INTEL\" 2>nul >nul
del /s /q "C:\NVIDIA\*.*" 2>nul >nul
for /d %%p in ("C:\NVIDIA\*.*") do rmdir "%%p" /s /q 2>nul >nul
rd /s /q "C:\NVIDIA\" 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша Nvidia..
ECHO                 ██████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\ProgramData\NVIDIA\*.*" 2>nul >nul
for /d %%p in ("C:\ProgramData\NVIDIA\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\NVIDIA\GLCache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\NVIDIA\GLCache\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\ProgramData\NVIDIA Corporation\GeForce Experience\Logs\*.log" 2>nul >nul
for /d %%p in ("C:\ProgramData\NVIDIA Corporation\GeForce Experience\Logs\*.log") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\D3DSCache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\D3DSCache\*.*") do rmdir "%%p" /s /q 2>nul >nul
Set $R=[0-9A-F]*
CALL :RD_MASK "%$R%" "C:\ProgramData\NVIDIA Corporation\Downloader"
:RD_MASK
 For /F "Delims=" %%i In (
 'DIR /B/A:D "%~2\*"^|FindStr /XIRC:"%~1"'
 ) Do RD /S/Q "%~2\%%i"

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша Microsoft Office..
ECHO                 ███████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\Office\16.0\OfficeFileCache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\Office\16.0\OfficeFileCache\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\Office\15.0\OfficeFileCache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\Office\15.0\OfficeFileCache\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Roaming\Microsoft\Office\*.tmp" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Roaming\Microsoft\Office\*.tmp") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Roaming\Microsoft\Office\Recent\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Roaming\Microsoft\Office\Recent\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\OneNote\16.0\cache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\OneNote\16.0\cache\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\Outlook\RoamCache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\Outlook\RoamCache\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление истории последних открытых файлов..
ECHO                 ███████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Recent\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Recent\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша программ..
ECHO                 ████████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\ProgramData\Package Cache\*.*" 2>nul >nul
for /d %%p in ("C:\ProgramData\Package Cache\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление сетевых ярлыков..
ECHO                 █████████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Network Shortcuts\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Network Shortcuts\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление истории Windows..
ECHO                 ██████████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\Windows\History\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\Windows\History\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша Java..
ECHO                 ███████████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\LoCALLow\Sun\Java\Deployment\cache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\LoCALLow\Sun\Java\Deployment\cache\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша Discord..
ECHO                 ████████████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Roaming\Discord\Cache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Roaming\Discord\Cache\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Roaming\Discord\Code Cache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Roaming\Discord\Code Cache\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Roaming\Discord\GPUCache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Roaming\Discord\GPUCache\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша Adobe..
ECHO                 ███████████████████████████░░░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Roaming\Adobe\Common\Media Cache Files\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Roaming\Adobe\Common\Media Cache Files\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Roaming\Adobe\Common\Media Cache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Roaming\Adobe\Common\Media Cache\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\LoCALLow\Adobe\Common\Media Cache Files\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\LoCALLow\Adobe\Common\Media Cache Files\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\LoCALLow\Adobe\Common\Media Cache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\LoCALLow\Adobe\Common\Media Cache\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша Spotify..
ECHO                 █████████████████████████████░░░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Local\Spotify\Data\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Spotify\Data\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\Packages\SpotifyAB.SpotifyMusic_zpdnekdrzrea0\LocalCache\Spotify\Data\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Packages\SpotifyAB.SpotifyMusic_zpdnekdrzrea0\LocalCache\Spotify\Data\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша ITunes..
ECHO                 ██████████████████████████████░░░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Roaming\Apple Computer\iTunes\iPhone Software Updates\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Roaming\Apple Computer\iTunes\iPhone Software Updates\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша Steam..
ECHO                 █████████████████████████████████░░░░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Program Files (x86)\Steam\appcache\librarycache\*.jpg" 2>nul >nul
for /d %%p in ("C:\Program Files (x86)\Steam\appcache\librarycache\*.jpg") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Program Files (x86)\Steam\appcache\librarycache\*.png" 2>nul >nul
for /d %%p in ("C:\Program Files (x86)\Steam\appcache\librarycache\*.png") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша Internet Explorer..
ECHO                 ██████████████████████████████████░░░░░░░░░░░░░░░░░
CHCP 866>NUL
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8 2>NUL

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша Microsoft Edge..
ECHO                 ████████████████████████████████████░░░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\Edge\User Data\Default\Cache\Cache_Data\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\Edge\User Data\Default\Cache\Cache_Data\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\Edge\User Data\Default\Code Cache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\Edge\User Data\Default\Code Cache\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Program Files (x86)\Microsoft\EdgeUpdate\Download\*.*" 2>nul >nul
for /d %%p in ("C:\Program Files (x86)\Microsoft\EdgeUpdate\Download\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша Google Chrome..
ECHO                 ██████████████████████████████████████░░░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\Default\Cache\Cache_Data\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\Default\Cache\Cache_Data\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\Default\Code Cache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\Default\Code Cache\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Program Files\Google\Update\Download\*.*" 2>nul >nul
for /d %%p in ("C:\Program Files\Google\Update\Download\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Program Files (x86)\Google\Update\Download\*.*" 2>nul >nul
for /d %%p in ("C:\Program Files (x86)\Google\Update\Download\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша Yandex Browser..
ECHO                 ████████████████████████████████████████░░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\User Data\Default\Cache\Cache_Data\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\User Data\Default\Cache\Cache_Data\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\User Data\Default\Code Cache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\User Data\Default\Code Cache\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление кэша Microsoft Teams..
ECHO                 █████████████████████████████████████████░░░░░░░░░░
CHCP 866>NUL
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\Teams\Cache\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\Teams\Cache\*.*") do rmdir "%%p" /s /q 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\Teams\tmp\*.*" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\Teams\tmp\*.*") do rmdir "%%p" /s /q 2>nul >nul

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Очистка кэша шрифтов и значков..
ECHO                 █████████████████████████████████████████████░░░░░
CHCP 866>NUL
reg delete "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /f 2>nul >nul
net stop "FontCache" 2>nul >nul
del /f /q "C:\Windows\System32\FNTCACHE.DAT" 2>nul >nul
del /s /q "C:\Windows\ServiceProfiles\LocalService\AppData\Local\FontCache\*.dat" 2>nul >nul
for /d %%p in ("C:\Windows\ServiceProfiles\LocalService\AppData\Local\FontCache\*.dat") do rmdir "%%p" /s /q 2>nul >nul
net start "FontCache" 2>nul >nul
CD /d "C:\Users\%UserName%\AppData\Local\"
taskkill /f /im explorer.exe 2>nul >nul
del /s /q "C:\Users\%UserName%\AppData\Local\Microsoft\Windows\Explorer\*.db" 2>nul >nul
for /d %%p in ("C:\Users\%UserName%\AppData\Local\Microsoft\Windows\Explorer\*.db") do rmdir "%%p" /s /q 2>nul >nul
DEL IconCache.db /a 2>nul >nul
start explorer.exe

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Отключение гибернации..
ECHO                 █████████████████████████████████████████████████░░
CHCP 866>NUL
powercfg.exe /hibernate off

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Очистка оперативной памяти..
ECHO                 ██████████████████████████████████████████████████
CHCP 866>NUL
cd "C:\Windows\SysWOW64\"
rundll32.exe

cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
CHCP 65001>NUL
set /p Input=.           Удалить резервные копии Windows? (y (Да)/n (Нет):
CHCP 866>NUL
If /I "%Input%"=="y" goto shadows
goto noshadows

:shadows
cls

CHCP 65001>NUL
COLOR f9
ECHO.
ECHO.
ECHO.
ECHO.
ECHO                 Удаление резервных копий Windows..
CHCP 866>NUL
vssadmin delete shadows /all /quiet 2>nul >nul
goto noshadows

:noshadows
cls

CHCP 65001>NUL
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Кэш и ненужные файлы успешно удалены. Место освобождено', 'Успешная очистка', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
exit