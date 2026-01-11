//init_shader.gml
//we use this script for color shenanigans, when we want to mess with the colors in the colors.gml script a bit beyond what we can do normally
//this includes messing with the shading contrast, applying transperency etc.

//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self? get_player_color(alt_fix):get_player_color(player);

switch alt_cur{
	case 0: //default - colormapped the color of the face
		set_character_color_slot(2, 49, 52, 54); //suit jacket
		set_article_color_slot(2, 49, 52, 54);
		set_character_color_slot(3, 39, 41, 43); //suit shirt
		set_article_color_slot(3, 39, 41, 43);
		set_character_color_slot(4, 49, 52, 54); //tie
		set_article_color_slot(4, 49, 52, 54);
		set_character_color_slot(5, 49, 52, 54); //pants
		set_article_color_slot(5, 49, 52, 54);
		set_character_color_slot(6, 29, 31, 33); //shoes
		set_article_color_slot(6, 29, 31, 33);
	break;
	case 14: //gameboy / early access - gameboy palletes don't have shading
		for (var i = 0; i < 8; i++) set_character_color_shading(i, 0);
		outline_color = [15, 56, 15];
	break;
}