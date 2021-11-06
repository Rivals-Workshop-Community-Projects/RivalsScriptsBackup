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
        case 6:
        set_character_color_slot(1, 0, 255, 0);
        break;
        case 7:
        set_character_color_slot(1, 117, 251, 238);
        break;
        case 8:
        set_character_color_slot(1, 248, 131, 215);
        break;
        case 9:
        set_character_color_slot(1, 255, 255, 255);
        break;
        case 10:
        set_character_color_slot(1, 255, 255, 255);
        break;
        case 11:
        set_character_color_slot(1, 255, 255, 255);
        break;
        case 12:
        set_character_color_slot(1, 255, 255, 255);
        break;
        case 13:
        set_character_color_slot(1, 165, 187, 209);
        break;
        case 14:
        set_character_color_slot(1, 0, 191, 254);
        break;
        case 15:
        set_character_color_slot(1, 70, 179, 254);
        break;
        case 16:
        set_character_color_slot(1, 225, 135, 154);
        break;
        case 17:
        set_character_color_slot(1, 236, 29, 38);
        break;
        case 18:
        set_character_color_slot(1, 255, 255, 255);
        break;
        case 19:
        set_character_color_slot(1, 255, 241, 3);
        break;
        case 20:
        set_character_color_slot(1, 255, 255, 255);
        break;
    }
}