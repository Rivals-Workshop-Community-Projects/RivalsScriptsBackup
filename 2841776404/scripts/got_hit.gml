if (has_rock){
    suit_power -= enemy_hitboxID.damage;
}

last_hit_angle = enemy_hitboxID.kb_angle;

if ((prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL_2 || attack == AT_USPECIAL_2) && attack_charge > 0){
    attack_charged = false;
    attack_charge = 0;
    charge_effect = false;
}
sound_stop(sfx_charge_loop);