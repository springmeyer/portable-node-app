@rem settings
set DEST=tilemill-win-0.9.1
set SOURCE=tilemill
set NODEEXE="C:\Program Files (x86)\nodejs\node.exe"
set PATH="C:\Program Files (x86)\7-Zip";%PATH%
set URL="http://127.0.0.1:8888"
@rem change into current directory
cd /d %~dp0

@rem cleanup
rd /q /s %DEST%
del %DEST%.zip

@rem build
mkdir .\%DEST%\
xcopy /q /i /s /exclude:excludes.txt %SOURCE% .\%DEST%\%SOURCE%
(
  echo @echo off
  echo echo Close this window to stop the server
  echo echo Starting up browser at %URL%
  echo start %URL%
  echo .\%SOURCE%\node.exe .\%SOURCE%\index.js
  echo pause
) > .\%DEST%\start.bat
copy install_me_first.exe .\%DEST%\
copy README.txt .\%DEST%\
xcopy /Y %NODEEXE% .\%DEST%\%SOURCE%\node.exe
7z a %DEST%.zip .\%DEST%\
pause

