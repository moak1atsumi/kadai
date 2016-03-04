setlocal enabledelayedexpansion
set output=
for /f "delims=" %%a in ('git diff --name-only %1^^') do ( set output=!output! "%%a" )
git archive -o update.zip HEAD %output%
endlocal