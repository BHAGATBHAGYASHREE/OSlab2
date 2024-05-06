name=$1

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

