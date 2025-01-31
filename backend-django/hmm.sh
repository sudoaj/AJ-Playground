#!/bin/bash

# Define the output file
OUTPUT_FILE="play.txt"

dir_to_search="."  # Change this if you want to specify another directory
excluded_dir="playenv"

# Empty the output file if it exists
> "$OUTPUT_FILE"

# Find all .html and .css files excluding the playenv directory
find "$dir_to_search" -type f \( -name "*.html" -o -name "*.css" \) ! -path "*/$excluded_dir/*" | while read -r file; do
    echo "Adding content from: $file" >> "$OUTPUT_FILE"
    echo "===== $file =====" >> "$OUTPUT_FILE"
    cat "$file" >> "$OUTPUT_FILE"
    echo -e "\n\n" >> "$OUTPUT_FILE"
  done

echo "All files have been combined into $OUTPUT_FILE"