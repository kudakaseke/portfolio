@echo off
setlocal

cd /d "%~dp0"
set PORT=5512

echo Starting Kudakwashe Kaseke Portfolio at http://localhost:%PORT%/
echo.
echo HTML files in this folder:
dir /b *.html
echo.

where py >nul 2>nul
if %errorlevel%==0 (
  py -m http.server %PORT%
  goto :eof
)

if exist "C:\Program Files\Python313\python.exe" (
  "C:\Program Files\Python313\python.exe" -m http.server %PORT%
  goto :eof
)

echo Python was not found. Install Python or add it to PATH, then run again.
pause
