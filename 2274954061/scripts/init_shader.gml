//early access alt
if (get_player_color(player) == 7){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
    outline_color = [35, 67, 49];
}

//blm alt
if (get_player_color(player) == 10){
    set_character_color_shading(0, 0.6);

}