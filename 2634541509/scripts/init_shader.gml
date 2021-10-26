if(attack == AT_EXTRA_3 && window == 2 && state != PS_AIR_DODGE && state != PS_PARRY && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD){
    set_character_color_slot(1, r_change, g_change, b_change);
    set_character_color_slot(1, r_change, g_change, b_change);
    set_character_color_slot(1, r_change, g_change, b_change);
    set_character_color_slot(1, r_change, g_change, b_change);
    set_character_color_slot(1, r_change, g_change, b_change);
    set_character_color_slot(1, r_change, g_change, b_change);
}else{
    switch(get_player_color(player)){
        case 0:
        set_character_color_slot(1, 255, 255, 255);
        break;
        case 1:
        set_character_color_slot(1, 138, 212, 228);
        break;
        case 2:
        set_character_color_slot(1, 255, 169, 142);
        break;
        case 3:
        set_character_color_slot(1, 212, 248, 178);
        break;
        case 4:
        set_character_color_slot(1, 253, 237, 141);
        break;
        case 5:
        set_character_color_slot(1, 255, 255, 255);
        break;
    }
}