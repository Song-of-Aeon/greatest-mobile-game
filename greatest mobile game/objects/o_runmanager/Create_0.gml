randomize();
count = 0;
nextbuilding = 1;
global.buildings = [];
var friend = noone;
var i=0;
for (i=s_null; i<100000; i++) {
	friend = sprite_get_name(i);
	if typeof(friend) == "string" {
		if string_contains(friend, "s_b") {
			log(friend);
			array_push(global.buildings, asset_get_index(friend));
		}
	}
}
global.buildingspeed = 2;

dance_start(mus.ikachan, 0);