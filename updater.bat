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

if "%version%"=="%update_version%" set code=1 && exit /b
if "%version%"=="1.9.1" goto downloadall

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
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/refs/heads/1.10.0/BioFuse.bat?nocache=%random%
echo Patching BioFuse.bat
move /Y temp_files\BioFuse.bat BioFuse.bat
curl -L -o temp_files\EhealthCheck.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/EhealthCheck.bat?nocache=%random%
echo Patching ehealthCheck.bat...
move /Y temp_files\EhealthCheck.bat bin\battle\EhealthCheck.bat

curl -L -o temp_files\checkVar.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/checkVar.bat?nocache=%random%
echo Patching checkVar.bat...
move /Y temp_files\checkVar.bat bin\battle\checkVar.bat

curl -L -o temp_files\drawBattle.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/drawBattle.bat?nocache=%random%
echo Patching drawBattle.bat...
move /Y temp_files\drawBattle.bat bin\battle\drawBattle.bat

curl -L -o temp_files\getATK.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getATK.bat?nocache=%random%
echo Patching getATK.bat...
move /Y temp_files\getATK.bat bin\battle\getATK.bat

curl -L -o temp_files\getBlock.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getBlock.bat?nocache=%random%
echo Patching getBlock.bat...
move /Y temp_files\getBlock.bat bin\battle\getBlock.bat

curl -L -o temp_files\getCrit.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getCrit.bat?nocache=%random%
echo Patching getCrit.bat...
move /Y temp_files\getCrit.bat bin\battle\getCrit.bat

curl -L -o temp_files\getCritDMG.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getCritDMG.bat?nocache=%random%
echo Patching getCritDMG.bat...
move /Y temp_files\getCritDMG.bat bin\battle\getCritDMG.bat

curl -L -o temp_files\getEATK.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getEATK.bat?nocache=%random%
echo Patching getEATK.bat...
move /Y temp_files\getEATK.bat bin\battle\getEATK.bat

curl -L -o temp_files\getEmgk.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getEmgk.bat?nocache=%random%
echo Patching getEmgk.bat...
move /Y temp_files\getEmgk.bat bin\battle\getEmgk.bat

curl -L -o temp_files\getFire.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getFire.bat?nocache=%random%
echo Patching getFire.bat...
move /Y temp_files\getFire.bat bin\battle\getFire.bat

curl -L -o temp_files\getHPdrain.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getHPdrain.bat?nocache=%random%
echo Patching getHPdrain.bat...
move /Y temp_files\getHPdrain.bat bin\battle\getHPdrain.bat

curl -L -o temp_files\getScaling.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getScaling.bat?nocache=%random%
echo Patching getScaling.bat...
move /Y temp_files\getScaling.bat bin\battle\getScaling.bat

curl -L -o temp_files\healthCheck.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/healthCheck.bat?nocache=%random%
echo Patching healthCheck.bat...
move /Y temp_files\healthCheck.bat bin\battle\healthCheck.bat

curl -L -o temp_files\healthRandom.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/healthRandom.bat?nocache=%random%
echo Patching healthRandom.bat...
move /Y temp_files\healthRandom.bat bin\battle\healthRandom.bat

curl -L -o temp_files\deepforest.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/b_var/deepforest.bat?nocache=%random%
echo Patching deepforest.bat...
move /Y temp_files\deepforest.bat bin\battle\b_var\deepforest.bat

curl -L -o temp_files\flatlands.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/b_var/flatlands.bat?nocache=%random%
echo Patching flatlands.bat...
move /Y temp_files\flatlands.bat bin\battle\b_var\flatlands.bat

curl -L -o temp_files\forest.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/b_var/forest.bat?nocache=%random%
echo Patching forest.bat...
move /Y temp_files\forest.bat bin\battle\b_var\forest.bat

curl -L -o temp_files\junkyard.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/b_var/junkyard.bat?nocache=%random%
echo Patching junkyard.bat...
move /Y temp_files\junkyard.bat bin\battle\b_var\junkyard.bat

curl -L -o temp_files\outside.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/b_var/outside.bat?nocache=%random%
echo Patching outside.bat...
move /Y temp_files\outside.bat bin\battle\b_var\outside.bat

curl -L -o temp_files\president.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/b_var/president.bat?nocache=%random%
echo Patching president.bat...
move /Y temp_files\president.bat bin\battle\b_var\president.bat

curl -L -o temp_files\trainyard.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/b_var/trainyard.bat?nocache=%random%
echo Patching trainyard.bat...
move /Y temp_files\trainyard.bat bin\battle\b_var\trainyard.bat

curl -L -o temp_files\checkArray.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/item/checkArray.bat?nocache=%random%
echo Patching checkArray.bat...
move /Y temp_files\checkArray.bat bin\item\checkArray.bat

curl -L -o temp_files\equipMsg.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/item/equipMsg.bat?nocache=%random%
echo Patching equipMsg.bat...
move /Y temp_files\equipMsg.bat bin\item\equipMsg.bat

curl -L -o temp_files\shopKeep.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/item/shopKeep.bat?nocache=%random%
echo Patching shopKeep.bat...
move /Y temp_files\shopKeep.bat bin\item\shopKeep.bat

if not exist temp_files\BioFuse.bat set code=0404 && exit /b

:: This line assumes that the main file still has enough execution stability to keep running the game.
set code=0
exit /b

:downloadall
if exist temp_files rmdir /S /Q temp_files
mkdir temp_files

echo Downloading 1.10.0 files, this may take a second.

