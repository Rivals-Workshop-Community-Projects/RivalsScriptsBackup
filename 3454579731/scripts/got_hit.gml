
if (attack == AT_NSPECIAL && state_cat == SC_HITSTUN){
    if (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR){
    cannonball_charge = 0;
    }
}

if (!has_mech && !hit_mechless){
    hit_mechless = true;
}

if (state_cat == SC_HITSTUN){
    if (voice_on && voice_chance >= 7){
        sound_play(sound_get("sfx_hurt" + string(1 + round(random_func_2(3, 1, false)))));
    }
}


sound_stop(car_start);
sound_stop(car_loop);