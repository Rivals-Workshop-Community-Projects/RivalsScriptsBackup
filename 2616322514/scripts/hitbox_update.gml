if (player_id.electro_charged){
	//effect = 11;
}

if (attack == AT_FSTRONG_2 && type == 2){
	if (player_id.strong_charge > 20){
		length = player_id.strong_charge;
	}
	if (hitbox_timer == length - 2){
		spawn_hit_fx( x + 10*spr_dir, y, player_id.electric_hit );
	}
}