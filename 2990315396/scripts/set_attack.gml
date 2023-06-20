switch(attack)
{

    case AT_NSPECIAL:
        nspecial_turned = false;
        nspecial_loops = -1;
        nspecial_dash_charge = 0;
        nspecial_mach_timer = 0;
        snapped_to_ledge = false;
        reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
    break;

    case AT_TAUNT:
        if (get_player_color(player) == 10) taunt_index = random_func(1, 16, true)
        else taunt_index = random_func(1, 15, true)
    break;

    case AT_JAB:
    case AT_FTILT:
    case AT_UTILT:
    case AT_DTILT:
    case AT_NAIR:
    case AT_FAIR:
    case AT_BAIR:
    case AT_UAIR:
    case AT_DAIR:
    case AT_USTRONG:
	  if (nspecial_mach_timer > 0)
        {
        hsp = clamp(hsp, -nspecial_max_hsp, nspecial_max_hsp) //avoids keeping monstrous hsp levels on mach cancel (mostly if not only here for dtilt)
	  }
	  break;
}

// mach mode stuff
if (nspecial_mach_timer > 0)
{
    if (get_attack_value(attack, AG_CATEGORY) == 0) set_attack_value(attack, AG_CATEGORY, 2);
    set_attack_value(attack, AG_OFF_LEDGE, 1);
}
else 
{
    reset_attack_value(attack, AG_CATEGORY);
    reset_attack_value(attack, AG_OFF_LEDGE);
}