
if (hit_player_obj != player_id && enemy_hitboxID.damage != 0 && enemy_hitboxID.hit_priority != 0 && (state == 4 || state == 5 || state == 7)){
	
	var midpoint_x = (x + enemy_hitboxID.x) / 2;
	var midpoint_y = (y + enemy_hitboxID.y) / 2;
	spawn_hit_fx(midpoint_x, midpoint_y, enemy_hitboxID.hit_effect);

	state = 6;
	state_timer = 0;
	is_hittable = false;

	hit_player_obj.has_hit = true;
	sound_play(enemy_hitboxID.sound_effect);

	var enemyKnock = get_kb_formula(get_player_damage(player_id.player), 1, 1.0, enemy_hitboxID.damage, enemy_hitboxID.kb_value, enemy_hitboxID.kb_scale) * (1 + (ease_linear( 0, 25, hit_player_obj.strong_charge, 60 ) * 0.01));
	hsp = lengthdir_x(max(enemyKnock, 5), get_hitbox_angle(enemy_hitboxID));
	vsp = lengthdir_y(max(enemyKnock, 5), get_hitbox_angle(enemy_hitboxID));
	hitstop = hit_player_obj.hitstop;
}