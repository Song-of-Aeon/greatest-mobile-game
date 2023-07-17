only_one();
global.lang = LANGUAGE.ENGLISH;
global.rave = false;
//application_surface_draw_enable(false);
global.surfaces = {
	hud: surface_create(room_width, room_height),
}
palpos = 0;
dudes = variable_struct_get_names(global.palettes);
//array_alphebetize(dudes);

thepal = {r: 0, g: 0, b: 0, base: 0, invert: false}
count = 0;