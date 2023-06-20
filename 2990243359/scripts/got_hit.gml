if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2)){
    if (instance_exists(trident)){
        trident.starts_moving = false;
        trident.state = 1;
        trident.image_index = 0;
    }
}



