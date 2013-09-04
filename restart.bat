REM Set the process name as process_name below
set process_name=chrome.exe
REM Set timout value in seconds
set timeout_val=10
@ECHO OFF
:start
tasklist /FI "IMAGENAME eq %process_name%" 2>NUL | find /I /N "%process_name%">NUL
if "%ERRORLEVEL%" NEQ "0" cmd /c start %process_name%
timeout %timeout_val%
goto start



