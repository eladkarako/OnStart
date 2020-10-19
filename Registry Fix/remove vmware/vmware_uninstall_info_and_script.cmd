@echo off
::----------------------------------------------------right-click this batch file and run 'as admin'.
::----------------------------------------------------optionally continue by running 'VMware_Install_Cleaner.exe'.
::----------------------------------------------------information is based on official https://kb.vmware.com/s/article/1308
::----------------------------------------------------Elad Karako   Merch 2019.


::----------------------------------------------------------------------Delete Those Folders (And Content).
rmdir /s /q   "C:\Documents and Settings\%USERNAME%\Application Data\VMware"
rmdir /s /q   "C:\Documents and Settings\All Users\Application Data\VMware"
rmdir /s /q   "C:\Documents and Settings\All Users\Start Menu\Programs\VMware"
rmdir /s /q   "C:\Program Files (x86)\Common Files\VMware"
rmdir /s /q   "C:\Program Files (x86)\VMware"
rmdir /s /q   "C:\Program Files\Common Files\VMware"
rmdir /s /q   "C:\Program Files\VMware"
rmdir /s /q   "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\VMware"
rmdir /s /q   "C:\ProgramData\VMware"
rmdir /s /q   "C:\Users\%USERNAME%\AppData\Local\VMware"
rmdir /s /q   "C:\Users\%USERNAME%\AppData\Roaming\VMware"

::----------------------------------------------------------------------Delete Those Files.
del /f /q  "C:\Windows\system32\drivers\hcmon.sys"
del /f /q  "C:\Windows\system32\drivers\vmnet.sys"
del /f /q  "C:\Windows\system32\drivers\vmnetadapter.sys"
del /f /q  "C:\Windows\system32\drivers\vmnetbridge.sys"
del /f /q  "C:\Windows\system32\drivers\vmnetuserif.sys"
del /f /q  "C:\Windows\system32\drivers\vmnetx.sys"
del /f /q  "C:\Windows\system32\drivers\VMparport.sys"
del /f /q  "C:\Windows\system32\drivers\vmusb.sys"
del /f /q  "C:\Windows\system32\drivers\vmx86.sys"
del /f /q  "C:\Windows\system32\vmnat.exe"
del /f /q  "C:\Windows\system32\vmnetbridge.exe"
del /f /q  "C:\Windows\system32\VMNetDHCP.exe"
del /f /q  "C:\Windows\system32\vmnetdhcp.leases"
del /f /q  "C:\Windows\system32\vmxw2ksetup.dll"
del /f /q  "C:\Windows\system32\vnetinst.dll"
del /f /q  "C:\Windows\system32\vnetlib.dll"
del /f /q  "C:\Windows\system32\vnetlib.exe"
del /f /q  "C:\Windows\system32\vnetprobe.exe"
del /f /q  "C:\Windows\system32\vnetprobelib.dll"

::----------------------------------------------------------------------Delete Those User and Group group=__vmware__ user=__vmware_user__ (at least try..).
net localgroup "__vmware__" "__vmware_user__" /DELETE
net localgroup "__vmware__" /DELETE

::----------------------------------------------------------------------Delete Those Registry-Keys/Values.
call "%windir%\System32\reg.exe" import "%~sdp0clean_from_registry.reg"

pause