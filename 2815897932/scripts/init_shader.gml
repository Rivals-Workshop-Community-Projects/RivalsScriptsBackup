//init_shader
if get_player_color(player) == 2 {
set_character_color_shading( 3, 1 );
}

if get_player_color(player) == 8 {
set_character_color_shading( 3, 1 );
}


if get_player_color(player) != 2 && get_player_color(player) != 8 {
set_character_color_shading( 3, 0 );
}