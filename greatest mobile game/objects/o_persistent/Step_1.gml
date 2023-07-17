
c_inputupdate();
c_input();

if rave.hit global.rave = !global.rave;

c
if global.rave {
	if ncm(25) {
		palpos = cycle(palpos+1, array_length(dudes));
	}
	var amount = .015;
} else {
	palpos = cycle(palpos+down.hit-up.hit, array_length(dudes));
	var amount = .05;
}

global.currentpalette = PALETTES[$dudes[palpos]];



thepal.r = lapp(thepal.r, global.currentpalette.r, amount);
thepal.g = lapp(thepal.g, global.currentpalette.g, amount);
thepal.b = lapp(thepal.b, global.currentpalette.b, amount);
thepal.base = lapp(thepal.base, global.currentpalette.base, amount);