// kill pipes
with (asset_get("obj_article1")) if (player == other.player) {
    state = 2;
    state_timer = 0;
}

in_hstance = false;

if (setting_visible) {
    setting_visible = false;
    // the game handles it from here
}

if (is_voiced) {
				var voice_line = random_func_2((current_second % 50) + get_player_color( player ), 12, true); // TODO: does this desync?
				if (voice_line == 1) sound_play(sound_get("ig_ko_1"), false, 0, 1, 1);
				else if (voice_line == 2) sound_play(sound_get("ig_ko_2"), false, 0, 1, 1);
				else if (voice_line == 3) sound_play(sound_get("ig_ko_3"), false, 0, 1, 1);
				else if (voice_line == 4) sound_play(sound_get("ig_ko_4"), false, 0, 1, 1);
				else if (voice_line == 5) sound_play(sound_get("ig_ko_5"), false, 0, 1, 1);
				else if (voice_line == 6) sound_play(sound_get("ig_ko_6"), false, 0, 1, 1);
				else if (voice_line == 7) sound_play(sound_get("ig_ko_7"), false, 0, 1, 1);
				else if (voice_line == 8) sound_play(sound_get("ig_ko_8"), false, 0, 1, 1);
				else if (voice_line == 9) sound_play(sound_get("ig_ko_9"), false, 0, 1, 1);
				print_debug (voice_line)
			}