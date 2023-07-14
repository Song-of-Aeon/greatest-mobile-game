count++;

if ncm(nextbuilding) {
	var chump = instance_parallax(-50, 180, o_building);
	chump.sprite_index = array_random(friends);
	switch irandom(2) {
		case 0:
			instance_parallax(0, irandom(300)+200, o_bird);
	}
	nextbuilding = irandom(20)+60;
}