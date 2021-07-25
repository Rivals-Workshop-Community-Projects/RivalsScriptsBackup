gbeamStoredCharge = 0;

if (drm == 1) {
	sound_play(sound_get("lol"), false, noone, 1, 1);
	drm = 2;
} else {
	sound_stop(asset_get("death1"));
	sound_stop(asset_get("death2"));
	sound_play(sound_get("smrpg_enemy_dead"));
}