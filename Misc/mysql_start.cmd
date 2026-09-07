@echo off
setlocal ENABLEDELAYEDEXPANSION
set "MYSQL=%~dp0"
set "MYSQL=%MYSQL:\=\\%"
call %~dp0mysqld.cmd