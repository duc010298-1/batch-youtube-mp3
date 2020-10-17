@echo off
goto start
:start
cls
echo ------------------------------------
echo -------Youtube Mp3 Downloader-------
echo ---------Author: duc010298----------
echo ------------------------------------
set /p url="Enter youtube url: "
set command=youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 --add-metadata --metadata-from-title "%%(artist)s - %%(title)s" --output "%USERPROFILE%\Downloads\%%(title)s.%%(ext)s" "%url%"
echo %command%
start cmd /c %command%
goto start