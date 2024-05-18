@echo off
setlocal

set SCRIPTS=SCRIPTS
set MAPS=maps
set DEST=C:\Users\brad\AppData\Local\Plutonium\storage\iw5
set OUTPUT=z_bots.iwd

:build
echo Building

cd /d ci
if exist ".\source\" rmdir /s /q .\source\
cmd /c pregsc.bat
cd /d source
winrar a -afzip -r -o+ %OUTPUT% %MAPS% %SCRIPTS%

echo Copy %OUTPUT% to %DEST%
copy %OUTPUT% %DEST% /y

cd /d ..
if exist ".\source\" rmdir /s /q .\source\

echo Done
