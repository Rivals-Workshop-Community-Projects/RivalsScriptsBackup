if (attack == AT_UTILT && state == PS_ATTACK_GROUND){
	if (flyforward == false && window < 3){
	window = 2;
	window_timer = 0;
	utilt_id = hit_player_obj;
	//if (spr_dir == has_hit_player.spr_dir){ spr_dir = has_hit_player.spr_dir * -1; }
	//got_hit_id = hit_player_obj.id;
	//hitpause = true;
	//flyforward = true;
	}
	//hitpause = false;
}

has_hit_id = noone;