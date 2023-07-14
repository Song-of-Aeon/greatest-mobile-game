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
		
	},
	duration: 20,
	remaining: 0,
	flyspd: 0,
}