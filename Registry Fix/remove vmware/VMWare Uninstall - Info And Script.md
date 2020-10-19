<h2><sub><em>https://kb.vmware.com/s/article/1308</em></sub></h2>

<br/>

<h3>Delete Those Folders (And Content):</h3>

```cmd
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
```

<hr/>

<h3>Delete Those Files:</h3>

```cmd
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
```

<hr/>

<h3>Delete Those User and Group:</h3>
<pre>
__vmware_user__
__vmware__
</pre>

<hr/>

<h3>Delete Registry Values (REG file)</h3>

```reg
[-HKEY_CLASSES_ROOT\.nvram\VMware.VMBios]
[-HKEY_CLASSES_ROOT\.ova\OpenWithList\vmware.exe]
[-HKEY_CLASSES_ROOT\.ova\VMware.OVAPackage]
[-HKEY_CLASSES_ROOT\.ovf\OpenWithList\vmware.exe]
[-HKEY_CLASSES_ROOT\.ovf\VMware.OVFPackage]
[-HKEY_CLASSES_ROOT\.vmac\OpenWithList\vmware.exe]
[-HKEY_CLASSES_ROOT\.vmba\OpenWithList\vmware.exe]
[-HKEY_CLASSES_ROOT\.vmdk\VMware.VirtualDisk]
[-HKEY_CLASSES_ROOT\.vmpl\VMware.VMPolicy]
[-HKEY_CLASSES_ROOT\.vmsd\VMware.SnapshotMetadata]
[-HKEY_CLASSES_ROOT\.vmsn\VMware.Snapshot]
[-HKEY_CLASSES_ROOT\.vmss\VMware.SuspendState]
[-HKEY_CLASSES_ROOT\.vmt\OpenWithList\vmware.exe]
[-HKEY_CLASSES_ROOT\.vmtm\OpenWithList\vmware.exe]
[-HKEY_CLASSES_ROOT\.vmtm\VMware.TeamConfiguration]
[-HKEY_CLASSES_ROOT\.vmx\OpenWithList\vmware.exe]
[-HKEY_CLASSES_ROOT\.vmx\VMware.Document]
[-HKEY_CLASSES_ROOT\.vmxf\VMware.VMTeamMember]
[-HKEY_CLASSES_ROOT\CLSID\{420F0000-71EB-4757-B979-418F039FC1F9}]
[-HKEY_CLASSES_ROOT\CLSID\{BC1F4B6F-13AB-4239-8C79-D6DCADC52BAA}]
[-HKEY_CLASSES_ROOT\CLSID\{DFC76A6B-4873-458C-AB00-40B1FC028001}]
[-HKEY_CLASSES_ROOT\Elevated.ElevMgr.1]
[-HKEY_CLASSES_ROOT\Elevated.ElevMgr]
[-HKEY_CLASSES_ROOT\Elevated.HostDeviceInfos.1]
[-HKEY_CLASSES_ROOT\Elevated.HostDeviceInfos]
[-HKEY_CLASSES_ROOT\Elevated.VMXCreator.1]
[-HKEY_CLASSES_ROOT\Elevated.VMXCreator]
[-HKEY_CLASSES_ROOT\Installer\Features\2BC5FF3A53BF85647815E9EDD1563BAA]
[-HKEY_CLASSES_ROOT\Installer\Features\2C06509C057477E4FBEAC7E383CDFF3D]
[-HKEY_CLASSES_ROOT\Installer\Features\317A1D89C83432A4A86B143BC7A4D274]
[-HKEY_CLASSES_ROOT\Installer\Features\A57F49D06AE015943BFA1B54AFE9506C]
[-HKEY_CLASSES_ROOT\Installer\Features\AE11A35A5900F39468AF1AE5A8684A50]
[-HKEY_CLASSES_ROOT\Installer\Features\BC5E922F5258EE74BAC9B3AA1D6E0B1B]
[-HKEY_CLASSES_ROOT\Installer\Products\2BC5FF3A53BF85647815E9EDD1563BAA]
[-HKEY_CLASSES_ROOT\Installer\Products\2C06509C057477E4FBEAC7E383CDFF3D]
[-HKEY_CLASSES_ROOT\Installer\Products\7A26F0EA2A1AF704F9C48439B99DDAD8]
[-HKEY_CLASSES_ROOT\Installer\Products\7A79579133DA8984D9E8376086814B46]
[-HKEY_CLASSES_ROOT\Installer\Products\317A1D89C83432A4A86B143BC7A4D274]
[-HKEY_CLASSES_ROOT\Installer\Products\A57F49D06AE015943BFA1B54AFE9506C]
[-HKEY_CLASSES_ROOT\Installer\Products\AE11A35A5900F39468AF1AE5A8684A50]
[-HKEY_CLASSES_ROOT\Installer\Products\BC5E922F5258EE74BAC9B3AA1D6E0B1B]
[-HKEY_CLASSES_ROOT\Installer\UpgradeCodes\3F935F414A4C79542AD9C8D157A3CC39]
[-HKEY_CLASSES_ROOT\TypeLib\{68C57A6A-2F94-4D7A-A1F9-3433C46E6D0F}]
[-HKEY_CLASSES_ROOT\Wow6432Node\TypeLib\{68C57A6A-2F94-4D7A-A1F9-3433C46E6D0F}]
[-HKEY_CURRENT_USER\Software\Classes\Applications\vmware.exe]
[-HKEY_CURRENT_USER\Software\Classes\Installer\Features\2BC5FF3A53BF85647815E9EDD1563BAA]
[-HKEY_CURRENT_USER\Software\Classes\Installer\Features\2C06509C057477E4FBEAC7E383CDFF3D]
[-HKEY_CURRENT_USER\Software\Classes\Installer\Features\317A1D89C83432A4A86B143BC7A4D274]
[-HKEY_CURRENT_USER\Software\Classes\Installer\Features\AE11A35A5900F39468AF1AE5A8684A50]
[-HKEY_CURRENT_USER\Software\Classes\Installer\Features\BC5E922F5258EE74BAC9B3AA1D6E0B1B]
[-HKEY_CURRENT_USER\Software\Classes\Installer\Products\2BC5FF3A53BF85647815E9EDD1563BAA]
[-HKEY_CURRENT_USER\Software\Classes\Installer\Products\2C06509C057477E4FBEAC7E383CDFF3D]
[-HKEY_CURRENT_USER\Software\Classes\Installer\Products\317A1D89C83432A4A86B143BC7A4D274]
[-HKEY_CURRENT_USER\Software\Classes\Installer\Products\AE11A35A5900F39468AF1AE5A8684A50]
[-HKEY_CURRENT_USER\Software\Classes\Installer\Products\BC5E922F5258EE74BAC9B3AA1D6E0B1B]
[-HKEY_CURRENT_USER\Software\Classes\Installer\UpgradeCodes\3F935F414A4C79542AD9C8D157A3CC39]
[-HKEY_CURRENT_USER\Software\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\vmware-vmx.exe]
[-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\2BC5FF3A53BF85647815E9EDD1563BAA]
[-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\2C06509C057477E4FBEAC7E383CDFF3D]
[-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\317A1D89C83432A4A86B143BC7A4D274]
[-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\AE11A35A5900F39468AF1AE5A8684A50]
[-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\BC5E922F5258EE74BAC9B3AA1D6E0B1B]
[-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall\{0D94F75A-0EA6-4951-B3AF-B145FA9E05C6}]
[-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall\{98D1A713-438C-4A23-8AB6-41B37C4A2D47}]
[-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall\{A3FF5CB2-FB35-4658-8751-9EDE1D65B3AA}]
[-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall\{A53A11EA-0095-493F-86FA-A15E8A86A405}]
[-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall\{C90560C2-4750-4E77-BFAE-7C3E38DCFFD3}]
[-HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Uninstall\{F229E5CB-8525-47EE-AB9C-3BAAD1E6B0B1}]
[-HKEY_CURRENT_USER\Software\VMware, Inc.]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Classes\Applications\vmware.exe]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Classes\Installer\Features\2BC5FF3A53BF85647815E9EDD1563BAA]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Classes\Installer\Features\2C06509C057477E4FBEAC7E383CDFF3D]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Classes\Installer\Features\317A1D89C83432A4A86B143BC7A4D274]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Classes\Installer\Features\AE11A35A5900F39468AF1AE5A8684A50]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Classes\Installer\Features\BC5E922F5258EE74BAC9B3AA1D6E0B1B]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Classes\Installer\Products\2BC5FF3A53BF85647815E9EDD1563BAA]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Classes\Installer\Products\2C06509C057477E4FBEAC7E383CDFF3D]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Classes\Installer\Products\317A1D89C83432A4A86B143BC7A4D274]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Classes\Installer\Products\AE11A35A5900F39468AF1AE5A8684A50]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Classes\Installer\Products\BC5E922F5258EE74BAC9B3AA1D6E0B1B]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Classes\Installer\UpgradeCodes\3F935F414A4C79542AD9C8D157A3CC39]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\vmware-vmx.exe]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\2BC5FF3A53BF85647815E9EDD1563BAA]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\2C06509C057477E4FBEAC7E383CDFF3D]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\317A1D89C83432A4A86B143BC7A4D274]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\AE11A35A5900F39468AF1AE5A8684A50]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\BC5E922F5258EE74BAC9B3AA1D6E0B1B]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{0D94F75A-0EA6-4951-B3AF-B145FA9E05C6}]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{98D1A713-438C-4A23-8AB6-41B37C4A2D47}]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{A3FF5CB2-FB35-4658-8751-9EDE1D65B3AA}]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{A53A11EA-0095-493F-86FA-A15E8A86A405}]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{C90560C2-4750-4E77-BFAE-7C3E38DCFFD3}]
[-HKEY_CURRENT_USER\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{F229E5CB-8525-47EE-AB9C-3BAAD1E6B0B1}]
[-HKEY_CURRENT_USER\Software\Wow6432Node\VMware, Inc.]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Applications\vmware.exe]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\2BC5FF3A53BF85647815E9EDD1563BAA]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\2C06509C057477E4FBEAC7E383CDFF3D]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\317A1D89C83432A4A86B143BC7A4D274]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\AE11A35A5900F39468AF1AE5A8684A50]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Features\BC5E922F5258EE74BAC9B3AA1D6E0B1B]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\2BC5FF3A53BF85647815E9EDD1563BAA]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\2C06509C057477E4FBEAC7E383CDFF3D]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\317A1D89C83432A4A86B143BC7A4D274]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\AE11A35A5900F39468AF1AE5A8684A50]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\BC5E922F5258EE74BAC9B3AA1D6E0B1B]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\UpgradeCodes\3F935F414A4C79542AD9C8D157A3CC39]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\vmware-vmx.exe]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\2BC5FF3A53BF85647815E9EDD1563BAA]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\2C06509C057477E4FBEAC7E383CDFF3D]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\317A1D89C83432A4A86B143BC7A4D274]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\AE11A35A5900F39468AF1AE5A8684A50]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\BC5E922F5258EE74BAC9B3AA1D6E0B1B]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{0D94F75A-0EA6-4951-B3AF-B145FA9E05C6}]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{98D1A713-438C-4A23-8AB6-41B37C4A2D47}]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{A3FF5CB2-FB35-4658-8751-9EDE1D65B3AA}]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{A53A11EA-0095-493F-86FA-A15E8A86A405}]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{C90560C2-4750-4E77-BFAE-7C3E38DCFFD3}]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{F229E5CB-8525-47EE-AB9C-3BAAD1E6B0B1}]
[-HKEY_LOCAL_MACHINE\SOFTWARE\VMware, Inc.]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Classes\Applications\vmware.exe]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Classes\Installer\Features\2BC5FF3A53BF85647815E9EDD1563BAA]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Classes\Installer\Features\2C06509C057477E4FBEAC7E383CDFF3D]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Classes\Installer\Features\317A1D89C83432A4A86B143BC7A4D274]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Classes\Installer\Features\AE11A35A5900F39468AF1AE5A8684A50]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Classes\Installer\Features\BC5E922F5258EE74BAC9B3AA1D6E0B1B]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Classes\Installer\Products\2BC5FF3A53BF85647815E9EDD1563BAA]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Classes\Installer\Products\2C06509C057477E4FBEAC7E383CDFF3D]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Classes\Installer\Products\317A1D89C83432A4A86B143BC7A4D274]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Classes\Installer\Products\AE11A35A5900F39468AF1AE5A8684A50]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Classes\Installer\Products\BC5E922F5258EE74BAC9B3AA1D6E0B1B]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Classes\Installer\UpgradeCodes\3F935F414A4C79542AD9C8D157A3CC39]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\RADAR\HeapLeakDetection\DiagnosedApplications\vmware-vmx.exe]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\2BC5FF3A53BF85647815E9EDD1563BAA]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\2C06509C057477E4FBEAC7E383CDFF3D]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\317A1D89C83432A4A86B143BC7A4D274]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\AE11A35A5900F39468AF1AE5A8684A50]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\BC5E922F5258EE74BAC9B3AA1D6E0B1B]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{0D94F75A-0EA6-4951-B3AF-B145FA9E05C6}]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{98D1A713-438C-4A23-8AB6-41B37C4A2D47}]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{A3FF5CB2-FB35-4658-8751-9EDE1D65B3AA}]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{A53A11EA-0095-493F-86FA-A15E8A86A405}]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{C90560C2-4750-4E77-BFAE-7C3E38DCFFD3}]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{F229E5CB-8525-47EE-AB9C-3BAAD1E6B0B1}]
[-HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\VMware, Inc.]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_HCMON]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VMNAT]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VMNET]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VMNETADAPTER]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VMNETBRIDGE]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VMNETDHCP]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VMNETUSERIF]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VMNETX]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VMPARPORT]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VMUSB]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VMX86]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VMXW2KSETUP]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VNETINST]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VNETLIB]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VNETPROBE]
[-HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\Root\LEGACY_VNETPROBELIB]


[HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache]
"C:\\Program Files (x86)\\VMware\\ThinApp\\AppSync.exe"=-
"C:\\Program Files (x86)\\VMware\\ThinApp\\dll_dump.exe"=-
"C:\\Program Files (x86)\\VMware\\ThinApp\\log_monitor.exe"=-
"C:\\Program Files (x86)\\VMware\\ThinApp\\relink.exe"=-
"C:\\Program Files (x86)\\VMware\\ThinApp\\sbmerge.exe"=-
"C:\\Program Files (x86)\\VMware\\ThinApp\\Setup Capture.exe"=-
"C:\\Program Files (x86)\\VMware\\ThinApp\\snapshot.exe"=-
"C:\\Program Files (x86)\\VMware\\ThinApp\\snapshot64.exe"=-
"C:\\Program Files (x86)\\VMware\\ThinApp\\thinreg.exe"=-
"C:\\Program Files (x86)\\VMware\\ThinApp\\tlink.exe"=-
"C:\\Program Files (x86)\\VMware\\ThinApp\\vftool.exe"=-
"C:\\Program Files (x86)\\VMware\\ThinApp\\vregtool.exe"=-


[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\Folders]
"C:\\ProgramData\\VMware\\VMware Workstation\\"=-
"C:\\Program Files (x86)\\VMware\\VMware Workstation\\"=-
"C:\\Program Files (x86)\\VMware\\"=-
```

<hr/>

