#region // Yo-Yo Out
if instance_exists(wren_yoyo){
    switch(attack){
        case AT_NSPECIAL:
            if move_cooldown[AT_NSPECIAL] == 0 and wren_yoyo.state == 1{
                attack = AT_NSPECIAL_2;
            } else {
                move_cooldown[AT_NSPECIAL] = 2;
            }
            break;
        case AT_DSPECIAL:
            if move_cooldown[AT_DSPECIAL] == 0{
                attack = AT_DSPECIAL_2;
            }
            break;
        case AT_USPECIAL:
            if move_cooldown[AT_USPECIAL] == 0{
                switch(wren_tidecall_toggle){
                    case 0:
                        if attack_down and special_down and instance_exists(wren_yoyo){
                            attack = AT_USPECIAL_2
                        }
                        break;
                }
            }
            break;
    }
}
#endregion
#region // FSpecial
wren_noloop = 0;
#endregion
#region // DTilt Buffer
wren_dtiltwo_buffer = false;
wren_dtiltwo_hitfall = false;
#endregion

#region // Rival 2
if wren_rivaltwo_mode{
    for(var w = 1; w <= get_attack_value(attack, AG_NUM_WINDOWS); w++){
        if get_window_value(attack, w, AG_WINDOW_HAS_WHIFFLAG) != 0{
            set_window_value(attack, w, AG_WINDOW_HAS_WHIFFLAG, 0);
        }
    }
    for(var h = 1; h <= get_num_hitboxes(attack); h++){
        set_hitbox_value(attack, h, HG_DRIFT_MULTIPLIER, 0);
    }
}
#endregion