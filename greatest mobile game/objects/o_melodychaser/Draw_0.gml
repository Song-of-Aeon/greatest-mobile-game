iterate notes to {
	draw_set_color(notes[i].color);
	//draw_ring(MIDWID-30+notes[i].lane*20, notes[i].pos*32*xmod, 2, false);
	//draw_text(MIDWID-30+notes[i].lane*20, notes[i].pos*32*xmod, notes[i].pos);
}
var present_time = audio_sound_get_track_position(global.playingmusicdata);
draw_text(5, HEIGHT-15, present_time);
draw_set_alpha(lineflash);
draw_set_color(c_cyan);
blend bm_add from_here
	draw_line(NOSTALGIAC.intendedx, 0, NOSTALGIAC.intendedx, room_height);
to_here
draw_set_color(c_white);
draw_set_alpha(1);