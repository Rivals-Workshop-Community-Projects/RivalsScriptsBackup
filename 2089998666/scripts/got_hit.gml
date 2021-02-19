//got_hit

if cookieAid {
	if enemy_hitboxID.damage > 3 {
		take_damage( player, -1, 1);
	}
}

if attack == AT_TAUNT_2 {
	sound_stop( sound_get( "marioundergroundsax"));
}

if flutterTimer < 15 {
	flutterTimer = 15;
}