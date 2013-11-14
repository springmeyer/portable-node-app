set DEST=tilemill-win-0.9.1
set SOURCE=tilemill
mkdir %DEST%
rd /q /s %DEST%
xcopy /i /s /exclude:excludes.txt %SOURCE% .\%DEST%\%SOURCE%
copy TileMill.exe .\%DEST%\
copy install_me_first.exe .\%DEST%\
copy README.txt .\%DEST%\
pause
