state = st_standard;

c_input();
count = 0;
iterations = 0;

spd = {
	h: 0,
	v: 0,
	d: 0,
}

accel = .1;
frict = .1;
airaccel = .1;
airfrict = .1;
walkspeed = 1.9;
jumpspeed = 3;
grav = .1;
leniance = 0;
lencount = 10;
aerial = false;
hp = 10;
maxhp = 100;
inv = 0;
slashed = false;

x = room_width*.7
intendedx = room_width*.7;

global.count = 0;
global.me = id;
#macro df global.me
skill = global.skills.boost;
//skillcharge = 0;
//skillchargereq = 10;
juice = new juiceholder();