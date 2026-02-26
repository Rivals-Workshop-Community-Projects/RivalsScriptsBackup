
if (!has_rune("M") && hit_player_obj != player_id && enemy_hitboxID.damage != 0 && enemy_hitboxID.hit_priority != 0){
	
	var midpoint_x = (x + enemy_hitboxID.x) / 2;
	var midpoint_y = (y + enemy_hitboxID.y) / 2;
	//spawn_hit_fx(midpoint_x, midpoint_y, player_id.ghostHit);

	hit_player_obj.has_hit = true;
	sound_play(enemy_hitboxID.sound_effect);

	//var enemyKnock = get_kb_formula(get_player_damage(player_id.player), 0.75, 1.0, enemy_hitboxID.damage, enemy_hitboxID.kb_value, enemy_hitboxID.kb_scale) * (1 + (ease_linear( 0, 25, hit_player_obj.strong_charge, 60 ) * 0.01));
	//hsp = lengthdir_x(max(enemyKnock, 5), get_hitbox_angle(enemy_hitboxID));
	//vsp = lengthdir_y(max(enemyKnock, 5), get_hitbox_angle(enemy_hitboxID));
	hitstop = hit_player_obj.hitstop;

	var debris1 = spawn_hit_fx(x, y - 60, player_id.TV_debrisVFX);
	debris1.originalImage = 0;
	debris1.hsp = 5;
	debris1.vsp = -7.5;

	var debris2 = spawn_hit_fx(x, y - 60, player_id.TV_debrisVFX);
	debris2.originalImage = 1;
	debris2.hsp = -5;
	debris2.vsp = -7.5;

	var debris3 = spawn_hit_fx(x, y - 80, player_id.TV_debrisVFX);
	debris3.originalImage = 2;
	debris3.hsp = 0;
	debris3.vsp = -7.5;

	if (instance_exists(TVbox)){
		instance_destroy(TVbox);
	}
	instance_destroy(self);
	exit;
}