function st_standard() {
    hput = right.hold-left.hold;
    vput = down.hold-up.hold;
	
	spd.v += grav;
	
	skill.onstep();
	if jump.hold && spd.v >= 0 && aerial {
		skill.onuse();
	}
	
	var buildings = collision_line_array(x,y,x,y+spd.v+sprite_get_yoffset(sprite_index),o_building,false,true,true);
	
	if(array_length(buildings) > 0) {
		aerial = false;
		spd.v = 0;
		y = buildings[0].bbox_top - sprite_get_yoffset(sprite_index);
	}
	else{
		aerial = true	
	}
	if(!aerial){
		leniance = lencount;
	} else {
		leniance--;
	}
	if(jump.hit){
		if !aerial || leniance {
			spd.v = -jumpspeed;
		} else {
			//spd.v = 0;
			c_slash(x, y, global.slashes.normal);
		}
	}
	if jump.drop && spd.v < 0 {
		spd.v *= .25;
	}
    x += spd.h;
    y += spd.v;
	
	if y >= room_height {
		y = 0;
	}
	
}

function c_slash(x, y, type) {
	var chump = instance_create(x, y, o_slash);
	chump.draw = munction(type.draw);
	chump.type = type;
}


function slash(name_, draw_) constructor {
	name = name_;
	draw = draw_;
	global.slashes[$name] = self;
}
global.slashes = {};
nu slash("normal", function() {
	draw_rectangle(x-width*.7, y-height*.5*(durability/durabilitymax), x+width*.3, y+height*.5*(durability/durabilitymax), false);
});