#!/bin/bash

# Define source and destination directories
SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backup"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory does not exist."
    exit 1
fi

# Create a backup directory with the current date
DATE=$(date +%Y-%m-%d)
BACKUP_PATH="$BACKUP_DIR/backup_$DATE"

mkdir -p "$BACKUP_PATH"

# Copy files from source to backup directory
cp -r "$SOURCE_DIR/"* "$BACKUP_PATH"

echo "Backup of '$SOURCE_DIR' completed successfully to '$BACKUP_PATH'."
