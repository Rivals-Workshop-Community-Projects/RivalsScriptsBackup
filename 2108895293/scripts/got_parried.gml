//lumina got_parried


if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 11){
	my_hitboxID.hitbox_timer = 0;
	my_hitboxID.hsp = 7 * spr_dir;
}

/*
if (latest_light_sentry != -4){
	if (point_distance(hit_player_obj.x, hit_player_obj.y-(char_height/2), latest_light_sentry.x, latest_light_sentry.y) <= 80){
		if (latest_light_sentry.state == 1){
			parried_storage = hit_player;
			user_event( 0 );
		}
	}
}
*/