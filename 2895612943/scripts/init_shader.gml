//init_shader.gml

if (get_player_color(player) == 1){
    set_character_color_shading( 0, 1.1 ); //clothes a
    set_character_color_shading( 2, 2.0 ); //scratch fur
    set_character_color_shading( 3, 0.7 ); //bite fur
}

if (get_player_color(player) == 5){
    set_character_color_shading( 2, 1.9 ); //scratch fur
    set_character_color_shading( 3, 0.5 ); //bite fur
}

if (get_player_color(player) == 7){ // transcend
    set_character_color_shading( 0, 1.3 ); //clothes a
    set_character_color_shading( 1, 0.9 ); //clothes b
    set_character_color_shading( 2, 1.3 ); //scratch fur
}

if (get_player_color(player) == 8){ // crash and burn
    set_character_color_shading( 0, 0.8 ); //clothes a
    set_character_color_shading( 1, 0.7 ); //clothes b
    set_character_color_shading( 3, 0.8 ); //bite fur
    set_character_color_shading( 5, 1.5 ); //soles
}

if (get_player_color(player) == 9){ // start and stop
    set_character_color_shading( 0, 1.1 ); //clothes a
    set_character_color_shading( 1, 0.8 ); //clothes b
}

if (get_player_color(player) == 11){ // six and seven
    set_character_color_shading( 1, 0.8 ); //clothes b
    set_character_color_shading( 3, 0.5 ); //bite fur
}

if (get_player_color(player) == 12){ // rise and fall
    set_character_color_shading( 0, 0.6 ); //clothes a
    set_character_color_shading( 1, 0.6 ); //clothes b
    set_character_color_shading( 2, 1.5 ); //scratch fur
    set_character_color_shading( 3, 1.5 ); //bite fur
    set_character_color_shading( 6, 1.5 ); //biters
}

if (get_player_color(player) == 13){ // milk and cookie
    set_character_color_shading( 0, 1.4 ); //clothes a
    set_character_color_shading( 1, 0.8 ); //clothes b
}

if (get_player_color(player) == 14){ // earth and sea
    set_character_color_shading( 1, 0.5 ); //clothes b
}

if (get_player_color(player) == 15){ // winter and summer
    set_character_color_shading( 1, 0.9 ); //clothes b
    set_character_color_shading( 5, 0.6 ); //soles
}

if (get_player_color(player) == 16){ // truth or dare
    set_character_color_shading( 1, 0.9 ); //clothes b
    set_character_color_shading( 2, 1.6 ); //scratch fur
    set_character_color_shading( 3, 0.5 ); //bite fur
}

if (get_player_color(player) == 17){ // love and war
    set_character_color_shading( 0, 1.7 ); //clothes a
    set_character_color_shading( 2, 1.1 ); //scratch fur
    set_character_color_shading( 3, 1.1 ); //bite fur
}

if (get_player_color(player) == 18){ // fix and break
    set_character_color_shading( 5, 0.6 ); //soles
}

if (get_player_color(player) == 19){ // mint and chocolate
    set_character_color_shading( 5, 0.6 ); //soles
}