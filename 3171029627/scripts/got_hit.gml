if (place_meeting(x, y, torment) && instance_exists(torment) && super_armor = false
	&& enemy_hitboxID.type == 1 && enemy_hitboxID.damage > 0 && enemy_hitboxID.kb_value > 0){
	if (torment.state == 0) spawn_hit_fx(torment.x, torment.y, torment_break1);
	if (torment.state == 1) spawn_hit_fx(torment.x, torment.y, torment_break2);
	if (torment.state == 2) spawn_hit_fx(torment.x, torment.y, torment_break3);
	instance_destroy(torment);
	instance_destroy(torment_opponent);
	torment_opponent = noone;
}

if (enemy_hitboxID.type == 2 && !enemy_hitboxID.was_parried && orig_knock < 10 && !should_make_shockwave){
	if (prev_state == PS_ATTACK_GROUND && attack == AT_FSPECIAL && fspecial_armor == true){
		soft_armor = 10;
		state = prev_state;
		old_vsp = 0;
		old_hsp = 0;
		image_index = keep_image_index;
    	state_timer = keep_state_timer;
    	window_timer = keep_window_timer;
		window = keep_window;
    	spr_dir = keep_spr_dir; //prevents projectiles with angle flippers from breaking armor.
    	if (hitstop >= 10){
    		hitstop = 10;
    	}
	}
}


