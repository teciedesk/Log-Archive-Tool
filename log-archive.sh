#!/bin/bash

# Use a directory in the home folder instead of /var/log
LOG_DIR=${1:-/home/codespace/logs}
ARCHIVE_DIR="$LOG_DIR/archive"

# Set retention period for archives (e.g., 7 days)
RETENTION_DAYS=7

# Ensure the archive directory exists
mkdir -p "$ARCHIVE_DIR"

# Generate a timestamped archive filename
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_FILE="$ARCHIVE_DIR/logs_archive_$TIMESTAMP.tar.gz"

# Check if the log directory exists
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Log directory $LOG_DIR does not exist."
    exit 1
fi

# Compress the logs (excluding the archive directory itself)
tar -czf "$ARCHIVE_FILE" "$LOG_DIR" --exclude="$ARCHIVE_DIR"

# Log the archive operation
LOG_FILE="$ARCHIVE_DIR/archive_log.txt"
echo "[$(date +"%Y-%m-%d %H:%M:%S")] Archived $LOG_DIR to $ARCHIVE_FILE" >> "$LOG_FILE"

# Delete archives older than RETENTION_DAYS
find "$ARCHIVE_DIR" -name "logs_archive_*.tar.gz" -mtime +$RETENTION_DAYS -exec rm {} \;

echo "Logs archived successfully: $ARCHIVE_FILE"
echo "Old archives older than $RETENTION_DAYS days deleted."
