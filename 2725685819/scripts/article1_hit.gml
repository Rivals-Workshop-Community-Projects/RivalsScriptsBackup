



if (enemy_hitboxID.player != current_owner.player && !(jc_buff || jc_fspec_buff)){

	jc_hitpoints--;

	if ("trick_stack" in enemy_hitboxID.player_id && jc_hitpoints == 0){

	enemy_hitboxID.player_id.trick_stack -= 2;
	}

	sound_play(asset_get("sfx_clairen_swing_med"),0,0,0.5, 1);
	sound_play(asset_get("sfx_ori_energyhit_heavy"),0,0,0.5,2);
	sound_play(asset_get("sfx_ori_charged_flame_release"),0,0,0.3, 1.25);
	shake_camera( 4, 3 );

	jc_hitstop = enemy_hitboxID.hitpause;

	enemy_hitboxID.player_id.has_hit = true;

	// enemy_hitboxID.player_id.old_hsp = enemy_hitboxID.player_id.hsp;
	// enemy_hitboxID.player_id.old_vsp = enemy_hitboxID.player_id.vsp;
	// enemy_hitboxID.player_id.hitpause = true;
	// enemy_hitboxID.player_id.hitstop = enemy_hitboxID.hitpause;

	if (enemy_hitboxID.enemies == 0 && !enemy_hitboxID.transcendent && enemy_hitboxID.type == 2){
	enemy_hitboxID.destroyed = true;
	}

}