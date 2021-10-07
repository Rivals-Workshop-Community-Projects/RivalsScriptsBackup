sound_stop(sound_get("utilt_loop"));
skin_count = 1;

if(attack == AT_NSPECIAL and (prev_state == PS_ATTACK_AIR or prev_state == PS_ATTACK_GROUND)){
    nspecial_charge_level = 0;
}