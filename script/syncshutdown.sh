#!/bin/bash
# Synchronize necessary files to nukechan then shutdown.

echo " # Synchronizing files to nukechan .. "
tonukechan 

WAITS="5"

#echo "Sync. to nukechan completed. Shutting down in ${WAITS} seconds ..."
echo "Sync. to nukechan completed. Enter root password to shutdown ..."

sleep $WAITS
sudo shutdown -h now

