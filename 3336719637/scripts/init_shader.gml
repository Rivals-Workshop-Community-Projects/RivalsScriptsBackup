//init_shader.gml
//we use this script for color shenanigans, when we want to mess with the colors in the colors.gml script a bit beyond what we can do normally
//this includes messing with the shading contrast, applying transperency etc.

//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

/*for (var s = 0; s < 8; s++;){
    set_character_color_shading(s, 1 - shadelessmode);
}*/

switch (alt_cur)
{
    case 0: //default - colormapped the color of the face
        set_character_color_slot(0, 90, 90, 105);
		set_article_color_slot(7, 120, 148, 110);
		set_character_color_slot(7, 120, 148, 110);
    break;
    case 7: //gameboy / early access - gameboy palletes don't have shading
        for (var i = 0; i < 8; i++) set_character_color_shading(i, 0);
    break;
}