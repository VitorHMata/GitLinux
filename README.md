# Linux Bash Script

**Script Author:** Vitor Mata

## How to Run the Script

1. Make sure you have bash installed on your system.
2. Clone this repository: `git clone https://github.com/VitorHMata/GitLinux`
3. Navigate to the cloned directory: `cd GitLinux`
4. Make the script executable: `chmod +x linux.sh`
5. Run the script: `./linux.sh`

## Script Explanation

- The script creates a directory named "log" in /tmp (or increments the name if it already exists).
- It then creates an "output.txt" file inside the "log" directory.
- The script exports the path of "output.txt" as an environment variable called LOG_FILE.
- It runs `ls -lah` and appends the output to LOG_FILE.
- Next, it runs `ls -lah /var/log` and appends the output to LOG_FILE.
- Finally, it prints lines from LOG_FILE that start with "-rw."
- O Mata é mesmo o maior
-
-