shader_type canvas_item;

render_mode blend_mix;
uniform vec4 modulate: hint_color;

void fragment() {
	//COLOR = vec4(modulate.rg, modulate.g, texture(TEXTURE, UV).a * modulate.a);
	//COLOR = vec4(modulate.rgb, texture(TEXTURE, UV).a * modulate.a);
	COLOR = vec4(modulate.rrr, texture(TEXTURE, UV).a * modulate.a);
	//Why rgb is pink? Aha, modulate is an "ambient" color! It should be TEXTURE... RIGHT: 25.2.2022
	//COLOR = vec4(texture(TEXTURE, UV).rgb, texture(TEXTURE, UV).a * modulate.a);
}
