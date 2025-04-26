//got_hit.gml

true_dmg = enemy_hitboxID.damage * lerp(1, 1.6, hit_player_obj.strong_charge/60);

if (instance_exists(my_grab_id) && my_grab_id != noone && state_cat == SC_HITSTUN) {
    my_grab_id.hitstop = 0;
    my_grab_id = noone;
}

if (attack == AT_FSPECIAL && (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR)) {
    fspecial_charge = 0;
}