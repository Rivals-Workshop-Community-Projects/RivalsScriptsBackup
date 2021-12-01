// set_attack is a script that runs before an attack is ran. Essentially in-game frame 0 of any attack.

if claws_broken {
    switch attack {
        case AT_FSTRONG:
            attack = AT_FSTRONG_2;
            break;
            
        case AT_USTRONG:
            attack = AT_USTRONG_2;
            break;
            
        case AT_DSTRONG: 
            attack = AT_DSTRONG_2;
            break;
            
        case AT_UAIR:
            attack = AT_EXTRA_1;
            break;
            
        case AT_FAIR:
            attack = AT_EXTRA_2;
            break;
            
        case AT_BAIR:
            attack = AT_EXTRA_3;
            break;
            
        case AT_NSPECIAL:
            attack = AT_NSPECIAL_2;
            break;
            
        case AT_USPECIAL:
            uspec_parried_by = [];
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -7);
            set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, -0.15);
            break;
            
        case AT_FSPECIAL:
            if fspec_used {
                move_cooldown[attack] += 1;
                clear_button_buffer(PC_SPECIAL_PRESSED); print_debug("hi");
            }
            else {
                fspec_used = true;
                attack = AT_FSPECIAL_2;
                spr_dir *= -1;
            }
            break;
            
        case AT_DSPECIAL:
            dspec_loops = -1;
            dspec_countered = false;
            break;
            
        case AT_DTHROW:
            super_armor = true;
            break;
            
        case AT_TAUNT:
            break;
    }
}

else {
    switch attack {
        case AT_NSPECIAL:
            if claws_brittle { attack = AT_NTHROW; }
            break;
            
        case AT_NTHROW:
            grabbed = [];
            break;
            
        case AT_USPECIAL:
            uspec_parried_by = [];
            reset_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED);
            reset_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY);
            break;
            
        case AT_FSPECIAL:
            if fspec_used {
                move_cooldown[attack] += 1;
                clear_button_buffer(PC_SPECIAL_PRESSED);
            }
            else {
                fspec_used = true;
                grabbed = [];
                reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED);
            }
            break;
            
        case AT_DSPECIAL:
            dspec_loops = -1;
            dspec_countered = false;
            break;
        
        case AT_TAUNT:
            break;
    }
}