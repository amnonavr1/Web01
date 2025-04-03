@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist D:\WordPress website\xampp\hypersonic\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\server\hsql-sample-database\scripts\ctl.bat START)
if exist D:\WordPress website\xampp\ingres\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\ingres\scripts\ctl.bat START)
if exist D:\WordPress website\xampp\mysql\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\mysql\scripts\ctl.bat START)
if exist D:\WordPress website\xampp\postgresql\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\postgresql\scripts\ctl.bat START)
if exist D:\WordPress website\xampp\apache\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\apache\scripts\ctl.bat START)
if exist D:\WordPress website\xampp\openoffice\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\openoffice\scripts\ctl.bat START)
if exist D:\WordPress website\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\apache-tomcat\scripts\ctl.bat START)
if exist D:\WordPress website\xampp\resin\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\resin\scripts\ctl.bat START)
if exist D:\WordPress website\xampp\jetty\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\jetty\scripts\ctl.bat START)
if exist D:\WordPress website\xampp\subversion\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist D:\WordPress website\xampp\lucene\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\lucene\scripts\ctl.bat START)
if exist D:\WordPress website\xampp\third_application\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist D:\WordPress website\xampp\third_application\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\third_application\scripts\ctl.bat STOP)
if exist D:\WordPress website\xampp\lucene\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist D:\WordPress website\xampp\subversion\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\subversion\scripts\ctl.bat STOP)
if exist D:\WordPress website\xampp\jetty\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\jetty\scripts\ctl.bat STOP)
if exist D:\WordPress website\xampp\hypersonic\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist D:\WordPress website\xampp\resin\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\resin\scripts\ctl.bat STOP)
if exist D:\WordPress website\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT D:\WordPress website\xampp\apache-tomcat\scripts\ctl.bat STOP)
if exist D:\WordPress website\xampp\openoffice\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\openoffice\scripts\ctl.bat STOP)
if exist D:\WordPress website\xampp\apache\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\apache\scripts\ctl.bat STOP)
if exist D:\WordPress website\xampp\ingres\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\ingres\scripts\ctl.bat STOP)
if exist D:\WordPress website\xampp\mysql\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\mysql\scripts\ctl.bat STOP)
if exist D:\WordPress website\xampp\postgresql\scripts\ctl.bat (start /MIN /B D:\WordPress website\xampp\postgresql\scripts\ctl.bat STOP)

:end

