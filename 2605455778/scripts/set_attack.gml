if(prev_attack == AT_NSPECIAL && nextarmor){
        //swallowarmor = true;
        //nextarmor = false;
}
if(attack == AT_DSPECIAL && free){
    attack = AT_DSPECIAL_AIR;
}
if(attack == AT_FSPECIAL && armorpoints > 0){
    attack = AT_FSPECIAL_2;
}
if(attack == AT_FSPECIAL_2){
    if(free){
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);
    }else{
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
    }
}
if(attack == AT_FSPECIAL){
    canledgecancel = false;
}
if(swallow){
    has_rock = false;
    if(free){
        set_state(PS_ATTACK_AIR);
    }else{
        set_state(PS_ATTACK_GROUND);
    }
    swallow = false;
    if(attack_pressed){
        if(free){
            attack = AT_NAIR;
        }else{
            attack = AT_FSTRONG;
        }
        if(left_down || right_down){
            if(free){
                if((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down)){
                    attack = AT_BAIR;
                }else{
                    attack = AT_FAIR;
                }
            }else{
                attack = AT_FSTRONG;
            }
        }
        if(up_down){
            if(free){
                attack = AT_UAIR;
            }else{
                attack = AT_USTRONG;
            }
        }
        if(down_down){
            if(free){
                attack = AT_DAIR;
            }else{
                attack = AT_DSTRONG;
            }
        }
        swallowarmor = true;
        armorspend();
    }
    if(up_stick_pressed){
        if(free){
            attack = AT_UAIR;
        }else{
            attack = AT_USTRONG;
        }
        swallowarmor = true;
        armorspend();
    }
    if(left_stick_pressed || right_stick_pressed){
        if(free){
            if((spr_dir == 1 && left_stick_pressed) || (spr_dir == -1 && right_stick_pressed)){
                    attack = AT_BAIR;
                }else{
                    attack = AT_FAIR;
                }
        }else{
            attack = AT_FSTRONG;
        }
        swallowarmor = true;
        armorspend();
    }
    if(down_stick_pressed){
        if(free){
            attack = AT_DAIR;
        }else{
            attack = AT_DSTRONG;
        }
        swallowarmor = true;
        armorspend();
    }
    if(special_pressed){
        //swallowarmor = false;
        if(is_special_pressed(DIR_UP)){
            swallowups = true;
            attack = AT_USPECIAL;
        }else{
            if(free){
                attack = AT_UTHROW;
            }else{
                attack = AT_NTHROW;
            }
            armorgain = true;
        }
    }
    if(attack == AT_NSPECIAL){
        if(free){
            attack = AT_UTHROW;
        }else{
            attack = AT_NTHROW;
        }
        armorgain = true;
    }
    if(!free){
        swallow_action = attack;
    }else{
        swallow_action = -1;
    }
    swallowarmor = true;
    window = 1;
    window_timer = 0;
}else if(swallow_action != -1){
    //attack = swallow_action;
    swallow_action = -1;
}
if(swallow_action == AT_USPECIAL){
    swallowarmor = false;
    swallow_action = -1;
}
if(prev_attack != AT_NSPECIAL){
    swallowarmor = false;
    nextarmor = false;
}
#define armorspend
    var a = spawn_hit_fx(x-20*spr_dir, y, armorlosssmallfx)
    a.depth = -10;
    sound_play(asset_get("sfx_kragg_rock_shatter"));