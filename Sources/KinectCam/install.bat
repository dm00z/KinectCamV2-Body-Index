@set DRV=%~d0
@%DRV%

@set OLDDIR=%~dp0
@cd %OLDDIR%

@c:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.exe install BaseClassesNET.dll
@c:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.exe install KinectCamBodyIndex.dll

@c:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe /nologo BaseClassesNET.dll
@c:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe KinectCamBodyIndex.dll /nologo /codebase /tlb: KinectCamBodyIndex.tlb
