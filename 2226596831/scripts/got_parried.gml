if (my_hitboxID.attack==AT_FSTRONG){
	my_hitboxID.destroyed = true;
	spawn_hit_fx( x, y-13, 136 )
	sound_stop(sound_get("bowling_glide"))
	//print(parry_lag)
	//print(window_timer)
	
	distnance = point_distance(x, y, hit_player_obj.x, hit_player_obj.y);
	base_distance = 400;
	base_add = 60;
	
	parry_lag = round(parry_lag + (base_add * (distnance / base_distance)));
	
	//print(parry_lag)
	//print(string(point_distance(x, y, hit_player_obj.x, hit_player_obj.y)))
}
if (safety_strap = "off"){
	sound_play(sound_get("on"));
	safety_strap_timer = 0;
	safety_strap = "on"
}