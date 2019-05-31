:: Programmed by hXR16F
:: hXR16F.ar@gmail.com

@echo off&mode 83,30&title Random IPv6 Generator&setlocal EnableDelayedExpansion

set /p "autoskip=Autoskip [y/n] "&cls&set "tab=	"&set /a counter=1
if not exist "log.txt" (
	echo # This file has been generated using Random-IPv6-Generator by hXR16F>> "log.txt"
	echo # https://github.com/hXR16F/Random-IPv6-Generator>> "log.txt"
	echo.>> "log.txt"
	echo Lowercase                              %tab%Uppercase>> "log.txt"
	echo ---------------------------------------%tab%--------------------------------------->> "log.txt"
)
call :draw
goto :loop

:draw
	cls&(echo.&echo  Lowercase                                 Uppercase&echo  ---------------------------------------   ---------------------------------------)&exit /b
	
:loop
	for /l %%i in (1,1,32) do call :random_ 0 15 num%%i
	for /l %%i in (1,1,32) do (if "!num%%i!" equ "0" set "lc%%i=0" & set "uc%%i=0")&(if "!num%%i!" equ "1" set "lc%%i=1" & set "uc%%i=1")&(if "!num%%i!" equ "2" set "lc%%i=2" & set "uc%%i=2")&(if "!num%%i!" equ "3" set "lc%%i=3" & set "uc%%i=3")&(if "!num%%i!" equ "4" set "lc%%i=4" & set "uc%%i=4")&(if "!num%%i!" equ "5" set "lc%%i=5" & set "uc%%i=5")&(if "!num%%i!" equ "6" set "lc%%i=6" & set "uc%%i=6")&(if "!num%%i!" equ "7" set "lc%%i=7" & set "uc%%i=7")&(if "!num%%i!" equ "8" set "lc%%i=8" & set "uc%%i=8")&(if "!num%%i!" equ "9" set "lc%%i=9" & set "uc%%i=9")&(if "!num%%i!" equ "10" set "lc%%i=a" & set "uc%%i=A")&(if "!num%%i!" equ "11" set "lc%%i=b" & set "uc%%i=B")&(if "!num%%i!" equ "12" set "lc%%i=c" & set "uc%%i=C")&(if "!num%%i!" equ "13" set "lc%%i=d" & set "uc%%i=D")&(if "!num%%i!" equ "14" set "lc%%i=e" & set "uc%%i=E")&(if "!num%%i!" equ "15" set "lc%%i=f" & set "uc%%i=F")
	echo  %lc1%%lc2%%lc3%%lc4%:%lc5%%lc6%%lc7%%lc8%:%lc9%%lc10%%lc11%%lc12%:%lc13%%lc14%%lc15%%lc16%:%lc17%%lc18%%lc19%%lc20%:%lc21%%lc22%%lc23%%lc24%:%lc25%%lc26%%lc27%%lc28%:%lc29%%lc30%%lc31%%lc32%   %uc1%%uc2%%uc3%%uc4%:%uc5%%uc6%%uc7%%uc8%:%uc9%%uc10%%uc11%%uc12%:%uc13%%uc14%%uc15%%uc16%:%uc17%%uc18%%uc19%%uc20%:%uc21%%uc22%%uc23%%uc24%:%uc25%%uc26%%uc27%%uc28%:%uc29%%uc30%%uc31%%uc32%
	echo %lc1%%lc2%%lc3%%lc4%:%lc5%%lc6%%lc7%%lc8%:%lc9%%lc10%%lc11%%lc12%:%lc13%%lc14%%lc15%%lc16%:%lc17%%lc18%%lc19%%lc20%:%lc21%%lc22%%lc23%%lc24%:%lc25%%lc26%%lc27%%lc28%:%lc29%%lc30%%lc31%%lc32%%tab%%uc1%%uc2%%uc3%%uc4%:%uc5%%uc6%%uc7%%uc8%:%uc9%%uc10%%uc11%%uc12%:%uc13%%uc14%%uc15%%uc16%:%uc17%%uc18%%uc19%%uc20%:%uc21%%uc22%%uc23%%uc24%:%uc25%%uc26%%uc27%%uc28%:%uc29%%uc30%%uc31%%uc32%>> "log.txt"
	if %counter% geq 26 (if /i "%autoskip%" equ "y" (call :draw&set counter=1&goto :loop) else ((pause >nul)&call :draw&set counter=1&goto :loop))
	set /a counter+=1&goto :loop
	
:random_
	set "name=%3"
	set /a !name!=%random% * (%2 - %1 + 1) / 32768 + %1
	exit /b
	