@echo off

rem cls permet d'effacer l'affichage 
If exist "C:\Users\gduplessi\Desktop\script_bash\" (
    color 0a
    echo le REPERTOIRE existe  


rem ----------- COPIER UN REPERTOIRE VERS UNE DESTINATION ----------------------
rem copie le repertoire : source destination 
rem xcopy C:\Users\gduplessi\Desktop\script_bash C:\Users\gduplessi\Desktop\script_bash\sauvegarde 
rem COPIE DES FICHIERS EN COURS




rem --------------- ZIPER UN REPERTOIRE VERS UNE DESTINATION ------------------------------------------
for /f "tokens=3,2,4 delims=/- " %%x in ("%date%") do set d=%%y%%x%%z
set data=%d%
GOTO 
Echo FICHIER EN COURS DE COMPRESSIONS
GOTO 
"C:\Program Files\7-Zip\7z.exe" a -tzip "C:\Users\gduplessi\Desktop\script_bash\sauvegarde\sauvegarde%d%.zip" "C:\Users\gduplessi\Desktop\script_bash\"
rem -------------------------	FIN ZIP -------------------------------------------





echo LA SAUVEGARDE A BIEN ETAIS ENREGISTRER
rem Verification si la personne a internet
rem pause > null
rem echo checking internet connection
rem Ping www.google.nl -n 1 -w 1000
rem if errorlevel 1 (set internet=Not connected to internet)
rem if errorlevel 0 (set internet=Connected to internet)

pause

) else (
    color 0c
    echo ERREUR REPERTOIRE
    echo Veuillez prevenir le service informatique
  	pause 
  	exit
)

pause