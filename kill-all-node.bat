@echo off
taskkill /f /im node.exe 
::powershell Stop-Process -Id (Get-NetTCPConnection -LocalPort 3600).OwningProcess -Force
::nodemon index.js --exec babel-node