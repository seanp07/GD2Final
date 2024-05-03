shader_type canvas_item;

uniform float intensity; 

void fragment() {
	vec4 basecolor = vec4(1.0, 0.0, 0.0, 0.0);
	basecolor.a = intensity * 0.8;
	COLOR = basecolor; 
}
