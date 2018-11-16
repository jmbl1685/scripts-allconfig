Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "cmd XCopy ""C:\ClipboardFusionBackup"" ""D:\Copia de Seguridad (Mis Documentos)\Mis Documentos\ClipboardFusionBackup""  /s /y" & Chr(34), 0
WshShell.Run "cmd XCopy ""C:\ClipboardFusion Backups"" ""D:\Copia de Seguridad (Mis Documentos)\Mis Documentos\ClipboardFusion Backups""  /s /y" & Chr(34), 0

Set WshShell = Nothing
' para abrir un .bat externo
' Set WshShell = CreateObject("WScript.Shell")
' WshShell.Run chr(34) & "miprograma.bat" & Chr(34), 0
' Set WshShell = Nothing