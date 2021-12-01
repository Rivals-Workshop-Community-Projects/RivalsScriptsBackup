//Intro
if (state == PS_SPAWN){
    if (introTimer <= 17 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
		image_index = introTimer;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if (attack == AT_USPECIAL){
	if (state == PS_ATTACK_GROUND){
		if (window == 3){
		//if (tilt == 1){ sprite_index = sprite_get("uspecial_blastfront"); image_index = 0; }
		//if (tilt == -1){ sprite_index = sprite_get("uspecial_blastfront"); image_index = 0; }
		//if (tilt == 0){ sprite_index = sprite_get("uspecial_blastup"); image_index = 0; }
		}
		if (window == 4){ sprite_index = sprite_get("uspecial_launchup"); hurtboxID.sprite_index = sprite_get("uspecial_launchup_hurt"); image_index = floor(image_number*window_timer/(image_number*3)); }
		if (window == 5){ sprite_index = sprite_get("uspecial_launchfront"); hurtboxID.sprite_index = sprite_get("uspecial_launchfront_hurt"); image_index = floor(image_number*window_timer/(image_number*3)); }
	} else if (state == PS_ATTACK_AIR){
		if (window == 3){
		//if (tilt == 1){ sprite_index = sprite_get("uspecial_blastfront"); image_index = 0; }
		//if (tilt == -1){ sprite_index = sprite_get("uspecial_blastfront"); image_index = 0; }
		//if (tilt == 0){ sprite_index = sprite_get("uspecial_blastup"); image_index = 0; }
		}
		if (window == 4){ sprite_index = sprite_get("uspecial_launchup"); hurtboxID.sprite_index = sprite_get("uspecial_launchup_hurt"); image_index = floor(image_number*window_timer/(image_number*3)); }
		if (window == 5){ sprite_index = sprite_get("uspecial_launchfront"); hurtboxID.sprite_index = sprite_get("uspecial_launchfront_hurt"); image_index = floor(image_number*window_timer/(image_number*3)); }
	}
}

if (state == PS_RESPAWN){
	sprite_index = sprite_get("respawn"); image_index = floor(image_number*state_timer/(image_number*5));
}

if (state == PS_ATTACK_GROUND && attack == AT_TAUNT && window == 1){
	sprite_index = sprite_get("idle"); image_index = floor(image_number*window_timer/(image_number*3));
}

/*
if (state == PS_SPAWN) {
    if (introTimer < 25 && introTimer >= 0) {
        sprite_index = sprite_get("respawn");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}