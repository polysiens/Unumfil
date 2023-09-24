::Lexer build script

@echo off

set PATH_TO_SOURCE="E:\Work\Personal\MultiThreadLanguageProject\Dependencies\Libraries\bin\lex.yy.c"

@echo "Source: %PATH_TO_SOURCE%"
@echo .

:: Uncomment this code and put the drive letter of the drive where your compiler is
:: If the compiler and source aren't on the same drive.
::C:

@echo "Calling gcc to compile the lexer.."
@echo .
gcc -o lexer.exe %PATH_TO_SOURCE% -I.
::This is a blatant lie :)
@echo "Lexer successfully compiled!"
pause