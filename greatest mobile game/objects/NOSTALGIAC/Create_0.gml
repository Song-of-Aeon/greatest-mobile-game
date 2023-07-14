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
jumpspeed = 9.5;
grav = .3;
leniance = 0;
lencount = 10;
aerial = false;
hp = 10;
maxhp = 100;
inv = 0;

global.count = 0;
global.me = id;
#macro df global.me
skill = global.skills.glide;
//skillcharge = 0;
//skillchargereq = 10;