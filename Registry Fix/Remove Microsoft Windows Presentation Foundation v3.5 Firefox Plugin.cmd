@echo off
REG DELETE "HKLM\SOFTWARE\Mozilla\Firefox\Extensions" /V {20a82645-c095-46ed-80e3-08825760534b} /F
rmdir /S /Q "%SYSTEMDRIVE%\Windows\Microsoft.NET\Framework\v3.5\Windows Presentation Foundation"
pause