:: Script ejemplo de men£ en batch
@echo off

setlocal

title Men£ de opciones

:: Limpiar la pantalla
cls

:: Mostrar el men£
echo -----------------------
echo      Men£ principal
echo -----------------------
echo 1. Opci¢n 1: Saludo chorra
echo 2. Opci¢n 2: DIR
echo 3. Opci¢n 3: Mostrar fecha y hora
echo 4. Opci¢n 4: Salir
echo -----------------------
echo.


:: Solicitar al usuario que seleccione una opci¢n
set /p opcion=Seleccione una opci¢n (1-4):

::Evaluar la opci¢n seleccionada
if "%opcion%"=="1" (
    echo Hola pendejo
    endlocal & exit /B 0
)
if "%opcion%"=="2" (
    dir
    endlocal & exit /B 0
)
if "%opcion%"=="3" (
    echo La fecha y hora actual es:
    date /t
    time /t
    endlocal & exit /B 0
)
if "%opcion%"=="4" (
    endlocal & exit /B 0
)

endlocal

exit /B 0

