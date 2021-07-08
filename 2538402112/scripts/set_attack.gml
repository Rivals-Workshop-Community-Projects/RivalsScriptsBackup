//set_attack

if (attack == AT_NSPECIAL){
    // print(string(grov_current_nspecial))
    if move_cooldown[AT_NSPECIAL] == 0{
        switch(grov_current_nspecial)
        {
            case 0:
                attack = AT_NSPECIAL;
                reset_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED);
                if free set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, -1);
                // grov_current_nspecial = 1;
                break;
            case 1:
                attack = AT_EXTRA_1;
                reset_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED);
                if free set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, -1);
                // grov_current_nspecial = 0;
                break;
            case 2:
                attack = AT_NSPECIAL_2;
                grov_current_nspecial = 0;
                break;
        }
    }
    // print(string(grov_current_nspecial))
}

if (attack == AT_FSPECIAL && free){
    grov_fspecial_airuse = true
}


if (attack == AT_DSPECIAL && free){
    window = 6;
}

//RUNES

if has_rune("M"){
    move_cooldown[AT_NSPECIAL] = 0;
    if (attack == AT_FTILT){
        // move_cooldown[AT_NSPECIAL] = 0;
        attack = AT_NSPECIAL;
    }

    else if (attack == AT_NSPECIAL){
        // move_cooldown[AT_NSPECIAL] = 0;
        attack = AT_EXTRA_1;
    }
}