global.skills = {};

global.skills.glide = {
	onuse: function() {
		if remaining {
			if NOSTALGIAC.spd.v > flyspd {
				NOSTALGIAC.spd.v = lerp(NOSTALGIAC.spd.v, flyspd, .1);
			}
			remaining--;
		}
	},
	onstep: function() {
		if !NOSTALGIAC.aerial {
			remaining = duration;
		}
	},
	ondraw: function() {
		if remaining && remaining < duration {
			draw_set_color(c_black);
			draw_circle_curve(NOSTALGIAC.x+30, NOSTALGIAC.y, 8, 20, 90, remaining/(duration)*360, 2, false);
		}
	},
	duration: 20,
	remaining: 0,
	flyspd: 0,
}