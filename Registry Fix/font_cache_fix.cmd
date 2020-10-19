@echo off
chcp 65001 2>nul >nul

echo Font-Cache Fix.

sc query "FontCache" 1>nul 2>nul
if ["%ErrorLevel%"] EQU ["0"] ( 
  sc  config  "FontCache"          start=disabled      2>nul >nul 
  sc  stop    "FontCache"                              2>nul >nul 
  net stop    "FontCache" /y                           2>nul >nul 
) 

sc query "FontCache3.0.0.0" 1>nul 2>nul
if ["%ErrorLevel%"] EQU ["0"] ( 
  sc  config  "FontCache3.0.0.0"   start=disabled      2>nul >nul 
  sc  stop    "FontCache3.0.0.0"                       2>nul >nul 
  net stop    "FontCache3.0.0.0" /y                    2>nul >nul 
) 

sc query "WPFFontCache_v0400" 1>nul 2>nul
if ["%ErrorLevel%"] EQU ["0"] ( 
  sc  config  "WPFFontCache_v0400" start=disabled      2>nul >nul 
  sc  stop    "WPFFontCache_v0400"                     2>nul >nul 
  net stop    "WPFFontCache_v0400" /y                  2>nul >nul 
) 

::------------------------------------------------------------------

del /f /q   "%SystemRoot%\System32\FNTCACHE.DAT"     2>nul >nul
del /f /q   "%SystemRoot%\SysWOW64\FNTCACHE.DAT"     2>nul >nul
del /f /q   "%SystemRoot%\System32\StaticCache.dat"  2>nul >nul
del /f /q   "%SystemRoot%\SysWOW64\StaticCache.dat"  2>nul >nul

::-----------------------------------------------------------------------
::will be started at their own time the next restart...

sc query "FontCache" 1>nul 2>nul
if ["%ErrorLevel%"] EQU ["0"] ( sc  config  "FontCache"          start=auto          2>nul >nul ) 

sc query "FontCache3.0.0.0" 1>nul 2>nul
if ["%ErrorLevel%"] EQU ["0"] ( sc  config  "FontCache3.0.0.0"   start=auto          2>nul >nul ) 

sc query "WPFFontCache_v0400" 1>nul 2>nul
if ["%ErrorLevel%"] EQU ["0"] ( sc  config  "WPFFontCache_v0400" start=auto          2>nul >nul )

echo Done.
echo.



::  stops "Windows Font Cache Service"  and  "Windows Presentation
::  Foundation Font Cache 3.0.0.0" (if exist), clears the FS cache 
::  and re-enables them. A reboot is needed.  You may want to keep
::  "Windows Presentation Foundation Font Cache 3.0.0.0"  disabled
::  if you have any issues with higher than normal CPU on a legacy
::  Dot.Net applications.    
::        /Created By Elad Karako. August 2017. improved June 2020.

