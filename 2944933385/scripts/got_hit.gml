if (instance_exists(pellet)){
    if (enemy_hitboxID.damage >= 6){
        pellet.should_die = true;
    }
}

if (prev_state == (PS_ATTACK_GROUND || PS_ATTACK_AIR) && attack == AT_NSPECIAL && !instance_exists(fruit) && state_cat == SC_HITSTUN){
    fruit_num = 1;
}