#!/bin/bash


DATA1=REDATA/a.txt
DATA2=REDATA/a.txt
DATA3=REDATA/a.txt
DATA4=REDATA/a.txt
DATA5=REDATA/a.txt
DATA6=REDATA/a.txt
DATA7=REDATA/a.txt
DATA8=REDATA/a.txt
DATA9=REDATA/a.txt
DATA10=REDATA/a.txt
DATA11=REDATA/a.txt


DATA12=REDATA/b.txt
DATA13=REDATA/b.txt
DATA14=REDATA/b.txt
DATA15=REDATA/b.txt
DATA16=REDATA/b.txt
DATA17=REDATA/b.txt


DATA18=REDATA/c.txt
DATA19=REDATA/c.txt
DATA20=REDATA/c.txt
DATA21=REDATA/c.txt
DATA22=REDATA/c.txt
DATA23=REDATA/c.txt
DATA24=REDATA/c.txt
DATA25=REDATA/c.txt
DATA26=REDATA/c.txt
DATA27=REDATA/c.txt
DATA28=REDATA/c.txt


echo "--- RE1 ---"
egrep -o "pocitac" $DATA1 # RE1

echo "--- RE2 ---"
egrep -o "POCITAC" $DATA2 # RE2

echo "--- RE3 ---"
egrep -o "\[POCITAC\]" $DATA3 # RE3

echo "--- RE4 ---"
egrep -o "\.pocitac\." $DATA4 # RE4

echo "--- RE5 ---"
egrep -o "\(pocitac\)" $DATA5 # RE5

echo "--- RE6 ---"
egrep -o "Poci\*tac" $DATA6 # RE6

echo "--- RE7 ---"
egrep -o "Poci\\\\\\\\tac" $DATA7 # RE7

echo "--- RE8 ---"
egrep -o "\"pocitac\"" $DATA8 # RE8

echo "--- RE9 ---"
egrep -o "'pocitac'" $DATA9 # RE9

echo "--- RE10 ---"
egrep -o "Poc\+itac\+\+" $DATA10  # RE10

echo "--- RE11 ---"
egrep -o "p\?ocitac\?" $DATA11  # RE11





echo "--- RE12 ---"
egrep -o ""'výpočtová technika'"|"'počítač'"" $DATA12 # RE12

echo "--- RE13 ---"
egrep -o ""'POČÍTAČ'"|"'počítač'"" $DATA13 # RE13

echo "--- RE14 ---"
egrep -o ""'počítač'"|"'Počítač'"" $DATA14 # RE14

echo "--- RE15 ---"
egrep -o "[pP][oO][Čč][Íí][Tt][Aa][Čč]" $DATA15 # RE15

echo "--- RE16 ---"
egrep -o "^počítač" $DATA16 # RE16

echo "--- RE17 ---"
egrep -o "počítač$" $DATA17 # RE17





echo "--- RE18 ---"   	#Regular expression to check words, which start with a number
egrep "((^[0-9])|(\s[0-9]))([-a-zA-Z?\W0-9/:.,-|]+)?" $DATA18 # RE18

echo "--- RE19 ---"	#Regular expression to check words, which consist of de te ne le and di it ni li
egrep "[dtnl][ei]" $DATA19 # RE19

echo "--- RE20 ---"	
egrep "[ ]((0|[1-9]|[1-9][0-9]*)(l|L)?)[ ]" $DATA20 # RE20

echo "--- RE21 ---"
egrep "\s(0([0-7]*)(l|L)?)\s" $DATA21 # RE21

echo "--- RE22 ---"
egrep "\s([1-9]{1}[0-9]{2}(l|L)?)\s" $DATA22 # RE22

echo "--- RE23 ---"	#Regular expression to check words, which consist of duplicate characters
egrep "((\W)|(\w))\1+" $DATA23 # RE23

echo "--- RE24 ---"	#Regular expression to check identical words
egrep "(\<[a-zA-Z]+\>) \1" $DATA24 # RE24

echo "--- RE25 ---"	#Regular expression to check e-mail 
egrep "[A-z]+\@((student\.tuke\.sk)|(tuke.sk))" $DATA25 # RE25

echo "--- RE26 ---"	#Regular expression to check time
egrep "([0-9]{2}:){2}[0-9]{2}\.[0-9]{3}" $DATA26 # RE26

echo "--- RE27 ---"	#Regular expression to check date
egrep "([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)(20)(\d{2})" $DATA27 # RE27

echo "--- RE28 ---"
egrep "[ ]{1}\S{0,}(\S\S)\S*(\1)\S{0,}[ ]{1}" $DATA28 # RE28
