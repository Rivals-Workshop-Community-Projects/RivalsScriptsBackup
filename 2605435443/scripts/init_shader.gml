//False Color Magic
if (get_player_color(player) == 0){
    set_character_color_slot(1, 135, 99, 63, 1);
}

//EA
if (get_player_color(player) == 8){
    for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
}

/* if (noise_cancel)
{
    
    set_character_color_slot(0, 130, 255, 255);
    set_character_color_slot(1, 130, 255, 255);
    set_character_color_slot(2, 130, 255, 255);
    set_character_color_slot(3, 130, 255, 255);
    set_character_color_slot(4, 130, 255, 255);
    set_character_color_slot(5, 130, 255, 255);
    set_character_color_slot(6, 130, 255, 255);
    set_character_color_slot(7, 130, 255, 255);
}
*/
        if(state == PS_PARRY && window <= 2 && get_player_color(player) == 0){
  	    set_character_color_slot(1, 165, 165, 205, 1);
  	        for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 0 );
    }
  	        if (window == 2){
  	        	    set_character_color_slot(1, 135, 99, 63, 1);
  	        for (var slot_num = 0; slot_num < 8; slot_num++) {
        set_character_color_shading( slot_num, 1 );
    }
  	        }
    }