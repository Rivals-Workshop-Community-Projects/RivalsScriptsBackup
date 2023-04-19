if("pandoria_colors" in self && !init_UNshader){
    for(i = 0; i < 8; i++){
        set_article_color_slot(i, colour_get_red(pandoria_colors[get_player_color(player)][i]), 
                                  colour_get_green(pandoria_colors[get_player_color(player)][i]), 
                                  colour_get_blue(pandoria_colors[get_player_color(player)][i]));
    }
}else if("pandoria_colors" in self && init_UNshader){
    for(i = 0; i < 8; i++){
        set_article_color_slot(i, get_color_profile_slot_r( get_player_color(player), i), 
                                  get_color_profile_slot_g( get_player_color(player), i), 
                                  get_color_profile_slot_b( get_player_color(player), i));
    }
}



var col = get_player_color(player);
//coat darker on 2, 6, 9-11, 13
if (col == 2 || col == 6 || (col >= 9 && col <= 111) || col == 13){
set_character_color_shading( 2, 1.3 );
}
//gloves darker on 1, 2, 6-13, 16
if (col == 1 || col == 2 || (col >= 6 && col <= 13) || col == 16){
set_character_color_shading( 3, 1.3 );
}

//color correction for win/lose portraits               312 is right before results screen
if (object_index == asset_get("draw_result_screen") || object_index == 312){
    if(col == 13){
        set_character_color_slot(4, 255, 231, 201);
    }else if(col == 15){
        set_character_color_slot(6, 135, 133, 145);
        set_character_color_slot(7, 94, 92, 107);
    }else if(col == 16){
        set_character_color_slot(4, 255, 231, 201);
    }

    //voice lines. this code doesnt work but i tried
    /*if(get_synced_var(player) == 1){
        var va_select = random_func(0, 5, true);
        sound_play(va_lines[1][va_select]);
    }else if(get_synced_var(player) == 2){
        var va_select = random_func(0, 5, true);
        sound_play(va_lines[1][va_select]);
    }*/
}