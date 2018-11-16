@echo off
MD tempF1
CD tempF1
for /F "usebackq tokens=1" %%A IN (`git config user.name`) do (
  set gituser=%%A
)
echo  ^<-- GIT User> "%gituser%"
findstr /A:0a /S "<--" "%gituser%" 
cd..
RD /s /q tempF1
echo.
set /p commit=Enter commit name: 
git add -A
for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
     set dow=%%i
     set month=%%j
     set day=%%k
     set year=%%l
)
set p1=%git config user.name%
echo %p1%
set datestr=%month%_%day%_%year%
git commit -m "[%gituser%] [%datestr%] %commit% "
git push origin master
