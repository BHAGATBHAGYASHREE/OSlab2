# OSlab2
Exercise_1 write the shell script that print shell scripting is fun on the screen
<img width="1470" alt="Screenshot 2024-05-06 at 4 59 30 PM" src="https://github.com/BHAGATBHAGYASHREE/OSlab2/assets/142775493/ccd326e0-ccbe-4e11-ab5d-eb1016a521f2">

Exercise_2 - Modify the shell script from exercise 1 to include a variable. The variable will hold the contents of the message “Shell Scripting is Fun!”

[Exercise_3 - Store the output of the command “hostname” in a variable. Display “This script is running on _.” where “_” is the output of the “hostname” command.](https://github.com/BHAGATBHAGYASHREE/OSlab2/blob/main/hostdemo.sh)

Exercise_4 - Write a shell script to check to see if the file “file_path” exists. If it does exist, display “file_path passwords are enabled.” Next, check to see if you can write to the file. If you can, display “You have permissions to edit “file_path.””If you cannot, display “You do NOT have permissions to edit “file_path"

Exercise_5 - Write a shell script that displays “man”,”bear”,”pig”,”dog”,”cat”,and “sheep” on the screen with each appearing on a separate line. Try to do this in as few lines as possible.
Exercise_6 - write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or another type of file. Also perform an ls command against the file or directory with the long listing option.

Exercise_7 - Modify the previous script to that it accepts the file or directory name as an argument instead of prompting the user to enter it.

echo “Enter the file path”
read name
if [ ! -e "$name" ]; then
    echo "The file or directory '$name' does not exist."
    exit 1
fi


if [ -f "$name" ]; then
    echo "'$name' is a regular file."
elif [ -d "$name" ]; then
    echo "'$name' is a directory."
else
    echo "'$name' is another type of file."
fi
Exercise_8 - Modify the previous script to accept an unlimited number of files and directories as arguments.
name=$@

if [ ! -e "$name" ]; then
    echo "The file or directory '$name' does not exist."
    exit 1
fi


if [ -f "$name" ]; then
    echo "'$name' is a regular file."
elif [ -d "$name" ]; then
    echo "'$name' is a directory."
else
    echo "'$name' is another type of file."
fi


