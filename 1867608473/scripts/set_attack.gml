//
if soul != noone{
    switch(attack){
        case AT_FSTRONG:
            attack = AT_FSTRONG_2;
            break;
        case AT_DSTRONG:
            attack = AT_DSTRONG_2;
            break;
        case AT_USTRONG:
            attack = AT_USTRONG_2;
            break;
        case AT_USPECIAL:
            attack = AT_USPECIAL_2;
            break;
    }
    if soul.state == 1{
        switch(attack){
            case AT_NSPECIAL:   //
                if move_cooldown[AT_NSPECIAL] == 0{
                    with soul{
                        //sound_play(sound_get("sfx_charge_shot_start"));
                    }
                    soul.state = 7;
                    soul.state_timer = 0;
                    soul.spr_dir = spr_dir;
                    
                    clear_button_buffer(PC_SPECIAL_PRESSED);
                    move_cooldown[AT_NSPECIAL] = 180;
                    set_state(prev_state);
                }
                
                break;
            case AT_FSPECIAL:
                attack = AT_FSPECIAL_2;
                break;
            case AT_DSPECIAL:
                attack = AT_DSPECIAL_2;
                break;
        }
    }
    if soul.state == 5{
        move_cooldown[AT_DSPECIAL] = 999;
    }
} else {
    switch(attack){
        case AT_USPECIAL:
            //sprite_change_offset("uspecial", 124, 190);
            break;
    }
}