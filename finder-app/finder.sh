#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Parameters Missing. Expected 2 parameters."
    exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]; then
    echo "'$filesdir' does not represent a directory on the filesystem."
    exit 1
fi

filecount=$(find "$filesdir" -maxdepth 1 -type f | wc -l)
match_count=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $filecount and the number of matching lines are $match_count"

