//init_shader.gml

if (get_player_color(player) == 1){
    set_character_color_shading( 0, 1.1 ); //body
    set_character_color_shading( 3, 0.7 ); //bandages
}

if (get_player_color(player) == 5){
    set_character_color_shading( 2, 1.3 ); //gloves/boots
    set_character_color_shading( 3, 0.5 ); //bandages
}

if (get_player_color(player) == 7){
    set_character_color_shading( 0, 0.4 );
    set_character_color_shading( 3, 0.7 );
}

if (get_player_color(player) == 8){
    set_character_color_shading( 0, 0.8 ); //body
    set_character_color_shading( 1, 0.5 ); //electricity
    set_character_color_shading( 3, 0.5 ); //bandages
}

if (get_player_color(player) == 9){
    set_character_color_shading( 0, 1.1 ); //body
    set_character_color_shading( 1, 0.3 ); //electricity
}

