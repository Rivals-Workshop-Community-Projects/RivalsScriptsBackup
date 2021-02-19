switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}

if (attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
	if (free) {
		if (window < 6) {
			sprite_index = sprite_get("aircharge");
			hurtboxID.sprite_index = sprite_get("aircharge_hurt");
		} else {
			sprite_index = sprite_get("nspecial");
			hurtboxID.sprite_index = sprite_get("nspecial_hurt");
		}
	} else {
		sprite_index = sprite_get("nspecial");
		hurtboxID.sprite_index = sprite_get("nspecial_hurt");
	}
}

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
}

if (get_player_color( player ) == 2) {
	if (state == PS_IDLE) {
		sprite_index = sprite_get("idle_g7");
		image_index = introTimer;
	}
	if (state == PS_SPAWN) {
		if (introTimer < 14 && introTimer >= 0) {
			sprite_index = sprite_get("intro_g7");
			image_index = introTimer;
		} else if (introTimer < 0) {
			sprite_index = sprite_get("intro_g7");
			image_index = 0;
		} else {
			sprite_index = sprite_get("idle_g7");
		}
	}
}
