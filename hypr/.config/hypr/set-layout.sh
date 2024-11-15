#!/bin/bash

# o comando hyprctl monitors -j retorna uma list json,
# eu preciso recupear o ultimo registro

LAST=$(hyprctl monitors -j | jq '.[-1]')

WIDTH=$(echo $LAST | jq '.width')
SCALE=$(echo $LAST | jq '.scale')

echo $(bc -l <<<"$WIDTH / $SCALE")

echo $WIDTH
echo $SCALE
