#!/bin/bash

# Step 1: Create a log directory in /tmp and if log folder already exist create folder with name log1
log_dir="/tmp/log"
new_dir_name="/tmp/log1"

if [ -d "$log_dir" ]; then
  echo "Log folder already exists. Creating a Log1 folder"
  log_dir="$new_dir_name"
  else
  echo "Log1 folder already exists."
fi

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

# Optional Step 1: Create variable
quem_e_o_maior="
.********
.*****
.**
O Mata é o Maior!!!
.**
.*****
.********
"

# Optional Step 2: Use the Variable
echo "$quem_e_o_maior" >> "$LOG_FILE"
grep "^O Mata" "$LOG_FILE"
echo "$quem_e_o_maior"