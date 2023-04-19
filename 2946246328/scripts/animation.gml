

if (state == PS_SPAWN) {
	if (introTimer = 1) {
	sound_stop(sound_get("pipe"))
	sound_play(sound_get("pipe"),false,noone,0.6, 1 + random_func(1,30,true)/100)
	}
	if (introTimer = 3) {
	sound_stop(sound_get("ohyeah1"))
	sound_play(sound_get("ohyeah1"))
	}
    if (introTimer < 16 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}