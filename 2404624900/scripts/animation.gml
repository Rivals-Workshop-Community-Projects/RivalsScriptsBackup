//

if (state == PS_SPAWN) {
    if (introTimer < 20 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
    
    if (introTimer == 1 && introTimer2 == 0){
    	sound_play( asset_get("sfx_spin"));
    }
    
    if (introTimer == 3 && introTimer2 == 0){
    	sound_play( asset_get("sfx_spin"));
    }
    
    if (introTimer == 5 && introTimer2 == 0){
    	sound_play( asset_get("sfx_spin"));
    }
    
    if (introTimer == 7 && introTimer2 == 0){
    	sound_play( asset_get("sfx_spin"));
    }
    
    if (introTimer == 9 && introTimer2 == 0){
    	sound_play( asset_get("sfx_spin"));
    }
    
    if (introTimer == 11 && introTimer2 == 0){
    	sound_play( asset_get("sfx_spin"));
    }
    
    if (introTimer == 13 && introTimer2 == 0){
    	sound_play( asset_get("sfx_spin"));
    }
    
    if (introTimer == 15 && introTimer2 == 0){
    	sound_play( sound_get("counter_active"));
    }
    
}

if (state == PS_DOUBLE_JUMP){
	if (djump = 1){
		sprite_index = sprite_get("doublejump");
	}
	if (djump = -1){
		sprite_index = sprite_get("doublejump2");
	}
}

if (state == PS_WALL_JUMP && !up_down && !down_down){
    image_index = 0;
}

for(var i = array_length_1d(blur) - 1; i > 0; i--) {
		blur[@ i] = blur[i - 1];
	}
	blur[@ i] = [
		sprite_index,
		image_index,
		x,
		y,
		image_xscale,
		image_yscale,
		image_angle,
		c_white,
		.35,
	];