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
	my_hitboxID.hsp = 0;	
	my_hitboxID.vsp = 0;	
	my_hitboxID.hitbox_timer = my_hitboxID.length-10;
}



//DSpecial
if ((my_hitboxID.attack == AT_DSPECIAL) && my_hitboxID.hbox_num == 1) {
	if my_hitboxID.has_hit {
		spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, 301);
	}
    my_hitboxID.hsp *= -.55;
    my_hitboxID.vsp = -5;
}

//NSpecial
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) {
    tongueOutcome = 1; 
    grabbed_player_obj = hit_player_obj;
    
    my_hitboxID.tongue_state = 3; 
    
    my_hitboxID.hsp *= .55;
    hit_player_obj.hitstop = 2;
    hit_player_obj.hitpause = true;
}

if (my_hitboxID.attack == AT_FTHROW) {
    djumps = 0;
}