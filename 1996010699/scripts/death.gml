if(item[9, 3] == 1){
	if(item[9, 4] == sprite_get("mini_glitchm")){
		sound_play(sound_get("missingno"));
	} else {
		sound_play(asset_get("sfx_syl_promo1"));
	}
}

crouchCounter = 0;