// player death

player_die = 1;
music_change = !music_change;
/*
sound_play(asset_get("mfx_map_zoom"), 0, 0, 1, 0.25);
sound_play(asset_get("mfx_map_zoom"), 0, 0, 1, 1);
*/
sound_play(asset_get("sfx_holy_lightning"), 0, 0, 1, 0.25);
sound_play(asset_get("sfx_holy_lightning"), 0, 0, 1, 1);