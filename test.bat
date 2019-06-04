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



rem -------------------------------------------
rem 				ZIP  
rem -------------------------------------------
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

rem ----------- FIN ZIP -----------------------------------------



rem ----------- AFFICHE LISTE DES FICHIERS CREATE / DELETE  -------------------------------------------

rem dir /b /a-d C:\Users\gduplessi\Desktop\Scripts\
echo ====================================================
echo Fichier modifier
echo ====================================================

rem FC diff.txt diff2.txt
REM /r /Y /I /v /D /q /f /E



rem attention, pour copier un repertoire, ne pas le mettre dans le meme repertoire que le .bat

rem xcopy "C:\Users\gduplessi\Desktop\Scripts" "C:\Users\gduplessi\Documents\sauvegarde" /e /i /c /h /y





rem >>>>>>>>>>>>>>> sauvegarde : 04/06/2019
for /f "tokens=1-5 delims=/ " %%d in ("%date%") do echo Nous somme le %%d_%%e_%%f
set tm=%time%
set hh=!tm:~0,2!
if !hh! lss 06 (
echo less    
) else (
echo more
)
pause

























rem ----------- AFFICHE les fichiers sur le serveur  ----------------
echo ====================================================
echo Fichier sauvegarder sur le serveur
echo ====================================================

	rem dir /b /O C:\Users\gduplessi\Desktop\Scripts\sauvegarde
	dir /b /O C:\Users\gduplessi\Documents\sauvegarde

echo ====================================================
echo TERMINER
echo ====================================================

pause
rem ----------- / fin   -------------------------------------------

) ELSE (
color 0c
echo ce repertoire n existe pas

)








rem start "" cmd /c "echo Hello world!&echo(&pause"


pause
exit