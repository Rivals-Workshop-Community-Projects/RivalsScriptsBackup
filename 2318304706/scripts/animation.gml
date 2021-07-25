//sprite_index = sprite_get("idle");

if (state == PS_CROUCH) {
	if (prev_state == PS_IDLE) {
		if (state_timer < 2) {
			image_index = 0;
		} else if (state_timer < 3) {
			image_index = 1;
		} else if (state_timer < 4) {
			image_index = 2;
		} else if (state_timer < 8) {
			image_index = 3;
		} else if (state_timer < 12) {
			image_index = 4;
		} else if (down_down) {
			image_index = 5;
		}
	} else if (down_down) {
		image_index = 5;
	}
}

if (state == PS_SPAWN) {
    if (introTimer < 12 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_DSPECIAL_2) {
	hurtboxID.sprite_index = sprite_get("dspecial2_hurt");
}

if (drm == 1) {
	sprite_index = sprite_get("intro");
	image_index = 0;
}