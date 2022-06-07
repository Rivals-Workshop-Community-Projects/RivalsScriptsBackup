if attack == AT_NSPECIAL {
	state = 1;	
	destroy_fx =154;
	image_index = player_id.state_timer%4;
	boom_timer = 0;
	player_url = player_id.url;
	if hbox_num == 1 {
		smoke_num =1+player_id.smoke_counter;
		sound_stop(asset_get("sfx_ell_steam_hit"));
		sound_play(asset_get("sfx_ell_steam_hit"));
	}
}
