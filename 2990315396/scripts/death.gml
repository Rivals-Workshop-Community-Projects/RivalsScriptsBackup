sound_play(sound_get("sfx_death"));
sound_play(sound_get("sfx_scream"));

nspecial_mach_timer = 0;

if (get_player_stocks(player) <= 0) set_victory_sidebar(sprite_get("victory_sidebar1"))