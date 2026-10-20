@echo off
setlocal
chcp 65001 >nul

title: Gestion de usuarios

rem Bucle infinito: llama al menu una y otra vez hasta elegir Salir
for /l %%i in (1,0,2) do call :MENU
exit /b O


:menu
cls
echo ==============================
echo     GESTION DE USUARIOS
echo ==============================
echo.
echo 1. Mostrar usuarios
echo 2. Mostrar usuario actual
echo 3. Crear usuario
echo 4. Borrar usuario
echo 5. Activar o desactivar usuario
echo 6. Salir
echo.

set /p opcion=Elija una opcion: 

if "%opcion%"=="1" call :mostrar
if "%opcion%"=="2" call :actual
if "%opcion%"=="3" call :crear
if "%opcion%"=="4" call :borrar
if "%opcion%"=="5" call :activar
if "%opcion%"=="6" exit

call :menu
exit /b


:mostrar
echo.
echo ===== USUARIOS DEL SISTEMA =====
net user
exit /b


:actual
echo.
echo ===== USUARIO ACTUAL =====
whoami
exit /b


:crear
echo.
echo ===== CREAR USUARIO =====
set /p usuario=Nombre del nuevo usuario: 
net user "%usuario%" * /add
exit /b


:borrar
echo.
echo ===== BORRAR USUARIO =====
set /p usuario=Nombre del usuario a borrar: 
net user "%usuario%" /delete
exit /b


:activar
echo.
echo ===== ACTIVAR/DESACTIVAR USUARIO =====
set /p usuario=Nombre del usuario: 

echo.
echo 1. Activar
echo 2. Desactivar
set /p opcion=Elija una opcion: 

if "%opcion%"=="1" net user "%usuario%" /active:yes
if "%opcion%"=="2" net user "%usuario%" /active:no

pause
exit /b

