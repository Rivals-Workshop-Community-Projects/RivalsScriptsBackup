switch (attack) {
    case AT_FSPECIAL:
    case AT_FSPECIAL_2:
        fspecial_ledgeforgiven = false;
    break;
    case AT_NSPECIAL:
        set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_" + string(blook_record+1)));
    break;
    case AT_FTILT:
    case AT_DSTRONG:
        ftilt_grabbed = [];
    break;
}

if (down_down && attack == AT_TAUNT){
    attack = AT_TAUNT_2;
}