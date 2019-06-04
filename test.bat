@echo off
IF EXIST "C:\Users\gduplessi\Desktop\Scripts" (
	color 0a
echo repertoire EXIST

echo ==========================
echo %date%
echo ==========================

 
rem ----------- COPIER UN REPERTOIRE  -------------------------------------------

rem xcopy C:\Users\gduplessi\Desktop\Scripts C:\Users\gduplessi\Desktop\Scripts\sauvegarde 
rem echo  COPIE DES FICHIERS EN COURS
rem echo Fichier enregistre = %time% ==== 	%date%  ======= %COMPUTERNAME% ======= %USERNAME% >> log.txt
rem echo TERMINER 
rem pause

rem ----------- FIN COPIER UN REPERTOIRE  -------------------------------------------



rem ----------- ZIP  -------------------------------------------

rem  for /f "tokens=3,2,4 delims=/- " %%x in ("%date%") do set d=%%y%%x%%z
rem  set data=%d%
rem  GOTO 
rem  Echo FICHIER EN COURS DE COMPRESSIONS
rem  GOTO 
rem "C:\Program Files\7-Zip\7z.exe" a -tzip "C:\Users\gduplessi\Desktop\Scripts\sauvegarde\sauvegarde%COMPUTERNAME%.zip" "C:\Users\gduplessi\Desktop\Scripts\"
rem echo Fichier enregistre = %time% ==== 	%date%  ======= %COMPUTERNAME% ======= %USERNAME% >> C:\Users\gduplessi\Desktop\Scripts\rapport\backup.txt
rem echo ====================================================
rem echo ==== la sauvegarde a bien ete enregistre 
rem echo ====================================================

rem pause

rem ----------- FIN ZIP -------------------------------------------

rem ----------- AFFICHE LISTE DES FICHIERS CREATE / DELETE  -------------------------------------------

rem dir /b /a-d C:\Users\gduplessi\Desktop\Scripts\
echo ====================================================
echo Fichier modifier
echo ====================================================

rem FC diff.txt diff2.txt


 xcopy /e "C:\Users\gduplessi\Desktop\Scripts\*.*" C:\Users\gduplessi\Desktop\Scripts\sauvegarde\



 rem robocopy C:\Users\gduplessi\Desktop\Scripts C:\Users\gduplessi\Desktop\Scripts\sauvegarde /E /S /XO


REM /r /Y /I /v /D /q /f /E

pause

rem -----------  / affichage -------------------------------------------



rem ----------- AFFICHE les fichiers sur le serveur  ----------------
echo ====================================================
echo Fichier sauvegarder sur le serveur
echo ====================================================

	dir /b /O C:\Users\gduplessi\Desktop\Scripts\sauvegarde

echo ====================================================
echo Fichier sauvegarder sur le serveur
echo ====================================================


rem ----------- / fin   -------------------------------------------

) ELSE (
color 0c
echo ce repertoire n existe pas

)








rem start "" cmd /c "echo Hello world!&echo(&pause"


pause
exit