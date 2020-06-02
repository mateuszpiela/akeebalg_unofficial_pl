@echo off
REM Ten skrypt tworzy paczkę
REM Ścieżka do programu 7-Zipa
set SEVENZIPPATH=C:\"Program Files"\7-Zip
REM Ścieżka do katalogu pakietów
set PKGPATH=%~dp0\pkg_pl-PL_loginguard
REM Ścieżka do katalogu z katalogami spolszcenia
set DIRPATH=%~dp0
REM Ścieżka do całego archiwum
set OUTPATH=%~dp0\release

REM Stwórz archiwum zip z katalogów
for /D %%A IN ("pl-PL*") DO %SEVENZIPPATH%\7z.exe a -r %PKGPATH%\%%A.zip "%DIRPATH%%%A\*"

REM Stwórz archiwum pakietu
mkdir %OUTPATH%
for /D %%A IN ("pkg*") DO %SEVENZIPPATH%\7z.exe a -r %OUTPATH%\%%A.zip "%PKGPATH%\*"
