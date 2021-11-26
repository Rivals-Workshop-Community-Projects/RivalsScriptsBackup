// hit_player
if (leechseed != 0){
if (my_hitboxID.type = 1 && collision_circle( leechseed.x, leechseed.y, leechseed.effect_radius, hit_player, true, false)){
parried_seed = spawn_hit_fx( leechseed.x, leechseed.y, leechseed_despawn );
parried_seed.depth = depth - 1; 
instance_destroy(leechseed);
sound_play(asset_get("sfx_syl_dspecial_plantaway"));
  leechseed = 0;
  	move_cooldown[AT_DSPECIAL] = 240;
}
}

if (my_hitboxID.attack == AT_FSPECIAL){
    my_hitboxID.length = 0;
}