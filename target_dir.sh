#!/bin/bash
#
#

# Define a target directory path variable
TARGET_DIR="/mnt/vfat-data"

# 1. Condition Block 1: Check if the folder is completely missing
if [ ! -d "$TARGET_DIR" ]; then
    echo "CRITICAL: The directory $TARGET_DIR does not exist!"
    exit 1  # Stop execution and signal failure to the terminal

# 2. Condition Block 2: If it exists, check if it's empty
elif [ -z "$(ls -A $TARGET_DIR)" ]; then
    echo "WARNING: The directory exists but it is completely empty."
    exit 0  # Stop execution but mark it as a safe/successful state

# 3. Catch-All Block: If it exists and contains data
else
    echo "SUCCESS: Storage directory is active and contains files."
    exit 0
fi

