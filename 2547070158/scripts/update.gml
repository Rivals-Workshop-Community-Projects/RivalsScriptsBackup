if (state == "taunt" && state_timer == 0)
	sound_play(sound_get("taunt"));
if (state == "taunt" && state_timer == 10)
	sound_play(asset_get("sfx_swipe_medium2"));
if (state == "taunt" && state_timer == 15)
	sound_play(asset_get("sfx_blow_medium2"));	
	
if (state == "idle" && waiting) {
	spr_dir = 1; // Always face right for this animation
	if (state_timer == 45) sound_play(sound_get("wait"));
	//if (state_timer == 90) sound_play(asset_get("sfx_abyss_spawn"));
}