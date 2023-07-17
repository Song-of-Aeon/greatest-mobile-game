global.skills.boost = {
	onuse: function() {
		charge++;
		if !used && charge >= chargereq {
			used = true;
			charge = 0;
			NOSTALGIAC.spd.h = -5;
			c_juiceset(ac_slam, ac_land, 20, true, NOSTALGIAC);
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
			draw_set_color(c_black);
			draw_circle_curve(NOSTALGIAC.x+30, NOSTALGIAC.y, 8, 20, 90, charge/(chargereq-1)*360, 2, false);
		}
	},
	charge: 0,
	chargereq: 10,
	used: false,
}