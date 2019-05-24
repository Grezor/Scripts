#!/bin/bash
####################################
#                     Backup script.                        #
####################################


#Vérifie si le fichier existe ou non.
[ -f "C:/Users/gduplessi/Desktop/script_bash/sauvegarde.bash" ] && echo "Le fichier existe" || echo "Le fichier n'existe pas"
SLEEP 1
echo "étape 1 :---------------------- sauvegarde ----------------------";



# Backup the files using tar.
#tar -czf sauvegarde_${day}.zip $backup_files

cp -fra C:/Users/gduplessi/Desktop/script_bash/ >> C:/Users/gduplessi/Desktop/script_bash/sauvegarde

TIME=`date +%d-%m-%y-%H-%M`                      
FILENAME=sauvegarde-$TIME.tar  
SRCDIR=Users/gduplessi/Desktop/script_bash                  
DESDIR=sauvegarde/                          
#tar -cvpzf $DESDIR/$FILENAME $SRCDIR
#zip -r tecmint_files.zip /script_bash


#tar -zcvf $DESDIR/$FILENAME . 
Users/gduplessi/Desktop/script_bash -f sauvegarde

# Print end status message.

echo "---------------------- terminer sauvegarde ----------------------"
date

