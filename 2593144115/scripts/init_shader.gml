if (get_player_color(player) == 0){
    set_character_color_slot(1, 8, 190, 122); //hair
    set_character_color_slot(2, 0, 227, 142); //hair light
}

if (get_player_color(player) == 7) {
    set_character_color_shading( 0, 0 );
    set_character_color_shading( 1, 0 );
    set_character_color_shading( 2, 0 );
    set_character_color_shading( 3, 0 );
    set_character_color_shading( 4, 0 );
    set_character_color_shading( 5, 0 );
    set_character_color_shading( 6, 0 );
    set_character_color_shading( 7, 0 );
}

//normal shading modifiers (so most alts dont look like complete garbage))

if (get_player_color(player) == 1) {
    set_character_color_shading( 0, 0.6 );
    set_character_color_shading( 7, 1.5 );
}

if (get_player_color(player) == 2) {
    set_character_color_shading( 3, 1.4 );
}

if (get_player_color(player) == 3) {
    set_character_color_shading( 0, -8 );
    set_character_color_shading( 1, -8 );
    set_character_color_shading( 3, -8 );
    set_character_color_shading( 4, 2 );
    set_character_color_shading( 5, 1.5 );
}

if (get_player_color(player) == 4) {
    set_character_color_shading( 1, -10 );
    set_character_color_shading( 4, 2 );
    set_character_color_shading( 5, -10 );
}

if (get_player_color(player) == 5) {
    set_character_color_shading( 0, 0.7 );
    set_character_color_shading( 1, 0.7 );
    set_character_color_shading( 3, 0.7 );
    set_character_color_shading( 5, 2 );
    set_character_color_shading( 7, 1.2 );
}

if (get_player_color(player) == 6) {
    set_character_color_shading( 0, 0.9 );
    set_character_color_shading( 1, 0.8 );
    set_character_color_shading( 3, 1.5 );
    set_character_color_shading( 4, 0.7 );
    set_character_color_shading( 5, 2 );
}

if (get_player_color(player) == 8) {
    set_character_color_shading( 0, 0.7 );
    set_character_color_shading( 1, 1.5 );
}

if (get_player_color(player) == 9) {
    set_character_color_shading( 1, 1.6 );
    set_character_color_shading( 4, 1.3 );
    set_character_color_shading( 5, 1.3 );
}

if (get_player_color(player) == 10) {
    set_character_color_shading( 0, 0.2 );
    set_character_color_shading( 1, 1.6 );
    set_character_color_shading( 4, 1.3 );
    set_character_color_shading( 5, 1.3 );
}

if (get_player_color(player) == 11) {
    set_character_color_shading( 5, 1.4 );
}

if (get_player_color(player) == 12) {
    set_character_color_shading( 0, 0.8 );
    set_character_color_shading( 4, 2 );
    set_character_color_shading( 5, -10 );
    set_character_color_shading( 7, 1.2 );
}

if (get_player_color(player) == 13) {
    set_character_color_shading( 1, 1.5 );
    set_character_color_shading( 3, 1.5 );
    set_character_color_shading( 4, -7 );
}

if (get_player_color(player) == 14) {
    set_character_color_shading( 0, 1.5 );
    set_character_color_shading( 1, 0.7 );
    set_character_color_shading( 4, 2 );
    set_character_color_shading( 5, 2 );
}

if (get_player_color(player) == 15) {
    set_character_color_shading( 1, 1.4 );
    set_character_color_shading( 5, 2 );
    set_character_color_shading( 7, 0.8 );
}

if (get_player_color(player) == 16) {
    set_character_color_shading( 0, 0.7 );
}

if (get_player_color(player) == 17) {
    set_character_color_shading( 0, 1.4 );
    set_character_color_shading( 1, 0.7 );
    set_character_color_shading( 4, 0.8 );
    set_character_color_shading( 5, 1.4 );
    set_character_color_shading( 7, 0.8 );
}

if (get_player_color(player) == 18) {
    set_character_color_shading( 0, 0.8 );
    set_character_color_shading( 1, 2 );
    set_character_color_shading( 3, 1.6 );
    set_character_color_shading( 4, 1.8 );
    set_character_color_shading( 5, 2 );
}

if (get_player_color(player) == 19) {
    set_character_color_shading( 7, 0.8 );
}

if (get_player_color(player) == 20) {
    //set_character_color_shading( 1, -8 );
    //set_character_color_shading( 3, -8 );
    set_character_color_shading( 4, 1.3 );
}


