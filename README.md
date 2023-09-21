# Linux Bash Script

This is a Linux and Git exercise

**Script Author:** Vitor Mata

## How to Run the Script

Use the terminal to run the following commands:
1. Clone this repository: `git clone https://github.com/VitorHMata/GitLinux`
2. Navigate to the cloned directory: `cd GitLinux`
3. Make the script executable: `chmod +x linux.sh`
4. Run the script: `./linux.sh`

## Script Explanation

- The script creates a directory named "log" in /tmp (or increments the name if it already exists).
- It then creates an "output.txt" file inside the "log" directory.
- The script exports the path of "output.txt" as an environment variable called LOG_FILE.
- It runs `ls -lah` and appends the output to LOG_FILE.
- Next, it runs `ls -lah /var/log` and appends the output to LOG_FILE.
- It prints lines from LOG_FILE that start with "-rw."
- Finally, creates a variable named `o_mata_e_o_maior` 
- It appends the variable value to LOG_FILE
- It prints lines from LOG_FILE that start with "O Mata"
- And finally prints the variable value from the variable `o_mata_e_o_maior`
- And for the record: O Mata é mesmo o maior!!!