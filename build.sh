#!/bin/bash

# Define output file
INDEX_FILE="index.md"
FINAL_BLOG="blog"
HTML_INDEX="$FINAL_BLOG/index.html"

#clean output directory
rm -rf blog
rm -rf index.md

# Create output directory if not exists
mkdir -p "$FINAL_BLOG"
mkdir -p "$FINAL_BLOG/css"
mkdir -p "$FINAL_BLOG/imgs"

# create an empty index.md file
touch index.md
echo -e "---\ntitle: Archive\n---\n" >> index.md

# Convert all Markdown files to HTML
for file in posts/*.md; do
    filename=$(basename -- "$file" .md)
    pandoc "$file" -o "$FINAL_BLOG/$filename.html" --template=template.html
done


# create index file in reverse chronological order
python index.py

# Convert index.md to index.html using Pandoc
pandoc "$INDEX_FILE" -o "$HTML_INDEX" --template=template.html
echo "Index page generated successfully at $HTML_INDEX"

# copy style and other supporting files to blog folder
cp -r css/ "$FINAL_BLOG/css/"
cp -r posts/imgs/ "$FINAL_BLOG/imgs"

# clean up tasks
rm -rf index.md

echo "Blog built successfully in '$FINAL_BLOG' folder."
echo "Starting webserver at port 8080 for testing:"

cd blog &&  python -m http.server 8080
