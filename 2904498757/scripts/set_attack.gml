///#args attack

switch attack {
    case AT_JAB:
        jab_parried = false;
        break;
    case AT_FSPECIAL:
        grabbed = [];
        snapped_to_ledge = false;
        // intentionally no break
    case AT_USPECIAL:
        // mach mode physics
        if nspec_mach_timer > 0 {
            set_window_value(attack, 1, AG_WINDOW_HSPEED_TYPE, 0);
        }
        else {
            reset_window_value(attack, 1, AG_WINDOW_HSPEED_TYPE);
        }
        break;
    case AT_DSPECIAL:
        dspec_timer = 0;
        break;
    case AT_NSPECIAL:
        nspec_turned = false;
        nspec_loops = -1;
        nspec_dash_charge = 0;
        nspec_mach_timer = 0;
        snapped_to_ledge = false;
        reset_hitbox_value(attack, 1, HG_DAMAGE);
        break;
}

// mach mode stuff
if nspec_mach_timer > 0 {
    if get_attack_value(attack, AG_CATEGORY) == 0 {
        set_attack_value(attack, AG_CATEGORY, 2);
    }
    set_attack_value(attack, AG_OFF_LEDGE, 1);
}
else {
    reset_attack_value(attack, AG_CATEGORY);
    reset_attack_value(attack, AG_OFF_LEDGE);
}