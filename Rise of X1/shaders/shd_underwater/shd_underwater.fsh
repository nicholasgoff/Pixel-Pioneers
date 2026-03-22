varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float time; 

void main() {
	vec4 col = texture2D(gm_BaseTexture, v_vTexcoord);
	
	float pulse = (sin(time) + 1.0) / 2.0;
	
	col.r *= 1.0 + pulse * 0.8;
	col.g *= 0.1 + pulse * 0.1;
	col.b *= 0.1 + pulse * 0.1;
	
	gl_FragColor = v_vColour * col;
}