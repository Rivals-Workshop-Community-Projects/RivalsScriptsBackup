if (attack == AT_DSPECIAL_AIR && state == PS_ATTACK_AIR){
    hurtboxID.sprite_index = sprite_get("dspecial_air_hurt")
}

if (attack == AT_DSPECIAL && state == PS_ATTACK_GROUND){
    hurtboxID.sprite_index = sprite_get("dspecial_hurt")
}

if ((attack == AT_USPECIAL || attack == AT_USPECIAL_2) && window == 5 && state == PS_ATTACK_AIR){
    if (uspecial_timer mod 16 == 0){
        set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
        set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 6);
    }
    if (uspecial_timer mod 16 == 8){
        set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
        set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);
    }
}