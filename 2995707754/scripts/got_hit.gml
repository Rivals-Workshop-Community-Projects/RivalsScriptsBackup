//got_hit
if attack == AT_NSPECIAL && last_window == 1 { 
	if ice_meteor_article != -4 {
		instance_destroy(ice_meteor_article); 
		sound_play(asset_get("sfx_ice_shatter_big"));
		shard_spread = 1;
		instance_create( x, y-156, "obj_article3" ); 
		instance_create( x, y-156, "obj_article3" ); 
		instance_create( x, y-156, "obj_article3" ); 
		instance_create( x, y-156, "obj_article3" ); 
		shard_spread = 3;
		instance_create( x, y-156, "obj_article3" ); 
		instance_create( x, y-156, "obj_article3" ); 
		instance_create( x, y-156, "obj_article3" ); 
		instance_create( x, y-156, "obj_article3" ); 
		ice_meteor_article = -4; 
	}
}

if flight_mode = 1 {
	flight_mode -= 10;
	flight_mode = 0;
}

if get_player_color(player) == 26{
	outline_color = [ 73, 73, 73 ];
	init_shader();
}
