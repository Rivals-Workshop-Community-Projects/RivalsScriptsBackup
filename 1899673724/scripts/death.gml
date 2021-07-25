// death.gml
if (get_player_color( player ) == 12){
	sound_play(sound_get("sfx_sonic_die_retro"))
} else if (get_player_color( player ) != 12){
	if (voiced == 1){
		sound_play(sound_get("sfx_sonic_die"))
	}
}
lightspeeddash = 0
killarticles = true
spindash_loop = 0
move_cooldown[AT_NSPECIAL] = 0;

sound_stop(sound_get("sfx_sonic_spindash_charge"))
sound_stop(sound_get("sfx_sonic_spindash_charge_retro"))