@echo off
set MYSQLSH=%MYSQLSH_USER_CONFIG_HOME%
set MYSQLSH=%MYSQLSH:\=\\%

echo { > %MYSQLSH_USER_CONFIG_HOME%\options.json
echo    "credentialStore.savePasswords": "never", >> %MYSQLSH_USER_CONFIG_HOME%\options.json
echo    "oci.configFile": "%MYSQLSH%\\.oci\\config", >> %MYSQLSH_USER_CONFIG_HOME%\options.json
echo    "sandboxDir": "%MYSQLSH%\\mysql-sandboxes", >> %MYSQLSH_USER_CONFIG_HOME%\options.json
echo    "ssh.configFile": "%MYSQLSH%\\.ssh\\config" >> %MYSQLSH_USER_CONFIG_HOME%\options.json
echo } >> %MYSQLSH_USER_CONFIG_HOME%\options.json
%MYSQLSH_USER_CONFIG_HOME%\bin\mysqlsh --log-file=%MYSQLSH_USER_CONFIG_HOME%\mysqlsh.log  %*
