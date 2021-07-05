//
clownState = 0
dodgeDir = 0
dodgeTime = 0
clownControl = 0
respawnTimer = 0
armySpecial = 0
speedCharge = 0
bubbleState = 0
forcefulRecovery = 0 //If you reach red.



if custom_clone {
	if is_nana {
		disable_ai = false
	} else {
		disable_ai = true
	}

	wall_speed = 4
	walk_accel = 0.8;
	walk_turn_time = 6;
	initial_dash_speed = 7;
	dash_speed = 7;
	dash_turn_time = 6;
	dash_stop_percent = .2;
	ground_friction = .3;
	moonwalk_accel = 1.8;
	
	jump_start_time = 5;
	jump_speed = 11;
	short_hop_speed = 6;
	djump_speed = 11;
	leave_ground_max = 7; 
	max_jump_hsp = 7; 
	air_max_speed = 7; 
	air_accel = .35;
	prat_fall_accel = .6; //multiplier of air_accel while in pratfall
	air_friction = .015;
	walljump_hsp = 6;
	walljump_vsp = 12;
	walljump_time = 32;
	max_fall = 5;
	fast_fall = 8;
	gravity_speed = .35;
	hitstun_grav = .4;
	knockback_adj = .25;
	air_dodge_speed = 7;
	roll_forward_max = 4; //roll speed
	roll_backward_max = 4;
	
	if get_gameplay_time() > 120 {
		nana_state = 5 //Respawn
	} else {
		nana_state = 1 //Fight
	}

}

far_down_attacks[0] = AT_DAIR;

far_side_attacks[0] = AT_NSPECIAL;
far_side_attacks[1] = AT_FSPECIAL;

mid_side_attacks[0] = AT_FSTRONG;
mid_side_attacks[1] = AT_DATTACK;
mid_side_attacks[2] = AT_FSPECIAL;
mid_side_attacks[3] = AT_FTILT;

close_up_attacks[0] = AT_USTRONG;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_UTILT;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_DTILT;

close_side_attacks[0] = AT_FSTRONG;
close_side_attacks[1] = AT_FAIR;
close_side_attacks[2] = AT_FTILT;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_DSPECIAL;



//reject ai embrace climbers (Bernard Code))
	army_return_xdist = 90; //230
	army_return_ydist = 60; //110
	