:: =========================================================
:: UPDATE VERSION
:: =========================================================

set update_version=1.10.0_5926
:: Updater version 1.0
:: =========================================================
:: VERSION CHECK
:: =========================================================

echo Current Version: %version%
echo Update Version : %update_version%
echo.

if %version%==%update_version% set code=1 && exit /b


echo Update required.
echo.
ping localhost -n 3 >nul
:: =========================================================
:: CREATE TEMP DOWNLOAD AREA
:: =========================================================

if exist temp_files rmdir /S /Q temp_files
mkdir temp_files

:: =========================================================
:: DOWNLOAD UPDATED FILES
:: =========================================================

echo Downloading updated files...

curl -L -o temp_files\BioFuse.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/refs/heads/1.10.0/BioFuse.bat


:: curl -L -o temp_files\combat.bat ^
:: https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/refs/heads/1.10.0/bin/

::curl -L -o temp_files\inventory.bat ^
::https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/main/bin/inventory.bat

:: =========================================================
:: VERIFY DOWNLOADS
:: =========================================================

if not exist temp_files\BioFuse.bat set code=0404 && exit /b


:: =========================================================
:: REPLACE FILES
:: =========================================================

echo Patching files...

move /Y temp_files\BioFuse.bat BioFuse.bat
:: move /Y temp_files\combat.bat bin\combat.bat
:: move /Y temp_files\inventory.bat bin\inventory.bat

:: =========================================================
:: OPTIONAL FULL BIN RESET
:: =========================================================

:: rmdir /S /Q bin
:: mkdir bin

:: =========================================================
:: CLEANUP
:: =========================================================
set code=0
exit /b


