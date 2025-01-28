#!/bin/bash

# Output file
OUTPUT_FILE="mega.txt"

# Clear the output file if it exists
> "$OUTPUT_FILE"

# Print a message to indicate the process is starting
echo "Starting to concatenate .css files into $OUTPUT_FILE, omitting files with 'bootstrap', 'fontawesome', and the 'playenv' folder..."

# Find all .css files, excluding 'playenv' folder and filenames with 'bootstrap' or 'fontawesome'
find . -path "./playenv" -prune -o -type f -name "*.css" | grep -Ev "bootstrap|fontawesome" | while read -r css_file; do
    # Print the file name being processed
    echo "Processing: $css_file"

    # Add the file name as a header in the output file
    echo "==== Content of: $css_file ====" >> "$OUTPUT_FILE"

    # Append the file content to the output file
    cat "$css_file" >> "$OUTPUT_FILE"

    # Add a newline for separation
    echo "" >> "$OUTPUT_FILE"
done

# Print a completion message
echo "All .css files (excluding 'bootstrap', 'fontawesome', and the 'playenv' folder) have been concatenated into $OUTPUT_FILE"