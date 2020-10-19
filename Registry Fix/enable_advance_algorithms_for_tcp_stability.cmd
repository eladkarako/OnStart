@echo off
chcp 65001 1>nul 2>nul

set "FILE_LOG=%~sdp0enable_advance_algorithms_for_tcp_stability_log.txt"

set "_DATE="
set "_TIME="
For /f "tokens=2-4 delims=/ " %%a in ("%DATE%") do ( set "_DATE=%%c/%%a/%%b" ) 
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do ( set "_TIME=%%a:%%b"     )


echo =================================================
echo before and after changes are logged into a file.
echo see: 
echo [%FILE_LOG%]
echo.
echo Notes:
echo   TCP/IP features:
echo     - ecncapability/timestamps are safe to activate.
echo     - fastopen/fastopenfallback are best to be disabled (available in Windows 10+, but are buggy).
echo   Windows features:
echo     - rss is safe to activate.
echo     - chimney/netdma/dca are relaying on new network-adapters. normally are disabled.
echo     - congestionprovider should be safe to activate.
echo =================================================
echo.
echo.



echo.                                                                               2>&1  1>>"%FILE_LOG%"
echo ===========================================================================    2>&1  1>>"%FILE_LOG%"
echo %_DATE% %_TIME%                                                                2>&1  1>>"%FILE_LOG%"
echo [BEFORE]                                                                       2>&1  1>>"%FILE_LOG%"
echo -------------------------------------- [netsh interface tcp show global]       2>&1  1>>"%FILE_LOG%"
netsh interface tcp show global                                                     2>&1  1>>"%FILE_LOG%"
echo ------------------------------------------------------------------------       2>&1  1>>"%FILE_LOG%"
echo.                                                                               2>&1  1>>"%FILE_LOG%"
echo -------------------------------------- [netsh interface tcp dump]              2>&1  1>>"%FILE_LOG%"
netsh interface tcp dump                                                            2>&1  1>>"%FILE_LOG%"
echo ------------------------------------------------------------------------       2>&1  1>>"%FILE_LOG%"
echo.                                                                               2>&1  1>>"%FILE_LOG%"
::########################################################################################################



::-------------------------------------------------------- [ENABLE] TCP/IP feature. algoritms for more stable connection.
netsh int tcp set global ecncapability=enabled        1>nul 2>nul
netsh int tcp set global timestamps=enabled           1>nul 2>nul

::-------------------------------------------------------- [ENABLE] Windows feature. network adapter dynamically choose computer CPU core for processing based on its load.
netsh int tcp set global rss=enabled                  1>nul 2>nul

::-------------------------------------------------------- [ENABLE] Windows feature. normally set to automatic, and nearly never activated, designed to 1GB lan.
netsh int tcp set global chimney=enabled              1>nul 2>nul

::-------------------------------------------------------- [ENABLE] Windows feature. reduce computer CPU load by allowing some next-generation network-adapters to handle traffic.
netsh int tcp set global netdma=enabled               1>nul 2>nul
netsh int tcp set global dca=enabled                  1>nul 2>nul

::-------------------------------------------------------- [ENABLE] Windows feature.  Allow the receive window to grow to accomodate almost all scenarios.
netsh int tcp set global autotuninglevel=normal       1>nul 2>nul

::-------------------------------------------------------- [ENABLE] Windows feature. Slightly increase transmission rate when possible. https://en.wikipedia.org/wiki/Compound_TCP#Principles_of_operation
netsh int tcp set global congestionprovider=ctcp      1>nul 2>nul

::-------------------------------------------------------- [DISABLE] TCP/IP feature. Windows badly implemented it (used in Windows10+)
netsh int tcp set global fastopen=disabled            1>nul 2>nul
netsh int tcp set global fastopenfallback=disabled    1>nul 2>nul


::########################################################################################################
echo.                                                                               2>&1  1>>"%FILE_LOG%"
echo [AFTER]                                                                        2>&1  1>>"%FILE_LOG%"
echo -------------------------------------- [netsh interface tcp show global]       2>&1  1>>"%FILE_LOG%"
netsh interface tcp show global                                                     2>&1  1>>"%FILE_LOG%"
echo ------------------------------------------------------------------------       2>&1  1>>"%FILE_LOG%"
echo.                                                                               2>&1  1>>"%FILE_LOG%"
echo -------------------------------------- [netsh interface tcp dump]              2>&1  1>>"%FILE_LOG%"
netsh interface tcp dump                                                            2>&1  1>>"%FILE_LOG%"
echo ------------------------------------------------------------------------       2>&1  1>>"%FILE_LOG%"
echo ===========================================================================    2>&1  1>>"%FILE_LOG%"
echo.                                                                               2>&1  1>>"%FILE_LOG%"
echo.                                                                               2>&1  1>>"%FILE_LOG%"
echo.                                                                               2>&1  1>>"%FILE_LOG%"
echo.                                                                               2>&1  1>>"%FILE_LOG%"







echo.
echo.
echo DONE.
echo Reboot your computer, after some time try running those commands for more information:
echo ---------------
echo netsh interface tcp show chimneystats
echo netsh interface tcp show netdmastats
echo ---------------
echo most likely those will be empty, 
echo wifi-adapters are rarely have those abilities,  
echo so you might as well disable netDMA and chimney.
echo see log for details: 
echo %FILE_LOG%

pause
exit /b 0