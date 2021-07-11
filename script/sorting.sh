
# array that store the index for all matching pattern
# index=( $(grep -nE '^[a-z]. ' $1 | cut -d : -f 1) )
Index0=( $(grep -nE '^a. ' $1 | cut -d : -f1) )
Index1=$(grep -nE '^[a-z]. ' $1 | cut -d : -f 1)

echo ${Index0[0]}

# for i in $Index0
# do
# 	echo $i
# done
