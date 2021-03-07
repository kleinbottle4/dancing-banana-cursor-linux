#!/bin/sh
cd ~/.icons/caped-banana
NAME=text
echo "#" | tee tmp
for i in $(seq 8); do
	sed "s/NAME/cp-$NAME-$i/g" config/anim | tee -a tmp
done
xcursorgen tmp $NAME && mv $NAME cursors/
