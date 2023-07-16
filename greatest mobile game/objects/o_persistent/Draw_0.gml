log(palpos);
draw_set_color(c_black);
//draw_set_halign(fa_right);

iterate dudes to {
	if i == palpos {
		draw_set_color(c_black);
	} else {
		draw_set_color(c_grey);
	}
	draw_meaning(10, 10+i*12, dudes[i]);
}
draw_set_alpha(1);

exit;

var friend = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), true, false, 0, 0);

draw_set_color(c_white);
draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(friend, 0));
draw_vertex_texture(0, 0, 0, 0);
draw_vertex_texture(room_width, 0, 1, 0);
draw_vertex_texture(0, room_height, 0, 1);
draw_vertex_texture(room_width, room_height, 1, 1);
draw_primitive_end();
draw_meaning(0, 0, "aosujidhnasofhjuinsdjikofu");
sprite_delete(friend);
log("lmao");
