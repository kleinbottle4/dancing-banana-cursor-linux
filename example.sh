#!/bin/sh

# an example for animated cursors
# ./example.sh "text"

cd ~/.icons/caped-banana
NAME=$1
echo "#" | tee tmp
for i in $(seq 8); do
	sed "s/NAME/cp-$NAME-$i/g" config/anim | tee -a tmp
done
xcursorgen tmp $NAME && mv $NAME cursors/
