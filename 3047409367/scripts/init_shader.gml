//fix colors on base alt
if (get_player_color(player) == 0){
	set_character_color_slot( 7, 233, 145, 144 ); //shoes
}

//gameboy alt
if (get_player_color(player) == 7){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
        outline_color = [35, 67, 49];
    }
}

/*
//fix shading on some alts
if (get_player_color(player) == 4){
    set_character_color_shading(4, 0.6);
    set_character_color_shading(7, 0.6);
}

if (get_player_color(player) == 9){
    set_character_color_shading(4, 0.7);
}

if (get_player_color(player) == 10){
    set_character_color_shading(4, 0.6);
}

if (get_player_color(player) == 11){
    set_character_color_shading(4, 0.6);
    set_character_color_shading(7, 0.6);
}
*/