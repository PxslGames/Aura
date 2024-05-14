@echo off
chcp 65001
color 09

rem Variables
set iterations=1000

rem Main Loop
:main
title 𝒜𝓊𝓇𝒶
cls
echo.
echo  █████╗ ██╗   ██╗██████╗  █████╗ 
echo ██╔══██╗██║   ██║██╔══██╗██╔══██╗
echo ███████║██║   ██║██████╔╝███████║
echo ██╔══██║██║   ██║██╔══██╗██╔══██║
echo ██║  ██║╚██████╔╝██║  ██║██║  ██║
echo ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
echo.

echo ┌────────────────────────────────┐
echo │             TOOLS              │
echo ├────────────────────────────────┤
echo │           1. Exit              │
echo │           2. Pinger            │
echo │           3. Ipconfig          │
echo │           4. Executor          │
echo │           5. Settings          │
echo └────────────────────────────────┘

rem Commands
set /p number=Enter:

if "%number%"=="1" (
    title 𝒜𝓊𝓇𝒶 - ℰ𝓍𝒾𝓉𝒾𝓃ℊ...
    timeout 2 >nul
    exit
)

if "%number%"=="2" (
    goto :pinger
)

if "%number%"=="3" (
    goto :ipconfig
)

if "%number%"=="4" (
    goto :executor
)

if "%number%"=="5" (
    goto :settings
)

:main

:pinger
title 𝒜𝓊𝓇𝒶 - 𝒫𝒾𝓃ℊℯ𝓇
cls
echo.
echo  █████╗ ██╗   ██╗██████╗  █████╗ 
echo ██╔══██╗██║   ██║██╔══██╗██╔══██╗
echo ███████║██║   ██║██████╔╝███████║
echo ██╔══██║██║   ██║██╔══██╗██╔══██║
echo ██║  ██║╚██████╔╝██║  ██║██║  ██║
echo ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
echo.

set IP=
set /p IP=Enter IP:
PING -n 1 %IP% | FIND "TTL="
if ERRORLEVEL 1 (
    echo %IP% is Offline!
) else (
    echo %IP% is Online.
)
pause >nul
goto :main

:ipconfig
title 𝒜𝓊𝓇𝒶 - ℐ𝒫𝒞ℴ𝓃𝒻𝒾ℊ
cls
echo.
echo  █████╗ ██╗   ██╗██████╗  █████╗ 
echo ██╔══██╗██║   ██║██╔══██╗██╔══██╗
echo ███████║██║   ██║██████╔╝███████║
echo ██╔══██║██║   ██║██╔══██╗██╔══██║
echo ██║  ██║╚██████╔╝██║  ██║██║  ██║
echo ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
echo.
ipconfig
pause >nul
goto :main

:executor
title 𝒜𝓊𝓇𝒶 - ℰ𝓍ℯ𝒸𝓊𝓉ℴ𝓇
cls
echo.
echo  █████╗ ██╗   ██╗██████╗  █████╗ 
echo ██╔══██╗██║   ██║██╔══██╗██╔══██╗
echo ███████║██║   ██║██████╔╝███████║
echo ██╔══██║██║   ██║██╔══██╗██╔══██║
echo ██║  ██║╚██████╔╝██║  ██║██║  ██║
echo ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
echo.
set /p FILE=Enter File Name:
cd internal
cd executor
start %FILE%
goto :main

:settings
title 𝒜𝓊𝓇𝒶 - 𝒮ℯ𝓉𝓉𝒾𝓃ℊ𝓈
cls
echo.
echo  █████╗ ██╗   ██╗██████╗  █████╗ 
echo ██╔══██╗██║   ██║██╔══██╗██╔══██╗
echo ███████║██║   ██║██████╔╝███████║
echo ██╔══██║██║   ██║██╔══██╗██╔══██║
echo ██║  ██║╚██████╔╝██║  ██║██║  ██║
echo ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
echo.

echo ┌────────────────────────────────┐
echo │            SETTINGS            │
echo ├────────────────────────────────┤
echo │           1. Help              │
echo │           2. Theme             │
echo │           3. Main Menu         │
echo └────────────────────────────────┘

set /p setting=Enter:

if "%setting%"=="1" (
    cls
    echo.
    echo  █████╗ ██╗   ██╗██████╗  █████╗ 
    echo ██╔══██╗██║   ██║██╔══██╗██╔══██╗
    echo ███████║██║   ██║██████╔╝███████║
    echo ██╔══██║██║   ██║██╔══██╗██╔══██║
    echo ██║  ██║╚██████╔╝██║  ██║██║  ██║
    echo ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝
    echo.
    echo On the main menu, Type the number of the option that you want to use.
    echo For the Executor, Go to Aura/internal/executor And put your file in there
    echo Then, On the main menu, select Executor and type the name of the file with file extension name.
    pause >nul
    goto :settings
)

if "%setting%"=="2" (
    echo 0 = Black
    echo 1 = Blue
    echo 2 = Green
    echo 3 = Aqua
    echo 4 = Red
    echo 5 = Purple
    echo 6 = Yellow
    echo 7 = White
    echo 8 = Gray
    echo 9 = Light Blue
    echo A = Light Green
    echo B = Light Aqua
    echo C = Light Red
    echo D = Light Purple
    echo E = Light Yellow
    echo F = Bright White
    echo Type the background and then text color NO SPACES!
    set /p theme=Enter Theme:
    color %theme%
    pause >nul
    goto :settings
)

if "%setting%"=="3" (
    goto :main
)