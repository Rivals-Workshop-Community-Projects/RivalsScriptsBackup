///#args attack

switch (attack) {
    case AT_NSPECIAL:
        reset_attack_value(attack, AG_NUM_WINDOWS);
        break;
    case AT_FSPECIAL:
        has_fspecialed = true;
        break;
    case AT_DSPECIAL:
        drill_timer = 0;
        dig_timer = 0;
        break;
    case AT_DSPECIAL_AIR:
        dig_timer = 0;
        drill_timer = 0;
        break;
}