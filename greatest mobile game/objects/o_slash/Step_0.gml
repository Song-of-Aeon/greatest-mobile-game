durability--;
if !durability kys;
var dude = collision_rectangle(x-width*.7, y-height*.5*(durability/durabilitymax), x+width*.3, y+height*.5*(durability/durabilitymax), o_bird, false, false);
if dude {
	instance_destroy(dude);
	c_flash(application_surface, 10, c_red);
}