@ECHO OFF
ECHO CONNECTION LOGGER HAS STARTED
ECHO CONNECTION LOGGER HAS STARTED >> ping.log
systeminfo >> ping.log

:LOOPSTART
ECHO ============================================== >> ping.log
ECHO TESTED AT %date% %time% >> ping.log
ping 172.16.202.200 -4 -n 10 >> ping.log
timeout /t 5 /nobreak > NUL
GOTO LOOPSTART