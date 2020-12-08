@echo off

require "lolcat/version"


IF EXIST "C:\Users\gduplessi\Desktop\Scripts" (
	color 0a
echo repertoire EXIST

echo ==========================
echo Nous somme le %date%
echo ==========================


rem ----------- COPIER UN REPERTOIRE  -------------------------------------------

rem xcopy C:\Users\gduplessi\Desktop\Scripts C:\Users\gduplessi\Desktop\Scripts\sauvegarde
xcopy "C:\Users\gduplessi\Desktop\Scripts" "C:\Users\gduplessi\Documents\sauvegarde" /e /i /c /h /y
echo  COPIE DES FICHIERS EN COURS

echo TERMINER


rem ----------- FIN COPIER UN REPERTOIRE  -------------------------------------------



		rem -------------------------------------------
		rem 				ZIP
		rem -------------------------------------------
		for /f "tokens=3,2,4 delims=/- " %%x in ("%date%") do set d=%%y%%x%%z
		set data=%d%
		GOTO
		Echo FICHIER EN COURS DE COMPRESSIONS
		GOTO
		"C:\Program Files\7-Zip\7z.exe" a -tzip "C:\Users\gduplessi\Documents\sauvegarde\sauvegarde%COMPUTERNAME%.zip" "C:\Users\gduplessi\Desktop\Scripts\"
		rem echo Fichier enregistre = %time% ==== 	%date%  ======= %COMPUTERNAME% ======= %USERNAME% >> C:\Users\gduplessi\Desktop\Scripts\rapport\backup.txt
		echo ====================================================
		echo ==== la sauvegarde a bien ete enregistre
		echo ====================================================



rem ----------- FIN ZIP -----------------------------------------



rem ----------- AFFICHE LISTE DES FICHIERS CREATE / DELETE  -------------------------------------------

rem attention, pour copier un repertoire, ne pas le mettre dans le meme repertoire que le .bat
rem xcopy "C:\Users\gduplessi\Desktop\Scripts" "C:\Users\gduplessi\Documents\sauvegarde" /e /i /c /h /y



rem for /f "tokens=3,*" %%a in ('dir C:\Users\gduplessi\Documents\sauvegarde\*.zip ^|find /i "file" ^|find "/2000 "') do move "%%b" " C:\Users\gduplessi\Documents\sauvegarde"







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
sleep 10
exit
rem ----------- / fin   -------------------------------------------

) ELSE (
	color 0c

	echo ce repertoire n existe pas

)








rem start "" cmd /c "echo Hello world!&echo(&pause"


pause
exit
