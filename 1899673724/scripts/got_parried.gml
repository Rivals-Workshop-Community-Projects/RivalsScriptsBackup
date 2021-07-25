//got_parried.gml

sound_stop(sound_get("sfx_sonic_spindash_charge"))
sound_stop(sound_get("sfx_sonic_spindash_charge_retro"))

if (attack == AT_FSPECIAL){
	set_state(PS_PRATFALL);
} else if (attack == AT_DSPECIAL){
	window = 5
	window_timer = 11
} else if (attack == AT_NSPECIAL || attack == AT_DAIR){
	window = 3
	window_timer = 0
	hsp = 0
	vsp = 0
}

if (attack != AT_JAB && voiced == 1){
	sound_play(sound_get("parried"))
}