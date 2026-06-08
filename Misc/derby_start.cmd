@echo off
cd %DERBY_HOME%
if not exist %DERBY_HOME%\data (
    mkdir %DERBY_HOME%\data 
)
cd %DERBY_HOME%\data
call %DERBY_HOME%\bin\startNetworkServer.bat