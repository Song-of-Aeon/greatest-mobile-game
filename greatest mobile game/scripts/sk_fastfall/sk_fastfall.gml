global.skills.fastfall = {
	onuse: function() {
		charge++;
		if charge >= chargereq {
			charge = 0;
			with NOSTALGIAC {
				var buildings = collision_line_array(x,y,x,y+999+sprite_get_yoffset(sprite_index),o_building,false,true,true);
				if(array_length(buildings) > 0) {
					aerial = false;
					spd.v = 0;
					y = buildings[0].bbox_top - sprite_get_yoffset(sprite_index);
					c_juiceset(ac_slam, ac_land, 20, true, NOSTALGIAC);
				}
			}
		}
	},
	onstep: function() {
		if !NOSTALGIAC.aerial {
			charge = 0;
		}
	},
	ondraw: function() {
		draw_set_color(c_black);
		draw_circle_curve(NOSTALGIAC.x+30, NOSTALGIAC.y, 8, 20, 90, charge/(chargereq-1)*360, 2, false);
	},
	charge: 0,
	chargereq: 10,
	used: false,
}