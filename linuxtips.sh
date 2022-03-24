#!/bin/bash
# cd /mnt/c/Users/saifs/OneDrive/Desktop/TAMK/SEM\ 4/Server\ technologies/petteri/totd/
#print out the "curtip" tip

#CURTIP=`cat ./.curtip`
CURTIP=$(cat ./.curtip)
TIPFILE=./tips/$CURTIP.txt
NUMTIPS=`ls ./tips/*.txt | wc -l`



tipof() {
#NUM=$(<.curtip)

echo "TIP OF THE TODAY ($TIPFILE)"
echo "====================================================="
echo " "
cat $TIPFILE
echo " "
echo "====================================================="
echo " "
#echo "**** Do you weant to see another TOTD? y/n.  "
echo "Type 'disable' to disable TOTD completely"
echo "or, press ENTER to continue."
countTips
}

countTips(){
NEXT=`expr $CURTIP % $NUMTIPS`
NEXT=`expr $NEXT + 1`
echo $NEXT > ./.curtip
}

main()
{

CONTENT=$(cat ./.disco)
if [[ $CONTENT != "0" ]]; then
tipof
else
exit 0
fi


read YES
if [[ $YES = "disable" ]]; then
echo "0" > ./.disco
#elif [[ $YES  = "y" || $YES = "Y" ]]; then
#countTips
#tipof

#elif [[ $YES = "n" || $YES = "N" ]]; then
#exit 0
else 
echo "1" > ./.disco
fi



}

main
