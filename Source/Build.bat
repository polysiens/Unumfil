::Code build script

@echo off
setlocal enabledelayedexpansion

set folderPath="%~dp0/src"
set outputFolder="%~dp0/Build_Output"
set "outputExecutable=output.exe"

cd "%folderPath%"

rem Initialize a variable to store object files
set "objectFiles="

for %%f in (*.c) do (
    echo Compiling %%f...
    gcc -c "%%f" -o "%outputFolder%\%%~nf.o"
    set "objectFiles=!objectFiles! "%outputFolder%\%%~nf.o""
)

rem Link all object files to create the executable
echo Linking object files...
gcc -o "%outputFolder%\%outputExecutable%" %objectFiles%

echo Compilation and linking completed.

pause