if (state == "taunt" && state_timer = 4){
	sound_play(sound_get("tweeter"));
}
if (state == "idle" && waiting){
	if (state_timer == 5 or state_timer == 120){
		sound_play(sound_get("door"));
	}
}