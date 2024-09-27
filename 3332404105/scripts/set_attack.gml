//setting the attack

if (attack == AT_DSPECIAL){
    if (inv_slot[inv_selection] != 0 && window == 1){
        attack = AT_DSPECIAL_2;
        state_timer = 0;
    }
}



if (attack == AT_FTILT && object_duality == -1){
    attack = AT_FTHROW;
    state_timer = 0;
}

if (attack == AT_FAIR && object_duality == -1){
    attack = AT_FSTRONG_2;
    state_timer = 0;
}

if (attack == AT_BAIR && object_duality == -1){
    attack = AT_DTHROW;
    state_timer = 0;
}
