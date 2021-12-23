//Extended shade ranges

//Fixing Colors
if (get_player_color( player ) == 0) {
    set_character_color_slot(5, 64, 59, 13, 1);
    set_character_color_slot(6, 45, 47, 61, 1);
    
}

//Early Access colorless
if (get_player_color(player) == 13){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
}