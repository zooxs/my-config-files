index=$(grep -nE '^[a-z]. ' $1 | cut -d : -f 1)

echo $index
