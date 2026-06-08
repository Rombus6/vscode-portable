@echo off
echo net: > %MONGODB%mongod.cfg
echo    port: 27017 >> %MONGODB%mongod.cfg
echo    bindIp: 127.0.0.1 >> %MONGODB%mongod.cfg
echo storage: >> %MONGODB%mongod.cfg
echo    dbPath: %MONGODB%data >> %MONGODB%mongod.cfg
echo    directoryPerDB: true >> %MONGODB%mongod.cfg
echo systemLog: >> %MONGODB%mongod.cfg
echo    quiet: true >> %MONGODB%mongod.cfg
echo    path: %MONGODB%log\mongodb.log >> %MONGODB%mongod.cfg
echo    logAppend: true >> %MONGODB%mongod.cfg
echo    destination: file >> %MONGODB%mongod.cfg

set PATH=%MONGODB%bin;%PATH%
if not exist %MONGODB%log (
    md %MONGODB%log 
)
if not exist %MONGODB%data (
    md %MONGODB%data
)
%MONGODB%bin\mongod.exe --config %MONGODB%mongod.cfg