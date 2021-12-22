if (state == "taunt" && state_timer == 1){
	sound_play(sound_get("vfx_wonderful_idea"));
}
	
if (state == "idle" && state_timer == 1){
    if (waiting == true){
	    sound_play(sound_get("vfx_laugh"));
    }
}