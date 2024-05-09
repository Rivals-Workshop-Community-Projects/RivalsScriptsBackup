if owner.url == "3171029627"{//If PH is the owner REPLACE THIS NUMBER WHEN UPLOADED
	if (owner.attack == AT_TAUNT){
		taunt_spr = sprite_get("alttaunt");
	} else {
		taunt_spr = sprite_get("taunt");
	}
	if (owner.james_intro <= 1){
		image_alpha = 1;
	} else {
		image_alpha = 0;
		//x = owner.james_x_start + owner.x;
	}
}

if (state == "taunt"){
	if(taunt_spr == sprite_get("taunt")){//normal taunt
		if(state_timer == 26){
			var voice = 1 + (random_func(0, 9, true));
			switch(voice) {
				default: case 1: case 2: case 3:
					sound_play(sound_get("voi_james_hmm"));
				break;
				case 4: case 5: case 6:
					sound_play(sound_get("voi_james_mary"));
				break;
				case 7:
					sound_play(sound_get("voi_james_did"));
				break;
				case 8:
					sound_play(sound_get("voi_james_dont"));
				break;
				case 9:
					sound_play(sound_get("voi_james_play"));
				break;
			}
		}
	} else {//gun taunt
		if(x < owner.x){
			spr_dir = 1;
		} else {
			spr_dir = -1;
		}
		if(state_timer == 20){
			sound_play(sound_get("sfx_james_gun"));
			owner.window = owner.james_taunt_window;
			owner.window_timer = 0;
		}
	}
}