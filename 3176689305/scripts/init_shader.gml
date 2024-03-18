//init shader

//colormapping
if (get_player_color(player) == 0)
{
    set_character_color_slot( 4, 0, 0, 0 ); //Eyes 2
    set_character_color_slot( 5, 119, 129, 149 ); //Eyes Fix
    set_character_color_slot( 3, 0, 0, 0 ); //Eyes1
    set_character_color_slot( 6, 242, 246, 255 ); //Trail1
    set_character_color_slot( 7, 173, 180, 193 ); //Trail2
}

if (get_player_color(player) == 9)
{
    set_character_color_shading(0, -0.3);
    set_character_color_shading(1, -0.3);
    set_character_color_shading(2, -0.3);
    set_character_color_shading(5, -0.3);
}