@echo off
:: Ejecutar el comando PowerShell para descargar y ejecutar el script
powershell -Command "Invoke-RestMethod -Uri 'https://christitus.com/windev' | Invoke-Expression"

:: Manejo de errores
if %ERRORLEVEL% neq 0 (
    echo Hubo un problema al ejecutar el comando.
    pause
    exit /b %ERRORLEVEL%
)

echo El comando se ejecutó correctamente.
pause
exit /b 0
