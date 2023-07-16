only_one();
global.lang = LANGUAGE.ENGLISH;
//application_surface_draw_enable(false);
global.surfaces = {
	hud: surface_create(room_width, room_height),
}
palpos = 0;
dudes = variable_struct_get_names(global.palettes);