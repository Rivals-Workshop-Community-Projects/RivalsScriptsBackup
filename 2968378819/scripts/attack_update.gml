//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    can_fast_fall = false;
    if (window == 1){
        if (window_timer == 1){
            if (!free) was_grounded = true;
            else was_grounded = false;
        }
        if (window_timer == 11){
            y -= 1;
        }
        if (up_down && !right_down && !left_down && !down_down){
            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, 2);
            nspecial_direction = 1;
        }
        if (up_down && (right_down || left_down) && !down_down){
            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, 3);
            if (right_down){
                spr_dir = 1;
                nspecial_direction = 2;
            }
            if (left_down){
                spr_dir = -1;
                nspecial_direction = 3;
            }
        }
        if ((!up_down && (right_down || left_down) && !down_down) || joy_pad_idle){
            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, 4);
            if (right_down){
                spr_dir = 1;
                nspecial_direction = 4;
            }
            if (left_down){
                spr_dir = -1;
                nspecial_direction = 5;
            }
            if (spr_dir == 1) nspecial_direction = 4;
            if (spr_dir == -1) nspecial_direction = 5;
        }
        if (!up_down && (right_down || left_down) && down_down){
            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, 5);
            if (right_down){
                spr_dir = 1;
                nspecial_direction = 6;
            }
            if (left_down){
                spr_dir = -1;
                nspecial_direction = 7;
            }
        }
        if (!up_down && !right_down && !left_down && down_down){
            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, 6);
            nspecial_direction = 8;
        }
    }

    if (window == 8 && has_hit){
        if (up_down && !right_down && !left_down && !down_down){
            set_window_value(AT_NSPECIAL, 8, AG_WINDOW_GOTO, 9);
            nspecial_direction2 = 1;
        }
        if (up_down && (right_down || left_down) && !down_down){
            set_window_value(AT_NSPECIAL, 8, AG_WINDOW_GOTO, 10);
            if (right_down){
                spr_dir = 1;
                nspecial_direction2 = 2;
            }
            if (left_down){
                spr_dir = -1;
                nspecial_direction2 = 3;
            }
        }
        if (!up_down && (right_down || left_down) && !down_down){
            set_window_value(AT_NSPECIAL, 8, AG_WINDOW_GOTO, 11);
            if (right_down){
                spr_dir = 1;
                nspecial_direction2 = 4;
            }
            if (left_down){
                spr_dir = -1;
                nspecial_direction2 = 5;
            }
        }
        if (!up_down && (right_down || left_down) && down_down){
            set_window_value(AT_NSPECIAL, 8, AG_WINDOW_GOTO, 12);
            if (right_down){
                spr_dir = 1;
                nspecial_direction2 = 6;
            }
            if (left_down){
                spr_dir = -1;
                nspecial_direction2 = 7;
            }
        }
        if (!up_down && !right_down && !left_down && down_down){
            set_window_value(AT_NSPECIAL, 8, AG_WINDOW_GOTO, 13);
            nspecial_direction2 = 8;
        }
 
    }
    
    if (has_hit){
        can_jump = true;
        can_shield = true;
    }
    
    if (window == 8 && window_timer = 5 && !has_hit && !was_grounded){
        state = PS_PRATFALL;
    }
    
    if (window == 8 && window_timer = 5 && was_grounded && !has_hit){
        window = 20;
    }
    
    if (window == 8 && window_timer = 5 && has_hit &&
    (joy_pad_idle || nspecial_direction == nspecial_direction2)){
        window = 20;
    }
    
    if (window == 14){
        if (has_hit){
            set_window_value(AT_NSPECIAL, 14, AG_WINDOW_TYPE, 1);
        }
        else {
            set_window_value(AT_NSPECIAL, 14, AG_WINDOW_TYPE, 7);
        }
    }

    
    if (window > 1 && !free){
        window = 20;
    }
}

if (attack == AT_FSPECIAL){
    move_cooldown[AT_FSPECIAL] = 30;
}

if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    if (window == 1){
        set_window_value(AT_DSPECIAL, 4, AG_WINDOW_GOTO, 5);
    }
    if (window == 4 && free){
        set_window_value(AT_DSPECIAL, 4, AG_WINDOW_GOTO, 7);
    }
}

if (attack == AT_DSPECIAL_AIR){
    can_fast_fall = false;
    if (!free){
        window = 9;
    }
}

if (attack == AT_TAUNT){
    if (window == 2 && state_timer > 42 && !taunt_down){
        window = 3;
        window_timer = 1;
    }
    if (window == 2 && state_timer%10 == 0){
        sound_play(asset_get("sfx_birdflap"));
    }
}
else {
    i_died = false;
}