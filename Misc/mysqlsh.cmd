@echo off
echo { > %MYSQLSH_USER_CONFIG_HOME%\options.json
echo    "credentialStore.savePasswords": "never", >> %MYSQLSH_USER_CONFIG_HOME%\options.json
echo    "oci.configFile": "%MYSQLSH_USER_CONFIG_HOME:\=\\%\\.oci\\config", >> %MYSQLSH_USER_CONFIG_HOME%\options.json
echo    "sandboxDir": "%MYSQLSH_USER_CONFIG_HOME:\=\\%\\mysql-sandboxes", >> %MYSQLSH_USER_CONFIG_HOME%\options.json
echo    "ssh.configFile": "%MYSQLSH_USER_CONFIG_HOME:\=\\%\\.ssh\\config" >> %MYSQLSH_USER_CONFIG_HOME%\options.json
echo } >> %MYSQLSH_USER_CONFIG_HOME%\options.json
%MYSQLSH_USER_CONFIG_HOME%\bin\mysqlsh --log-file=%MYSQLSH_USER_CONFIG_HOME%\mysqlsh.log  %*
