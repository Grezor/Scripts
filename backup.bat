@echo off

rem cls permet d'effacer l'affichage 
If exist "C:\Users\gduplessi\Desktop\script_bash\" (
    color 0a
    echo le REPERTOIRE existe 
    	rem copie le repertoire : source destination 
  		xcopy C:\Users\gduplessi\Desktop\script_bash C:\Users\gduplessi\Desktop\script_bash\sauvegarde 

set zip ="C:\7za.exe"

set filename="%date%.backup.zip"

set pathtobackup="C:\Users\gduplessi\Desktop\script_bash\sauvegarde"



rem Verification si la personne a internet
pause > null
echo checking internet connection
Ping www.google.nl -n 1 -w 1000
if errorlevel 1 (set internet=Not connected to internet)
if errorlevel 0 (set internet=Connected to internet)

pause > null

) else (
    color 0c
    echo ERREUR REPERTOIRE
    echo Veuillez prevenir le service informatique
  	pause > null

)

pause > null