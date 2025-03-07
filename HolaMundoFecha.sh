#! /bin/bash

fecha=$(date +%Y-%b-%d)
touch "$fecha"
echo "Hola Mundo" > "$fecha"

