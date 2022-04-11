//Shading Values
if get_player_color(player) == 2 {
set_character_color_shading( 4, 10 );
}
if get_player_color(player) == 3 {
set_character_color_shading( 4, 20 );
}
if get_player_color(player) == 6 {
set_character_color_shading( 4, 10 );
}
if get_player_color(player) == 8 {
set_character_color_shading( 4, 20 );
}
if get_player_color(player) == 12 {
set_character_color_shading( 4, 0 );
}
if get_player_color(player) == 14 {
set_character_color_shading( 4, 0 );
}
if get_player_color(player) == 17 {
set_character_color_shading( 4, 0 );
}
if get_player_color(player) == 18 {
set_character_color_shading( 4, 0 );
}
if get_player_color(player) == 19 {
set_character_color_shading( 4, 3 );
}
if get_player_color(player) == 20 {
set_character_color_shading( 4, 6 );
}
if get_player_color(player) == 28 {
set_character_color_shading( 4, 10 );
}

//Stolen from Chuckya which was stolen from Shyguy which was stolen from Acid, if you steal this keep the chain going lol
if (get_player_color( player ) == 7) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}
if (get_player_color( player ) == 31) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}