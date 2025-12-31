sed -i 's/PKG_LIBS = /PKG_LIBS = -lpthread ' src/Makevars.ucrt

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
