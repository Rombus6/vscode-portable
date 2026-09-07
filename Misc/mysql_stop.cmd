@echo off
set /p STOP=Stop MySQL (Y/N)

if %STOP% == y ( call %~dp0bin\mysqladmin shutdown --host=localhost --port=3307 --user=root & goto:eof ) 
if %STOP% == Y ( call %~dp0bin\mysqladmin shutdown --host=localhost --port=3307 --user=root & goto:eof ) 
%~dpnx0