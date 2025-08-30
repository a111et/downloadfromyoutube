@echo off
set "curpath=%~dp0"

copy /Y "%curpath%\yt-dlp.exe" "%windir%\yt-dlp.exe"
copy /Y "%curpath%\ffmpeg.exe" "%windir%\ffmpeg.exe"
copy /Y "%curpath%\ffprobe.exe" "%windir%\ffprobe.exe"
copy /Y "%curpath%\DownloadFromYoutube.ico" "%windir%\DownloadFromYoutube.ico"
copy /Y "%curpath%\DownloadFromYoutube.cmd" "%windir%\DownloadFromYoutube.cmd"

reg import "%curpath%\DownloadFromYoutube.reg"