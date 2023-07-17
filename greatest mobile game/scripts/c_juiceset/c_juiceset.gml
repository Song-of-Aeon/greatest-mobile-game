function c_juiceset(xcurve, ycurve, duration=10, priority=false, target=self) {
	if !(target.juice.priority && target.juice.pos < target.juice.duration) {
		target.juice.xcurve = xcurve;
		target.juice.ycurve = ycurve;
		target.juice.pos = 0;
		target.juice.duration = duration;
		target.juice.priority = priority;
		return true;
	}
	return false;
}

function c_juicedo() {
	image_xscale = easemult(juice.xcurve, juice.pos, juice.duration, 1)+1;
	image_yscale = easemult(juice.ycurve, juice.pos, juice.duration, 1)+1;
	log(image_xscale, image_yscale, juice.pos, juice.duration);
	juice.pos = min(juice.pos+1, juice.duration);
}

function juiceholder() constructor {
	xcurve = ac_sin;
	ycurve = ac_sin;
	pos = 1;
	duration = 1;
	priority = false;
}