//set_attack
if (move_cooldown[attack] > 0) exit;
switch (attack) {

    case AT_DTILT:
        //skip a small amount of startup if this move was cancelled into
        if (bb_consecutive_cancelled_attacks > 0) {
            window_timer = 1;
        }
    break;
    
        case AT_FSTRONG:
        //skip a small amount of startup if this move was cancelled into
        if (bb_consecutive_cancelled_attacks > 0) {
            window = 2;
            bb_consecutive_cancelled_attacks = 0;
}
    break;
}

if (attack == AT_FSPECIAL && free){
    attack = AT_FSPECIAL_AIR;
}

if (attack == AT_USPECIAL && free){
    attack = AT_USPECIAL_2;
}

if (attack == AT_FSPECIAL_AIR && !free){
    state = PS_LAND;
}

if (attack == AT_NSPECIAL && free){
    attack = AT_NSPECIAL_AIR;
}

if (attack == AT_NSPECIAL_AIR && !free){
    state = PS_LAND;
    state_timer = 0;
}

if (attack == AT_TAUNT && shield_down){
    attack = AT_UTHROW;
}