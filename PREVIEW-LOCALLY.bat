@echo off
setlocal
cd /d "%~dp0site\static"

where py >nul 2>nul
if %errorlevel%==0 (
  start "Bukhari SEO Local Preview Server" cmd /k py -m http.server 8000
) else (
  where python >nul 2>nul
  if %errorlevel%==0 (
    start "Bukhari SEO Local Preview Server" cmd /k python -m http.server 8000
  ) else (
    echo Python was not found on this computer.
    echo Install Python from https://www.python.org/downloads/ and select "Add Python to PATH".
    pause
    exit /b 1
  )
)

timeout /t 2 /nobreak >nul
start "" "http://127.0.0.1:8000/"
echo.
echo Your local preview is opening in your browser.
echo Keep the server window open while checking the website.
echo Close the server window when you have finished.
endlocal
