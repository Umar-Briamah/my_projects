#!/bin/zsh

# === Configuration ===
SOURCE_DIR="/home/ghost/Documents/Projects"          # Where to start searching
DEST_DIR="/home/ghost/Documents/Projects/Developments"  # Where to put .py files
ACTION="copy"  # Use "move" if you want to move instead

# === Create destination directory if it doesn't exist ===
mkdir -p "$DEST_DIR"

# === Find and process Python files ===
find "$SOURCE_DIR" -type f -name "*.py" | while read -r file; do
    filename=$(basename "$file")

    # Avoid overwriting files with the same name
    if [[ -e "$DEST_DIR/$filename" ]]; then
        echo "File already exists: $DEST_DIR/$filename. Renaming..."
        base="${filename:r}"
        ext="${filename:e}"
        counter=1
        newname="${base}_${counter}.${ext}"

        while [[ -e "$DEST_DIR/$newname" ]]; do
            ((counter++))
            newname="${base}_${counter}.${ext}"
        done

        filename="$newname"
    fi

    if [[ "$ACTION" == "copy" ]]; then
        cp "$file" "$DEST_DIR/$filename"
        echo "Copied: $file -> $DEST_DIR/$filename"
    elif [[ "$ACTION" == "move" ]]; then
        mv "$file" "$DEST_DIR/$filename"
        echo "Moved: $file -> $DEST_DIR/$filename"
    else
        echo "Unknown ACTION: $ACTION"
        exit 1
    fi
done

echo "✅ Done! All Python files from '$SOURCE_DIR' are now in: $DEST_DIR"
