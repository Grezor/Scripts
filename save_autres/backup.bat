@echo off
rem cls permet d'effacer l'affichage 

If exist "D:\Github\Scripts" (
    color 0a
    echo le REPERTOIRE existe  

rem ----------- COPIER UN REPERTOIRE  -------------------------------------------
: copie le repertoire : source destination 
xcopy D:\Github\Scripts D:\Github\Scripts\sauvegarde 
echo  COPIE DES FICHIERS EN COURS
rem -------------------------	FIN XCOPIE -------------------------------------------
pause
rem --------------- ZIPER UN REPERTOIRE VERS UNE DESTINATION ------------------------------------------
rem for /f "tokens=3,2,4 delims=/- " %%x in ("%date%") do set d=%%y%%x%%z
rem set data=%d%
rem GOTO 
rem Echo FICHIER EN COURS DE COMPRESSIONS
rem GOTO 
rem "C:\Program Files\7-Zip\7z.exe" a -tzip "C:\Users\gduplessi\Desktop\script_bash\sauvegarde\sauvegarde%d%.zip" "C:\Users\gduplessi\Desktop\script_bash\"
 : -------------------------	FIN ZIP -------------------------------------------

rem ----- enregistre l'heure / date / nom du pc dans le fichier log
echo Fichier enregistre = %time% ==== 	%date%  ======= %COMPUTERNAME% ======= %USERNAME%>> log.txt

echo LA SAUVEGARDE A BIEN ETAIS ENREGISTRE

pause



rem --------------- SUPPRIMER FICHIER  ------------------------------------------
: SET MYFILE="C:\Users\gduplessi\Desktop\script_bash\sauvegarde\sauvegarde%d%.zip"
: IF EXIST %MYFILE% DEL /F %MYFILE%

: rem supprimme le fichier au bout après x jours 
: forfiles -p "C:\Users\gduplessi\Desktop\script_bash\" -s -m *.* -d <number of days> -c "cmd /c del @path"

: set chemin= »D:\Desktop\sauvegarde »
: set jours=1


: rem supprime et affiche les dossiers qui ont été supprimé

: ForFiles /P %chemin% /D -%jours% /C « CMD /C if @ISDIR==TRUE echo @FILE &RD /Q /S 
: @FILE »
rem --------------- / SUPPRIMER FICHIER  ------------------------------------------


pause



rem Verification si la personne a internet
rem pause > null
rem echo checking internet connection
rem Ping www.google.nl -n 1 -w 1000
rem if errorlevel 1 (set internet=Not connected to internet)
rem if errorlevel 0 (set internet=Connected to internet)


) else (
    color 0c
    echo ERREUR REPERTOIRE
    echo Veuillez prevenir le service informatique
  	
  	
)

pause