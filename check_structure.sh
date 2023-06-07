#!/bin/bash

# Define the expected directory structure
expected_structure=(
    "README"
    "README2"
    "README3"
    "dir1/a.v"
    "dir2/b.v"
    "dir2/dir21/c.v"
    "dir2/dir22/d.v"
    "dir3/e.v"
    "dir3/dir31/dir311/f.v"
    "dir3/dir31/dir312/g.v"
    "dir3/dir32/dir321/h.v"
)

# Function to check if a directory or file exists
check_path() {
    if [ -e "$1" ]; then
        echo "$1: OK"
    else
        echo "$1: Missing"
    fi
}

# Iterate over the expected directory structure and check each path
for path in "${expected_structure[@]}"; do
    check_path "$path"
done
