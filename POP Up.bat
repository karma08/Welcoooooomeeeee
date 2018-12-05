@echo off 
title= ---- Commande pop up ---- 
%homedrive% 
cd\ 
cd windows\system32 
color 0C 
cls 
echo  ****************************************************** 
echo  ********* TU VA AVOIR DES POP UP ********************* 
echo  ****************************************************** 
echo  *************** Par Karma ****************************
echo  ****************************************************** 
:début 
echo 1 : POP UP Mario 
echo 2 : POP UP Luigi 
echo 3 : POP UP Peach 
echo 4 : Rien faire. 
set /p choix=Quel genre de personnage veux-tu ? : 
( 
if not %choix%=='' set choix=%choix:~0,1% 
if %choix%==1 goto close_session 
if %choix%==2 goto shutdown 
if %choix%==3 goto shut_&_Restart 
if %choix%==4 goto end 
) 
echo %choix% n'est pas bon ! 
goto début 
:close_session 
echo Vous avez choisi Mario 
shutdown -l -f -t 0 
goto end 
:shutdown 
echo Vous avez choisi Luigi
shutdown -s -f -t 0 
goto end 
:shut_&_Restart 
echo Vous avez choisi Peach 
shutdown -r -f -t 0 
goto end 
:end