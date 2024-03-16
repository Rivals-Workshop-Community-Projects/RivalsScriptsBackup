//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Jab
if (attack == AT_JAB){
	if (window == 7){
		if (window_timer == 2){
			if (voiced == 1){
				sound_play(vc_mario_wah);
			}
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (12 * spr_dir), y, "dash_start", -spr_dir);
		}
	}
}

//Dash Attack (Slide)
if (attack == AT_DATTACK){
	can_fast_fall = false;
	if (window == 1){
		can_ustrong = true
		if (window_timer == 5 && !free){
			//spawn_hit_fx( x, y, 204 );
			if (voiced == 1){
				sound_play(vc_mario_yah);
			}
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (11 * spr_dir), y, "dattack", spr_dir);
		}
	}
	if (da_cheat_active = false){
		if (window == 3){
			if (free){
				can_jump = true;
			} else if (!free){
				can_jump = false;
			}
		}
	} else if (da_cheat_active = true){
		can_jump = true;
	}
	
	if (window == 2 || window == 3){
		if (!hitpause && !free){
			if (window_timer mod 2 == 0){
				if (window == 3 && window_timer > 4){
					spawn_base_dust( x, y, "walk", spr_dir);
				} else {
					spawn_base_dust( x, y, "dash", spr_dir);
				}
			}
		}
	}
}

//Forward Tilt: Cappy Toss
if (attack == AT_FTILT){
	if (window != 4){
		ftilthatputbackontimer = 0
	}
	if (window == 1){
		if (window_timer == 10){
			sound_play(sfx_cappy_toss)
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (52 * spr_dir), y, "wavedash", -spr_dir);
		}
	}
	if (window == 4){
		if (image_index == 9){
			ftilthatputbackontimer++;
			if (ftilthatputbackontimer == 1){
				sound_play(asset_get("sfx_land_med"));
				sound_stop(sfx_cappy_toss)
			}
		}
	}
}

//Up Tilt
if (attack == AT_UTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (10 * spr_dir), y, "dash", spr_dir);
		}
	}	
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2){
		hud_offset = 42;
	}
}

//Down Tilt (Tanooki Tail)
if (attack == AT_DTILT){
	if (window == 1){
		if (window_timer == 1){
			//sound_play(sfx_tanooki_equip)
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			//sound_stop(sfx_tanooki_equip)
			//sound_play(sfx_tanooki_swipe)
			spawn_base_dust( x - (6 * spr_dir), y, "dash", spr_dir);
		}
	}
}

//Voices lol
if (attack == AT_NAIR
	|| attack == AT_DAIR
	|| attack == AT_UAIR
	|| attack == AT_BAIR
	|| attack == AT_FTILT
	|| attack == AT_DTILT
	|| attack == AT_UTILT
	|| attack == AT_FSPECIAL){
		if (window == 1){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				if (voiced == true){
					var gaming = random_func( 1, 7, true );
					switch (gaming){
						case 1:
							sound_play(vc_mario_hooh);
							break;
						case 2:
							sound_play(vc_mario_wah);
							break;
						case 3:
							sound_play(vc_mario_yah);
							break;
					}
				}
			}
		}
	}


//Forward Air: Forward Knuckle
if (attack == AT_FAIR){
	if (window == 1){
		if (window_timer == 8){
			if (voiced == 1){
				sound_play(vc_mario_yah);
			}
		}
	}
}

//Up Air: Air Slash
if (attack == AT_UAIR){
	if (window == 2){
		if (window_timer == 2 || window_timer == 3){
			hud_offset = 46;
		}
	}
}

//Down Air (Stomp)
//There's no code for this move in here, it's in hit_player.gml.

//Forward Strong (Hammer)
if (attack == AT_FSTRONG){
	if (window == 2){
		if (window_timer == 4){
			if (voiced == 1){
				sound_play(vc_mario_yah);
			}
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (50 * spr_dir), y, "land", spr_dir);
			shake_camera( 8, 4 )
			sound_play(sfx_hammer_land);
			hud_offset = 54;
		}
	}
	if (window == 3){
		if (window_timer == 0 || window_timer == 1){
			hud_offset = 50;
		}
	}
}

//Forward Strong 2 (Firebrand)
if (attack == AT_FSTRONG_2){
	if (window == 3){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (10 * spr_dir), y, "dash_start", spr_dir);
		}
	}
	if (window == 4){
		hasfirebrand = false
		firecharge = 0
	}
}

