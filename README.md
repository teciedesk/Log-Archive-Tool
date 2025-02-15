# Log-Archive-Tool

Log Archive Script

Overview

log-archive.sh is a Bash script designed to compress and archive log files from a specified directory. This helps keep the system clean while preserving logs for future reference. The script supports automated scheduling and includes features such as timestamped archives and log rotation.

Features

✅ Compresses log files from a specified directory into a .tar.gz archive

✅ Stores the archive in an archive subdirectory

✅ Logs archive operations with timestamps

✅ Automatically deletes archives older than a specified retention period

✅ Can be scheduled to run periodically

Project URL

GitHub Repository https://github.com/teciedesk/Log-Archive-Tool.git

Prerequisites

Linux system (Ubuntu, Debian, CentOS, etc.)

Bash shell

tar and gzip utilities

Installation and Usage

Step 1: Clone the Repository

git clone https://github.com/teciedesk/Log-Archive-Tool.git
cd log-archive

Step 2: Make the Script Executable

chmod +x log-archive.sh

Step 3: Run the Script

To archive logs from a specified directory, use:

./log-archive.sh /path/to/logs

Example:

./log-archive.sh ~/logs

If no directory is specified, it defaults to /home/codespace/logs.

Step 4: Verify the Archive

Check the archive directory:

ls -lh /home/codespace/logs/archive/

View the log file:

cat /home/codespace/logs/archive/archive_log.txt


License

This script is open-source and free to use.

Author

Developed by OSIBERU OLUWATOBI

https://roadmap.sh/projects/log-archive-tool
