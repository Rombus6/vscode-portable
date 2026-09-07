@echo off
if "%*" == "" (
    %~dp0mongosh\bin\mongosh -nodb
) else (
    %~dp0mongosh\bin\mongosh %*
)