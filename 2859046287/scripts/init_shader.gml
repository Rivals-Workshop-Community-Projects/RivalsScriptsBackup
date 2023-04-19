//init_shader.gml
//we use this script for color shenanigans, when we want to mess with the colors in the colors.gml script a bit beyond what we can do normally
//this includes messing with the shading contrast, applying transperency etc.

//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

switch (alt_cur)
{
    case 0: //default - colormapped the color of the face
        set_character_color_slot(2, 0, 0, 0);
		set_article_color_slot(2, 0, 0, 0);
        break;
    case 7: //shadow
        outline_color = [150, 0, 0];
        break;
    case 10: //BLW
        set_character_color_shading(3, -6);
        break;
    case 12: //rainbow v2
        set_character_color_shading(3, -1);
        break;
    case 14: //gameboy / early access - gameboy palletes don't have shading
        for (var i = 0; i < 8; i++) set_character_color_shading(i, 0);
		outline_color = [15, 56, 15];
        break;
    case 15: //milestone - this alt has black transperency and a unique outline
        set_character_color_slot(0, 0, 0, 0, 0.2);
        set_character_color_slot(1, 0, 0, 0, 0.4);
        outline_color = [0, 255, 0];
        break
    case 19: //ender
        set_character_color_shading(3, -1.5);
        break;
    case 21: //THE MAN BEHIND THE TESTING
        set_character_color_shading(3, -1);
        break;
}