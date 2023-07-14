var present_time = audio_sound_get_track_position(global.playingmusicdata);
global.beatstates = array_create(4);
global.beatbool = false;
if !created {
	notes = sm_parse(mysong.map);
	log(notes[0].time);
	//log(notes[7].time);
	created = true;
}
lineflash = lerp(lineflash, .1, .1);
//log(lineflash);
//log(notes[0].pos);
iterate notes to {
	notes[i].pos = notes[i].time-present_time;
	notes[i].friendobject.x = NOSTALGIAC.intendedx-notes[i].pos*32*xmod*(1-notes[i].friendobject.depth_*.15)+sprite_get_width(notes[i].friendobject.sprite_index)/2;
	if notes[i].pos < 0 && !notes[i].triggered {
		lineflash = .8;
		notes[i].triggered = true;
	}
	if notes[i].pos < -8 {
		instance_destroy(notes[i].friendobject);
		beatpulse(notes[i].lane, 1);
		array_delete(notes, i, 1);
		i--;
	}	
}


c_input();
if special.hold && left.hit {
	audio_sound_set_track_position(global.playingmusicdata, audio_sound_get_track_position(global.playingmusicdata)-5);
	created = false;
}
if special.hold && right.hit {
	audio_sound_set_track_position(global.playingmusicdata, audio_sound_get_track_position(global.playingmusicdata)+5);
}