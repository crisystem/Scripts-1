#! /bin/bash
archivo=$(basename "$1")
fecha=$(date +%y-%b-%d)
dest="$2"
fin=$archivo$fecha
echo "$USER" > "$dest/$fin"
cat "$archivo" >> "$dest/$fin"
