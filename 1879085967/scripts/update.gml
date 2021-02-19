if (state == "taunt" && state_timer == 14){
	sound_play(sound_get("taunt"));
	spawn_hit_fx( 0, 0, bubbles );
}