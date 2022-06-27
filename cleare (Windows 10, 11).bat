:::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                   by mmichaelKo                     ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@ECHO OFF
CHCP 65001>NUL
COLOR F9
TITLE cleare (Windows 10, 11) by mmichaelKo

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
ECHO        Deleting temporary files..
ECHO        Удаление временных файлов..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Temp\*'                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\AC\Temp\*'                  -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing logs..
ECHO        Удаление логов..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Windows\WebCache\*.log'                                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\CLR_v4.0\UsageLogs\*.log'                                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Windows\SettingSync\*.log'                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\CLR_v4.0_32\UsageLogs\*.log'                                            -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting memory dumps..
ECHO        Удаление дампов памяти..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\CrashDumps\*'                                -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Windows history..
ECHO        Удаление истории Windows..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
ECHO.
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Windows\History\*' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Delete history of last opened files..
ECHO        Удаление истории последних открытых файлов..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Recent\*' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing network shortcuts..
ECHO        Удаление сетевых ярлыков..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Network Shortcuts\*' -Recurse -Force" 2>nul >nul

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
ECHO        Deleting RDP cache..
ECHO        Удаление кэша RDP..
ECHO        [32m[5m██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Terminal Server Client\cache\*' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Store cache..
ECHO        Удаление кэша Microsoft Store..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
WSReset.exe                      2>nul >nul
taskkill /IM WinStore.App.exe /F 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting OneDrive cache..
ECHO        Удаление кэша OneDrive..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\OneDrive\logs\Common\*'                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\OneDrive\setup\logs\*'                               -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Google Drive cache..
ECHO        Удаление кэша Google Drive..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Google\DriveFS')        ^
{Remove-Item                                                                        ^
'C:\Users\%UserName%\AppData\Local\Google\DriveFS\*\content_cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Google\DriveFS\*\thumbnails_cache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Google\DriveFS\cef_cache\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Google\DriveFS\cef_cache\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Google\DriveFS\cef_cache\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Google\DriveFS\cef_cache\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Google\DriveFS\cef_cache\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Local\Google\DriveFS\Crashpad\*'                                ^
-Recurse -Force}                                                           2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Dropbox cache..
ECHO        Удаление кэша Dropbox..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\Dropbox')    ^
{Remove-Item                                                        ^
'C:\Users\%UserName%\Dropbox\.dropbox.cache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Dropbox\avatar_cache\*'        , ^
'C:\Users\%UserName%\AppData\Local\Dropbox\Crashpad\*'            , ^
'C:\Users\%UserName%\AppData\Local\Dropbox\instance*\sync\temp\*'   ^
-Recurse -Force}                                           2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Office cache..
ECHO        Удаление кэша Microsoft Office..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Microsoft\Office')                        ^
{Remove-Item                                                                                                   ^
'C:\Users\%UserName%\AppData\Local\Microsoft\OneNote\*\cache\*'                                              , ^
'C:\Users\%UserName%\AppData\Local\Microsoft\Office\OTele\*'                                                 , ^
'C:\Users\%UserName%\AppData\Local\Microsoft\Office\*\OfficeFileCache\*'                                     , ^
'C:\Users\%UserName%\AppData\Local\Microsoft\Office\*\WebServiceCache\AllUsers\officeclient.microsoft.com\*' , ^
'C:\Users\%UserName%\AppData\Local\Microsoft\Office\Spw\*'                                                   , ^
'C:\Users\%UserName%\AppData\Local\Microsoft\Outlook\RoamCache\*'                                            , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Office\*.tmp'                                                 , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Office\Recent\*'                                                ^
-Recurse -Force}                                                                                      2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Nvidia cache..
ECHO        Удаление кэша Nvidia..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\ProgramData\NVIDIA')                                                                ^
{Remove-Item                                                                                                              ^
'C:\Users\%UserName%\AppData\Local\D3DSCache\*'                                                                         , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA\GLCache\*'                                                                    , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NV_Cache\*'                                                       , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA GeForce Experience\CefCache\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Cache\*'                             , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Code Cache\*'                        , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Crashpad\*'                          , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\GPUCache\*'                          , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Service Worker\CacheStorage\*'       , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA Notification\CefCache\Service Worker\ScriptCache\*'        , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Cache\*'                                    , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Code Cache\*'                               , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Crashpad\*'                                 , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\GPUCache\*'                                 , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Service Worker\CacheStorage\*'              , ^
'C:\Users\%UserName%\AppData\Local\NVIDIA Corporation\NVIDIA Share\CefCache\Service Worker\ScriptCache\*'                 ^
-Recurse -Force}                                                                                                 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Adobe cache..
ECHO        Удаление кэша Adobe..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\Adobe')                 ^
{Remove-Item                                                                                   ^
'C:\Users\%UserName%\AppData\LocalLow\Adobe\Common\Media Cache\*'                            , ^
'C:\Users\%UserName%\AppData\LocalLow\Adobe\Common\Media Cache Files\*'                      , ^
'C:\Users\%UserName%\AppData\LocalLow\Adobe\Common\Peak Files\*'                             , ^
'C:\Users\%UserName%\AppData\Roaming\Adobe\Common\Media Cache\*'                             , ^
'C:\Users\%UserName%\AppData\Roaming\Adobe\Common\Media Cache Files\*'                       , ^
'C:\Users\%UserName%\AppData\Roaming\Adobe\Common\Peak Files\*'                              , ^
'C:\Users\%UserName%\AppData\Roaming\Adobe\*\*\web-cache-temp\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Roaming\Adobe\*\*\web-cache-temp\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Roaming\Adobe\*\*\web-cache-temp\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Roaming\Adobe\*\*\web-cache-temp\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Roaming\Adobe\*\*\web-cache-temp\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Roaming\Adobe\*\*\web-cache-temp\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                      2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting MaxonApp (RedGiant) cache..
ECHO        Удаление кэша MaxonApp (RedGiant)..
ECHO        [32m[5m████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\ProgramData\Red Giant')                                           ^
{Remove-Item                                                                                            ^
'C:\Users\%UserName%\AppData\Local\MaxonApp\UserData\EBWebView\Crashpad\*'                            , ^
'C:\Users\%UserName%\AppData\Local\MaxonApp\UserData\EBWebView\GrShaderCache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\MaxonApp\UserData\EBWebView\Default\Cache\Cache_Data\*'            , ^
'C:\Users\%UserName%\AppData\Local\MaxonApp\UserData\EBWebView\Default\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\MaxonApp\UserData\EBWebView\Default\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\MaxonApp\UserData\EBWebView\Default\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\MaxonApp\UserData\EBWebView\Default\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Local\MaxonApp\UserData\EBWebView\ShaderCache\*'                           ^
-Recurse -Force}                                                                               2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Skype сache..
ECHO        Удаление кэша Skype..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\Microsoft\Skype for Desktop')                              ^
{Remove-Item                                                                                                                      ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Skype for Desktop\Cache\*'                                                       , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Skype for Desktop\Code Cache\*'                                                  , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Skype for Desktop\Crashpad\*'                                                    , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Skype for Desktop\GPUCache\*'                                                    , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Skype for Desktop\Service Worker\CacheStorage\*'                                 , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Skype for Desktop\Service Worker\ScriptCache\*'                                    ^
-Recurse -Force}                                                                                                         2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Packages\*Skype*')                                           ^
{Remove-Item                                                                                                                      ^
'C:\Users\%UserName%\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Packages\*Skype*\LocalCache\Roaming\Microsoft\Skype for Store\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                                         2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Teams сache..
ECHO        Удаление кэша Microsoft Teams..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Microsoft\Teams')             ^
{Remove-Item                                                                                       ^
'C:\Users\%UserName%\AppData\Local\Microsoft\Teams\Cache\*'                                      , ^
'C:\Users\%UserName%\AppData\Local\Microsoft\Teams\tmp\*'                                        , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Teams\Cache\*'                                    , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Teams\Code Cache\*'                               , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Teams\Crashpad\*'                                 , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Teams\GPUCache\*'                                 , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Teams\Service Worker\CacheStorage\*'              , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Teams\Service Worker\ScriptCache\*'               , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Teams\Partitions\*\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Teams\Partitions\*\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Teams\Partitions\*\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Teams\Partitions\*\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Teams\Partitions\*\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Roaming\Microsoft\Teams\Partitions\*\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                          2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Zoom сache..
ECHO        Удаление кэша Zoom..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\Zoom')                                               ^
{Remove-Item                                                                                                                ^
'C:\Users\%UserName%\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Cache\Cache_Data\*'            , ^
'C:\Users\%UserName%\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\Default\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Roaming\Zoom\data\WebviewCache\*\zoomapps\*\EBWebView\ShaderCache\*'                           ^
-Recurse -Force}                                                                                                   2>nul >nul


cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Telegram cache..
ECHO        Удаление кэша Telegram..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\Telegram Desktop')                                         ^
{Remove-Item                                                                                                                      ^
'C:\Users\%UserName%\AppData\Roaming\Telegram Desktop\tdata\emoji\*'                                                            , ^
'C:\Users\%UserName%\AppData\Roaming\Telegram Desktop\tdata\user_data*\cache\0\*'                                               , ^
'C:\Users\%UserName%\AppData\Roaming\Telegram Desktop\tdata\user_data*\media_cache\0\*'                                           ^
-Recurse -Force}                                                                                                         2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Packages\Telegram*')                                         ^
{Remove-Item                                                                                                                      ^
'C:\Users\%UserName%\AppData\Local\Packages\Telegram*\LocalCache\Roaming\Telegram Desktop UWP\tdata\emoji\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Packages\Telegram*\LocalCache\Roaming\Telegram Desktop UWP\tdata\user_data*\cache\0\*'       , ^
'C:\Users\%UserName%\AppData\Local\Packages\Telegram*\LocalCache\Roaming\Telegram Desktop UWP\tdata\user_data*\media_cache\0\*'   ^
-Recurse -Force}                                                                                                         2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting VK Messenger cache..
ECHO        Удаление кэша VK Messenger..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\VK')                                      ^
{Remove-Item                                                                                                     ^
'C:\Users\%UserName%\AppData\Roaming\VK\Cache\*'                                                               , ^
'C:\Users\%UserName%\AppData\Roaming\VK\Code Cache\*'                                                          , ^
'C:\Users\%UserName%\AppData\Roaming\VK\Crashpad\*'                                                            , ^
'C:\Users\%UserName%\AppData\Roaming\VK\GPUCache\*'                                                            , ^
'C:\Users\%UserName%\AppData\Roaming\VK\Service Worker\CacheStorage\*'                                         , ^
'C:\Users\%UserName%\AppData\Roaming\VK\Service Worker\ScriptCache\*'                                            ^
-Recurse -Force}                                                                                        2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Packages\*VKMessenger*')                    ^
{Remove-Item                                                                                                     ^
'C:\Users\%UserName%\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Packages\*VKMessenger*\LocalCache\Roaming\VK\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                        2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Discord cache..
ECHO        Удаление кэша Discord..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\Discord') ^
{Remove-Item                                                                     ^
'C:\Users\%UserName%\AppData\Roaming\Discord\Cache\*'                          , ^
'C:\Users\%UserName%\AppData\Roaming\Discord\Code Cache\*'                     , ^
'C:\Users\%UserName%\AppData\Roaming\Discord\Crashpad\*'                       , ^
'C:\Users\%UserName%\AppData\Roaming\Discord\GPUCache\*'                       , ^
'C:\Users\%UserName%\AppData\Roaming\Discord\Service Worker\CacheStorage\*'    , ^
'C:\Users\%UserName%\AppData\Roaming\Discord\Service Worker\ScriptCache\*'       ^
-Recurse -Force}                                                        2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting WhatsApp cache..
ECHO        Удаление кэша WhatsApp..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\WhatsApp')                                          ^
{Remove-Item                                                                                                               ^
'C:\Users\%UserName%\AppData\Roaming\WhatsApp\Cache\*'                                                                   , ^
'C:\Users\%UserName%\AppData\Roaming\WhatsApp\Code Cache\*'                                                              , ^
'C:\Users\%UserName%\AppData\Roaming\WhatsApp\Crashpad\*'                                                                , ^
'C:\Users\%UserName%\AppData\Roaming\WhatsApp\File System\*'                                                             , ^
'C:\Users\%UserName%\AppData\Roaming\WhatsApp\GPUCache\*'                                                                , ^
'C:\Users\%UserName%\AppData\Roaming\WhatsApp\Service Worker\CacheStorage\*'                                             , ^
'C:\Users\%UserName%\AppData\Roaming\WhatsApp\Service Worker\ScriptCache\*'                                                ^
-Recurse -Force}                                                                                                  2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Packages\*WhatsAppDesktop*')                          ^
{Remove-Item                                                                                                               ^
'C:\Users\%UserName%\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\File System\*'                 , ^
'C:\Users\%UserName%\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Packages\*WhatsAppDesktop*\LocalCache\Roaming\WhatsApp\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                                  2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Viber cache..
ECHO        Удаление кэша Viber..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\ViberPC')                            ^
{Remove-Item                                                                                                ^
'C:\Users\%UserName%\AppData\Roaming\ViberPC\*\QmlUrlCache\data*\*'                                       , ^
'C:\Users\%UserName%\AppData\Roaming\ViberPC\*\QmlWebCache\data*\*'                                       , ^
'C:\Users\%UserName%\AppData\Roaming\ViberPC\*\Thumbnails\*'                                              , ^
'C:\Users\%UserName%\AppData\Roaming\ViberPC\data\stickers\*'                                               ^
-Recurse -Force}                                                                                   2>nul >nul
:: PowerShell -command "Remove-Item 'C:\Users\%UserName%\Documents\ViberDownloads\*' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting ICQ cache..
ECHO        Удаление кэша ICQ..
ECHO        [32m[5m███████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\ICQ') ^
{Remove-Item                                                                 ^
'C:\Users\%UserName%\AppData\Roaming\ICQ\cache\*'                          , ^
'C:\Users\%UserName%\AppData\Roaming\ICQ\*\content.cache\*'                , ^
'C:\Users\%UserName%\AppData\Roaming\ICQ\*\info\cache'                     , ^
'C:\Users\%UserName%\AppData\Roaming\ICQ\*\stickers\*'                       ^
-Recurse -Force}                                                    2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting 1C cache..
ECHO        Удаление кэша 1C..
ECHO        [32m[5m█████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\1C\')                      ^
{Get-ChildItem -Path                                                                            ^
'C:\Users\%UserName%\AppData\Local\1C\*' -Recurse ^| Where {$_.Name -as [guid]} ^| Remove-Item  ^
-Recurse -Force}                                                                       2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\1C\')                    ^
{Get-ChildItem -Path                                                                            ^
'C:\Users\%UserName%\AppData\Local\1C\*' -Recurse ^| Where {$_.Name -as [guid]} ^| Remove-Item  ^
-Recurse -Force}                                                                       2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Bitrix24 cache..
ECHO        Удаление кэша Bitrix24..
ECHO        [32m[5m█████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\Bitrix24')                ^
{Remove-Item                                                                                     ^
'C:\Users\%UserName%\AppData\Local\Bitrix24\User Data\Crashpad\*'                              , ^
'C:\Users\%UserName%\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Roaming\Bitrix\Desktop\*\cef_cache\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Roaming\Bitrix\Desktop\*\cef_cache\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                        2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Slack cache..
ECHO        Удаление кэша Slack..
ECHO        [32m[5m█████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\Slack') ^
{Remove-Item                                                                   ^
'C:\Users\%UserName%\AppData\Roaming\Slack\Cache\*'                          , ^
'C:\Users\%UserName%\AppData\Roaming\Slack\Code Cache\*'                     , ^
'C:\Users\%UserName%\AppData\Roaming\Slack\Crashpad\*'                       , ^
'C:\Users\%UserName%\AppData\Roaming\Slack\GPUCache\*'                       , ^
'C:\Users\%UserName%\AppData\Roaming\Slack\Service Worker\CacheStorage\*'    , ^
'C:\Users\%UserName%\AppData\Roaming\Slack\Service Worker\ScriptCache\*'       ^
-Recurse -Force}                                                      2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting OBS cache..
ECHO        Удаление кэша OBS..
ECHO        [32m[5m████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\obs-studio')                                              ^
{Remove-Item                                                                                                                     ^
'C:\Users\%UserName%\AppData\Roaming\obs-studio\plugin_config\obs-browser\Cache\*'                                             , ^
'C:\Users\%UserName%\AppData\Roaming\obs-studio\plugin_config\obs-browser\Code Cache\*'                                        , ^
'C:\Users\%UserName%\AppData\Roaming\obs-studio\plugin_config\obs-browser\Crashpad\*'                                          , ^
'C:\Users\%UserName%\AppData\Roaming\obs-studio\plugin_config\obs-browser\GPUCache\*'                                          , ^
'C:\Users\%UserName%\AppData\Roaming\obs-studio\plugin_config\obs-browser\Service Worker\CacheStorage\*'                       , ^
'C:\Users\%UserName%\AppData\Roaming\obs-studio\plugin_config\obs-browser\Service Worker\ScriptCache\*'                        , ^
'C:\Users\%UserName%\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Roaming\obs-studio\plugin_config\obs-browser\obs_profile_cookies\*\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                                        2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Streamlabs cache..
ECHO        Удаление кэша Streamlabs..
ECHO        [32m[5m████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\slobs-client')                        ^
{Remove-Item                                                                                                 ^
'C:\Users\%UserName%\AppData\Roaming\slobs-client\Cache\*'                                                 , ^
'C:\Users\%UserName%\AppData\Roaming\slobs-client\Code Cache\*'                                            , ^
'C:\Users\%UserName%\AppData\Roaming\slobs-client\Crashpad\*'                                              , ^
'C:\Users\%UserName%\AppData\Roaming\slobs-client\GPUCache\*'                                              , ^
'C:\Users\%UserName%\AppData\Roaming\slobs-client\Service Worker\CacheStorage\*'                           , ^
'C:\Users\%UserName%\AppData\Roaming\slobs-client\Service Worker\ScriptCache\*'                            , ^
'C:\Users\%UserName%\AppData\Roaming\slobs-client\plugin_config\obs-browser\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Roaming\slobs-client\plugin_config\obs-browser\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Roaming\slobs-client\plugin_config\obs-browser\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Roaming\slobs-client\plugin_config\obs-browser\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Roaming\slobs-client\plugin_config\obs-browser\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Roaming\slobs-client\plugin_config\obs-browser\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                    2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Twitch Studio cache..
ECHO        Удаление кэша Twitch Studio..
ECHO        [32m[5m████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\slobs-client') ^
{Remove-Item                                                                          ^
'C:\Users\%UserName%\AppData\Roaming\Twitch Studio\*\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Roaming\Twitch Studio\*\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Roaming\Twitch Studio\*\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Roaming\Twitch Studio\*\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Roaming\Twitch Studio\*\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Roaming\Twitch Studio\*\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                             2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Apple (iTunes) cache..
ECHO        Удаление кэша Apple (iTunes)..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Apple')            ^
{Remove-Item                                                                            ^
'C:\Users\%UserName%\AppData\Local\Apple\Apple Software Update\*'                     , ^
'C:\Users\%UserName%\AppData\Local\Apple Computer\iTunes\PlayCache\*'                 , ^
'C:\Users\%UserName%\AppData\Local\Apple Computer\iTunes\SubscriptionPlayCache\*'     , ^
'C:\Users\%UserName%\AppData\Roaming\Apple Computer\iTunes\iPhone Software Updates\*' , ^
'C:\Users\%UserName%\AppData\Roaming\Apple Computer\Logs\*'                             ^
-Recurse -Force}                                                               2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Spotify cache..
ECHO        Удаление кэша Spotify..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Spotify')                                    ^
{Remove-Item                                                                                                      ^
'C:\Users\%UserName%\AppData\Local\Spotify\Data\*'                                                              , ^
'C:\Users\%UserName%\AppData\Local\Spotify\Browser\Cache\Cache_Data\*'                                          , ^
'C:\Users\%UserName%\AppData\Local\Spotify\Browser\Code Cache\*'                                                , ^
'C:\Users\%UserName%\AppData\Local\Spotify\Browser\Crashpad\*'                                                  , ^
'C:\Users\%UserName%\AppData\Local\Spotify\Browser\GPUCache\*'                                                  , ^
'C:\Users\%UserName%\AppData\Local\Spotify\Browser\Service Worker\CacheStorage\*'                               , ^
'C:\Users\%UserName%\AppData\Local\Spotify\Browser\Service Worker\ScriptCache\*'                                  ^
-Recurse -Force}                                                                                         2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Packages\*Spotify*')                         ^
{Remove-Item                                                                                                      ^
'C:\Users\%UserName%\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Data\*'                                , ^
'C:\Users\%UserName%\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Cache\Cache_Data\*'            , ^
'C:\Users\%UserName%\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Packages\*Spotify*\LocalCache\Spotify\Browser\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                         2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Yandex.Music cache..
ECHO        Удаление кэша Yandex.Music..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Packages\*Yandex.Music*') ^
{Remove-Item                                                                                   ^
'C:\Users\%UserName%\AppData\Local\Packages\*Yandex.Music*\LocalState\CachedCovers\*'        , ^
'C:\Users\%UserName%\AppData\Local\Packages\*Yandex.Music*\LocalCache\MusicCache\*'            ^
-Recurse -Force}                                                                      2>nul >nul


cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Clipchamp cache..
ECHO        Удаление кэша Clipchamp..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Packages\Clipchamp*')                           ^
{Remove-Item                                                                                                         ^
'C:\Users\%UserName%\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Crashpad\*'                            , ^
'C:\Users\%UserName%\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Cache\Cache_Data\*'            , ^
'C:\Users\%UserName%\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\Default\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\GrShaderCache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Packages\Clipchamp*\LocalState\EBWebView\ShaderCache\*'                           ^
-Recurse -Force}                                                                                            2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting ScreenClip cache..
ECHO        Удаление кэша ScreenClip..
ECHO        [32m[5m█████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path 'C:\Users\%UserName%\AppData\Local\Packages\MicrosoftWindows.Client.CBS*\TempState\ScreenClip') {Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\MicrosoftWindows.Client.CBS*\TempState\ScreenClip\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Python (pip) cache..
ECHO        Удаление кэша Python (pip)..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path 'C:\Users\%UserName%\AppData\Local\pip') {Remove-Item 'C:\Users\%UserName%\AppData\Local\pip\cache\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Microsoft Visual Studio cache..
ECHO        Удаление кэша Microsoft Visual Studio..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path 'C:\Users\%UserName%\AppData\Local\Microsoft\VisualStudio') {Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\VisualStudio\*\ComponentModelCache\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing GitHub Desktop cache..
ECHO        Удаление кэша GitHub Desktop..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\GitHub Desktop')                               ^
{Remove-Item                                                                                                          ^
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Roaming\GitHub Desktop\Cache\Cache_Data\*'            , ^
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Roaming\GitHub Desktop\Code Cache\*'                  , ^
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Roaming\GitHub Desktop\GPUCache\*'                    , ^
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Roaming\GitHub Desktop\Crashpad\*'                    , ^
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Roaming\GitHub Desktop\Service Worker\CacheStorage\*' , ^
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Roaming\GitHub Desktop\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                                             2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Unity cache..
ECHO        Удаление кэша Unity..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Unity')                                                     ^
{Remove-Item                                                                                                                     ^
'C:\Users\%UserName%\AppData\Local\Unity\Cache\*'                                                                              , ^
'C:\Users\%UserName%\AppData\Local\unityhub-updater\*'                                                                         , ^
'C:\Users\%UserName%\AppData\LocalLow\Unity\Cache\*'                                                                           , ^
'C:\Users\%UserName%\AppData\LocalLow\Unity\Caches\*'                                                                          , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\Cache\*'                                                                         , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\Code Cache\*'                                                                    , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\Crashpad\*'                                                                      , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\GPUCache\*'                                                                      , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\Service Worker\CacheStorage\*'                                                   , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\Service Worker\ScriptCache\*'                                                    , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\graphqlCache\*'                                                                  , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\logs\*'                                                                          , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\Service Worker\CacheStorage\*'                                                   , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\Service Worker\ScriptCache\*'                                                    , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\storage\ext\*\def\Cache\*'                                                       , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\storage\ext\*\def\Code Cache\*'                                                  , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\storage\ext\*\def\Crashpad\*'                                                    , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\storage\ext\*\def\GPUCache\*'                                                    , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\storage\ext\*\def\Service Worker\CacheStorage\*'                                 , ^
'C:\Users\%UserName%\AppData\Roaming\UnityHub\storage\ext\*\def\Service Worker\ScriptCache\*'                                    ^
-Recurse -Force}                                                                                                        2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Removing Java cache..
ECHO        Удаление кэша Java..
ECHO        [32m[5m███████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path 'C:\Users\%UserName%\AppData\LocalLow\Sun\Java') {Remove-Item 'C:\Users\%UserName%\AppData\LocalLow\Sun\Java\Deployment\cache\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Minecraft cache..
ECHO        Удаление кэша Minecraft..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\.minecraft')              ^
{Remove-Item                                                                                     ^
'C:\Users\%UserName%\AppData\Roaming\.minecraft\webcache*\Cache\*'                             , ^
'C:\Users\%UserName%\AppData\Roaming\.minecraft\webcache*\Code Cache\*'                        , ^
'C:\Users\%UserName%\AppData\Roaming\.minecraft\webcache*\Crashpad\*'                          , ^
'C:\Users\%UserName%\AppData\Roaming\.minecraft\webcache*\GPUCache\*'                          , ^
'C:\Users\%UserName%\AppData\Roaming\.minecraft\webcache*\Service Worker\CacheStorage\*'       , ^
'C:\Users\%UserName%\AppData\Roaming\.minecraft\webcache*\Service Worker\ScriptCache\*'        , ^
'C:\Users\%UserName%\AppData\Local\Packages\*Minecraft*\LocalCache\minecraftpe\CatalogCache\*' , ^
'C:\Users\%UserName%\AppData\Local\Packages\*Minecraft*\LocalCache\minecraftpe\ContentCache\*'   ^
-Recurse -Force}                                                                        2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Steam cache..
ECHO        Удаление кэша Steam..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Steam')        ^
{Remove-Item                                                                        ^
'C:\Users\%UserName%\AppData\Local\Steam\htmlcache\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Steam\htmlcache\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Steam\htmlcache\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Steam\htmlcache\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Steam\htmlcache\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Steam\htmlcache\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                           2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Epic Launcher cache..
ECHO        Удаление кэша Epic Launcher..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Epic Games')                                   ^
{Remove-Item                                                                                                        ^
'C:\Users\%UserName%\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Cache\*'                                    , ^
'C:\Users\%UserName%\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Code Cache\*'                               , ^
'C:\Users\%UserName%\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Crashpad\*'                                 , ^
'C:\Users\%UserName%\AppData\Local\Epic Games\EOSOverlay\BrowserCache\GPUCache\*'                                 , ^
'C:\Users\%UserName%\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Service Worker\CacheStorage\*'              , ^
'C:\Users\%UserName%\AppData\Local\Epic Games\EOSOverlay\BrowserCache\Service Worker\ScriptCache\*'               , ^
'C:\Users\%UserName%\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Epic Games\Epic Online Services\UI Helper\Cache\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Local\EpicGamesLauncher\Saved\*\Cache\*'                                             , ^
'C:\Users\%UserName%\AppData\Local\EpicGamesLauncher\Saved\*\Code Cache\*'                                        , ^
'C:\Users\%UserName%\AppData\Local\EpicGamesLauncher\Saved\*\Crashpad\*'                                          , ^
'C:\Users\%UserName%\AppData\Local\EpicGamesLauncher\Saved\*\GPUCache\*'                                          , ^
'C:\Users\%UserName%\AppData\Local\EpicGamesLauncher\Saved\*\Service Worker\CacheStorage\*'                       , ^
'C:\Users\%UserName%\AppData\Local\EpicGamesLauncher\Saved\*\Service Worker\ScriptCache\*'                          ^
-Recurse -Force}                                                                                           2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Origin / EA Launcher cache..
ECHO        Удаление кэша Origin / EA Launcher..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Origin')                         ^
{Remove-Item                                                                                          ^
'C:\Users\%UserName%\AppData\Local\Origin\Origin\cache\QtWebEngine\Default\Cache\*'                 , ^
'C:\Users\%UserName%\AppData\Local\Origin\Origin\QtWebEngine\Default\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Origin\Origin\QtWebEngine\Default\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Origin\Origin\QtWebEngine\Default\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Origin\Origin\QtWebEngine\Default\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Origin\Origin\QtWebEngine\Default\Service Worker\ScriptCache\*'    ^
-Recurse -Force}                                                                             2>nul >nul 
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\EADesktop')                      ^
{Remove-Item                                                                                          ^
'C:\Users\%UserName%\AppData\Local\EADesktop\cache\QtWebEngine\Default\Cache\*'                     , ^
'C:\Users\%UserName%\AppData\Local\EADesktop\QtWebEngine\Default\Code Cache\*'                      , ^
'C:\Users\%UserName%\AppData\Local\EADesktop\QtWebEngine\Default\Crashpad\*'                        , ^
'C:\Users\%UserName%\AppData\Local\EADesktop\QtWebEngine\Default\GPUCache\*'                        , ^
'C:\Users\%UserName%\AppData\Local\EADesktop\QtWebEngine\Default\Service Worker\CacheStorage\*'     , ^
'C:\Users\%UserName%\AppData\Local\EADesktop\QtWebEngine\Default\Service Worker\ScriptCache\*'        ^
-Recurse -Force}                                                                             2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Battle.net cache..
ECHO        Удаление кэша Battle.net..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Battle.net')           ^
{Remove-Item                                                                                ^
'C:\Users\%UserName%\AppData\Local\Battle.net\Cache\*'                                    , ^
'C:\Users\%UserName%\AppData\Local\Battle.net\BrowserCache\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Battle.net\BrowserCache\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Battle.net\BrowserCache\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Battle.net\BrowserCache\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Battle.net\BrowserCache\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Battle.net\BrowserCache\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Local\Blizzard Entertainment\Telemetry\*'                      ^
-Recurse -Force}                                                                   2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Rockstar Games cache..
ECHO        Удаление кэша Rockstar Games..
ECHO        [32m[5m████████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\Documents\Rockstar Games\Social Club')                ^
{Remove-Item                                                                                                 ^
'C:\Users\%UserName%\Documents\Rockstar Games\Social Club\Launcher\Renderer\Cache\*'                       , ^
'C:\Users\%UserName%\Documents\Rockstar Games\Social Club\Launcher\Renderer\Code Cache\*'                  , ^
'C:\Users\%UserName%\Documents\Rockstar Games\Social Club\Launcher\Renderer\Crashpad\*'                    , ^
'C:\Users\%UserName%\Documents\Rockstar Games\Social Club\Launcher\Renderer\GPUCache\*'                    , ^
'C:\Users\%UserName%\Documents\Rockstar Games\Social Club\Launcher\Renderer\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\Documents\Rockstar Games\Social Club\Launcher\Renderer\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\Documents\Rockstar Games\Social Club\Renderer\Cache\*'                                , ^
'C:\Users\%UserName%\Documents\Rockstar Games\Social Club\Renderer\Code Cache\*'                           , ^
'C:\Users\%UserName%\Documents\Rockstar Games\Social Club\Renderer\Crashpad\*'                             , ^
'C:\Users\%UserName%\Documents\Rockstar Games\Social Club\Renderer\GPUCache\*'                             , ^
'C:\Users\%UserName%\Documents\Rockstar Games\Social Club\Renderer\Service Worker\CacheStorage\*'          , ^
'C:\Users\%UserName%\Documents\Rockstar Games\Social Club\Renderer\Service Worker\ScriptCache\*'             ^
-Recurse -Force}                                                                                    2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting OpenVPN Connect..
ECHO        Удаление кэша OpenVPN Connect..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Roaming\OpenVPN Connect') ^
{Remove-Item                                                                             ^
'C:\Users\%UserName%\AppData\Roaming\OpenVPN Connect\Cache\*'                          , ^
'C:\Users\%UserName%\AppData\Roaming\OpenVPN Connect\Code Cache\*'                     , ^
'C:\Users\%UserName%\AppData\Roaming\OpenVPN Connect\Crashpad\*'                       , ^
'C:\Users\%UserName%\AppData\Roaming\OpenVPN Connect\GPUCache\*'                       , ^
'C:\Users\%UserName%\AppData\Roaming\OpenVPN Connect\Service Worker\CacheStorage\*'    , ^
'C:\Users\%UserName%\AppData\Roaming\OpenVPN Connect\Service Worker\ScriptCache\*'       ^
-Recurse -Force}                                                                2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Windows 11 Widgets cache..
ECHO        Удаление кэша виджетов Windows 11..
ECHO        [32m[5m█████████████████████████████░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*')                           ^
{Remove-Item                                                                                                                                     ^
'C:\Users\%UserName%\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Crashpad\*'                            , ^
'C:\Users\%UserName%\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Cache\Cache_Data\*'            , ^
'C:\Users\%UserName%\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Crashpad\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\Default\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\GrShaderCache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience*\LocalState\EBWebView\ShaderCache\*'                           ^
-Recurse -Force}                                                                                                                        2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting CryptnetUrlCache cache..
ECHO        Удаление кэша CryptnetUrlCache..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\LocalLow\Microsoft\CryptnetUrlCache\Content\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\LocalLow\Microsoft\CryptnetUrlCache\MetaData\*' -Recurse -Force" 2>nul >nul                          

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Internet Explorer cache..
ECHO        Удаление кэша Internet Explorer..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8                                                                     2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\cache\*'                         -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Windows\WebCache.old*' -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Microsoft Edge cache..
ECHO        Удаление кэша Microsoft Edge..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Edge\User Data\Crashpad\*'                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Edge\User Data\*\Cache\Cache_Data\*'            -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Edge\User Data\*\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Edge\User Data\*\File System\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Edge\User Data\*\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Edge\User Data\*\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Edge\User Data\*\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Edge\User Data\GrShaderCache\*'                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Edge\User Data\ShaderCache\*'                   -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Google Chrome cache..
ECHO        Удаление кэша Google Chrome..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Google\Chrome')                                 ^
{Remove-Item                                                                                                         ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\Crashpad\*'                                             , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\*\Cache\Cache_Data\*'                                   , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\*\Code Cache\*'                                         , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\*\File System\*'                                        , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\*\GPUCache\*'                                           , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\*\Service Worker\CacheStorage\*'                        , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\*\Service Worker\ScriptCache\*'                         , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Cache\*'                            , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Code Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\File System\*'                      , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\GPUCache\*'                         , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*'      , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'       , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\GrShaderCache\*'                                        , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\ShaderCache\*'                                          , ^
'C:\Users\%UserName%\AppData\Local\Google\Update\Download\*'                                                         ^
-Recurse -Force}                                                                                            2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta')                            ^
{Remove-Item                                                                                                         ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\Crashpad\*'                                        , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\*\Cache\Cache_Data\*'                              , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\*\Code Cache\*'                                    , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\*\File System\*'                                   , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\*\GPUCache\*'                                      , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\*\Service Worker\CacheStorage\*'                   , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\*\Service Worker\ScriptCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\File System\*'                 , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\GrShaderCache\*'                                   , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome Beta\User Data\ShaderCache\*'                                     , ^
'C:\Users\%UserName%\AppData\Local\Google\Update\Download\*'                                                         ^
-Recurse -Force}                                                                                            2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS')                             ^
{Remove-Item                                                                                                         ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\Crashpad\*'                                         , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\*\Cache\Cache_Data\*'                               , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\*\Code Cache\*'                                     , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\*\File System\*'                                    , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\*\GPUCache\*'                                       , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\*\Service Worker\CacheStorage\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\*\Service Worker\ScriptCache\*'                     , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Cache\*'                        , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Code Cache\*'                   , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\File System\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\GPUCache\*'                     , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*'  , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'   , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\GrShaderCache\*'                                    , ^
'C:\Users\%UserName%\AppData\Local\Google\Chrome SxS\User Data\ShaderCache\*'                                      , ^
'C:\Users\%UserName%\AppData\Local\Google\Update\Download\*'                                                         ^
-Recurse -Force}                                                                                            2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Google\Chromium')                               ^
{Remove-Item                                                                                                         ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\Crashpad\*'                                           , ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\*\Cache\Cache_Data\*'                                 , ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\*\Code Cache\*'                                       , ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\*\File System\*'                                      , ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\*\GPUCache\*'                                         , ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\*\Service Worker\CacheStorage\*'                      , ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\*\Service Worker\ScriptCache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Cache\*'                          , ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Code Cache\*'                     , ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\File System\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\GPUCache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*'    , ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'     , ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\GrShaderCache\*'                                      , ^
'C:\Users\%UserName%\AppData\Local\Google\Chromium\User Data\ShaderCache\*'                                        , ^
'C:\Users\%UserName%\AppData\Local\Google\Update\Download\*'                                                         ^
-Recurse -Force}                                                                                            2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Yandex Browser cache..
ECHO        Удаление кэша Yandex Browser..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Yandex')                        ^
{Remove-Item                                                                                         ^
'C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\Temp\*'                                    , ^
'C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\User Data\Crashpad\*'                      , ^
'C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\User Data\*\Cache\Cache_Data\*'            , ^
'C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\User Data\*\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\User Data\*\File System\*'                 , ^
'C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\User Data\*\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\User Data\*\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\User Data\*\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\User Data\*\TurboAppCache\*'               , ^
'C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\User Data\GrShaderCache\*'                 , ^
'C:\Users\%UserName%\AppData\Local\Yandex\YandexBrowser\User Data\ShaderCache\*'                     ^
-Recurse -Force}                                                                            2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Opera cache..
ECHO        Удаление кэша Opera..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Opera Software\Opera Stable')                    ^
{Remove-Item                                                                                                          ^
'C:\Users\%UserName%\AppData\Local\Opera Software\Opera Stable\Cache\Cache_Data\*'                                  , ^
'C:\Users\%UserName%\AppData\Local\Opera Software\Opera Stable\System Cache\Cache_Data\*'                           , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera Stable\Code Cache\*'                                      , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera Stable\Crash Reports\*'                                   , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera Stable\File System\*'                                     , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera Stable\GPUCache\*'                                        , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera Stable\GrShaderCache\*'                                   , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera Stable\Service Worker\CacheStorage\*'                     , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera Stable\Service Worker\ScriptCache\*'                      , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera Stable\ShaderCache\*'                                       ^
-Recurse -Force}                                                                                             2>nul >nul
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Opera Software\Opera GX Stable')                 ^
{Remove-Item                                                                                                          ^
'C:\Users\%UserName%\AppData\Local\Opera Software\Opera GX Stable\_side_profiles\*\Cache\Cache_Data\*'              , ^
'C:\Users\%UserName%\AppData\Local\Opera Software\Opera GX Stable\_side_profiles\*\System Cache\Cache_Data\*'       , ^
'C:\Users\%UserName%\AppData\Local\Opera Software\Opera GX Stable\Cache\Cache_Data\*'                               , ^
'C:\Users\%UserName%\AppData\Local\Opera Software\Opera GX Stable\System Cache\Cache_Data\*'                        , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Crash Reports\*'               , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\File System\*'                 , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\GrShaderCache\*'               , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\_side_profiles\*\ShaderCache\*'                 , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\Code Cache\*'                                   , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\Crash Reports\*'                                , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\File System\*'                                  , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\GPUCache\*'                                     , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\GrShaderCache\*'                                , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\Service Worker\CacheStorage\*'                  , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\Service Worker\ScriptCache\*'                   , ^
'C:\Users\%UserName%\AppData\Roaming\Opera Software\Opera GX Stable\ShaderCache\*'                                    ^
-Recurse -Force}                                                                                             2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Mozilla Firefox cache..
ECHO        Удаление кэша Mozilla Firefox..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Mozilla\Firefox') ^
{Remove-Item                                                                           ^
'C:\Users\%UserName%\AppData\Local\Mozilla\Firefox\Profiles\*\cache2\entries\*'        ^
-Recurse -Force}                                                              2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Cent Browser cache..
ECHO        Удаление кэша Cent Browser..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\CentBrowser')          ^
{Remove-Item                                                                                ^
'C:\Users\%UserName%\AppData\Local\CentBrowser\User Data\Crashpad\*'                      , ^
'C:\Users\%UserName%\AppData\Local\CentBrowser\User Data\*\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\CentBrowser\User Data\*\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\CentBrowser\User Data\*\File System\*'                 , ^
'C:\Users\%UserName%\AppData\Local\CentBrowser\User Data\*\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\CentBrowser\User Data\*\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\CentBrowser\User Data\*\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Local\CentBrowser\User Data\GrShaderCache\*'                 , ^
'C:\Users\%UserName%\AppData\Local\CentBrowser\User Data\ShaderCache\*'                     ^
-Recurse -Force}                                                                   2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Atom cache..
ECHO        Удаление кэша Atom..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom')                            ^
{Remove-Item                                                                                                   ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\Temp\*'                                                      , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\Crashpad\*'                                        , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\*\Cache\Cache_Data\*'                              , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\*\Code Cache\*'                                    , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\*\File System\*'                                   , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\*\GPUCache\*'                                      , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\*\Service Worker\CacheStorage\*'                   , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\*\Service Worker\ScriptCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\File System\*'                 , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\*\Storage\ext\*\def\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\GrShaderCache\*'                                   , ^
'C:\Users\%UserName%\AppData\Local\Mail.Ru\Atom\User Data\ShaderCache\*'                                       ^
-Recurse -Force}                                                                                      2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Vivaldi cache..
ECHO        Удаление кэша Vivaldi..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Vivaldi')                                  ^
{Remove-Item                                                                                                    ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\Crashpad\*'                                              , ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\*\Cache\Cache_Data\*'                                    , ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\*\Code Cache\*'                                          , ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\*\File System\*'                                         , ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\*\GPUCache\*'                                            , ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\*\Service Worker\CacheStorage\*'                         , ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\*\Service Worker\ScriptCache\*'                          , ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\File System\*'                 , ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\Default\Storage\ext\*\def\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\GrShaderCache\*'                                         , ^
'C:\Users\%UserName%\AppData\Local\Vivaldi\User Data\ShaderCache\*'                                             ^
-Recurse -Force}                                                                                       2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Brave Browser cache..
ECHO        Удаление кэша Brave Browser..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\BraveSoftware\Brave-Browser')          ^
{Remove-Item                                                                                                ^
'C:\Users\%UserName%\AppData\Local\BraveSoftware\Brave-Browser\User Data\Crashpad\*'                      , ^
'C:\Users\%UserName%\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Cache\Cache_Data\*'            , ^
'C:\Users\%UserName%\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\File System\*'                 , ^
'C:\Users\%UserName%\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\BraveSoftware\Brave-Browser\User Data\*\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Local\BraveSoftware\Brave-Browser\User Data\GrShaderCache\*'                 , ^
'C:\Users\%UserName%\AppData\Local\BraveSoftware\Brave-Browser\User Data\ShaderCache\*'                   , ^
'C:\Users\%UserName%\AppData\Local\BraveSoftware\Update\Download\*'                                         ^
-Recurse -Force}                                                                                   2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Comodo Dragon Browser cache..
ECHO        Удаление кэша Comodo Dragon Browser..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command if (Test-Path 'C:\Users\%UserName%\AppData\Local\Comodo\Dragon')          ^
{Remove-Item                                                                                  ^
'C:\Users\%UserName%\AppData\Local\Comodo\Dragon\User Data\Crashpad\*'                      , ^
'C:\Users\%UserName%\AppData\Local\Comodo\Dragon\User Data\*\Cache\*'                       , ^
'C:\Users\%UserName%\AppData\Local\Comodo\Dragon\User Data\*\Code Cache\*'                  , ^
'C:\Users\%UserName%\AppData\Local\Comodo\Dragon\User Data\*\File System\*'                 , ^
'C:\Users\%UserName%\AppData\Local\Comodo\Dragon\User Data\*\GPUCache\*'                    , ^
'C:\Users\%UserName%\AppData\Local\Comodo\Dragon\User Data\*\Service Worker\CacheStorage\*' , ^
'C:\Users\%UserName%\AppData\Local\Comodo\Dragon\User Data\*\Service Worker\ScriptCache\*'  , ^
'C:\Users\%UserName%\AppData\Local\Comodo\Dragon\User Data\GrShaderCache\*'                 , ^
'C:\Users\%UserName%\AppData\Local\Comodo\Dragon\User Data\ShaderCache\*'                     ^
-Recurse -Force}                                                                     2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting Pale Moon cache..
ECHO        Удаление кэша Pale Moon..
ECHO        [32m[5m████████████████████████████░░░░░░░░░░░░░░░░░░░░
ECHO.&ECHO.
PowerShell -Command "if (Test-Path 'C:\Users\%UserName%\AppData\Local\Moonchild Productions\Pale Moon') {Remove-Item 'C:\Users\%UserName%\AppData\Local\Moonchild Productions\Pale Moon\Profiles\*\cache2\entries\*' -Recurse -Force}" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Deleting a potential Cache..
ECHO        Удаление потенциального кэша..
ECHO        [32m[5m██████████████████████████████████████████░░░░░░
ECHO.&ECHO.
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\*\Cache\*'                                                      -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\*\Code Cache\*'                                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\*\Crashpad\*'                                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\*\GPUCache\*'                                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\*\Service Worker\CacheStorage\*'                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\*\Service Worker\ScriptCache\*'                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\LocalLow\*\Cache\*'                                                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\LocalLow\*\Code Cache\*'                                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\LocalLow\*\Crashpad\*'                                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\LocalLow\*\GPUCache\*'                                                -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\LocalLow\*\Service Worker\CacheStorage\*'                             -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\LocalLow\*\Service Worker\ScriptCache\*'                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Roaming\*\Cache\*'                                                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Roaming\*\Code Cache\*'                                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Roaming\*\Crashpad\*'                                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Roaming\*\GPUCache\*'                                                 -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Roaming\*\Service Worker\CacheStorage\*'                              -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Roaming\*\Service Worker\ScriptCache\*'                               -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\Local\*\Cache\*'                          -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\Local\*\Code Cache\*'                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\Local\*\Crashpad\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\Local\*\GPUCache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\Local\*\Service Worker\CacheStorage\*'    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\Local\*\Service Worker\ScriptCache\*'     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\LocalLow\*\Cache\*'                       -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\LocalLow\*\Code Cache\*'                  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\LocalLow\*\Crashpad\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\LocalLow\*\GPUCache\*'                    -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\LocalLow\*\Service Worker\CacheStorage\*' -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\LocalLow\*\Service Worker\ScriptCache\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\Roaming\*\Cache\*'                        -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\Roaming\*\Code Cache\*'                   -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\Roaming\*\Crashpad\*'                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\Roaming\*\GPUCache\*'                     -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\Roaming\*\Service Worker\CacheStorage\*'  -Recurse -Force" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Packages\*\LocalCache\Roaming\*\Service Worker\ScriptCache\*'   -Recurse -Force" 2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Clearing cache of fonts and icons..
ECHO        Очистка кэша шрифтов и значков..
ECHO        [32m[5m████████████████████████████████████████████░░░░
ECHO.&ECHO.
taskkill /F /IM Explorer.exe                                                                                                                                             2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\IconCache.db'                                                                       -Recurse -Force" 2>nul >nul
:: Deleting SageThumbs cahce | Удаление кэша SageThumbs
PowerShell -Command "if (Test-Path 'C:\Users\%UserName%\AppData\Local\SageThumbs.db3') {Remove-Item 'C:\Users\%UserName%\AppData\Local\SageThumbs.db3' -Recurse -Force}" 2>nul >nul
PowerShell -command "Remove-Item 'C:\Users\%UserName%\AppData\Local\Microsoft\Windows\Explorer\*.db'                                                    -Recurse -Force" 2>nul >nul
REG DELETE "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify"                                                                /F 2>nul >nul
Start Explorer.exe                                                                                                                                                       2>nul >nul

cls

COLOR F9
ECHO.&ECHO.
ECHO        Clearing RAM..
ECHO        Очистка оперативной памяти..
ECHO        [32m[5m███████████████████████████████████████████████░
ECHO.&ECHO.
rundll32.exe 2>nul >nul

cls

PowerShell -command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show(\"Cache and junk files removed successfully! `nКэш и ненужные файлы успешно удалены!\", \"Successful cleaning ^| Успешная очистка\", \"OK\", [System.Windows.Forms.MessageBoxIcon]::Information);}"
EXIT