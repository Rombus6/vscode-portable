@echo off
cd %DERBY_HOME%
set /p STOP=Stop Derby (Y/N)

if %STOP% == y ( call %DERBY_HOME%\bin\stopNetworkServer.bat & goto:eof ) 
if %STOP% == Y ( call %DERBY_HOME%\bin\stopNetworkServer.bat & goto:eof ) 
%~nx0 