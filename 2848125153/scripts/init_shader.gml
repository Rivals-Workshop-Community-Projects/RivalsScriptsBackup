//init_shader - changing the local color profiles

if(get_player_color(player) == 0){
    set_character_color_slot(1, 47, 54, 82); //Hat
    set_character_color_slot(4, 47, 54, 82); //Pants
    
}else if (get_player_color( player ) == 1 || get_player_color( player ) == 2) {
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}


if("state" in self){
    if(state == PS_DEAD){
        //set_victory_sidebar(sprite_get("very unskillful"));
    }
}