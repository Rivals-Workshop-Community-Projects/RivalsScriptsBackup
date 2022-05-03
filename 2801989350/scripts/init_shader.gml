//NES

if (get_player_color(player) == 8){ //change 7 to the slot of your EA palette, starting from 0 (so this is really the 8th skin if you include default)
    for(i = 0; i < 9; i++){
        set_character_color_shading(i, 0);
    }
}

//EA

if (get_player_color(player) == 9){ //change 7 to the slot of your EA palette, starting from 0 (so this is really the 8th skin if you include default)
    for(i = 0; i < 9; i++){
        set_character_color_shading(i, 0);
    }
}