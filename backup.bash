#Vérifie si le fichier existe ou non.
[ -f "C:/Users/geoffrey/Desktop/script_bash/sauvegarde.bash" ] && echo -e "\e[95mLe fichier existe" || echo -e "\e[31mLe fichier n'existe pas"

[ -f "D:/Github/script_bash/backup.bash" ] && echo -e "\e[95mLe fichier existe" || echo -e "\e[31mLe fichier n'existe pas"


echo -e "${Cyan}--------------------------------------------------------------------------------${NC}"
echo -e "${Cyan}------------------------   VERIFICATION   --------------------------------------${NC}"
echo -e "${Cyan}--------------------------------------------------------------------------------${NC}"


  date=$(date +"_%y-%m-%d")
  #backup_path="/Users/geoffrey/Desktop/script_bash/"
  backup_path="D:/Github/script_bash"

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


  echo -e "${Green}--------------------------------------------------------------------------------${NC}"
  echo -e "${Green}------------------------   DEBUT  DU  SCRIPT  ----------------------------------${NC}"
  echo -e "${Green}--------------------------------------------------------------------------------${NC}"
 




BACKUPTIME=`date +%d-%m-%y` 
DESTINATION=sauvegarde/backup-$BACKUPTIME.tgz
#SOURCEFOLDER=/Users/gduplessi/Desktop/script_bash/ 
  SOURCEFOLDER=D:/Github/script_bash/ 
tar -zcvf $DESTINATION $SOURCEFOLDER .

#get the current date
#create a backup file using the current date in it's name
#the folder that contains the files that we want to backup
#create the backup

echo -e "${Red}--------------------------------------------------------------------------------${NC}"
echo -e "${Red}--------------------------   FIN   DU   SCRIPT  --------------------------------${NC}"
echo -e "${Red}--------------------------------------------------------------------------------${NC}"


















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

