//gameboy alt
if (get_player_color(player) == 7){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
        outline_color = [35, 67, 49];
    }
}

//doatk alt
if (get_player_color(player) == 8){
    for(i = 0; i < 4; i++){
        set_character_color_slot( i, 0, 0, 0, 0);
    }
}