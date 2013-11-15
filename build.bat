@rem settings
set SOURCE=tilestream
set DEST=portable-%SOURCE%-v1
set NODEEXE="C:\Program Files (x86)\nodejs\node.exe"
set PATH="C:\Program Files (x86)\7-Zip";%PATH%
set URL=http://127.0.0.1:8888
@rem change into current directory
cd /d %~dp0

@rem cleanup
rd /q /s %DEST%
del %DEST%.zip

@rem build
mkdir .\%DEST%\
mkdir .\%DEST%\app
mkdir .\%DEST%\app\tiles
xcopy /q /i /s /exclude:excludes.txt %SOURCE% .\%DEST%\app\%SOURCE%
(
  echo @echo off
  echo echo Close this window to stop the server
  echo echo Starting up browser at %URL%
  echo start %URL%
  echo .\%SOURCE%\node.exe .\%SOURCE%\index.js --tiles=.\tiles
  echo pause
) > .\%DEST%\app\start-%SOURCE%.bat
copy vcredist_x86.exe .\%DEST%\app\
copy test.mbtiles .\%DEST%\app\tiles\
copy README.txt .\%DEST%\
xcopy /Y %NODEEXE% .\%DEST%\app\%SOURCE%\node.exe
7z a %DEST%.zip .\%DEST%\
pause

