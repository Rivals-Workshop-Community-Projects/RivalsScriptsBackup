if (state == PS_SPAWN) {
	if (state_timer == 5) {
		sound_play(asset_get("sfx_syl_nspecial_plantgrowth"));
	}
    if (introTimer < 10 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}