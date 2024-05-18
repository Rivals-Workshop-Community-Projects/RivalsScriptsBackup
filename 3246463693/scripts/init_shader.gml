if(get_player_color(player) == 31){
outline_color = [ 35, 67, 49 ];
}

if (get_player_color(player) == 30 || get_player_color(player) == 31){
    for(i = 0; i < 8; i++){
    set_character_color_shading(i, 0);
    }
}