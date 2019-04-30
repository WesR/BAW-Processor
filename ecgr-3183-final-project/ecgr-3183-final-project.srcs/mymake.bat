
::forfiles [/p <Path>] [/m <SearchMask>] [/s] [/c "<Command>"] [/d [{+|-}][{<Date>|<Days>}]]

::forfiles /p %CD%\sources_1\new /m *.vhd /s /c "cmd /c echo @relpath @fname"

::forfiles /p %CD%\sources_1\new *.vhd /s /c "cmd /c (ECHO %CD%\sources_1\new@relpath,@fname)>>%CD%\source_list.txt"

for /f "tokens=1,2 delims=," %%a in (source_list.txt) do call smake.bat %%a %%b
pause