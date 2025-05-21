#!/bin/zsh

# === Configuration ===
SOURCE_DIR="/home/ghost/Documents/Projects"  # The root directory to search
DEST_DIR="/home/ghost/Documents/Projects/Developments"  # Your preferred destination directory

# === Create destination directory if it doesn't exist ===
mkdir -p "$DEST_DIR"

# === Move Java files from subdirectories to the working directory ===
find "$SOURCE_DIR" -type f -name "*.java" | while read -r file; do
    filename=$(basename "$file")

    # Check if the file already exists in the destination directory
    if [[ -e "$DEST_DIR/$filename" ]]; then
        echo "File already exists: $DEST_DIR/$filename. Renaming..."
        base="${filename:r}"
        ext="${filename:e}"
        counter=1
        newname="${base}_${counter}.${ext}"

        # Avoid overwriting by renaming
        while [[ -e "$DEST_DIR/$newname" ]]; do
            ((counter++))
            newname="${base}_${counter}.${ext}"
        done

        filename="$newname"
    fi

    # Move the Java file
    mv "$file" "$DEST_DIR/$filename"
    echo "Moved: $file -> $DEST_DIR/$filename"
done

echo "✅ All Java files have been moved to: $DEST_DIR"
