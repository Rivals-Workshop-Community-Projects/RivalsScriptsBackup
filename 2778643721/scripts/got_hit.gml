//h

if (fspecial_id != noone){
    fspecial_id = noone;
}

if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR)
&& attack == AT_NSPECIAL && nspecial_charge > 0){
    nspecial_charge = 0;
    nspecial_gague = 0;
}

hit_effect_index = enemy_hitboxID.effect;