// hitbox_update

if (attack == AT_DAIR && !free && !was_parried) {
	destroyed = true;
	sound_play(asset_get("sfx_icehit_weak1"));
}

if (attack == AT_FSTRONG && !free && !was_parried) {
	destroyed = true;
	sound_play(asset_get("sfx_icehit_weak1"));
}
