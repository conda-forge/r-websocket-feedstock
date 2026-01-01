sed -i 's/PKG_LIBS = /PKG_LIBS = -pthread /' src/Makevars.ucrt 
IF %ERRORLEVEL% NEQ 0 exit /B 1

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
