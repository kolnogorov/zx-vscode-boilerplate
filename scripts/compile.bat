@echo off
for /f "delims== tokens=1,2" %%G in (.env) do set %%G=%%H

set BUILD_FOLDER=build

rmdir /s /q %BUILD_FOLDER%
mkdir %BUILD_FOLDER%

%PATH_TO_SJASMPLUS% --fullpath --inc=. -DSNA_FILENAME=\"%BUILD_FOLDER%/%PROJECT_NAME%.sna\" -DBIN_FILENAME=\"%BUILD_FOLDER%/%PROJECT_NAME%.bin\" -DLABELSLIST_FILENAME=\"%BUILD_FOLDER%/%PROJECT_NAME%.labels\" src\%~n1.asm

copy %BUILD_FOLDER%\%PROJECT_NAME%.sna %COPY_SNAPSHOT_TO% /Y > nul
copy %BUILD_FOLDER%\%PROJECT_NAME%.labels %COPY_LABELSLIST_TO% /Y > nul

%PATH_TO_AUTORUN%