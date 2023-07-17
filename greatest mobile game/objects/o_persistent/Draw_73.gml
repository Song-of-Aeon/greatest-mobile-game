//global.currentpalette = PALETTES.sunset;


var surf = surface_create(room_width, room_height);
surface_copy(surf, 0, 0, application_surface);

surface_set_target(surf);
gpu_set_blendmode_ext(bm_inv_dest_colour,bm_one);
draw_rectangle_colour(0, 0, room_width, room_height/2, c_black, c_black, c_black, c_black, false);
draw_rectangle_colour(0, room_height/2, room_width, room_height, c_black, c_black, c_white, c_white, false);
gpu_set_blendmode(bm_normal);
surface_reset_target();
shader_set(z_palette);
//draw_spr(50, 50, s_bpeople);
shader_set_uniform_f(shader_get_uniform(z_palette, "colmult"), thepal.r, thepal.g, thepal.b);
shader_set_uniform_f(shader_get_uniform(z_palette, "baseval"), thepal.base);
shader_set_uniform_f(shader_get_uniform(z_palette, "invert"), thepal.invert);
//shader_set_uniform_f(shader_get_uniform(z_palette, "colmult"), .5, .85, 1);
//shader_set_uniform_f(shader_get_uniform(z_palette, "baseval"), .2);
draw_surface(surf, 0, 0);
shader_reset()

surface_free(surf);

exit;
canvas global.surfaces.hud to_brush
	draw_clear(c_red);
	var friend = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0);
	
	var topleft = new vec2(.1, .4);
	var topright = new vec2(1, 0);
	var bottomleft = new vec2(0, .6);
	var bottomright = new vec2(1.2, 1);
	
	draw_set_color(c_white);
	draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(friend, 0));
	draw_vertex_texture(room_width*topleft.x, room_height*topleft.y, 0, 0);
	draw_vertex_texture(room_width*topright.x, room_height*topright.y, 1, 0);
	draw_vertex_texture(room_width*bottomleft.x, room_height*bottomleft.y, 0, 1);
	draw_vertex_texture(room_width*bottomright.x, room_height*bottomright.y, 1, 1);
	draw_primitive_end();
	//draw_spr(0, 0, friend);
	draw_meaning(0, 0, "aosujidhnasofhjuinsdjikofu");
	sprite_delete(friend);
end_brush
//draw_text(50, 50, "asdsadf")

var dudes = variable_struct_get_names(global.surfaces);
iterate dudes to {
	draw_surface(global.surfaces[$dudes[i]], 0, 0);
}
//dep
