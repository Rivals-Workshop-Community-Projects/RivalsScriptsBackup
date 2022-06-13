//early access alt
if (get_player_color(player) == 7){
    outline_color = [35, 67, 49];
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
}

//champion alt
if (get_player_color(player) == 10){
    set_character_color_slot(0, 255, 255, 255, .5);
}