//css_draw.gml

if (get_player_color(player) == 6){
	set_character_color_shading( 0, 0 );
	set_character_color_shading( 1, 0 );
	set_character_color_shading( 2, 0 );
	set_character_color_shading( 3, 0 );
	set_character_color_shading( 4, 0 );
	set_character_color_shading( 5, 0 );
	set_character_color_shading( 6, 0 );
	draw_sprite(sprite_get("earlyaccess_css"), 0, x+8, y+8);
}
if (get_player_color(player) == 7){
	draw_sprite(sprite_get("maxgold_css"), 0, x+8, y+8);
}
if (get_player_color(player) == 13){
	draw_sprite(sprite_get("abyss_css"), 0, x+8, y+8);
}