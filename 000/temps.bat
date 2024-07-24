@echo off
echo Eliminando archivos y carpetas temporales en %TEMP%...
cd /d %TEMP%
for /f "delims=" %%i in ('dir /b /a') do (
    if exist "%%i" (
        rd /s /q "%%i" 2>nul
        del /q "%%i\*" 2>nul
    )
)
echo Archivos y carpetas temporales eliminados.
pause
