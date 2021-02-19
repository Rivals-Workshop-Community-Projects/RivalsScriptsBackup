if (my_hitboxID.attack==AT_FSTRONG){
	my_hitboxID.destroyed = true;
	spawn_hit_fx( x, y-13, 136 )
	sound_stop(sound_get("bowling_glide"))
}
if (safety_strap = "off"){
	sound_play(sound_get("on"));
	safety_strap_timer = 0;
	safety_strap = "on"
}