//Up Strong (Rising Uppercut)
if (attack == AT_USTRONG){
	if (window == 2){
		if (window_timer == 1){
			spawn_base_dust( x, y, "dash_start", -spr_dir);
			spawn_base_dust( x, y, "jump", spr_dir);
			if (free){
				spawn_base_dust( x, y, "doublejump", spr_dir);
			}
		}
	}
	if (window == 1){
		ustrong_charge = (strong_charge / 19)
		ustrong_charge = ustrong_charge * -1
		if (window_timer == 1){
			sound_stop(sfx_dattack);
			if (hsp > 9){
				hsp = 9
			}
			if (hsp < -9){
				hsp = -9
			}
			// >
		}
	}
	if (window == 2){
		if (window_timer == 1){
			set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -9.5 + ustrong_charge);
			if (voiced == 1){
				sound_play(vc_mario_wah);
			}
		}
		if (window_timer == 3){
			window = 3
			window_timer = 0
			//vsp =  vsp + ustrong_charge
			y = y - 2
		}
	}
	if (window == 4){
		ustrong_charge = 0
		//set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, -9.5);
		vsp = vsp + 0.125
		
		if (!free){
			if (was_parried == false){
				set_state(PS_LANDING_LAG);
			} else {
				set_state(PS_PRATLAND);
				sound_play(landing_lag_sound);
			}
		}
	}
}

//Down Strong: Sweep Kick
if (attack == AT_DSTRONG){
	if (window == 2){
		if (window_timer == 2){
			if (voiced == 1){
				sound_play(vc_mario_haha);
			}
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (20 * spr_dir), y, "dash_start", -spr_dir);
		}
	}
	if (window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (20 * spr_dir), y, "dash_start", spr_dir);
		}
	}
}

//Neutral Special (Fireball / Firebrand)
if (attack == AT_NSPECIAL){
	if (window == 1){
		if (hasfirebrand == true){
			firecharge = 0
			window = 6
			window_timer = 0
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 8);
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialbig"));
			set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialbig"));
			hasfirebrand = false
		} else {
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
			set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
		}
		if (window_timer == 9){
			sound_play(sfx_mario_fireball_charge);
		}
	}
    if (window == 2){
		if (shield_pressed){
			window = 9
			window_timer = 0
			sound_stop(sfx_mario_fireball_charge);
		}	
		if (window_timer == 21 && special_down){
			sound_play(sfx_mario_fireball_charge);
			window_timer = 0
			firecharge++;
		}
		if (special_down == false){
			window = 3
			window_timer = 0
		}
	}
	if (window == 4){
		if (window_timer == 1){
			firecharge = 0
			sound_play(sfx_mario_fireball);
			sound_stop(sfx_mario_fireball_charge);
		}
	}
	if (window == 5){
		if (window_timer == 17){
			move_cooldown[AT_NSPECIAL] = 28;
		}
	}
	if (firecharge == fireball_charge_needed_for_firebrand && window == 2){
		hasfirebrand = true
		window = 9
		window_timer = 0
		sound_stop(sfx_mario_fireball_charge);
		sound_play(sfx_mario_fireball_charge_full);
		spawn_hit_fx( x , y - 20, 204 );
	}
	if (window == 6){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialbig"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecialbig"));
	}
	if (window == 8){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
		if (window_timer == 20){
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
		}
	}
}

