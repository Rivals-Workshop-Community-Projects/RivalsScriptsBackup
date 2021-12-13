
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

//Halloween Thing
if(halloween == true){
    if(state != PS_IDLE && state != PS_SPAWN){
        halloween = false
        var hall_end = spawn_hit_fx(x, y, halloween_end)
        hall_end.spr_dir = spr_dir
    }
}

if(rock_pause > 0){
    rock_pause--
}