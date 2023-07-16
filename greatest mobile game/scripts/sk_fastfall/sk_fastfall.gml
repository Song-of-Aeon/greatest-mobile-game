global.skills = {};

global.skills.fastfall = {
	onuse: function() {
		charge++;
		if !used && charge >= chargereq {
			used = true;
			charge = 0;
			with NOSTALGIAC {
				var buildings = collision_line_array(x,y,x,y+999+sprite_get_yoffset(sprite_index),o_building,false,true,true);
				if(array_length(buildings) > 0) {
					aerial = false;
					spd.v = 0;
					y = buildings[0].bbox_top - sprite_get_yoffset(sprite_index);
				}
			}
		}
	},
	onstep: function() {
		if !NOSTALGIAC.aerial {
			used = false;
			charge = 0;
			NOSTALGIAC.x = lapp(NOSTALGIAC.x, NOSTALGIAC.intendedx, .7);
		}
		NOSTALGIAC.spd.h = lerp(NOSTALGIAC.spd.h, 0, .2);
	},
	ondraw: function() {
		if !used {
			draw_circle_curve(NOSTALGIAC.x+30, NOSTALGIAC.y, 8, 20, 90, charge/(chargereq-1)*360, 2, false);
		}
	},
	charge: 0,
	chargereq: 10,
	used: false,
}