//Think im suffering gender dysphoria. Don't tell anyone. It'll be our secret.
if (get_player_color(player) == 14){ //Early Access
	set_character_color_shading(0, 0);
	set_character_color_shading(1, 0);
	set_character_color_shading(2, 0);
}

if (get_player_color(player) == 12){ //Champion
	set_character_color_slot( 0, 173, 201, 209, 0.8); //SKIN
	set_character_color_slot( 1, 115, 144, 155, 0.8); //STRIPES
	set_character_color_slot( 2, 65, 60, 60, 1); //CLOTHES
	set_article_color_slot(1, 115, 144, 155, 0.8)
}

if (get_player_color(player) == 9) {
	set_article_color_slot(1, 188, 255, 168, 1)
}
if (get_player_color(player) == 1) {
	set_article_color_slot(1, 246, 157, 209, 1)
}
if (get_player_color(player) == 3) {
	set_article_color_slot(1, 84, 187, 80, 1)
}