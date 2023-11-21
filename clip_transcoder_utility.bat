@echo off
setlocal enabledelayedexpansion

set "input_folder=C:\path\to\your\input\folder"
set "output_folder=C:\path\to\your\output\folder"
set "ffmpeg_path=C:\path\to\ffmpeg\ffmpeg.exe"
set "codec_choice="

if not exist "%output_folder%" mkdir "%output_folder%"

:choose_codec
set /p codec_choice="Enter '1' for MPEG-2 or '2' for HAP encoding: "
if "%codec_choice%" neq "1" if "%codec_choice%" neq "2" goto choose_codec

for %%i in ("%input_folder%\*.*") do (
    set "input_file=%%i"
    set "ext=%%~xi"
    set "output_file=!output_folder!\%%~ni"

    if "%codec_choice%" equ "1" (
        set "output_file=!output_file!.mpg"
        "%ffmpeg_path%" -i "!input_file!" -c:v mpeg2video -b:v 8000k -c:a mp2 -b:a 192k "!output_file!"
    ) else (
        set "output_file=!output_file!.mov"  REM Change to the appropriate extension for HAP encoding
        "%ffmpeg_path%" -i "!input_file!" -c:v hap -format hap_q -b:v 8000k -c:a pcm_s16le "!output_file!"
    )
)

echo Conversion complete.
pause

