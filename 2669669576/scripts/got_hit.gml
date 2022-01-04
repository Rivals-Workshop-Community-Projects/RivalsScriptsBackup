
if(instance_exists(fspecial_wall) and place_meeting(x, y, fspecial_wall)){
    wall_lockout = 30;
}
sound_stop(asset_get("sfx_frog_fspecial_charge_loop"));
sound_stop(attack_audio);

if(enemy_hitboxID.type == 1){
    shadowball_hit = false;
    shadowball_hit_timer = 0;
}