//Forward Special (Dive)
if (attack == AT_FSPECIAL){
	can_wall_jump = true;
	if (window == 1){
		divelandtimesfx = 0
		if (window_timer > 4){
			hsp *= 0.996
		}
	}
	if (window == 2){
		set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 15);
		if (window_timer == 2){
			window = 3
			window_timer = 0
		}
	}	
	if (window == 3){
		if (window_timer == 9){
			window_timer = 0
		}
		if (!free){
			window = 4
			window_timer = 0
			if (voiced == true){
				var gaming = random_func( 1, 4, true );
				switch (gaming){
					case 1:
						sound_play(vc_mario_uhh);
						break;
				}
			}
		}
		if (vsp < 0){
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 12);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
			can_jump = false;
			can_shield = false;
		} else if (vsp > 0 && vsp < 3){
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 14);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -24);
			can_jump = true;
			can_shield = true;
		} else if (vsp > 3){
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 18);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -12);
			can_jump = true;
			can_shield = true;
			if (attack_pressed){
				//window = 8
				//window_timer = 0
			}
		}
	}
	if (window != 3){
		can_jump = false;
		can_shield = false;
	}
	if (window == 4){
		destroy_hitboxes();
	}
	if (window == 4 && (special_pressed || (jump_pressed || (tap_jump_pressed && can_tap_jump()))) && window_timer > 1 && window_timer < 12){ //>
		window = 6;
		window_timer = 0;
		can_jump = false;
		can_shield = false;
		can_attack = false;
		if (voiced == true){
			var gaming = random_func( 1, 4, true );
			switch (gaming){
				case 1:
					sound_play(vc_mario_hooh);
					break;
				case 2:
					sound_play(vc_mario_haha);
					break;
			}
		}
	}
	if (window == 6){
		if (window_timer == 1){
			hsp = 2 * spr_dir
		}
		if (window_timer == 3){
			spawn_base_dust( x, y, "dash_start", spr_dir);
		}
		if (window_timer == 4){
			hsp = 10 * spr_dir
			vsp = -3.62
			window_timer = 5
		}
		if (window_timer == 13){
			hsp = 7.2 * spr_dir
			window = 7
			window_timer = 0
		}
		if (has_hit){
			can_jump = true;
			//can_attack = true;
		}
	}
	if (window == 7){
		if (window_timer > 7){
			if (free){
				set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
				set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 19);
			} else if (!free){
				set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
				set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 15);
				divelandtimesfx++;
				if (divelandtimesfx == 1){
					sound_play(sfx_land);
				}
			}
		}
		if (window_timer > 8 && !free){
			window = 8
			window_timer = 0
		}
	}
	if (window == 8){
		//set_state(PS_DOUBLE_JUMP);
		//state_timer = 5
		//move_cooldown[AT_NAIR] = 28;
		//move_cooldown[AT_FAIR] = 28;
		//move_cooldown[AT_DAIR] = 28;
		//move_cooldown[AT_BAIR] = 28;
		//move_cooldown[AT_UAIR] = 28;
		//move_cooldown[AT_FSPECIAL] = 99999999999999999;
		//vsp = vsp + 2.5
		//max_djumps = 0
	}
}

//Up Special (Super Jump Punch)
if (attack == AT_USPECIAL){
	can_wall_jump = true
	if (window == 1){
		uspecGrabbedPlayer = noone;
		if (window_timer == 0){
			clear_button_buffer( PC_LEFT_HARD_PRESSED );
			clear_button_buffer( PC_RIGHT_HARD_PRESSED );
		}
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 1);
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -11.6);
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x, y, "jump", spr_dir);
			if(free){
				spawn_base_dust( x, y, "doublejump", spr_dir);
			}
			if (voiced == true){
					var gaming = random_func( 1, 8, true );
					switch (gaming){
						case 2:
							sound_play(vc_mario_yeehaw);
							break;
						case 3:
							sound_play(vc_mario_wahah);
							break;
					}
				}
		}
	}
	if (window != 4){
		can_move = false;
		can_fast_fall = false;
	}
	if (window == 2){
		//Upward Input
		if (left_down && spr_dir == 1 || right_down && spr_dir == -1){
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0.5);
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -16);
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
		//Downward Input
		} else if (right_down && spr_dir == 1 || left_down && spr_dir == -1){
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 2);
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -12);
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
		//No Input
		} else {
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 1);
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -14.2);
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
		}
	}
	if (window == 3 && instance_exists(uspecGrabbedPlayer)){
		uspecGrabbedPlayer.x = x + 14 * spr_dir
		uspecGrabbedPlayer.y = y - 48
	}
	if (window == 4){
		uspecGrabbedPlayer = noone;
		if (window_timer == 1){
			vsp = -6.5
		}
		vsp = vsp + 0.125
	}
	if (window != 2 && window != 3){
		//Reseting hitbox sizes just in case.
	
		//Linking Hitbox 1
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 20);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -61);
		set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 35);
		set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 35);
		
		//Linking Hitbox 2
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 20);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -61);
		set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 35);
		set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 35);
		
		//Linking Hitbox 3
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 20);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -61);
		set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 35);
		set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 35);
		
		//Final Hit
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 22);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -61);
		set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 50);
		set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 50);
	}
}

