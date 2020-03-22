@echo off

:check
if "%time%"==" 9:00:00.00" (
START "" "C:\Desktop\Photoshop.exe"
)

timeout /t 3600 /nobreak
GOTO :Check