ping localhost -n 5 >nul

curl -L -o temp_files\BioFuse.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/refs/heads/1.10.0/BioFuse.bat?nocache=%random%
echo Patching BioFuse.bat
move /Y temp_files\BioFuse.bat BioFuse.bat
curl -L -o temp_files\EhealthCheck.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/EhealthCheck.bat?nocache=%random%
echo Patching ehealthCheck.bat...
move /Y temp_files\EhealthCheck.bat bin\battle\EhealthCheck.bat

curl -L -o temp_files\checkVar.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/checkVar.bat?nocache=%random%
echo Patching checkVar.bat...
move /Y temp_files\checkVar.bat bin\battle\checkVar.bat

curl -L -o temp_files\drawBattle.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/drawBattle.bat?nocache=%random%
echo Patching drawBattle.bat...
move /Y temp_files\drawBattle.bat bin\battle\drawBattle.bat

curl -L -o temp_files\getATK.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getATK.bat?nocache=%random%
echo Patching getATK.bat...
move /Y temp_files\getATK.bat bin\battle\getATK.bat

curl -L -o temp_files\getBlock.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getBlock.bat?nocache=%random%
echo Patching getBlock.bat...
move /Y temp_files\getBlock.bat bin\battle\getBlock.bat

curl -L -o temp_files\getCrit.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getCrit.bat?nocache=%random%
echo Patching getCrit.bat...
move /Y temp_files\getCrit.bat bin\battle\getCrit.bat

curl -L -o temp_files\getCritDMG.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getCritDMG.bat?nocache=%random%
echo Patching getCritDMG.bat...
move /Y temp_files\getCritDMG.bat bin\battle\getCritDMG.bat

curl -L -o temp_files\getEATK.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getEATK.bat?nocache=%random%
echo Patching getEATK.bat...
move /Y temp_files\getEATK.bat bin\battle\getEATK.bat

curl -L -o temp_files\getEmgk.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getEmgk.bat?nocache=%random%
echo Patching getEmgk.bat...
move /Y temp_files\getEmgk.bat bin\battle\getEmgk.bat

curl -L -o temp_files\getFire.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getFire.bat?nocache=%random%
echo Patching getFire.bat...
move /Y temp_files\getFire.bat bin\battle\getFire.bat

curl -L -o temp_files\getHPdrain.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getHPdrain.bat?nocache=%random%
echo Patching getHPdrain.bat...
move /Y temp_files\getHPdrain.bat bin\battle\getHPdrain.bat

curl -L -o temp_files\getScaling.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/getScaling.bat?nocache=%random%
echo Patching getScaling.bat...
move /Y temp_files\getScaling.bat bin\battle\getScaling.bat

curl -L -o temp_files\healthCheck.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/healthCheck.bat?nocache=%random%
echo Patching healthCheck.bat...
move /Y temp_files\healthCheck.bat bin\battle\healthCheck.bat

curl -L -o temp_files\healthRandom.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/healthRandom.bat?nocache=%random%
echo Patching healthRandom.bat...
move /Y temp_files\healthRandom.bat bin\battle\healthRandom.bat

curl -L -o temp_files\deepforest.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/b_var/deepforest.bat?nocache=%random%
echo Patching deepforest.bat...
move /Y temp_files\deepforest.bat bin\battle\b_var\deepforest.bat

curl -L -o temp_files\flatlands.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/b_var/flatlands.bat?nocache=%random%
echo Patching flatlands.bat...
move /Y temp_files\flatlands.bat bin\battle\b_var\flatlands.bat

curl -L -o temp_files\forest.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/b_var/forest.bat?nocache=%random%
echo Patching forest.bat...
move /Y temp_files\forest.bat bin\battle\b_var\forest.bat

curl -L -o temp_files\junkyard.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/b_var/junkyard.bat?nocache=%random%
echo Patching junkyard.bat...
move /Y temp_files\junkyard.bat bin\battle\b_var\junkyard.bat

curl -L -o temp_files\outside.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/b_var/outside.bat?nocache=%random%
echo Patching outside.bat...
move /Y temp_files\outside.bat bin\battle\b_var\outside.bat

curl -L -o temp_files\president.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/b_var/president.bat?nocache=%random%
echo Patching president.bat...
move /Y temp_files\president.bat bin\battle\b_var\president.bat

curl -L -o temp_files\trainyard.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/battle/b_var/trainyard.bat?nocache=%random%
echo Patching trainyard.bat...
move /Y temp_files\trainyard.bat bin\battle\b_var\trainyard.bat

curl -L -o temp_files\checkArray.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/item/checkArray.bat?nocache=%random%
echo Patching checkArray.bat...
move /Y temp_files\checkArray.bat bin\item\checkArray.bat

curl -L -o temp_files\equipMsg.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/item/equipMsg.bat?nocache=%random%
echo Patching equipMsg.bat...
move /Y temp_files\equipMsg.bat bin\item\equipMsg.bat

curl -L -o temp_files\shopKeep.bat ^
https://raw.githubusercontent.com/MeshyDev/BioFuse_Repo/1.10.0/bin/item/shopKeep.bat?nocache=%random%
echo Patching shopKeep.bat...
move /Y temp_files\shopKeep.bat bin\item\shopKeep.bat
ping localhost -n 2 >nul
echo All files downloaded and patched successfully...
echo Due to how large the 1.10.0 update is, the updater will close
echo and will relaunch the game. Good luck!
pause 
start BioFuse.bat
exit