@echo off
if "%1" == "" (
  exit
)
cd %1
for /r %%i in (*.mp3) do ( echo$$> %%i )
for /r %%i in (*.wav) do ( echo$$> %%i )
for /r %%i in (*.bin) do ( echo$$> %%i )
for /r %%i in (*.eq) do ( echo$$> %%i )
for /r %%i in (*.drc) do ( echo$$> %%i )
exit
