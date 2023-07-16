varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
	//v_vColour.g *= 0.5;
	vec4 color = v_vColour;
	color.r *= .5;
	color.b += .2;
	color.g *= .85;
    //vec4 color = vec4(1.0, 0.0, 0.0, 1.0);
	
    //float _x = floor(color.g * 2.0 + 0.5); 
    //vec2 index = vec2((_x + palette_index * 3.0)*pw,0.0);
    gl_FragColor = color * texture2D( gm_BaseTexture, v_vTexcoord );
}

/*float lerp(val1, val2, amount) {
	return 0.0;
}*/