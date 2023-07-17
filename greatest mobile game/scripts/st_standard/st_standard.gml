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
		if aerial {
			c_juiceset(ac_outin, ac_land);
		}
		aerial = false;
		spd.v = 0;
		y = buildings[0].bbox_top - sprite_get_yoffset(sprite_index);
		image_speed = 2.5-(.5+buildings[0].depth_*.2);
	}
	else{
		aerial = true	
	}
	if(!aerial){
		leniance = lencount;
		slashed = false;
	} else {
		leniance--;
	}
	if(jump.hit){
		if !aerial || leniance {
			spd.v = -jumpspeed;
			c_juiceset(ac_inout, ac_jump);
		} else if ! slashed {
			//spd.v = 0;
			slashed = true;
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
	
	c_dosprites();
	
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
	draw_set_color(c_black);
	draw_rectangle(x-width*.7, y-height*.5*(durability/durabilitymax), x+width*.3, y+height*.5*(durability/durabilitymax), false);
});




function c_dosprites() {
	if aerial {
		sprite_index = s_meair;
		image_index = !!spd.v;
	} else {
		sprite_index = s_mewalk;
	}
}




