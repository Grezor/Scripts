#!/bin/bash

# Creation du nom de l'archive
create_archive_filename(){
    day=$(date+ %A)
    hostname=$(hostname -s)
    archive_file = "$hostname-$day.tgz"
}

print_start_status_message(){
    echo "Backup up $backup_files to $dest/$archive_file"
    date
}

# sauvegarder les fichiers en utilisant tar
backup_files(){
    tar czf $dest/$archive_file $backup_files
}


print_end_status_message(){
   
    echo "backup finished"
    date
}

main(){
    # les dossiers a sauvegarder
    folder_to_backup ="/home "
    # la destinations de la sauvegarde 
    backup_destinations="/destination/backup"
    create_archive_filename
    print_start_status_message
    backup_files
    print_end_status_message
    #listing of files in $dest to check file sizes
    ls -lh $dest
}


