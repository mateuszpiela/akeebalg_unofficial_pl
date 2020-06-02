@echo off
REM Ten skrypt czyści zipy oraz tworzy na nowo paczkę
REM Ścieżka do katalogu pakietów
set PKGPATH=%~dp0\pkg_pl-PL_loginguard
REM Ścieżka do całego archiwum
set OUTPATH=%~dp0\release

rmdir /Q /S %OUTPATH%
del /Q /F %PKGPATH%\*.zip
call makepkg.bat