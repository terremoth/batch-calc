@echo off
:start

title Batch Script Basic Calc
echo Batch Script Basic Calc
echo.

set /p "a=Enter first number: "
set /p "b=Enter second number: "

:menu
echo Menu:
echo. 
echo 1 - Sum
echo 2 - Subtract
echo 3 - Multiply
echo 4 - Divide
echo 5 - Modulo (Integer division remainder)
echo 6 - # Exit the program #

set /p "option=Choose the operation: "

if %option% == 1 (
	set /A result = %a% + %b% 
) else if %option% == 2 (
	set /A result = %a% - %b% 
) else if %option% == 3 (
	set /A result = %a% * %b% 
) else if %option% == 4 (
	set /A result = %a% / %b% 
) else if %option% == 5 (
	set /A result = %a% %% %b% 
) else if %option% == 6 (
	exit /B 0
) else (
	cls
	echo Bad option!
	goto menu
)

echo Result is: %result%
echo.

set /p restart=Do you want to restart the program? If yes type y, else will exit: %=%

if "%restart%" EQU "y" goto start
	
