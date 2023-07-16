durability--;
if !durability kys;
dude = collision_rectangle(x-width*.7, y-height*.5*(durability/durabilitymax), x+width*.3, y+height*.5*(durability/durabilitymax), o_bird, false, false);
if dude && !duded {
	score_add(1);
	instance_destroy(dude);
	dude.image_yscale *= -1;
	c_flash(application_surface, 10, c_red);
	duded = true;
}