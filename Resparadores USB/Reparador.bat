@echo off 
title Memoria Flash . by PABLO LOPETEGUI 
color 1E 
@echo ----------------------------------------­------ 
@echo ---- REPARACION DE FICHEROS MEMORIA FLASH Y PENDRIVER ---- 
@echo ----------------------------------------­------ 
@echo Status : Cambiando Atributo de Carpetas 
Attrib /d /s -r -h -s *.* 
@echo ----------------------------------------­------ 
@echo Status : Eliminado Accesos Directos 
if exist *.lnk del *.lnk 
@echo ----------------------------------------­------ 
@echo Status : Eliminado Autorun 
if exist autorun.inf del autorun.inf 
@echo ----------------------------------------­------ 
@echo Status : Cambiando propiedades 
attrib -a -s -h -r /s /d 
@echo ----------------------------------------­------ 
@echo Status : Operacion Terminada 
@echo ----------------------------------------­------ 
@echo ----------------------------------------­------ 
pause
