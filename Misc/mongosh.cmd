@echo off
if "%*" == "" (
    %~dp0..\MongoShell\bin\mongosh -nodb
) else (
    %~dp0..\MongoShell\bin\mongosh %*
)