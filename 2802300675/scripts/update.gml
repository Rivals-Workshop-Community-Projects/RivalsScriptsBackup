if state == PS_WAVELAND && state_timer == 1 && !hitpause {
    sound_play(asset_get("sfx_waveland_may"))
    sound_play(asset_get("sfx_waveland_syl"))
}

if(!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN || state == PS_RESPAWN){
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_USPECIAL] = 0;
	boost_used = false;
}


/*if(smog_cloud != 0){
with (asset_get("oPlayer")) {
	if(other.smog_cloud.state = 1){
	if (player != other.player && invincible = 0 && state != PS_RESPAWN && collision_circle( other.smog_cloud.x, other.smog_cloud.y - 40, other.smog_cloud.effect_radius, self, true, false)){
		if(other.cloud_poison_timer = 0){
					sound_play(asset_get("sfx_ell_steam_hit"), false, noone, 0.5);
					var hitfx = spawn_hit_fx(x + spr_dir * 0, y - 30, 14);
					take_damage(player, -1, 2);
					other.cloud_poison_timer = 25;	
				}	
			}
		}
	}
}

if(cloud_poison_timer != 0){
	cloud_poison_timer--;
}
*/

if(player_in_smog = true){
	valley_outline = true;
	init_shader();
}if(player_in_smog = false){
	valley_outline = false;
	init_shader();
}

if(get_gameplay_time() > 100){
	if(!start_predraw){
	start_predraw = true;
	}
}

if(uspec_cooldown != 0){
	uspec_cooldown--;
}