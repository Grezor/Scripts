#!/bin/bash
####################################
#                     Backup script.                        #
####################################


#Vérifie si le fichier existe ou non.
[ -f "C:/Users/gduplessi/Desktop/script_bash/sauvegarde.bash" ] && echo -e "\e[95mLe fichier existe" || echo -e "\e[31mLe fichier n'existe pas"



echo -e "${Cyan}--------------------------------------------------------------------------------${NC}"
echo -e "${Cyan}------------------------   VERIFICATION   --------------------------------------${NC}"
echo -e "${Cyan}--------------------------------------------------------------------------------${NC}"


  date=$(date +"_%y-%m-%d")
  backup_path="/Users/gduplessi/Desktop/script_bash/"
  res1=$(date +%s.%N)
  
#### Couleurs
  White='\e[1;37m'
  Blue='\e[0;34m'
  Green='\e[0;32m'
  Cyan='\e[0;36m'
  Red='\e[0;31m'
  Purple='\e[0;35m'
  Yellow='\e[1;33m'
  Grey='\e[0;30m'
  NC='\e[39m'


###################################################
### UTILITAIRES et DIVERS
###################################################

script_timings(){

  res2=$(date +%s.%N)
  dt=$(echo "$res2 - $res1" | bc)
  dd=$(echo "$dt/86400" | bc)
  dt2=$(echo "$dt-86400*$dd" | bc)
  dh=$(echo "$dt2/3600" | bc)
  dt3=$(echo "$dt2-3600*$dh" | bc)
  dm=$(echo "$dt3/60" | bc)
  ds=$(echo "$dt3-60*$dm" | bc)

  printf "Temps écoulé: %02.4f s \n" $ds

}

script_start(){

  echo -e "${Green}--------------------------------------------------------------------------------${NC}"
  echo -e "${Green}------------------------   DEBUT  DU  SCRIPT  ----------------------------------${NC}"
  echo -e "${Green}--------------------------------------------------------------------------------${NC}"

  script_timings

}
# Compression
sauvegarde_zip(){
  cd $backup_path

  for filename in /backup_path/*.jpg
  do
    echo -e "Compression de ${filename}"
    tar -czvf $backup_path/$filename$date.tar.gz $filename.jpg
  done

}
script_end(){

  script_timings

  echo -e "${Red}--------------------------------------------------------------------------------${NC}"
  echo -e "${Red}--------------------------   FIN   DU   SCRIPT  --------------------------------${NC}"
  echo -e "${Red}--------------------------------------------------------------------------------${NC}"

}























# Backup the files using tar.
#tar -czf sauvegarde_${day}.zip $backup_files



#TIME=`date +%d-%m-%y-%H-%M`                      
#FILENAME=sauvegarde-$TIME.tar
#SRCDIR=Users/gduplessi/Desktop/script_bash                  
#DESDIR=sauvegarde/                          
#tar -cvpzf $DESDIR/$FILENAME $SRCDIR
#zip -r tecmint_files.zip /script_bash

#tar -cvpzf Users/gduplessi/Desktop/script_bash/sauvegarde/admfactory.com.tar.gz Users/gduplessi/Desktop/script_bash
# tar -zcvf $DESDIR/$FILENAME . 

BACKUPTIME=`date +%d-%m-%y` 
DESTINATION=sauvegarde/backup-$BACKUPTIME.tgz
SOURCEFOLDER=/Users/gduplessi/Desktop/script_bash/ 
tar -zcvf $DESTINATION $SOURCEFOLDER .

#get the current date
#create a backup file using the current date in it's name
#the folder that contains the files that we want to backup
#create the backup

echo -e "${Red}--------------------------------------------------------------------------------${NC}"
echo -e "${Red}--------------------------   FIN   DU   SCRIPT  --------------------------------${NC}"
echo -e "${Red}--------------------------------------------------------------------------------${NC}"




