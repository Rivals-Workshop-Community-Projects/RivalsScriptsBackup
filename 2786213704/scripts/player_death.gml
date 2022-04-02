with (hit_player_obj) {
	if (clone || custom_clone) {
		exit;
	}
	if (!get_match_setting(SET_PRACTICE) && get_match_setting(SET_STOCKS) > 0) {
		set_player_stocks(player, 2);
	}
}

