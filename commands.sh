#!/bin/bash

rm -rf cmd
SUDO=$(cat .sudo)
COUNT=$(cat commands | wc -l)
for COUNT in $(seq 1 $COUNT)
do
	LINE=$(sed -n ${COUNT}p commands)
	echo 'echo '$SUDO' | sudo -S' $LINE >> cmd
done
