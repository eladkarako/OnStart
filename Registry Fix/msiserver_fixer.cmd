::@echo off
chcp 65001 2>nul >nul

::-------------------------------------prevent auto-start
sc config msiserver start= disabled

::-------------------------------------old-school stopping
::net stop msiserver

::-------------------------------------stopping
sc stop "msiserver" "4:3:2" "Planned:Operating System:Maintenance -- User Is Trying to Fix The MSI Server"

::*********************************************************************
::* you can get the PID with 'sc queryex msiserver' (say it's 1234)   *
::* then force close it with 'taskkill /pid 1234 /f'                  *
::*********************************************************************

::-------------------------------------register a dll in the registry
regsvr32.exe "%windir%\SysWOW64\msi.dll"
regsvr32.exe "%windir%\System32\msi.dll"

::-------------------------------------set MSI-server to automatically start (Windows 8+ might use 'demand' but 'auto' is better).
::sc config msiserver start= demand
sc config msiserver start= auto

::-------------------------------------'force' start
sc start msiserver

::https://support.microsoft.com/en-hk/help/319624/windows-installer-service-could-not-be-accessed-error-message-when-ins
::-------------------------------------'force' start
msiexec /unreg
msiexec /unregister
msiexec /regserver

pause