//set_attack
if attack == AT_TAUNT && down_down {
	attack = AT_EXTRA_2;
	window = 1;
	window_timer = 0;
}

if attack == AT_DTILT && has_rune("L") {
	attack = AT_EXTRA_3;
}

if attack == AT_DSPECIAL && cookieMeter == 0 {
	window = 5;
	window_timer = 0;
	if move_cooldown[AT_DTHROW] == 0 {
		sound_play(sound_get("smrpg_wrong"));
		move_cooldown[AT_DTHROW] = 20;
	}
}