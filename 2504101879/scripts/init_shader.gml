if object_index != oPlayer exit;

//set_character_color_slot(0, color_get_red(rainbow_color), color_get_green(rainbow_color), color_get_blue(rainbow_color))

if (get_player_color(player) == 20){
    for(i = 0; i < 6; i++){
        set_character_color_shading(i, 0);
    }
}