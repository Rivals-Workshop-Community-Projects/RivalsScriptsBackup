

if (state == PS_SPAWN) {
	if (introTimer = 1) {
	sound_stop(sound_get("pipe"))
	sound_play(sound_get("pipe"),false,noone,0.6, 1 + random_func(1,30,true)/100)
	sound_stop(sound_get("intro"))
	sound_play(sound_get("intro"),false,noone,0.6, 1)
	}
    if (introTimer < 14 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}