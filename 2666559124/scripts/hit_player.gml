// called when the character hits a player

if (my_hitboxID.attack == AT_FSPECIAL && "article_owner" in my_hitboxID) {
	if ("use_screen_bar" in hit_player_obj || hit_player_obj.url == 1928599994 ||
	    hit_player_obj.url == 2208624452) {
		var hit_boss = true;
	} else {
		var hit_boss = false;
	}
	if (instance_exists(my_hitboxID.article_owner)) {
		with (my_hitboxID.article_owner) {
			if (!instance_exists(barreled_id) && free && !hit_boss) {
				other.hit_player_obj.barreled = true;
				barreled_id = other.hit_player_obj;
				struggle_resist = 5 + round(get_player_damage(barreled_id.player) * 0.1);
				struggle_ai_timer_max = 50 - (5 * other.hit_player_obj.temp_level);
				struggle_ai_timer = struggle_ai_timer_max;
				sound_play(sound_get("sfx_barrel_capture"));
			}
		}
	}
}

