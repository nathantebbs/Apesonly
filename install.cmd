@ECHO OFF
:Ask
set /P c=First install[Y/N]? 
if /I "%c%" EQU "Y" goto :Ask1
if /I "%c%" EQU "N" goto :Ask3

:Ask1
set /P c=Install Java[Y/N]?
if /I "%c%" EQU "Y" goto :yes1
if /I "%c%" EQU "N" goto :Ask2
goto :Ask1

:yes1
echo Installing Java..
start jre-8u401-windows-x64.exe
goto :Ask2

:Ask2
set /P c=Install Fabric[Y/N]? 
if /I "%c%" EQU "Y" goto :yes2
if /I "%c%" EQU "N" goto :Ask4
goto :Ask2

:yes2
echo Installing Fabric..
start fabric-installer-1.0.0.exe
goto :Ask4

:Ask3
set /P c=Cleanse Mods[Y/N] (Highly Reccomended)? 
if /I "%c%" EQU "Y" goto :yes3
if /I "%c%" EQU "N" goto :Ask4
goto :Ask3

:yes3
DEL "%userprofile%\AppData\Roaming\.minecraft\mods\*"
echo Mods Cleansed..
goto Ask4

:Ask4
set /P c=Install Mods[Y/N]? 
if /I "%c%" EQU "Y" goto :yes4
if /I "%c%" EQU "N" goto :Ask5
goto :Ask3

:yes4
xcopy /s /i "mods\" "%userprofile%\AppData\Roaming\.minecraft\mods"
echo Mods Installed..
goto Ask5

:Ask5
set /P c=Install Shaders[Y/N]? 
if /I "%c%" EQU "Y" goto :yes5
if /I "%c%" EQU "N" goto :cont
goto :Ask4

:yes5
xcopy /s /i "shaders\" "%userprofile%\AppData\Roaming\.minecraft\shaderpacks"
echo Shaders Installed..
goto cont

:cont
echo installation done!
pause




