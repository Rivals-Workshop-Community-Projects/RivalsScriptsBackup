switch(attack){
    case AT_USPECIAL:
    case AT_USPECIAL_2:
        clear_button_buffer(PC_SPECIAL_PRESSED);
        break;
    case AT_DAIR:
        reset_attack_value(AT_DAIR, AG_LANDING_LAG);
        if penny_dair_used < 6{
            set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, -6 + penny_dair_used);
        }
        penny_dair_used++;
        break;
    case AT_DSPECIAL:
        if move_cooldown[AT_DSPECIAL] == 0{
            can_fast_fall = false;
            if instance_exists(mine) or opponent_strapped{
                if shield_down{
                    if instance_exists(mine){
                        mine.state = 5;
                    }
                    attack = AT_DSPECIAL;   // Replace the mine
                } else {
                    if (goboom and boomtimer > 0){ //If the mine is strapped and about to blow...
                        attack = AT_DSPECIAL_AIR; //...cancel the explosion to allow fakeouts.
                    } else { //Otherwise...
                        attack = AT_DSPECIAL_2; //Begin the detonation sequence.
                    }
                }
            } else {
                attack = AT_DSPECIAL;
            }
        }
        break;
}

if penny_install{
    switch(attack){
        case AT_USTRONG:
            attack = AT_USTRONG_2;
            sound_play(asset_get("sfx_ell_overheat"));
            break;
        case AT_FSTRONG:
            attack = AT_FSTRONG_2;
            sound_play(asset_get("sfx_ell_overheat"));
            break;
        case AT_DSTRONG:
            attack = AT_DSTRONG_2;
            sound_play(asset_get("sfx_ell_overheat"));
            break;
    }
    if move_cooldown[AT_USPECIAL] == 0 and attack == AT_USPECIAL{
        attack = AT_USPECIAL_2;
    }
}
/*
if down_down{
    if attack == AT_TAUNT{
        attack = AT_TAUNT_2;
    }
}*/