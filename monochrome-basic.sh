#!/bin/bash

new_black=$1
new_white=$2

for file in "to_$new_black"/*.png; do
    # Extract the base name of the file (without extension)
    base_name=$(basename "$file" .png)

    # Convert the color and save it as a new file in a new directory
    convert "$file" +level-colors $new_black,$new_white # "$1/${base_name}_$new_black.png"
done
