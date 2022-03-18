#!/bin/bash
# cd /mnt/c/Users/saifs/OneDrive/Desktop/TAMK/SEM\ 4/Server\ technologies/petteri/totd/
#print out the "curtip" tip

CURTIP=`cat ./.curtip`
TIPFILE=./tips/$CURTIP.txt

#NUM=$(<.curtip)

echo "TIP OF THE TODAY ($TIPFILE)"
echo "====================================================="
echo " "
cat $TIPFILE
echo " "
echo "====================================================="


NUMTIPS=`ls ./tips/*.txt | wc -l`

NEXT=`expr $CURTIP % $NUMTIPS`
NEXT=`expr $NEXT + 1`


echo $NEXT > ./.curtip
