if (get_player_color(player) == 0){
    set_character_color_slot( 6, 45, 45, 45 );
}

if (get_player_color(player) == 10 || get_player_color(player) == 11){
    for(i = 0; i < 7; i++){
        set_character_color_shading(i, 0);
    }
}