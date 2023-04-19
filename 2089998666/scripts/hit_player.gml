//hit_player
if (has_rune("K")){
	move_cooldown[AT_DAIR] = 0;	
	
	if my_hitboxID.hbox_num == 1 {
	old_vsp = -15;
	sound_play( sound_get( "smw2_stomp_2" ) );
	}
}

if (my_hitboxID.attack == AT_DAIR) && (my_hitboxID.hbox_num < 3) {
	window = 7;
	window_timer = 0;
	flutterTimer = 65;
	flutterAttack = 0;
	move_cooldown[AT_DAIR] = 50;
	
	if my_hitboxID.hbox_num == 1 {
	old_vsp = -10;
	sound_play( sound_get( "smw2_stomp_2" ) );
	}
	if my_hitboxID.hbox_num == 2 {
	old_vsp = -8;
	sound_play( sound_get( "smw2_stomp_1" ) );
	}
	}


if (my_hitboxID.attack == AT_FSPECIAL) && (my_hitboxID.hbox_num == 1) {
	sound_play(sound_get("ssbm_eggbreak"));
	spawn_hit_fx(my_hitboxID.x, my_hitboxID.y+45, eggBreak);
}

if attack == AT_NSPECIAL && (my_hitboxID.attack == AT_NSPECIAL) {
	window = 4;
	window_timer = 6;
}

if (my_hitboxID.attack == AT_NSPECIAL_2) {
	djumps = 0;
}