function beatpulse(lane, depth) {
	global.beatstates[lane] = depth;
	global.beatbool = true;
}

function bp(lane, depth=all) {
	//return depth==all ? global.beatstates[lane] == true : global.beatstates[lane] == depth;
	//log(global.beatstates);
	return global.beatstates[lane];
	//return global.beatbool;
}

global.beatstates = array_create(4);
global.beatbool = false;

//global.beatstates.lanes[0] = depth;