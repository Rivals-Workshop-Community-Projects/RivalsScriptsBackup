if (attack = AT_USPECIAL && phantom.state != 1 && phantom.state != 3 && !(phantom.state == 6 && phantom.last_state == 1) && !phantom.used_for_fly) {
    attack = AT_USPECIAL_2;
}

if ((attack = AT_NSPECIAL || attack = AT_NSPECIAL_AIR) && phantom.state != 1 && phantom.state != 3 && !(phantom.state == 6 && phantom.last_state == 1) && phantom.state != 7 && !phantom.used_for_fly) {
    move_cooldown[AT_NSPECIAL] = 5;
    move_cooldown[AT_NSPECIAL_AIR] = 5;
    if (phantom.state != 4 && (move_cooldown[AT_NSPECIAL_2] = 0)) {
        phantom.state = 4;
        phantom.state_timer = 0;
    }
}

if (attack = AT_DSPECIAL && free) {
    attack = AT_DSPECIAL_AIR;
}

if (attack = AT_NSPECIAL && free) {
    attack = AT_NSPECIAL_AIR;
}

if (attack = AT_FSPECIAL && free) {
    attack = AT_FSPECIAL_AIR;
}

if (attack == AT_TAUNT && (down_down)) {
    attack = AT_TAUNT_2;
}