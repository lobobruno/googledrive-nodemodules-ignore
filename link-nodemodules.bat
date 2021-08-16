@echo off
rem USE THIS SCRIPT TO PLACE YOUR NODE_MODULES OUTSITE YOUR GOOGLEDRIVE DIRECTORY
rem THE SCRIPT WILL PLACE THE NODE_MODULES DIRECTORY IN THE TMP_FOLDER LOCATION 
SET TMP_FOLDER=D:\tmp\

for %%I in (.) do SET PROJECT_NAME=%%~nxI
SET PROJECT=%cd%\
SET NODTMP=%TMP_FOLDER%%PROJECT_NAME%\node_modules

call :isAdmin

 if %errorlevel% == 0 (
    goto :run
 ) else (
    echo Requesting administrative privileges...
    goto :UACPrompt
 )

 exit /b

 :isAdmin
    fsutil dirty query %systemdrive% >nul
 exit /b

 :run
    set PROJECT=%1
    set NODTMP=%2
    if not exist %NODTMP% mkdir %NODTMP%
    cd %PROJECT%
    cd /d %PROJECT:~0,1%:
    rmdir node_modules
    del node_modules*
    del .yarnrc
    mklink /d node_modules "%NODTMP%"

    set NODE_NO_WARNINGS=1
    call yarn install --check-files 

    echo "Done!!!"
    ping 127.0.0.1 -n 6 > nul

 exit /b

 :UACPrompt
   echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
   echo UAC.ShellExecute "cmd.exe", "/c %~s0 %~1 %PROJECT% %NODTMP%", "", "runas", 1 >> "%temp%\getadmin.vbs"

   "%temp%\getadmin.vbs"
   del "%temp%\getadmin.vbs"
  exit /B`

:eof