
c_inputupdate();
c_input();
palpos = cycle(palpos+down.hit-up.hit, array_length(dudes));
global.currentpalette = PALETTES[$dudes[palpos]];