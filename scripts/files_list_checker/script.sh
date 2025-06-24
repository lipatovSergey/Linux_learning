#!/bin/bash
files=("report.txt" "data.scv" "summary.md" "main.sh" "README.md")
counter=0

for item in "${files[@]}"; do
  if [[ "$item" == *.md ]]; then
    echo "$item - is a markdown file"
  fi
  if [ -f "$item" ]; then
    echo "file $item exist"
    ((counter++))
  fi
done
echo "$counter"
