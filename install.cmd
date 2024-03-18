@ECHO OFF
:Ask1
set /P c=Install Java[Y/N]?
if /I "%c%" EQU "Y" goto :yes1
if /I "%c%" EQU "N" goto :Ask2
goto :Ask1

:yes1
echo Installing Java..
start jre-8u401-windows-x64.exe
goto Ask2

:Ask2
set /P c=Install Fabric[Y/N]?
if /I "%c%" EQU "Y" goto :yes2
if /I "%c%" EQU "N" goto :Ask3
goto :Ask2

:yes2
echo Installing Fabric..
start fabric-installer-1.0.0.exe
goto Ask3

:Ask3
set /P c=Install Mods[Y/N]?
if /I "%c%" EQU "Y" goto :yes3
if /I "%c%" EQU "N" goto :Ask4
goto :Ask3

:yes3
echo installing mods..
xcopy /s /i "mods" "%userprofile%\AppData\Roaming\.minecraft\mods"
goto Ask4

:Ask4
set /P c=Install Shadersss[Y/N]?
if /I "%c%" EQU "Y" goto :yes4
if /I "%c%" EQU "N" goto :cont
goto :Ask4

:yes4
echo installing shaders..
xcopy /s /i "shaders" "%userprofile%\AppData\Roaming\.minecraft\shaderpacks"
goto cont

:cont
echo installation done!
pause




