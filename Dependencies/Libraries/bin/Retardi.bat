::Lexer build script

@echo off

set PATH_TO_COMPILER="C:\msys64\mingw64\bin\gcc.exe"
set PATH_TO_SOURCE="D:\GIT\MultiThreadLanguageProject\Dependencies\Libraries\bin\lex.yy.c"

@echo "Compiler: %PATH_TO_COMPILER%"
@echo .
@echo "Source: %PATH_TO_SOURCE%"

:: Uncomment this code and put the drive letter of the drive where your compiler is
:: If the compiler and source aren't on the same drive.
::C:

@echo "Calling gcc to compile the lexer.."
@echo .
%PATH_TO_COMPILER% -o lexer.exe %PATH_TO_SOURCE% -I.
::This is a blatant lie :)
@echo "Lexer successfully compiled!"