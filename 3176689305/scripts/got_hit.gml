//got hit
with (hit_player_obj){
	if ("shade_consumer" in self && shade_consumer){
		shade_consumer = 0;
		sound_play(sound_get("hero_shade_charge"));
	}
}