//init_shader.gml
//we use this script for color shenanigans, when we want to mess with the colors in the colors.gml script a bit beyond what we can do normally
//this includes messing with the shading contrast, applying transperency etc.

//online player is actually player 0, alt_fix communicates with the css, and changes the player based on that
var alt_cur = "alt_fix" in self ? get_player_color(alt_fix) : get_player_color(player);

switch (alt_cur)
{
    case 0:
        set_character_color_slot( 0, 92, 230, 207 ); //Apparel 1
        set_character_color_slot( 1, 61, 77, 74 ); //Apparel 2
        set_character_color_slot( 2, 179, 179, 179 ); //Sleeves & Ears
        set_character_color_slot( 3, 138, 230, 214 ); //Fur
        set_character_color_slot( 4, 230, 115, 153 ); //Trim
        set_character_color_slot( 5, 36, 59, 179 ); //Sword
        set_character_color_slot( 6, 255, 51, 187 ); //Gems
        set_character_color_slot( 7, 255, 179, 25 ); //Bat Fur
    break;
    case 19:
        for (var i = 0; i < 8; i++) set_character_color_shading(i, 0);
        outline_color = [15, 56, 15];   
    break;
}
//if (alt_cur == 18 && string_lower(get_player_name(player)) == "tom") {
//    dust_mode_ready = true;
//}