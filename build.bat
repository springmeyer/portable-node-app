@rem settings
set DEST=tilemill-win-0.9.1
set SOURCE=tilemill

@rem cleanup
rd /q /s %DEST%
del %DEST%.zip

@rem build
mkdir .\%DEST%\
xcopy /i /s /exclude:excludes.txt %SOURCE% .\%DEST%\%SOURCE%
copy TileMill.exe .\%DEST%\
copy install_me_first.exe .\%DEST%\
copy README.txt .\%DEST%\
7z a %DEST%.zip .\%DEST%\
pause
