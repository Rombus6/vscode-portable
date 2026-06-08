@echo off
if exist %MYSQL%data (
    cd %MYSQL%data
    powershell -NoProfile -Command "remove-item * -include *.pid" 
    powershell -NoProfile -Command "remove-item * -include binlog.*" 
)
echo [mysqld] > %MYSQL%my.ini
echo basedir="%MYSQL%" >> %MYSQL%my.ini
echo datadir="%MYSQL%data" >> %MYSQL%my.ini
echo tmpdir="%MYSQL%logs" >> %MYSQL%my.ini
echo log-error="%MYSQL%logs\\error.log" >> %MYSQL%my.ini
echo general_log_file="%MYSQL%logs\\general.log" >> %MYSQL%my.ini
echo slow_query_log_file="%MYSQL%logs\\low_query.log" >> %MYSQL%my.ini

echo log-output=FILE >> %MYSQL%my.ini
echo log_error_verbosity=3 >> %MYSQL%my.ini
echo general_log=on >> %MYSQL%my.ini
echo slow_query_log=on >> %MYSQL%my.ini 
echo port=3307 >> %MYSQL%my.ini 

set PATH=%MYSQL%bin;%PATH%
if not exist %MYSQL%logs (
    md %MYSQL%logs 
)
if not exist %MYSQL%dumps (
    md %MYSQL%dumps
)
if not exist %MYSQL%data (
    md %MYSQL%data
    %MYSQL%bin\\mysqld.exe --initialize-insecure
)
%MYSQL%bin\\mysqld.exe
