// ==================== GRAFFITI SET_ATTACK  ======================
if attack == AT_TAUNT && get_synced_var(player) == true {
    attack = AT_TAUNT_2;
}
// ================================================================


if (attack == AT_DSPECIAL)
if (window == 2 && special_pressed)
attack = AT_FIRE

if(stored_spell && attack == AT_DSPECIAL){
    stored_spell = false;
    switch(hud_option){
        case 0:
        {
            if(!free){
                attack = AT_EXTRA_2;//dark
            }
            if(free){
                move_cooldown[AT_DSPECIAL] = 2;
                clear_button_buffer(PC_SPECIAL_PRESSED);
                stored_spell = true;
                clear_button_buffer(PC_DOWN_HARD_PRESSED);
            }
        }
        break;
        case 1:
        {
            attack = AT_EXTRA_1;//fire
        }
        break;
        case 2:
        {
            attack = AT_EXTRA_3;//bolt
        }
        break;
        case 3:
        {
            attack = AT_NSPECIAL_2;//earth
        }
        break;
        case 4:
        {
            attack = AT_DSPECIAL_2;//water
        }
        break;
    }
}

if (attack == AT_DSPECIAL && !stored_spell){
    if (vsp < -1){
    vsp = -1
    }  
if (vsp > 0){
    vsp = 0
    }
}
released = false;

if (down_down && attack == AT_TAUNT){
    attack = AT_USPECIAL_GROUND
    if(get_player_color(player) == 29){
        attack = AT_NTHROW
    }
}