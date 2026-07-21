@echo off
cd %MYSQL%
set /p STOP=Stop MySQL (Y/N)

if %STOP% == y ( call %MYSQL%bin\mysqladmin shutdown --host=localhost --port=3307 --user=root & goto:eof ) 
if %STOP% == Y ( call %MYSQL%bin\mysqladmin shutdown --host=localhost --port=3307 --user=root & goto:eof ) 
%~nx0