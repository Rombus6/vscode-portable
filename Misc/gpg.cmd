@echo off
if "%*" == "" (
    %~dp0..\GPG\bin\gpg.exe -v -h
) else (
    %~dp0..\GPG\bin\gpg.exe -v %*
)