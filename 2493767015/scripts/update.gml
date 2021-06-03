user_event(14);

if (!free || state == PS_WALL_JUMP){
        move_cooldown[AT_FSPECIAL] = 0;
    }

if (star_meter > 3){
	star_meter = 3;
}
else if (star_meter < 0){
	star_meter = 0
}

if (combo_counter >= 1){
	combo_timer++;
}

if (combo_timer >= 60){
	combo_timer = 0;
	combo_counter = 0;
}

if (!free){
        move_cooldown[AT_FSPECIAL] = 0;
    }

if (phone_cheats[cheat_stars] != 0){
	star_meter = phone_cheats[cheat_stars];
}

if (introTimer2 < 6) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
}

if (introTimer == 6 && introTimer2 == 4){
	sound_play(asset_get("sfx_swipe_heavy2"));
}

if (introTimer < 10){
    draw_indicator = false;
} else {
    draw_indicator = true;
}

if (!victheme){
	switch (get_player_color(player)){
		case 5:
			set_victory_theme(sound_get("victory_joe"));
		break;
		case 6:
			set_victory_theme(sound_get("victory_kaiser"));
		break;
		case 7:
			set_victory_theme(sound_get("victory_honda"));
		break;
		case 8:
			set_victory_theme(sound_get("victory_don"));
		break;
		case 9:
			set_victory_theme(sound_get("victory_king"));
		break;
		case 10:
			set_victory_theme(sound_get("victory_soda"));
		break;
		case 11:
			set_victory_theme(sound_get("victory_macho"));
		break;
		case 12:
			set_victory_theme(sound_get("victory_sandman"));
		break;
		case 13:
			set_victory_theme(sound_get("victory_doc"));
		break;
		default:
			set_victory_theme(sound_get("victory_theme"));
			break;
	}
	victheme = true;
}