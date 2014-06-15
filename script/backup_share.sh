#!/bin/bash

# Adding -c flag can significantly slow down the process

rsync -av /media/SHARE/ /media/nukeback/ --max-size=4000M --exclude-from="/home/nuke/script/backup_exclude.txt"