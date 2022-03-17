#!/usr/bin/sh

# display totd

# read the current tip number for curtip file
NUM=$(<.curtip)

# count the numebr of tips in the folder
NUMTIP=$(ls tips/*.text | wc -l)
echo "number of tips: $(NUMTIP)"

# Check the current tip is in the range:
$NUM=$(expr $NUM % $NUMTIP)

#print out the "curtip" tip
cat ./tips/1.txt

# increment by one
NUM=expr $NUM + 1

# store the value of curtip

echo $NUM > .curtip

