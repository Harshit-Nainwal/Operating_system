#!/bin/bash

# Define source and destination
SOURCE_DIR="/home/$USER/Documents"
BACKUP_DIR="/home/$USER/backup"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Create Backup Directory (if not exists)
mkdir -p $BACKUP_DIR

# Create a compressed backup
tar -czf $BACKUP_FILE $SOURCE_DIR

# Verify Backup
if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_FILE"
else
    echo "Backup failed!"
fi
