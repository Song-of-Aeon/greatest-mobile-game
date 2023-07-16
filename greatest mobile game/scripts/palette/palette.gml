global.palettes = {};
#macro PALETTES global.palettes

function palette(name_, base_, rmult, gmult, bmult, invert_=false) constructor {
	r = rmult;
	g = gmult;
	b = bmult;
	base = base_;
	name = name_;
	invert = invert_;
	global.palettes[$name] = self;
}

nu palette("sky", .2, .5, .8, 1);
nu palette("ice", .3, .5, .7, .9);
nu palette("papyrus", .3, 1, .8, .5);
nu palette("sunset", .3, 1, .4, .2);
nu palette("forest", .3, .3, .8, .5);
nu palette("violet", 0, 113/255, 7/255, 231/255);
nu palette("scarlet", 0, 233/255, 71/255, 26/255);
nu palette("white", 0, 1, 1, 1);
nu palette("inverted", 0, 1, 1, 1, true);