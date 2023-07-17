varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float baseval;
uniform vec3 colmult;
uniform bool invert;

void main() {
	//v_vColour.g *= 0.5;
	vec4 color = v_vColour;
	
	color.r *= colmult.r;
	color.b *= colmult.b;
	color.g *= colmult.g;
	
	color.r += baseval;
	color.b += baseval;
	color.g += baseval;
	
	if (invert) {
		color.r = 1.0-color.r;
		color.g = 1.0-color.g;
		color.b = 1.0-color.b;
	}
	
    gl_FragColor = color * texture2D(gm_BaseTexture, v_vTexcoord);
}

/*float lerp(val1, val2, amount) {
	return 0.0;
}*/