#!/bin/bash

# Check if exactly 2 parameters are provided
if [ "$#" -ne 2 ]; then
    echo "Parameters missing. Expected 2 parameters."
    exit 1
fi

# Assign parameters to variables
writefile="$1"
writestr="$2"

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Append the string to the specified file
if ! echo "$writestr" >> "$writefile"; then
    echo "Error: Failed to append string to '$writefile'."
    exit 1
fi

printf "\n\n"
echo "String appended to '$writefile' successfully."

