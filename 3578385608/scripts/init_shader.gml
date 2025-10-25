//Color correction

if ("init_shader_alts" in self? init_shader_alts: get_player_color(player)) == 0 {
	set_character_color_slot( 1, 155, 75, 53 ); //Beard
	set_character_color_slot( 4, 155, 75, 53 ); //Shoes

	set_article_color_slot( 1, 155, 75, 53 ); //Beard
	set_article_color_slot( 4, 155, 75, 53 ); //Sash
}