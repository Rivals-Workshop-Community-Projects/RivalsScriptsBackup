
if (hit_player_obj != player_id && enemy_hitboxID.damage != 0 && enemy_hitboxID.hit_priority != 0 && state == "idle"){
	
	var midpoint_x = (x + enemy_hitboxID.x) / 2;
	var midpoint_y = (y + enemy_hitboxID.y) / 2;
	spawn_hit_fx(midpoint_x, midpoint_y, player_id.ghostHit);

	state = "death";
	state_timer = 0;
	is_hittable = false;

	hit_player_obj.has_hit = true;
	sound_play(enemy_hitboxID.sound_effect);

	var enemyKnock = get_kb_formula(get_player_damage(player_id.player), 0.75, 1.0, enemy_hitboxID.damage, enemy_hitboxID.kb_value, enemy_hitboxID.kb_scale) * (1 + (ease_linear( 0, 25, hit_player_obj.strong_charge, 60 ) * 0.01));
	hsp = lengthdir_x(enemyKnock, get_hitbox_angle(enemy_hitboxID));
	vsp = lengthdir_y(enemyKnock, get_hitbox_angle(enemy_hitboxID));
	hitstop = hit_player_obj.hitstop;
}