//got_hit.gml

true_dmg = enemy_hitboxID.damage * lerp(1, 1.6, hit_player_obj.strong_charge/60);

if (instance_exists(my_grab_id) && my_grab_id != noone && state_cat == SC_HITSTUN) {
    my_grab_id.hitstop = 0;
    my_grab_id = noone;
}

if (attack == AT_FSPECIAL && (prev_state == PS_ATTACK_GROUND || prev_state == PS_ATTACK_AIR) && !fspecial_infinite_charge_rune) {
    fspecial_charge = 0;
}

// Rune Code

if(ptooie_swarm_rune && !ptooie_swarm_cooldown && instance_exists(ptooie_obj) && ptooie_obj.state == 0){
    create_hitbox(AT_NSPECIAL, 3, round(ptooie_obj.x), round(ptooie_obj.y));
    instance_destroy(ptooie_obj);
    ptooie_swarm_timer = ptooie_swarm_timer_max;
    ptooie_swarm_cooldown = 900;
}