#!/bin/bash

# Step 1: Create a log directory in /tmp (or increment the name if it exists)
log_dir="/tmp/log"
count=1
while [ -d "$log_dir" ]; do
  log_dir="/tmp/log$count"
  count=$((count + 1))
done

mkdir -p "$log_dir"

# Step 2: Create an output.txt file inside the log directory
output_file="$log_dir/output.txt"
touch "$output_file"

# Step 3: Export the output file path as an environment variable
export LOG_FILE="$output_file"

# Step 4: Run "ls -lah" and append the output to the LOG_FILE
ls -lah >> "$LOG_FILE"

# Step 5: Run "ls -lah /var/log" and append the output to the LOG_FILE
ls -lah /var/log >> "$LOG_FILE"

# Step 6: Print lines starting with "-rw" from the LOG_FILE
grep "^-rw" "$LOG_FILE"

# test