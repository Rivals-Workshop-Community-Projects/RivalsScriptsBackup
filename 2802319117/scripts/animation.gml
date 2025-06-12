

if (state == PS_SPAWN) {
	if (introTimer = 1) {
	sound_stop(sound_get("introwart"))
	sound_play(sound_get("introwart"),false,noone,1, 1)
	}

    if (introTimer < 16 && introTimer >= 0) {
        sprite_index = sprite_get("crouch");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("crouch");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}