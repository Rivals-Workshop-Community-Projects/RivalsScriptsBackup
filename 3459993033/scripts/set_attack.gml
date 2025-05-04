switch (attack){
    case AT_UAIR:
        reset_window_value(attack, 5, AG_WINDOW_LENGTH);
    break;
    case AT_NSPECIAL:
    if move_cooldown[AT_NSPECIAL] == 0 sound_play(sound_get("sfx_delta_charge_cancel"));
    break;
    case AT_USPECIAL:
    	reset_attack_value(AT_USPECIAL, AG_CATEGORY);
    	uspec_second_teleport = false;
    break;
    case AT_USTRONG:
        ustrong_rings = []
        ustrong_ring_timer = 0
    break;
    case AT_DSPECIAL:
        reset_attack_value(AT_DSPECIAL, AG_CATEGORY);
    break;
    case AT_TAUNT:
        if (down_down) attack = AT_TAUNT_2;
        if (shield_down && !is_attacking) attack = AT_EXTRA_1;
    break;
}

ustrong_multihits = 0;

fspecial_ledgeforgiven = false
jab_should_skip = false;