//
i_got_hit = true;

if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && attack == AT_NSPECIAL && nspecial_casting && orig_knock > 0){
    nspecial_destroy = true;
    nspecial_casted = false;
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL && window == 3 
    && ((enemy_hitboxID.kb_value > 0) && enemy_hitboxID.type == 1 || (enemy_hitboxID.kb_value > 8 && enemy_hitboxID.type == 2))){
    fspecial_push = enemy_hitboxID.kb_value;
}
