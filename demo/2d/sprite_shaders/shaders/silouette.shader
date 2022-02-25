shader_type canvas_item;

render_mode blend_mix;
uniform vec4 modulate: hint_color;

void fragment() {
	//COLOR = vec4(modulate.rg, modulate.g, texture(TEXTURE, UV).a * modulate.a);
	//COLOR = vec4(modulate.rgb, texture(TEXTURE, UV).a * modulate.a);
	COLOR = vec4(modulate.rrr, texture(TEXTURE, UV).a * modulate.a);
}
