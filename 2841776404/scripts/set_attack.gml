///#args attack // this line makes code editors not freak out for some reason






if (instance_exists(standby_suit) && suit_out == true){
    if (attack == AT_DSPECIAL){
        attack = AT_DSPECIAL_AIR;
    }
}

if (has_rock){
    if (left_down){
        if (special_pressed){
            spr_dir = -1;
            attack = AT_FSPECIAL_2;
            window = 1;
            window_timer = 0;
        }
        if (attack_pressed){
                spr_dir = -1;
                attack = AT_FTHROW;
                window = 1;
                window_timer = 0;
        }
    }
    if (right_down){
        if (special_pressed){
            spr_dir = 1;
            attack = AT_FSPECIAL_2;
            window = 1;
            window_timer = 0;
        }
        if (attack_pressed){
                spr_dir = 1;
                attack = AT_FTHROW;
                window = 1;
                window_timer = 0;
        }
    }
    if (right_stick_pressed){
            spr_dir = 1;
            attack = AT_FTHROW;
            window = 1;
            window_timer = 0;
        }
    if (left_stick_pressed){
            spr_dir = -1;
            attack = AT_FTHROW;
            window = 1;
            window_timer = 0;
        }
    if (up_stick_pressed){
            attack = AT_UTHROW;
            window = 1;
            window_timer = 0;
    }
    if (down_stick_pressed){
            attack = AT_DTHROW;
            parried = false;
            window = 1;
            window_timer = 0;
    }
    if (up_down){
        if (special_pressed){
            attack = AT_NSPECIAL_2;
            window = 1;
            window_timer = 0;
        }
        if (attack_pressed){
            attack = AT_UTHROW;
            window = 1;
            window_timer = 0;
        }
    }
    if (down_down){
        if (special_pressed){
            attack = AT_DSPECIAL_2;
            parried = false;
            window = 1;
            window_timer = 0;
        }
        if (attack_pressed){
            attack = AT_DTHROW;
            parried = false;
            window = 1;
            window_timer = 0;
        }
    }
    if (joy_pad_idle){
        if (special_pressed){
            attack = AT_USPECIAL_2;
            window = 1;
            window_timer = 0;
        }
        if (attack_pressed){
            attack = AT_NTHROW;
            window = 1;
            window_timer = 0;
        }
    }
}