count++;

if ncm(nextbuilding) {
	switch irandom(2) {
		case 0:
		case 1:
			instance_parallax(0, 600, o_building);
			break;
		case 2:
			instance_parallax(0, irandom(300)+200, o_bird);
	}
	nextbuilding = irandom(60)+20;
}