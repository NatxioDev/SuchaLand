@REM copiar archivos dentro de una carpeta a otra
@REM
@REM Autor: Carlos A. Rodriguez
@REM Fecha: 2013-10-01
@REM
@REM Parametros:
@REM 1. Carpeta origen
@REM 2. Carpeta destino
@REM 3. Extension de los archivos a copiar
@REM
@REM Ejemplo:
@REM mas.bat "C:\carpeta1" "C:\carpeta2" "txt"
@REM
@REM Copia todos los archivos con extension .txt de la carpeta1 a la carpeta2
@REM

@echo off
setlocal

set "origen=.\mods\"
set "destino=%userprofile%\AppData\Roaming\.minecraft\mods"
set "extension=jar"

if "%origen%"=="" goto error
if "%destino%"=="" goto error
if "%extension%"=="" goto error

if not exist "%origen%" goto error
if not exist "%destino%" goto error


for /f "delims=" %%a in ('dir /b /a-d "%origen%\*.%extension%"') do (
    copy "%origen%\%%a" "%destino%\%%a"
)

goto fin



