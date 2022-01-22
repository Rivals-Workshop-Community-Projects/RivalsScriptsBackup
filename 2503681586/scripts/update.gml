//
/*
if !custom_clone && clownfish == -4 && cfCreate == 1 {
	cfCreate = 0
	clownfish = instance_create(x ,y,"oPlayer",player);
	clownfish.x -= spr_dir * 64
}
*/
/*
if taunt_down {
	if down_down { //Debug
		debug = 1
			if instance_exists(army) {
				army.debug = 1
			}
	 }
	 if special_down && debug == 1 {
			if instance_exists(army) {
				instance_destroy(army)
			}
	 }
}
*/

if !is_nana {
	kashControl = ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_NSPECIAL || attack == AT_TAUNT))
	
	if clownfishDeadHealth != 0 {
		set_player_damage(player,  clownfishDeadHealth)
		clownfishDeadHealth = 0
	}
}	

if !special_pressed && !special_down {
	armySpecial = 0
}

if !is_nana && !(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
	tauntRep = 0
	anemoneGrab = -4
	shouldThrow = 0
}


/*
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (taunt_pressed && attack != AT_TAUNT) {
	clownSet = 1
}
*/

if "nana_state" in self && "is_bubble" !in self {
	if nana_state = 6 {
		char_height = 1000
		custom_clone = true
	}	else {
		char_height = 64
	}
}


if !is_nana {
if (state == PS_RESPAWN) || (attack == AT_TAUNT && invince_time > 0) {
		sprite_change_offset("plat", 48, 70);
		if spawnClown != 0 {
		if !instance_exists(army) {
			//army = instance_create(x - 25*spr_dir,y,"oPlayer");
			//army.army_leader = self;			
		}
		army.x = x
		army.y = y
		spawnClown = 0	
		}
	}	else {
		sprite_change_offset("plat", 48, 7000);
	}
} 


if is_nana && "is_bubble" !in self {
	
	if state == PS_FROZEN || state == PS_WRAPPED {
		clownState = 1
	}
	
	switch(clownState) {
		case 0: //Bubble

	//Comment out if issues occur
	/*
	if state_cat == SC_HITSTUN {
		sound_play(asset_get("sfx_orca_absorb"))
		clownState = 1
	}
	*/

/*
	if !((attack == AT_FSPECIAL_2) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window != 1){ //Unarmoed Attacks
		soft_armor = 999
	} else {
		soft_armor = 0
	}
*/
		
	if (walk_speed != 4)	{
		walk_speed = 4
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
		hitstun_grav = .45;
		knockback_adj = .5; //Calculation Only :monkaS:
		air_dodge_speed = 7;
		roll_forward_max = 4; //roll speed
		roll_backward_max = 4;
	}
	break;
		
		case 1: //No Bubble
	if prev_state == PS_HITSTUN && state != PS_RESPAWN && state_cat != SC_HITSTUN && !(state == PS_TECH_GROUND || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD || state == PS_WALL_TECH) {
		state = PS_PRATFALL
	}

	if (walk_speed != 2)	{
		walk_speed = 2
		walk_accel = 0.8;
		walk_turn_time = 6;
		initial_dash_speed = 3;
		dash_speed = 3;
		dash_turn_time = 6;
		dash_stop_percent = .2;
		ground_friction = .5;
		moonwalk_accel = 1.8;
		
		jump_start_time = 5;
		jump_speed = 9;
		short_hop_speed = 6;
		djump_speed = 9;
		leave_ground_max = 7; 
		max_jump_hsp = 7; 
		air_max_speed = 7; 
		air_accel = .25;
		prat_fall_accel = .6; //multiplier of air_accel while in pratfall
		air_friction = .015;
		walljump_hsp = 5;
		walljump_vsp = 9;
		walljump_time = 32;
		max_fall = 11;
		fast_fall = 13;
		gravity_speed = .7;
		hitstun_grav = .45;
		knockback_adj = 1.2;
		air_dodge_speed = 7;
		roll_forward_max = 4; //roll speed
		roll_backward_max = 4;
	}
	break;		
		
		default:
		break;
	} 
}

if "is_bubble" in self {
	sprite_change_collision_mask( "empty", true, 0, 0, 0, 0, 0, 0 );
	hsp = 0
	vsp = 0
}

with pHitBox {
	if (hitbox_timer % 2 == 0 && orig_player == other.player && attack = AT_FSPECIAL_AIR && hbox_num == 1) {
		can_hit[0] = 1
		can_hit[1] = 1
		can_hit[2] = 1
		can_hit[3] = 1
	}
}
with pHitBox {
	if ( 
			(attack == AT_FSPECIAL && hbox_num == 1) 
	||	(attack == AT_NSPECIAL && hbox_num == 1) 
	||	(attack == AT_USTRONG && hbox_num == 3) 
	||	(attack == AT_UAIR && hbox_num == 3) 
	||	(attack == AT_DAIR && hbox_num == 2) 
	) && !other.is_nana && orig_player == other.player {
		switch(attack) {
			case AT_NSPECIAL:
				sprite_index = other.sprRound
				mask_index = other.sprRound
			break;
			case AT_USTRONG:
			case AT_UAIR:
				sprite_index = other.sprCircle
				mask_index = other.sprCircle
			break;
		}
		can_hit_self = true
	}
}





