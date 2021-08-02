//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Jab
if (attack == AT_JAB){
	if (window == 1 || window == 4){
		clear_button_buffer(PC_ATTACK_PRESSED);
	}
}

//Dash Attack: Running Kick
if (attack == AT_DATTACK){
	if (window == 1){
		tailsdattackvar = 0
		if (window_timer == 1){
			//hsp = 0.2 * spr_dir
		}
	}
	if (window == 3){
		if (image_index == 5){
			tailsdattackvar++;
			if (tailsdattackvar == 1){
				sound_play(sfx_land);
				hsp = 6.5 * spr_dir
			}
		}
	}
}

//Forward Tilt: Tail Swipe
if (attack == AT_FTILT){
	if (window == 1){
		if (window_timer == 0){
			if (didwavedash != 0){
				//set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, 8);
				//Lol!
			}
		}
	}
}

//Up Tilt: Ring Toss
if (attack == AT_UTILT){
	if (window == 1){
		if (window_timer == 7){
			sound_play(sfx_ring)
		}
	}
	if (window == 3){
		move_cooldown[AT_UTILT] = 4;
	}
}

//Down Tilt: Slide
if (attack == AT_DTILT){
	//can_jump = true
	if (window != 1){
		if (free){
			set_state(PS_IDLE_AIR);
			if (hsp > 9){
				hsp = 10
			}
			if (hsp < -9){ //>
				hsp = -10
			}
			hsp *= 0.55
		}
	}
	if (has_hit == true && was_parried == false){
		can_jump = true;
	}
	if (was_parried == true){
		hsp = 0
	}
}

//Forward Strong: Scissor Punch
if (attack == AT_FSTRONG){
	if (window == 2){
		if (window_timer == 4){
			sound_play(asset_get("sfx_birdclap"));
		}
	}
	//Lol!
}

//Up Strong: Magic Upper
if (attack == AT_USTRONG){
	//Lol!
	if (window == 2){
		if (window_timer == 1){
			sound_play(asset_get("sfx_swipe_heavy1"));
		}
	}
}

//Down Strong: Dummy Ring Bomb
if (attack == AT_DSTRONG){
	if (window == 2){
		if (window_timer == 1){
			sound_play(sfx_dstrong_use)
		}
		if (window_timer == 3){
			sound_play(sfx_ring)
		}
	}
	if (window == 3){
		if (window_timer == 2){
			spawn_hit_fx( x, y, ring_dstrong_vfx );
			window = 4
			window_timer = 0
		}
	}
}

//Neutral Special: Regular Bombs
/*
if (attack == AT_NSPECIAL){
	if (window == 1){
        if (window_timer == 4){
			sound_play(sfx_krtd_bomb_prep)
		}
    }
    if (window == 3){
        move_cooldown[AT_NSPECIAL] = 120;
    }
}
*/
if (attack == AT_NSPECIAL){
	if (window == 1){
		nspec_air_window_timer = window_timer
		if (window_timer == 26){
			create_hitbox(AT_NSPECIAL, 1, x + 20 * spr_dir, y - 12);
			window++;
			window_timer = 0
		}
	} else {
		nspec_air_window_timer = 0
	}
	if (window == 2){
		move_cooldown[AT_NSPECIAL] = 150;
		move_cooldown[AT_NSPECIAL_AIR] = 150;
	}
}
if (attack == AT_NSPECIAL_AIR){
	if (window == 1){
		nspec_air_window_timer = window_timer
		if (window_timer == 0 || window_timer == 1){
			sound_stop(sfx_flight);
			sound_stop(sfx_flight_cheat);
		}
		if (window_timer == 26){
			create_hitbox(AT_NSPECIAL_AIR, 1, x + 20 * spr_dir, y + 6);
			window++;
			window_timer = 0
			vsp = -4
			hsp = -6 * spr_dir
		}
	}
	if (window == 2){
		move_cooldown[AT_NSPECIAL] = 150;
		move_cooldown[AT_NSPECIAL_AIR] = 150;
	}
}
if (attack == AT_NSPECIAL_AIR){
	if (!free){
		if (window == 1){
			set_attack(AT_NSPECIAL);
			window_timer = nspec_air_window_timer
		} else {
			set_state(PS_LAND);
		}
	}
}

//Forward Special: Air Dive
if (attack == AT_FSPECIAL){
	//lol
	can_fast_fall = false;
	if (window == 1){
		fspec_loop = 0
		if (!free){
			tails_fspec_started_on_ground = 1
		} else {
			tails_fspec_started_on_ground = 0
		}
		if (window_timer == 2){
			vsp = -2
		}
		if (window_timer == 1) { 
			grabbed_player_obj = noone; 
			grabbed_player_relative_x = 0;
			grabbed_player_relative_y = 0;
		}
	}
	if (window == 2){
		if (window_timer == 11){
			vsp = -7
			hsp = 8.5 * spr_dir
			window = 3
			window_timer = 0
		}
	}
	if (window == 3){
		can_move = true
		if (window_timer == 8){
			if (fspec_loop != 2){
				window_timer = 0
				fspec_loop++;
			}
		}
		if (tailsdidhesidebrobot == true){
			set_attack(AT_FSPECIAL_AIR);
		}
	}
	if (window == 4){
		//hsp *= 0.785
		if (!free){
			state = PS_PRATLAND
			state_timer = 0
		}
	}
}

