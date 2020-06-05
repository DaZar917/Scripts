#!/bin/bash
DATA1=OLDATA/subor1.txt
DATA2=OLDATA/subor2.txt
DATA3=OLDATA/subor3.txt

DATA4="/usr/sbin:/usr/bin:/sbin:/bin:/usr/games::/usr/local/games"
DATA5=OLDATA
DATA6=OLDATA/access.log




echo "--- OL1 ---"
awk 'BEGIN {printf " "} {printf("%s",$1)}END {printf "\n"}'  <(uniq <(sort <(grep -E -o '.' $DATA1)))      # OL1


echo "--- OL2 ---"
cat $DATA2 | tr -d '\r' # OL2


echo "--- OL3 ---"
awk ' {FS="\t"; first = $2; $2 = $3; $3 = first; print; } ' OFS=$'\t' <$DATA3


echo "--- OL4 ---"
echo $DATA4 | tr ':' '\n' # OL4

echo "--- OL5 ---"
awk '{ sum+= $5} END {print sum}' <(egrep '(\.html|\.txt|\.md)' <(ls -l $DATA5))

echo "--- OL6 ---"
cat $DATA6 | awk '{print $1}' | sort -r| uniq -c | sort -k1n | awk '{print $2 "\t" $1}' # OL6
