@echo off

del /s /f /q "%windir%\aria2c.exe"
del /s /f /q "%windir%\ffmpeg.exe"
del /s /f /q "%windir%\ffprobe.exe"
del /s /f /q "%windir%\yt-dlp.exe"
del /s /f /q "%windir%\DownloadFromYoutube.ico"
del /s /f /q "%windir%\DownloadFromYoutube.cmd"

reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Directory\background\shell\DownloadFromYoutube" /f