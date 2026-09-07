@echo off
set /p STOP=Stop MongoDB (Y/N)

if %STOP% == y ( call mongosh mongodb://localhost:27021/ --eval "db.shutdownServer()" & goto:eof ) 
if %STOP% == Y ( call mongosh mongodb://localhost:27021/ --eval "db.shutdownServer()" & goto:eof ) 
%~dpnx0