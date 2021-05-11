if(get_player_color(player) == 0){
set_character_color_slot(1, 191, 235, 255);
}

if(get_player_color(player) == 5){
outline_color = [ 0, 1, 136 ];
}

if(get_player_color(player) == 6){
outline_color = [ 111, 20, 0 ];
}

if(get_player_color(player) == 22){
outline_color = [ 61, 0, 0 ];
}

if (get_player_color(player) == 7){
    for(i = 0; i < 8; i++){
    set_character_color_shading(i, 0);
	outline_color = [ 35, 67, 49 ];
    }
}