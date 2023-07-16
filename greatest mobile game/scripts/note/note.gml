function note(time_, lane_, depth_, type_) constructor {
	depth = depth_;
	switch depth {
		case 0:
			color = c_red;
			break;
		case 1:
			color = c_blue;
			break;
		default:
			color = c_purple;
			break;
	}
	lane = lane_;
	time = time_;
	type = type_;
	pos = time;
	switch type {
		default:
			friendobject = instance_parallax(-50, 180, o_building);
			friendobject.sprite_index = array_random(global.buildings);
			friendobject.image_yscale = (lane+1)*.5;
			break;
		case NOTETYPE.MINE:
			friendobject = instance_parallax(-50, 100+irandom(40), o_bird);
			//friendobject.sprite_index = array_random(global.buildings);
			//friendobject.image_yscale = (lane+1)*.5;
			break;
	}
	triggered = false;
}

enum NOTETYPE {
	NULL,
	HIT,
	HOLD,
	DROP,
	FAKE,
	LIFT,
	MINE,
}