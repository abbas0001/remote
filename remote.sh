#!/bin/bash

read -p 'Enter USER: ' USER
HOSTS=$(cat hosts)
./ask.sh
./commands.sh
export SSH_ASKPASS=./.pass.sh
for HOST in $HOSTS
do
	echo "============================================================================"
	echo "$HOST in progress"
	setsid ssh -o "StrictHostKeyChecking=no" -q -t $USER@$HOST > /dev/null 2> /dev/null < cmd
	echo "$HOST DONE"
	echo "============================================================================"
done
rm .pass.sh
rm .sudo
rm cmd
