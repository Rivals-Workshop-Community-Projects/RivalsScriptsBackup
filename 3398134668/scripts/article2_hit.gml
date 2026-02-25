
if instance_exists(enemy_hitboxID) if !enemy_hitboxID.does_not_reflect && (enemy_hitboxID.type == 2){
    
    var sound = asset_get("sfx_mol_uspec_loop");
    if instance_exists(player_id) with player_id sound = sound_get("BurstElectric");
    
    enemy_hitboxID.reflected = true;
	enemy_hitboxID.last_player_id = player_id;
	enemy_hitboxID.player = player_id.player;
				
	sound_play(sound, false, noone, 1, 1.2);			
	
	enemy_hitboxID.spr_dir = sign(enemy_hitboxID.hsp);			
	enemy_hitboxID.hsp = -enemy_hitboxID.hsp;
	enemy_hitboxID.vsp = -enemy_hitboxID.vsp;
	enemy_hitboxID.hitbox_timer = 0;
	enemy_hitboxID.can_hit[player_id.player] = true;
	
	if instance_exists(player_id) with player_id{
		if has_rune("L"){
		    comboCount += 1;
		    if comboTimeout < comboTimeoutAmount comboTimeout = comboTimeoutAmount;
		    comboPB = max(comboCount, comboPB);
		    comboPulseXY = [round(random_func(0, 13, true) / 2) * 2, round(random_func_2(0, 13, true) / 2) * 2];
		    comboPulseXY[0] -= 6;
		    comboPulseXY[1] -= 6;
		    if comboCount mod 10 = 0{
		        sound_play(sound_get("IonExplosion"), false, noone, 2, 1.2);
		        levelupEffectTimer = 30;
		        comboTimeout = 300+(comboLevel*30);
		    }
	    }
	}
};