#!/bin/bash
# Backs up from ~/Documents/rh_notes to the shared directories.

rsync -a --delete /home/olatunde/Documents/rh_notes/ /srv/nfs/share/rh_notes/
rsync -a --delete /home/olatunde/Documents/rh_notes/ /srv/samba/share/rh_notes/

echo "rh_notes backed up to /srv/(nfs|samba)/share successfully at $(date '+%A +%F +%T')" >> /var/log/olatunde/rh_notes.log

