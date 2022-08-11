grabbed_player_id = -1;

if (attack == AT_NSPECIAL) {
    if (prev_state == PS_ATTACK_GROUND) {
        nspecials_held = 0;
        hitstop_full += 16;
        hitstop += 16;
    }
    if (prev_state == PS_ATTACK_AIR) {
        nspecials_held = 0;
        hitstop_full += 10;
        hitstop += 10;
    }
}

if (attack == AT_USPECIAL) {
    if (prev_state == PS_ATTACK_AIR) {
        y += 32;
    }
}