reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /f /d %CD%\lib\scripts\img\daily.jpg
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v Wallpaper /t REG_SZ /f /d %CD%\lib\scripts\img\daily.jpg
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v WallpaperStyle /t REG_SZ /f /d 2
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v LockScreenImage /t REG_SZ /f /d %CD%\lib\scripts\img\daily.jpg
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP" /v LockScreenImagePath /t REG_SZ /f /d %CD%\lib\scripts\img\daily.jpg
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP" /v LockScreenImageUrl /t REG_SZ /f /d %CD%\lib\scripts\img\daily.jpg
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP" /v LockScreenImageStatus /t REG_DWORD /f /d 1
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters 1, True
