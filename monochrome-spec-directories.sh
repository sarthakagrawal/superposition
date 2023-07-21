#!/bin/bash

in_dir=$1
out_dir=$2
new_black=$3
new_white=$4

mkdir -p "$out_dir"
# for file in "{$in_dir}"/*; do
for file in $in_dir; do
    # Extract the base name of the file (without extension)
    base_name=$(basename "$file" .png)

    # Convert the color and save it as a new file in a new directory
    convert "$file" +level-colors $new_black,$new_white #"$out_dir/${base_name}-mod.png"
done