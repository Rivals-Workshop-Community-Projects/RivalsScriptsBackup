//init_shader
// if get_player_color(player) == 12 {
//     set_character_color_shading( 1, 0.6 );
// }

switch(get_player_color(player)){
    case 12: //Cynthia
        set_character_color_shading(0, 1.25);
        break;
    case 14: //Early Access
        set_character_color_shading(0, 0);
        set_character_color_shading(1, 0);
        set_character_color_shading(2, 0);
        set_character_color_shading(3, 0);
        break;
    case 15: //Mew
        set_character_color_shading(0, 1.75);
        break;
}