//set_attack
if attack == AT_TAUNT && down_down {
	attack = AT_EXTRA_2;
	window = 1;
	window_timer = 0;
}

if attack == AT_DTILT && has_rune("L") {
	attack = AT_EXTRA_3;
}

if (attack == AT_DSPECIAL) && (0 >= cookieMeter || cookieAid) {
	attack = AT_DSPECIAL_2;
}

grabbed_player_obj = noone;
grabbed_cookie_obj = noone;
tongueOutcome = 0;