@echo off
set /p commit=Enter commit name: 
git add -A
git commit -m "%commit%"
git push origin master
REM //COMANDOS PARA USAR NPM en orden
REM call npm run postinstall
REM call npm run deploy