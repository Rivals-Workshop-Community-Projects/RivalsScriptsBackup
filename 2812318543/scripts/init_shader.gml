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


if (get_player_color(player) == 16){
    for(i = 0; i < 8; i++){
        set_character_color_shading(i, 0);
    }
}

//color correction for win/lose portraits               312 is right before results screen
if (object_index == asset_get("draw_result_screen") || object_index == 312){
    if(get_player_color(player) == 12){
        set_character_color_slot(4, 255, 231, 201);
    }else if(get_player_color(player) == 14){
        set_character_color_slot(6, 135, 133, 145);
        set_character_color_slot(7, 94, 92, 107);
    }
}