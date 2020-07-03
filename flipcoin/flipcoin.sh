#!/bin/bash -x

declare -A flipcoin

doubleCoinCounter=0
while True
do
   read -p "Do you like to toss a single press 1 or double press 2 or triple coin press 3 or exit: " UserInput
   case $UserInput in
   1)
    headORTail=$((RANDOM%2))
    if [ $headOrTail -eq 0 ]
    then 
    doubleArray[$doubleCoinCounter]=0
    doubleCoinCounter=$(($doubleCoinCounter+1))
    echo "head wins"
    elif
    then
    doubleArray[$doubleCoinCounter]=1
    doubleCoinCounter=$((doubleCoinCounter+1))
    echo "Tail wins"
    else
   echo "Draw"
   fi;;

   2)
   coinOne=$((RANDOM%2))
   coinTwo=$((RANDOM%2))
   headOrTail=$(($coinOne+$coinTwo))
   if [ $headOrTail -eq 0 ]
   then
   doubleArray[$doubleCoinCounter]=0
   doubleCoinCounter=$(($doubleCoinCounter+1))
   echo "head wins"
   elif [ $headOrTail -eq 2 ]
   then
   doubleArray[$doubleCoinCounter]=1
   doubleCoinCounter=$((doubleCoinCounter+1))
   echo "Tail wins"
   else
   echo "Draw"
   fi;;
  *)
     break;;
   esac
done
flipCoin["singlet"]=${doubleArray[@]}
headWinCount=0
tailWinCount=0
for coin in ${flipCoin["doublet"]}
do
if [ $coin -eq 0 ]
then
headWinCount=$(($tailWinCount+1))
else
tailWinCount=$((tailWinCount+1))
fi

done
flipCoin["doublet"]=${doubleArray[@]}
headWinCount=0
tailWinCount=0
for coin in ${flipCoin["doublet"]}
do
if [$coin -eq 0 ]
then 
headWinCount=$(($tailWinCount+1))
else
tailWinCount=$(($tailWinCount+1))
fi
done
doubleArrayLength=${#doubleArray[@]}
headWiiningPercentage=$(echo | awk '{print (one/two)*100}' one=$headWinCount two=$doubleArrayLength)
echo "in doublet head has $headWinigPercentage% winning chance "
 