//I hate the offscreen arrow so much
if instance_exists(army) {
armyHudX = army.x
armyHudY = army.y
	if  army.x <= view_get_xview() - 32 {
		armyHudX = view_get_xview() - 32
	}
	if  army.x >= view_get_xview() + view_get_wview() + 32 {
		armyHudX = view_get_xview() + view_get_wview() + 32
	}
	if  army.y <= view_get_yview() + 56 {
		armyHudY = view_get_yview() + 56
	}
	if  army.y >= view_get_yview() + view_get_hview() - 64 {
		armyHudY = view_get_yview() + view_get_hview() - 64
	}
}

//I hate the offscreen arrow so much
if instance_exists(bubble) {
bubbleHudX = bubble.x
bubbleHudY = bubble.y
	if  bubble.x <= view_get_xview() - 32 {
		bubbleHudX = view_get_xview() - 32
	}
	if  bubble.x >= view_get_xview() + view_get_wview() + 32 {
		bubbleHudX = view_get_xview() + view_get_wview() + 32
	}
	if  bubble.y <= view_get_yview() + 56 {
		bubbleHudY = view_get_yview() + 56
	}
	if  bubble.y >= view_get_yview() + view_get_hview() - 64 {
		bubbleHudY = view_get_yview() + view_get_hview() - 64
	}
}












//DinoBroswer Tutorial area
if canTutorial == 1 && !is_nana {
	if taunt_down && shield_down && tutorialDisplay == 0 {
		sound_play(asset_get("mfx_forward"))
		clear_button_buffer( PC_TAUNT_PRESSED );
		clear_button_buffer( PC_SHIELD_PRESSED );
		tutorialArrow = 0
		tutorialDisplay = 1
	}

	if tutorialDisplay == 1 {
		if !free {
			state = PS_IDLE
		} else {
			state = PS_IDLE_AIR
		}
		vsp = 0
		hsp = 0
		invincible = 1
		invince_time = 5
		hitstop = 1
		
		if down_pressed {
			sound_play(asset_get("mfx_change_color"))
			if tutorialArrow > 3 {
				tutorialArrow = 0
				} else {
					tutorialArrow += 1
				}
			clear_button_buffer( PC_DOWN_PRESSED );
		} else if up_pressed {
			sound_play(asset_get("mfx_change_color"))
			if tutorialArrow < 1 {
				tutorialArrow = 4
				} else {
					tutorialArrow -= 1
				}
			clear_button_buffer( PC_UP_PRESSED );
		}
		tutorialArrow %= 5
		
		if shield_pressed {
			sound_play(asset_get("mfx_back"))
			tutorialDisplay = 0
			clear_button_buffer( PC_TAUNT_PRESSED );
			clear_button_buffer( PC_SHIELD_PRESSED );
		}


		switch(tutorialArrow) {
			case 0: //Next Page / Simp 1
				if taunt_pressed {
					sound_play(asset_get("mfx_option"))
					if tutorialPage > tutorialPageTotal - 1 {
						tutorialPage = 1
						} else {
							tutorialPage += 1
						}
					clear_button_buffer( PC_TAUNT_PRESSED );
				}
			break;
			case 1: //Last Page / Simp 2
				if taunt_pressed {
					sound_play(asset_get("mfx_option"))
					if ((tutorialPage < 2) || (tutorialPage > tutorialPageTotal)) {
						tutorialPage = tutorialPageTotal
						} else {
							tutorialPage -= 1
						}
					clear_button_buffer( PC_TAUNT_PRESSED );
				}
			break;
			case 2: //Change Log / Simp 3
				if taunt_pressed {
					tutorialPage = 999
					sound_play(sound_get("ThereIsNoSoundFileCommaTakeOffYourClothes"))
					clear_button_buffer( PC_TAUNT_PRESSED );
				} 
			break;
			case 3: //Debug Variables
				if taunt_pressed {
					sound_play(asset_get("mfx_confirm"))
					debug += 1
					debug %= 2
					clear_button_buffer( PC_TAUNT_PRESSED );
				}
			break;
			case 4: //Exit
				if taunt_pressed {
					sound_play(asset_get("mfx_back"))
					tutorialDisplay = 0
					clear_button_buffer( PC_TAUNT_PRESSED );
					clear_button_buffer( PC_SHIELD_PRESSED );
				}
			break;
			default:
			break;
		}
	}
}