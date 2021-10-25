
if (state == PS_SPAWN) {
    if (state_timer = 14) {
		sound_play(sound_get("waternairintro"));
	}
    
	if (state_timer = 7) {
		sound_play(sound_get("queenlaugh"));
	}
    if (introTimer < 15 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
        depth = -6;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
        depth = -5;
    }
    
    
    if (state_timer = 30) && (variable_instance_exists(id, "extra_col")){
		if (extra_col==1){//RagingBagon
			sound_play(sound_get("salamence"));
		}	
	}
}

