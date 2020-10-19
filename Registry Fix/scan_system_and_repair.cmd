@echo off

::make sure to set the following registry values:
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::  [HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Setup]
::  "SourcePath"="D:\\DOS\\W7USP164"
::  "ServicePackSourcePath"="D:\\DOS\\W7USP164"
::  
::  [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion]
::  "SourcePath"="D:\\DOS\\W7USP164"
::  "ServicePackSourcePath"="D:\\DOS\\W7USP164"
::  
::  [HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows NT\Setup]
::  "SourcePath"="D:\\DOS\\W7USP164"
::  "ServicePackSourcePath"="D:\\DOS\\W7USP164"
::  
::  [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Group Policy Objects\{A4A66D3C-6494-4D7A-9EE2-65A3A905360A}Machine\Software\Policies\Microsoft\Windows NT\Setup]
::  "SourcePath"="D:\\DOS\\W7USP164"
::  "ServicePackSourcePath"="D:\\DOS\\W7USP164"
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
pause

call Dism /Online /Cleanup-Image /ScanHealth

pause

call DISM /Online /Cleanup-Image /RestoreHealth

pause
pause
