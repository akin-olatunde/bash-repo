#!/bin/bash

mkdir -p /home/olatunde_backup/

rsync -a --delete /home/olatunde/ /home/olatunde_backup/

echo "Full Home dir Backup Successful at $(date +%c)" >> /var/log/olatunde/home_backup.log