if (attack == AT_FSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	can_move = true;
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 12 * spr_dir;
			var pull_to_y = 36;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		if (window == 2) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 12 * spr_dir;
			var pull_to_y = 36;
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		if (window == 3 && window_timer == 0) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 45 * spr_dir;
			var pull_to_y = -4;
			sound_stop(sfx_flight)
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			if (phone_dive == 0){
				if (tails_fspec_started_on_ground == 0){
					move_cooldown[AT_FSPECIAL] = 9999999999;
				}
			} else if (phone_dive == 1){
				//move_cooldown[AT_FSPECIAL] = 0;
				move_cooldown[AT_FSPECIAL] = 9999999999;
			}
		}		
	}
	move_cooldown[AT_FSPECIAL] = 9999999999;
}

if (attack == AT_FSPECIAL_AIR){
	if (window == 2){
		if (window_timer == 31){
			window = 3
			window_timer = 1
		}
	}
	if (window == 3){
		sound_stop(sfx_flight);
		if (window_timer == 0){
			window_timer++;
		}
		if (window_timer == 1 && !hitpause){
			create_hitbox(AT_FSPECIAL_AIR, 2, x + 20 * spr_dir, y - 35);
		}
	}
}

//Up Special: Flight
if (attack == AT_USPECIAL){
	aerialattack = 0
	diveloop = 0
	if (window == 1 && window_timer != 5){
		vsp = -3
	} else if (window == 1 && window_timer == 5){
		vsp = -1
	}
	if (window == 2){
		can_move = true
		can_wall_jump = true
		can_shield = true
		if (hsp > 7){
			hsp = 7
		}
		if (hsp < -7){ //>
			hsp = -7
		}
		if (jump_pressed || jump_down || special_pressed || special_down){
			vsp = -4.5
			aerialattack = 0
		} else {
			vsp = vsp + 0.2
		}
		if (vsp > 4){
			vsp = 4
		}
		if (left_down){
			hsp = hsp - 0.2
		}
		if (right_down){
			hsp = hsp + 0.2
		}
		if (attack_pressed || up_strong_pressed || left_strong_pressed || right_strong_pressed || down_strong_pressed){
			sound_stop(sfx_flight)
			sound_stop(sfx_flight_cheat)
			flightloop--;
			can_attack = true;
			aerialattack = 1
		}
		if (!free){
			aerialattack = 0
			set_state(PS_LAND);
			sound_stop(sfx_flight)
			sound_stop(sfx_flight_cheat)
		}
	}
	if (window == 2 && window_timer == 23 && flightloop != 0){
		window_timer = 0
		flightloop--;
		if (phone_flight == 1){
			flightloop = 3
		}
	}
	if (flightloop <= 0){
		window = 3
		window_timer = 0
	}
	if (window = 3){
		sound_stop(sfx_flight)
		sound_stop(sfx_flight_cheat)
		flightloop = 1
	}
}

if (phone_flight == 0){
	//This basically puts u into pratfall if you attacked out of up b lol
	if (attack == AT_NAIR && window == 4 && window_timer == 10 && aerialattack == 1){
		set_state(PS_PRATFALL);
	}
	if (attack == AT_FAIR && window == 3 && window_timer == 12 && aerialattack == 1){
		set_state(PS_PRATFALL);
	}
	if (attack == AT_DAIR && window == 3 && window_timer == 9 && aerialattack == 1){
		set_state(PS_PRATFALL);
	}
	if (attack == AT_BAIR && window == 3 && window_timer == 11 && aerialattack == 1){
		set_state(PS_PRATFALL);
	}
	if (attack == AT_UAIR && window == 5 && window_timer == 10 && aerialattack == 1){
		set_state(PS_PRATFALL);
	}
}

if (attack == AT_DSPECIAL){
    if (window == 2 && window_timer == 1){
		tailsdspecheydidtherobotdieyet = 0
		if (tailsisrobotout == true){
			if (tailsdidrobotgethit == false){
				//tailsdidpressdownbwhenthingisactive = 1
				//move_cooldown[AT_DSPECIAL] = 26;
			}
		} else if (!tailsisrobotout){
			instance_create(x + 2 * spr_dir, y - 40, "obj_article1");
		}
    }
}

if (attack == AT_DSPECIAL_2){
    if (window == 2 && window_timer == 1){
		tailsdspecheydidtherobotdieyet = 0
		if (tailsisrobotout == true){
			if (tailsdidrobotgethit == false){
				tailsdidpressdownbwhenthingisactive = 1
				move_cooldown[AT_DSPECIAL] = 26;
			}
		} else if (!tailsisrobotout){
			//instance_create(x + 2 * spr_dir, y - 40, "obj_article1");
		}
    }
}

if (attack == AT_TAUNT){
	if (window == 3){
		if (window_timer == 5){
			if (taunt_down){
				window_timer = 4
			}
		}
	}
}

//puttin old ustrong code here for ref in case i need it lol
//if (attack == AT_USTRONG){
	//if (window == 1){
		//bombcharge = (strong_charge / 12)
		//bombcharge = bombcharge * -1
		//if (window_timer == 7){
			//sound_play(sfx_krtd_bomb_prep)
		//}
	//}
	//if (window == 2){
		//set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -10 + bombcharge);
	//}
	//if (window == 4){
		//bombcharge = -2
		//move_cooldown[AT_USTRONG] = 54;
	//}
//}