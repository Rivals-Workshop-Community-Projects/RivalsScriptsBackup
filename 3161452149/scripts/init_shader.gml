//e
var alt_cur = ("init_shader_alts" in self? init_shader_alts: get_player_color(player));
var g = 0;
repeat 8{
	set_character_color_shading(g, alt_cur != 7);
	g++;
}