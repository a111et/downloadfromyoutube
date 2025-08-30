@echo off
@chcp 65001 > NUL
title Download From Youtube

set "params=--force-overwrites --quiet --progress"
set "params-aria2c=--force-overwrites --quiet --progress --downloader aria2c"
set "outpath=%cd%"
for /f "delims=" %%i in ('
 mshta "javascript:var x=clipboardData.getData('text');if(x) new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1).Write(x);close();"
') do set ClipboardData=%%i

if "%1"=="audio" goto audio
if "%1"=="audio-aria2c" goto audio-aria2c
if "%1"=="video" goto video
if "%1"=="video-aria2c" goto video-aria2c
echo Ссылка не указана
goto end

:video
title Скачиваем видео
echo Скачиваем видео по ссылке %ClipboardData%
yt-dlp -o "%outpath%\%%(title)s" --embed-metadata -f "bestvideo[ext=mp4][height<=1080]+bestaudio[ext=m4a]/best[ext=mkv]/best" %params% "%ClipboardData%"
goto end

:video-aria2c
title Скачиваем видео с помощью aria2c
echo Скачиваем видео по ссылке %ClipboardData%
yt-dlp -o "%outpath%\%%(title)s" --embed-metadata -f "bestvideo[ext=mp4][height<=1080]+bestaudio[ext=m4a]/best[ext=mkv]/best" %params-aria2c% "%ClipboardData%"
goto end

:audio
title Скачиваем аудио
echo Скачиваем аудио по ссылке %ClipboardData%
yt-dlp -o "%outpath%\%%(title)s.%%(ext)s" --extract-audio --audio-format m4a --postprocessor-args "ffmpeg:-b:a 320k" --embed-metadata --embed-thumbnail %params% "%ClipboardData%"
goto end

:audio-aria2c
title Скачиваем аудио с помощью aria2c
echo Скачиваем аудио по ссылке %ClipboardData%
yt-dlp -o "%outpath%\%%(title)s.%%(ext)s" --extract-audio --audio-format m4a --postprocessor-args "ffmpeg:-b:a 320k" --embed-metadata --embed-thumbnail %params-aria2c% "%ClipboardData%"
goto end

:end
