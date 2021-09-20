
if (attack == AT_FSPECIAL_AIR){
    if (window == 3 && window_timer == 29){
        set_state(PS_PRATFALL)
    }
}

if (attack == AT_USPECIAL_2){
    if (window == 3 && window_timer == 19){
        set_state(PS_PRATFALL)
    }
}

if (attack == AT_USPECIAL && free){
    if (window == 3 && window_timer == 19){
        set_state(PS_PRATFALL)
    }
}

if(state == PS_DOUBLE_JUMP && state_timer < 2){
    if(right_down || right_pressed){
        spr_dir = 1
    }else if (left_down || left_pressed){
        spr_dir = -1
    }
}

if(!(attack == AT_TAUNT && state == PS_ATTACK_GROUND) && state != PS_CROUCH){
    char_height = lerp(char_height, 52, 0.3)
}

if(state == PS_CROUCH){
    char_height = lerp(char_height, 40, 0.3)
}