//Down Special (Mario Tornado)
if (attack == AT_DSPECIAL){
	if (vsp < -5 && window != 4){//>
		vsp = -5
	}
	if (hsp > 4.5){
		hsp = 4.5
	}
	if (hsp < -4.5){
		hsp = -4.5
	}//>
	if (tornadoused == false){
		if (vsp > 3){//>
			vsp = 3
		}
	}
	
	if (window == 1 || window == 2){
		if (!hitpause && !free){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				spawn_base_dust( x-8, y, "dash", 1);
				spawn_base_dust( x+8, y, "dash", -1);
			}
		}
	}
	
	if (window == 1){
		if (window_timer == 1){
			//Changing Down Special Animation if Firebrand
			if (hasfirebrand == true){
				sound_play(asset_get("sfx_zetter_downb"));
				set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_fire"));
				set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_fire"));
			} else if (hasfirebrand == false){
				set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
				set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
			} 
		}
		tornadospin = 0
		tornadoboost = true
		tornadoboosttimes = 0
		if (free){
			tornadoair = true
			set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
			set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
		} else if (!free){
			tornadoair = false
			set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
			set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.85);
		}
		if (window_timer == 4){
			voicelinework = random_func( 0, 2, true );
			if (voiced == 1 && voicelinework == 1){
				sound_play(vc_mario_yeehaw);
			}
		}
	}
	if (window != 1 && tornadoair == true && !free && !was_parried){
		set_state(PS_LANDING_LAG);
		tornadoair = false
	}
	if (window == 2){//Multi Hits
		//has_hit = false;
		//idk why this is there lol
		can_move = true
		if (window_timer == 6 && tornadospin != 2){//This segment of code resets Mario to window 2 of the move.
			window_timer = 0
			//clear_button_buffer(PC_SPECIAL_PRESSED);
			tornadospin++;
			tornadoboost = true
		}
		if (tornadoboost == true && special_pressed && tornadoused == false){
			//This checks if attack is pressed during the move. If it is pressed, Mario will gain some height.
			if (tornadoair == false){
				vsp = vsp - 5.5
			} else {
				vsp = vsp - 5.45
			}
			tornadoboost = false
			tornadoboosttimes++;
		}
		if (left_down){
			if (tornadoair == true){
				hsp = hsp - 0.4
			} else if (tornadoair == false){
				hsp = hsp - 1
			}
		}
		if (right_down){
			if (tornadoair == true){
				hsp = hsp + 0.4
			} else if (tornadoair == false){
				hsp = hsp + 1
			}
		}
		if (vsp < -9){//>
			vsp = -9
		}
		//Firebrand Stuff
		if (hasfirebrand == true){
			if (window_timer == 0){
				create_hitbox( AT_NSPECIAL, 7, x - 16 * spr_dir, y );
			}
			if (window_timer == 2){
				create_hitbox( AT_NSPECIAL, 9, x, y - 40 );
			}
			if (window_timer == 5){
				create_hitbox( AT_NSPECIAL, 1, x + 28 * spr_dir, y );
			}
		}
	}
	if (window == 3){
		if (hasfirebrand == true){
			hasfirebrand = false
			firecharge = 0
		}
	}
	if (window == 4){//Final Hit
		set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
		set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
		tornadoboost = false
		if (tornado_cheat_active == true){
			tornadoused = false
		} else {
			tornadoused = true
		}
		if (window_timer != 3){
			if (tornadoboosttimes != 0){//Checks to see if attack was pressed at all.
				//This part adds up the amount of times attack was pressed and gives Mario some bonus height.
				if (tornadoair == true){
					vsp = vsp - tornadoboosttimes * 1.3
				} else {
					vsp = vsp - tornadoboosttimes * 1.4
					move_cooldown[AT_DSPECIAL] = 46;
				}
				hsp = hsp * 0.752
			}
		}
	}
}

//Taunt
if (attack == AT_TAUNT){
	if (window == 1){
		if (window_timer == 18){
			if (voiced == 1){
				var whichTauntVoice = random_func(0,2,true)+1;
				if (whichTauntVoice == 1){
					sound_play(vc_mario_herewego);
				} else {
					sound_play(vc_mario_itsame);
				}
			}
		}
	}
}

//--------------------------------------------

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
    case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;
return newdust;