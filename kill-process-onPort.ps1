Stop-Process -Id (Get-NetTCPConnection -LocalPort 3600).OwningProcess -Force
