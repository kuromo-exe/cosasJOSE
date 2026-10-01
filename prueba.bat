:: prueba.bat
@echo off

setlocal

title Mi primer script en batch

echo Hola papas fritas

set nombre=natalia
set /p frase=Introduce una salchipapa: 

echo hola %nombre%, introduce una salchipapa %frase%

endlocal

exit /B 0

