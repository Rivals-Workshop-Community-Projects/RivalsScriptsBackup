sound_stop(sound_get("sfx_prepare" + string(player)));
eruption_stored = 0;
with(obj_article2){
	if(variable_instance_exists(self, "is_ike_eruption") && state != 420){
		state = 420;
		state_timer = 0;
		image_index = 0;
		sound_play(asset_get("sfx_burnend"));
	}
}
var rng = 1 + random_func_2(abs(floor(x%200)), 3, true);
sound_play(sound_get("vc_death" + string(rng)), false, false, voice_brawl);

var rng_2 = 1 + random_func_2(abs(floor(x%200)), 3, true);
sound_play(sound_get("vc_ult_death" + string(rng_2)), false, false, voice_ult);