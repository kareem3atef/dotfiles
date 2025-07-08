#!/bin/bash

# Define colors for workspaces (adjust to your needs)
colors=("#ff5555" "#50fa7b" "#f1fa8c" "#bd93f9" "#ff79c6")

# Get list of workspaces
workspaces=$(wmctrl -d | awk '{print $1":"$2}')

output=""
i=0

while IFS= read -r line; do
  id=$(echo "$line" | cut -d: -f1)
  active=$(echo "$line" | cut -d: -f2)
  color="${colors[i]}"

  if [[ "$active" == "*" ]]; then
    output+="%{F${color}}[${id}]%{F-} "
  else
    output+="%{F${color}} ${id} %{F-} "
  fi
  ((i++))
done <<< "$workspaces"

echo "$output"

