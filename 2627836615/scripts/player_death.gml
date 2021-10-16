//Mostly just a failsafe. Usually shouldn't be called, but if someone clips out of bounds this should put them back in.

with (obj_stage_article) {
	if num == 1 && play == other.hit_player_obj.player {
		state = PS_RESPAWN;
	}
}