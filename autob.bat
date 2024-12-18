@echo off
:: Check for administrative privileges
>nul 2>&1 "%SystemRoot%\system32\cacls.exe" "%SystemRoot%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo This script requires administrative privileges.
    echo Please run as Administrator.
    pause
    exit /b
)

:: Backup the hosts file if it doesn't already exist
if not exist "%SystemRoot%\System32\drivers\etc\hosts.bak" (
    copy "%SystemRoot%\System32\drivers\etc\hosts" "%SystemRoot%\System32\drivers\etc\hosts.bak"
)

:: Block the websites by modifying the hosts file
echo. >> "%SystemRoot%\System32\drivers\etc\hosts"
echo # Block anime websites >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 www.crunchyroll.com >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 hianime.to >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 9animetv.to >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 animeheaven.ru >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 ww19.gogoanimes.fi >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 animixplay.to >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 zoro.to >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 4anime.gg >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 kissanime.com.ru >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 www.animefreak.tv >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 masterani.one >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 simplyaweeb.to >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 animedao.to >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 chia-anime.su >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 www.soul-anime.us >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 www1.animeultima.to >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 kayoanime.com >> "%SystemRoot%\System32\drivers\etc\hosts"
echo 127.0.0.1 hindidubbed4u >> "%SystemRoot%\System32\drivers\etc\hosts"

:: Flush DNS cache
ipconfig /flushdns

echo Websites have been blocked.

:: Add this script to the startup
set "batFilePath=%~f0"
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "BlockAnimeSites" /t REG_SZ /d "%batFilePath%" /f

echo This script is set to autorun at startup.
pause

:: Exit the script
exit
