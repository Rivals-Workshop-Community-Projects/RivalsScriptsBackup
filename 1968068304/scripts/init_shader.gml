//init_shader.gml:
var alt_clr = get_player_color("online_css" in self ? 0 : player);

if (alt_clr == 12) {
set_character_color_shading( 0, 0 );
set_character_color_shading( 1, 0 );
set_character_color_shading( 2, 0 );
set_character_color_shading( 3, 0 );
//set_character_color_shading( 4, 0 );
set_character_color_shading( 5, 0 );
//set_character_color_shading( 6, 0 );
set_character_color_shading( 7, 0 );
}


#define set_color_slot
var shade_slot = argument[0], 
    r = argument[1], 
    g = argument[2], 
    b = argument[3], 
    a = argument_count > 4 ? argument[4]: 1;
set_character_color_slot( shade_slot, r, g, b, a );
set_article_color_slot( shade_slot, r, g, b, a );