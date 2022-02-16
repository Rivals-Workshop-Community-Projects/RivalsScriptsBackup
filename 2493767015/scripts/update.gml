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

if (state == PS_SPAWN && get_gameplay_time() == 42){
	sound_play(asset_get("sfx_swipe_heavy2"));
}

if (introTimer < 12){
    draw_indicator = false;
} else {
    draw_indicator = true;
}

if(get_gameplay_time() <= 120){
    if(taunt_pressed && muted){
		muted = false;
		var randomvoice = random_func(0, 3, true);
    	if (randomvoice == 0){
			sound_play(sound_get("voice_intro1"));
    	} else if (randomvoice == 1){
    		sound_play(sound_get("voice_intro2"));
    	} else if (randomvoice == 2){
    		sound_play(sound_get("voice_intro3"));
    	}
	}
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
			set_victory_theme(sound_get("victory_ryan"));
		break;
		case 12:
			set_victory_theme(sound_get("victory_macho"));
		break;
		case 13:
			set_victory_theme(sound_get("victory_sandman"));
		break;
		case 14:
			set_victory_theme(sound_get("victory_doc"));
		break;
		case 18:
			set_victory_theme(sound_get("victory_dk"));
		break;
		default:
			set_victory_theme(sound_get("victory_theme"));
			break;
	}
	victheme = true;
	if (!muted){
		var randomvoice = random_func(0, 13, true);
		    if (randomvoice == 0){
		        sound_play(sound_get("voice_win1"));
		    } else if (randomvoice == 1){
		        sound_play(sound_get("voice_win2"));
		    } else if (randomvoice == 2){
		        sound_play(sound_get("voice_win3"));
		    } else if (randomvoice == 3){
		        sound_play(sound_get("voice_win4"));
		    } else if (randomvoice == 4){
		        sound_play(sound_get("voice_win5"));
		    } else if (randomvoice == 5){
		        sound_play(sound_get("voice_win6"));
		    } else if (randomvoice == 6){
		        sound_play(sound_get("voice_win7"));
		    } else if (randomvoice == 7){
		        sound_play(sound_get("voice_win8"));
		    } else if (randomvoice == 8){
		        sound_play(sound_get("voice_win9"));
		    } else if (randomvoice == 9){
		        sound_play(sound_get("voice_win10"));
		    } else if (randomvoice == 10){
		        sound_play(sound_get("voice_win11"));
		    } else if (randomvoice == 11){
		        sound_play(sound_get("voice_win12"));
		    } else if (randomvoice == 12){
		        sound_play(sound_get("voice_win13"));
		    }
	}
}