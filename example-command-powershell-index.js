'use strict'

import app from './app';
import { server } from './config/config';
import { green, yellow, cyan} from 'chalk';
import PowerShell from "powershell";

// Start the process
let ps = new PowerShell(`Stop-Process -Id (Get-NetTCPConnection -LocalPort ${server.port}).OwningProcess -Force`);

// End
ps.on("end", code => { 
  app.listen(server.port, (req, res) => {    
    console.log(
      `${cyan(`[${require('./package.json').name}]`)} ${green('[SERVER RUNNING]')} [Port:${yellow(` ${server.port}`)}]`
    )    
  })  
});




