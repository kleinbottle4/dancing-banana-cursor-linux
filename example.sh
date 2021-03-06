cd ~/.icons/caped-banana

xcursorgen <(
	for i in {1..8}; do
		sed "s/NAME/cp-hand-$i/g" config/anim
	done
) hand

mv hand cursors/hand
