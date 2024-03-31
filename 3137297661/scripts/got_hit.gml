//got_hit.gml
if(instance_exists(dspec_container) && dspec_container.state_timer < 7*dspec_container.anim_speed){
    dspec_container.state_timer = 7*dspec_container.anim_speed;
}
if(adrenaline_timer){
    var ang = enemy_hitboxID.kb_angle;
    spawn_hit_fx(x - 70*spr_dir, y - 50, dmg_fx);
    sound_play(asset_get("sfx_abyss_hazard_hit"))
}
if(hit_player_obj.k_ring_debuff_hits && !debuff_hit_lockout){
    debuff_hit_lockout = debuff_hit_lockout_time;
    hit_player_obj.spawn_destroy_effect = true;
    sound_play(asset_get("sfx_abyss_seed_fall"));
}