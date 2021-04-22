//parry.gml

sound_play(sound_get("perish"));

if ostyle != 5 {
	otime += 300
}

move_cooldown[AT_EXTRA_2] = 15