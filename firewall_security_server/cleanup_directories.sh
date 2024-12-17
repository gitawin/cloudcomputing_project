#!/bin/bash

# Directories to clean up
DIRECTORIES=("Firewall_Logs" "Intrusion_Detection")

# Number of days to consider a directory "old"
DAYS_THRESHOLD=30

# Function to clean up directories
cleanup_directories() {
    for DIR in "${DIRECTORIES[@]}"; do
        if [ -d "$DIR" ]; then
            echo "Cleaning up directory: $DIR"

            # Find and remove empty directories
            find "$DIR" -type d -empty -exec rmdir {} \; 2>/dev/null

            # Find and remove directories older than the specified number of days
            find "$DIR" -type d -mtime +$DAYS_THRESHOLD -exec rm -rf {} \; 2>/dev/null

            echo "Cleanup completed for directory: $DIR"
        else
            echo "Directory $DIR does not exist."
        fi
    done
}

# Execute the cleanup function
cleanup_directories

