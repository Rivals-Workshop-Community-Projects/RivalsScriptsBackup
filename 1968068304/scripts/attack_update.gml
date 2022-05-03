//B - Reversals
if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR) {// || attack == AT_USPECIAL) {
    trigger_b_reverse();
}



//uspecial cancel
/*
if (has_hit_player && !was_parried && special_pressed && up_down && !hitpause && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 9) {
	var cancel_into_uspecial = false;
	switch (attack) {
		case AT_UAIR:
		case AT_FAIR:
		case AT_DAIR:
		case AT_NAIR:
		case AT_UTILT:
			if (window == get_attack_value(attack, AG_NUM_WINDOWS)) cancel_into_uspecial = true;
		break;
		case AT_BAIR:
			if (window == 3 || window >= 7) cancel_into_uspecial = true;
		break;
		case AT_JAB:
			if (window == 10 || window == 11) cancel_into_uspecial = true;
		break;
	}
	if (cancel_into_uspecial) {
		safely_set_attack(AT_USPECIAL);
	}
}
*/

//if epinel is in the air, set his old_vsp to a lower value than normal. this offsets his gravity perks.
if (was_parried && hitpause && free && old_vsp == 0) {
	old_vsp = 1;
}


switch (attack) { //open switch(attack)
	
	case AT_USTRONG:
		scr_epinel_spawn_sweetspot_fx(attack, 3, 90);
		if (window == 8 && !hitpause) {
			spr_dir *= -1;
		}

	break;
	
	case AT_DSTRONG:
		//scr_epinel_spawn_sweetspot_fx(attack, 3, 90);
		
		//if on a platform, influence the speed of that platform.
		if (window <= 3 
		  && epinel_other_standing_on_platform_id != noone 
		  && instance_exists(epinel_other_standing_on_platform_id)
		  && epinel_other_standing_on_platform_id.hitstop <= 0
		  && epinel_other_standing_on_platform_id.friction_poll == 0) {
			epinel_other_standing_on_platform_id.hsp += sign(epinel_other_standing_on_platform_id.hsp);
		} 
		
		//set_state(PS_IDLE);
		switch (window) {
			case 1:
				if (!hitpause && (strong_charge+15) mod 30 == 0) {
					spawn_hit_fx(x, y, epinel_fx_arrows);
				}
			break;
			case 2:
				if (window_timer == 1) {
					epinel_charge_timer = ceil( (strong_charge / 2 + 4) * (1 + runeE * 2) );
				}
			break;
			case 3:
				if (window_timer == 1) {
					hsp = (right_down - left_down) * 2;
				}
				else {
					hsp += (right_down - left_down) * (0.45 - has_hit_player * 0.1);
					if (has_hit_player && !runeE) hsp = clamp(hsp, -3, 3);
				}
			break;
			case 4: //looping window
				if (hitpause) break;
				epinel_charge_timer--;
				
				//else {
					hsp += (right_down - left_down) * (0.45 - has_hit_player * 0.1);
					if (has_hit_player && !runeE) hsp = clamp(hsp, -3, 3);
				//}
				if (epinel_charge_timer <= 0 || (runeE && (down_strong_pressed || left_strong_pressed || right_strong_pressed || attack_pressed))) { window += 1; window_timer = 0; }
				else  {
					attack_end();
					//if (epinel_charge_timer mod 6 == 0) attack_end(); //reset hit lockout
					if (window_timer == 6) window_timer = 0;
				}
			break;
			case 5:
				//during window 6, recycle this variable to register when the final hit hits an opponent. animation.gml checks for this and uses it to 'fix' the hitpause frames.
				epinel_charge_timer = 0;
			break;
			case 6:
				if (hitpause) epinel_charge_timer = 1;//max(epinel_charge_timer, hitpause);
			break;
			case 7:
			if (window_timer <= 1) {
				sound_stop(asset_get("sfx_spin_longer"));
			}
		}
	
	break;
	
	
	
	case AT_DATTACK:
		
		//grab logic.
		if (epinel_grab_connected 
	      && window >= 2 && (window <= 8 || (window == 9 && window_timer <= 1))
		  && scr_epinel_grabbed_opponent_is_still_grabbed() ) {
			
			epinel_charge_timer++;
			
			//drag this player to Epinel's claw.
			var drag_x;
			var drag_y;
			var starting_x =  x - epinel_grabbed_player_x_offset;
			var starting_y = y - epinel_grabbed_player_y_offset;
			switch (window) {
				case 7:
					drag_x = round(ease_quadIn( starting_x, x + (epinel_grabbed_player_suplex_distance + 15) * spr_dir, window_timer,  6 ));
					drag_y = round(ease_quadIn( starting_y, y, window_timer, 6 ));
				break;
				case 8:
					drag_x = round(ease_cubeInOut( x + (epinel_grabbed_player_suplex_distance + 15) * spr_dir, x - (epinel_grabbed_player_suplex_distance + 50) * spr_dir, window_timer, 12 ));
					if (window_timer >= 10) drag_y = y;
					else if (window_timer < 5) drag_y = round(ease_sineIn( y + 5, y - 45, window_timer, 6 ));
					else drag_y = round(ease_sineOut( y - 45, y, window_timer - 6, 5 ));
				break;
				case 9:
					drag_x = x - (epinel_grabbed_player_suplex_distance + 50) * spr_dir;
					drag_y = y;
				break;
				
				default:
					drag_x = x - epinel_grabbed_player_x_offset;
					drag_y = y - epinel_grabbed_player_y_offset;
				break;
				
				
			}

			with (epinel_grabbed_player_object_id) {
				hitstop = 2; //extend hitstop.
				vsp = 1;
				if ((x != drag_x || y != drag_y) ) {// && place_meeting(drag_x, drag_y, asset_get("par_block")) == false) {
					x = drag_x; y = drag_y;
				}
			}
		}
				
		else {
			//the player escaped the grab somehow. don't keep teleporting them in.
			epinel_grab_connected = false;
			epinel_grabbed_player_object_id = noone;
		}	
		
		//move logic.
		switch (window) {
			
			case 1: //haven't grabbed an opponent yet.
				if (window_timer <= 1) {
					epinel_grab_connected = false;
					//hitbox 6 = meteor hitbox when on a platform. normally doesn't activate.
					set_hitbox_value(AT_DATTACK, 6, HG_WINDOW_CREATION_FRAME, 999);
				}	
			break;
			
			case 3:
				//skip to window 6 if this attack grabbed an opponent. don't skip if the move was parried.
				if (epinel_grab_connected && window_timer >= get_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH) && !was_parried) {
					window = 6;
					window_timer = 0;
				}
			break;
			
			
			case 5:
				//whiffed attack: end the attack here.
				if (window_timer >= get_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH)) {
					attack_end();
					if (was_parried)  { window = 11; window_timer = 1; }
					else { set_state(PS_IDLE); }
				}
			break;
			
			case 10:
				////landed attack; break the platform under epinel if there is one
				if (has_hit && window_timer <= 1 && !hitpause && instance_exists(epinel_other_standing_on_platform_id)) {
					epinel_other_standing_on_platform_id.instant_destroy = true;
					//also steal ownership of the platform
					epinel_other_standing_on_platform_id.player_id = id;
				}
				
				//landed attack: rotate right before ending the attack.
				
				if (!hitpause && window_timer >= get_window_value(AT_DATTACK, 10, AG_WINDOW_LENGTH)) {
					attack_end();
					//set_state(PS_IDLE);
					spr_dir *= -1;
					if (!place_meeting(x + 8 * spr_dir, y, asset_get("par_block"))) x += 8 * spr_dir; 
				}
				else if (window_timer >= 20) {  can_jump = true; } 
			break;
		}
	break;
	
	
	

	case AT_FTILT:
		scr_epinel_spawn_sweetspot_fx(attack, 1, 0);
	break;
	
	case AT_DTILT:
		//always transition back to crouching
		if (window == 4 && !was_parried) {
			attack_end();
			set_state(PS_CROUCH);
			state_timer = 10;
		}
	break;
	
	case AT_NAIR:
		switch (window) {
			case 1:
				epinel_charge_timer = 0;
			break;
			case 3: //hasten the attack if it connects early.
				var window_length = get_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH);
				if (has_hit) { window_timer = max(window_timer, ceil(window_length / 2.5) ); } // /3
				//destroy hitboxes at the end of the window
				if (window_timer >= window_length) destroy_hitboxes();
			case 2: //hasten the attack if it connects early.
				if (hitpause && hitstop <= 1 && has_hit && !was_parried && epinel_charge_timer == 0 && !down_hard_pressed && (down_down - up_down) <= 0) {
					old_vsp = min(old_vsp, -2.5);
					old_hsp *= 0.9;
					epinel_charge_timer = 1;
				} 	
			break;
			
		    case 4: //recovery. destroy hitboxes.
				if (window_timer <= 1) { destroy_hitboxes(); }
			break;
		}
	break;
	
	case AT_FAIR:
		//allow wall-jumping out of this move's huge endlag.
		epinel_charge_timer = window;
		switch (window) {
			case 4:
				if (window_timer > 12) { can_wall_jump = true; can_move = true; epinel_charge_timer = 5; }
				else can_move = (window_timer mod 3 != 2);
			break;
			case 5:
				can_move = true;
				can_wall_jump = true;
			break;
		}
	break;
	
	
	case AT_UTILT:
		can_move = (window > 1);
		//can't fastfall unless it hits.
		can_fast_fall = has_hit;
		if (window_timer == 1 && !hitpause) {
			switch (window) {
				case 1:
					//workaround to give a grounded move landing lag.
					set_attack_value(AT_UTILT, AG_CATEGORY, 2);
					set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 19);
					epinel_charge_timer = 0;
					epinel_grabbed_player_object_id = noone; //this isn't actually a grab, but it does track the opponent
				break;
				
				case 2:
					//add hsp to the jump if holding forwards
					hsp += (spr_dir + right_down - left_down);

					//apply landing lag.
					set_attack_value(AT_UTILT, AG_CATEGORY, 1); 

					
					//rise on hit.
					if (has_hit) { 
						//vsp = min(vsp, -8);
						set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 10);
					}
				break;
				
				case 3:
					//rise on hit.
					if (has_hit) { 
						//vsp = min(vsp, -8);
						set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 10);
					}
				break;
			}
		}
		if (window == 3 && epinel_grabbed_player_object_id != noone && epinel_charge_timer == 0 && vsp < 0 && !hitpause) {
			if (instance_exists(epinel_grabbed_player_object_id)) {
				hsp += clamp(epinel_grabbed_player_object_id.hsp / 2, -3, 3 );
				spawn_hit_fx(x, y, epinel_fx_jump).depth = depth+1;
				sound_play(jump_sound, false, noone, 1, 0.95);
			}
			epinel_charge_timer = 1;
		}
	break;
	
	case AT_UAIR:
		//prevent falling during this move's startup, if epinel is off-screen at the bottom blast zone.
		if (window == 1 && vsp > 0 && y - char_height + 10 > room_height) vsp = 0;
					
		switch (window) {
			case 1:
				if (window_timer <= 1) {
					//can be reversed at will.
					var holding_dir = right_down - left_down;
					if (holding_dir != 0) spr_dir = holding_dir;
					
					//no landing lag until after the attack.
					set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 0);
					
					//charge timer variable is recycled to keep track of whether epinel has his double-jump prior to using this move.
					//even if this move touches the ground, epinel does not get his double-jump back.
					epinel_charge_timer = djumps;
					epinel_has_airdodge_during_aerial_attack = has_airdodge;
					epinel_aerial_rise = true;
				}
				else if (window_timer == 9 && !hitpause) {
					spawn_hit_fx(x, y, epinel_fx_jump).depth = depth+1;
				}
				if (!free) hsp *= 0.9;
			break;
			
			case 2:
				//uair jump.
				if (hitpause && down_hard_pressed) {
					epinel_aerial_rise = false;
				}
				
				if (window_timer == 1 && hitpause == false && epinel_aerial_rise) {
					//vsp = (-10 / epinel_uair_jump_counter) + 1;
					if (has_hit) { vsp = min(vsp, (-10 / max(1, epinel_consecutive_uair_jumps)) + epinel_consecutive_uair_jumps); }
					else {
						epinel_uair_jump_counter++;
						vsp = min(vsp, (-9 / (max(epinel_uair_jump_counter, epinel_consecutive_uair_jumps) * 2 - 1) + 1.5) );
						//vsp = min(vsp, (-9 / max(epinel_uair_jump_counter, epinel_consecutive_uair_jumps) + 1.5) );
					}
				}
				//re-enable landing lag.
				if (window_timer > 1) {
					set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
				}
				
				//limit horizontal direction.
				hsp /= clamp(epinel_consecutive_uair_jumps, 1, 1.5); //clamp(max(1, max(epinel_uair_jump_counter, epinel_consecutive_uair_jumps)), 1, 2);
				//hsp *= spr_dir;
				//hsp = clamp(hsp * 0.8, 2.35, 8); //2.35
				//hsp *= spr_dir;
				
				//hsp = 2.35 * spr_dir;
				
				//lock drifting
				//can_move = false;
			break;
			
			case 3:
				
				//limit horizontal direction.
				hsp /= clamp(epinel_uair_jump_counter, 1, 1.5); //clamp(max(1, max(epinel_uair_jump_counter, epinel_consecutive_uair_jumps)), 1, 2);
				hsp *= spr_dir;
				hsp = clamp(hsp * 0.8, 2, 8); //2.35
				hsp *= spr_dir;
			
				//re-enable landing lag.
				if (window_timer == 1) {
					set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
				}
				//allow wall jump
				can_move = true;
				if (vsp >= 0) { 
					can_wall_jump = true; 
				}
			break;
			
			case 4:
				//add a miniscule cooldown if the move didn't hit an opponent.
				if (epinel_uair_jump_counter > 0) move_cooldown[AT_UAIR] = 5;
				//if (window_timer == 1 && epinel_uair_jump_counter > 0) move_cooldown[AT_UAIR] = ceil(get_window_value(AT_UAIR, window, AG_WINDOW_LENGTH) * 1.5 + 2);
				
				//lock drifting, allow wall jump
				if (window_timer < 8 && !has_hit ) { can_move = false; }
				if (vsp >= 0) { can_wall_jump = true; }
			break;
		}

		//charge timer variable is recycled to keep track of whether epinel has his double-jump and airdodge prior to using this move.
		//even if this move touches the ground, epinel does not get his double-jump back.
		djumps = max(djumps, epinel_charge_timer);
		has_airdodge = min(has_airdodge, epinel_has_airdodge_during_aerial_attack);
		
	break;
	
	case AT_DAIR:
		//if (window < 8) free = true;
		if (state_timer > 1) can_fast_fall = false;
		//if (do ) {  } // && (!has_hit_player) ); }
		switch (window) {
			case 1:
				fall_through = (down_down);
				if (window_timer <= 1) {
					//charge timer variable is recycled to keep track of whether epinel has his double-jump prior to using this move.
					//even if this move touches the ground, epinel does not get his double-jump back.
					epinel_charge_timer = djumps; 
					epinel_has_airdodge_during_aerial_attack = has_airdodge;
					set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
				}
				vsp = max(vsp, -1);
			break;
			
			case 2:
				fall_through = (down_down);
				if (window_timer == 1 && hitpause == false) { hsp *= 1; vsp = clamp(vsp, 6, 9); set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 0); } // *= 1.06
			break;
		
			case 3:
				fall_through = (down_down) && window_timer < 2;
				
				vsp = min(vsp - 0.1, 8.5);
				
				var dair1_knockback = max(vsp * 0.7, 4);
				set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK,dair1_knockback);
				set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, dair1_knockback);
				set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, dair1_knockback);
				if (!free && !instance_exists(epinel_other_standing_on_platform_id)) hsp *= 0.9;
			break;
			case 4:
				if (!free && !instance_exists(epinel_other_standing_on_platform_id)) hsp *= 0.9;
				else vsp -= 0.1;
			break;
			
			case 5:
				if (has_hit && window_timer == get_window_value( AT_DAIR, 5, AG_WINDOW_LENGTH ) ) {
					window = 7;
					window_timer = 0;
				}
				if (!free && !instance_exists(epinel_other_standing_on_platform_id)) hsp *= 0.9;
			break;
			
			case 6:
			case 7:
				can_move = 0;
				if (window_timer == 2 && hitpause == false) {
					//reduce hsp during the second hit.
					hsp /= 1.5; 
					var jumpvelocity = -7 - 2 * (free && !was_parried);
					
					if (has_hit) { vsp = min(vsp, (jumpvelocity / max(1, epinel_consecutive_dair_jumps)) + epinel_consecutive_dair_jumps); }
					else {
						//borrow uair counter for dair's jump.
						epinel_uair_jump_counter++;
						vsp = min(vsp, (jumpvelocity / max(epinel_uair_jump_counter, epinel_consecutive_dair_jumps) + 1.5) );
					}

				}
				else if (has_hit) { epinel_uair_jump_counter = 0; }
				
				if (!fast_falling && !was_parried) vsp -= 0.02;
				
				if (window == 6 && window_timer == get_window_value( AT_DAIR, 6, AG_WINDOW_LENGTH ) ) {
					window = 8;
					window_timer = 0;
				}
			break;
			
			case 8:
				if (window_timer == 1 && !hitpause) {hsp /= 1.33; set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1); }
				//else if (window_timer == 10)	{  }
			break;
			
			case 9:
			//allow cancelling some of the endlag on hit.
				if (window_timer >= 13) {
					can_wall_jump = true;
					if (has_hit) { iasa_script(); can_fast_fall = true; }
				}
			break;
		}
	
		//charge timer variable is recycled to keep track of whether epinel has his double-jump and airdodge prior to using this move.
		//even if this move touches the ground, epinel does not get his double-jump back.
		djumps = max(djumps, epinel_charge_timer);	
		has_airdodge = min(has_airdodge, epinel_has_airdodge_during_aerial_attack);
		
		//if this move doesn't hit or gets parried, lock epinel's movement while rising to make it more unsafe.
		//(window >= 3 && window <= 5) || 
		if (!free && !hitpause) hsp = hsp * 0.9;
		if ( window == 2 || (window >= 6 && (was_parried || (!has_hit && window_timer < 15) ) )  ) { can_move = false; can_fast_fall = true; }
	
	break;
	
	
	case AT_FSPECIAL:
		can_move = false;
		epinel_fspecial_move_restore_x = x;
		epinel_fspecial_move_restore_y = y;
		epinel_fspecial_move_restore_window = window;
		epinel_fspecial_move_restore_window_timer = window_timer;
		scr_epinel_spawn_sweetspot_fx(attack, 2, 0);
		switch (window) { //open switch(window)
		
			case 1:
				epinel_is_armored = 0;
				
				if (window_timer == 1) { 
					//allow this move to slide off ledges.
					set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1); 
					//set category to 2 so that this move doesn't cancel when sliding over ledges.
					set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2); 
					//reset dash sourspot hitbox
					set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 0);
					set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 10); 
					//reset the charge timer.
					epinel_charge_timer = 4; 
					epinel_fspecial_currently_moving_with_superarmor = false;
					
					epinel_sideb_platform_id = noone;
					
					epinel_other_weightless_hsp = 0;
					epinel_other_weightless_vsp = 0;
					
					epinel_fspecial_hit_player = false; //this move's sourspot does not remove the attack's whifflag. keep track using hit_player.
				}
			break;
			
			case 2:
				super_armor = 1;
				epinel_is_armored = 1;
				
				if (window_timer == 1 && !hitpause) {
					spawn_hit_fx( x, round(y - char_height / 2), epinel_fx_inertia_medium);//depth = depth-1;
				}
				
				else if (window_timer == 6) {
					//epinel inflicts inertia on himself.
					//epinel_other_update_performed = false;
					epinel_other_weightless_timer = max(2, epinel_other_weightless_timer);
					epinel_other_player_that_inflicted_weightless_id = id;
					epinel_other_weightless_hsp = 0;
					epinel_other_weightless_vsp = 0;
				}
				
				//if on an inertia platform, light it up
				if (instance_exists(epinel_other_standing_on_platform_id)) {
					epinel_other_standing_on_platform_id.draw_glow += 5;
				}
				
			break;
			
			case 3:
				if (epinel_other_weightless_timer < 180) { 
					epinel_other_weightless_timer += 2;
					epinel_other_player_that_inflicted_weightless_id = id;
				}
				
				//commit at least 15 charge points.
				if (epinel_charge_timer >= 15) {
					//if the special button was released, progress to the next window.
					if (!special_down) {
						window = 4;
						window_timer = 0;
					}
					
					//if a roll input was made, cancel into that instead.
					/*
					else if ((taunt_pressed || shield_pressed) && epinel_charge_timer >= 25 && !free)// && (right_down - left_down != 0))
					{				
						//on the ground, allow only roll cancels, not parry cancels.
						//if (sign(right_down - left_down) == sign(spr_dir)) 
						//set_state( PS_ROLL_FORWARD );
						safely_set_attack(AT_FSPECIAL_2);
						hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
						super_armor = false;
						soft_armor = 0;
						epinel_is_armored = 0;
						//else set_state( PS_ROLL_BACKWARD );
						epinel_other_weightless_timer = 0;
						//add a cooldown so that roll-cancelled f-special stance can't be spammed
						move_cooldown[AT_FSPECIAL] = 40;

					}
					*/
				}
				if (!hitpause) epinel_charge_timer += 1;
				
				//if on an inertia platform, light it up
				if (instance_exists(epinel_other_standing_on_platform_id)) {
					epinel_other_standing_on_platform_id.draw_glow += 5;
				}
				
			break;
			
			case 4:
				//rapidly reduce inertia time.
				epinel_other_weightless_timer = max(0, 12 - window_timer * 4);
				
				vsp = 0;
				//if (window_timer == 3 && place_meeting(x + spr_dir * hsp, y - 1, asset_get("par_block")) == false) y -= 1;
				
				if (window_timer == 1) {
					//set extra cooldown for this move
					set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 1 + max(1, floor((epinel_charge_timer - 15) * 0.5) ));
					
					//store start position
					epinel_fspecial_start_position_x = x;
					epinel_fspecial_start_position_y = y;
					
					//if on an inertia platform, drag this platform with epinel
					if (instance_exists(epinel_other_standing_on_platform_id)) {
						epinel_sideb_platform_id = epinel_other_standing_on_platform_id;
						epinel_sideb_platform_relative_x = (epinel_sideb_platform_id.x - x);
						epinel_sideb_platform_id.draw_glow += 5;
					}
				}
			break;
			
			case 5:
				epinel_other_weightless_timer = 0;
				
				//don't count hits during this window as a hit.
				has_hit = false;
				has_hit_player = false;
				epinel_fspecial_currently_moving_with_superarmor = true;
				
				if (hitpause == false) {
					
					//resize sourspot hitbox
					if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
						var hbsize = abs(x + hsp - epinel_fspecial_start_position_x);
						set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, -0.5 * hbsize);
						set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, hbsize);
					}
					
					var nyoom = epinel_charge_timer * 3 - 10;
					
					hsp = nyoom * spr_dir;
					
					if (y > epinel_other_yprevious) y = epinel_other_yprevious;
					
					spawn_hit_fx(x, y, epinel_fx_afterimage);
					spawn_hit_fx(round(x+hsp/2), round(y+vsp/2), epinel_fx_afterimage);

					//if on the ground when this window ends, allow it to be ledge cancelled.
					if (!free && window_timer == 3) {
						
						//set_attack_value(AT_FSPECIAL, AG_CATEGORY, 0);
						epinel_charge_timer = 1;
					}
				}
				else {
					//prevent hitpause from causing an instant SD.
					old_hsp = clamp(old_hsp, -8, 8);
				}
				
				//if on an inertia platform, drag the platform with epinel
				if (instance_exists(epinel_sideb_platform_id)) {
					epinel_sideb_platform_id.x = x + epinel_sideb_platform_relative_x;
					epinel_sideb_platform_id.hsp = 0;
					epinel_sideb_platform_id.draw_glow += 5;
				}
				
			break;
			
			case 6:
				switch (window_timer) {
					//the cooldown can't be ledge cancelled.
					case 0:
					case 1:
						spawn_hit_fx(x, y, epinel_fx_afterimage);
						//don't slide off of edges upon reaching this window.
						set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0); 
					break;
					case 2:
						epinel_fspecial_currently_moving_with_superarmor = false;
						super_armor = 0;
						soft_armor = 0;
						epinel_is_armored = 0;
						//allow wall cancels.
						can_wall_jump = true;
						
					break;
				}
				
				//if on an inertia platform, drag the platform with epinel
				if (instance_exists(epinel_sideb_platform_id)) {
					epinel_sideb_platform_id.x = x + epinel_sideb_platform_relative_x;
					epinel_sideb_platform_id.hsp = spr_dir * 2;
				}
				
				//if the charge timer was reset above, cap vsp to 0 every frame.
				//if (epinel_charge_timer == 0) vsp = 0;
			break;
			
			case 7:
				//this move's sourspot does not remove the attack's whifflag. keep track using hit_player.
				if (window_timer == 1 && epinel_fspecial_hit_player == false) { 
					has_hit_player = false;
					has_hit = false;
				}
			
			case 8:
				//allow wall cancels.
				can_wall_jump = true;
			break;
			case 9:
			case 10:
				//allow wall cancels.
				can_wall_jump = true;
			
				//pratfall
				if (free && !has_hit && !was_parried && (window == 10 || window_timer >= 4)) {
					set_state(PS_PRATFALL);
					//angle direction
					var holding_dir = right_down - left_down;
					if (holding_dir == spr_dir) holding_dir *= 0.5;
					hsp = holding_dir * 0.5;
				}
				//if in heavy state, transition to heavy state
				else if (window == 10) transition_to_heavy_state_recovery_at_end_of_window();
			break;
		} //close switch(window)
	break;
    
    case AT_FSPECIAL_2:
    	switch (window) {
    		case 0:
    		case 1:
    			can_move = false;
    			if (window_timer == 1  && !hitpause) {
    				spawn_hit_fx(x + spr_dir * 24, y - 60, epinel_fx_warning).depth = depth - 1;
    				spawn_hit_fx(x, y-30, epinel_fx_inertia_small); 
    				sound_play(asset_get("sfx_blow_weak2"), 0, noone, 0.5, 1.2);
					sound_play(sound_get("glass_bottle_edited_freesounds_dasebr"), 0, noone, 0.5, 1.5);
					
					hsp = spr_dir * 3;
    			}
    			
    		break;
    		default:
    			safely_set_attack(AT_EXTRA_2);
				hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
				//state_timer = 7;
				//window_timer = 7;
    		break;
    	}
    break;
    
	case AT_FSPECIAL_AIR:
		can_move = false;
		//scr_epinel_spawn_sweetspot_fx(attack, 2, 0);
		switch (window) { //open switch(window)
			case 1:
				epinel_is_armored = 0;
				if (window_timer == 1) { 
					
					//allow the grounded version of this move to slide off ledges.
					set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1); 
					
					epinel_charge_timer = 4; 
					epinel_fspecial_currently_moving_with_superarmor = false;
					
					//reset platform ricochet
					epinel_platform_ricochet = false;
					
					epinel_other_weightless_hsp = 0;
					epinel_other_weightless_vsp = -0.5;
					
					epinel_fspecial_hit_player = false; //this move's sourspot does not remove the attack's whifflag. keep track using hit_player.
				}
			break;
			
			case 2:
				
				//super_armor = 1;
				soft_armor = 12;
				epinel_is_armored = 1;
				
				if (window_timer == 1 && !hitpause) {
					spawn_hit_fx( x, round(y - char_height / 2), epinel_fx_inertia_medium );//.depth = depth-1;
				}
				
				//if we touch the ground during this window, switch all smoothly to the grounded version.
				if (!free && down_down) {
					var thiswindow = window;
					var thiswindowtimer = window_timer;
					safely_set_attack(AT_FSPECIAL);
					window = thiswindow;
					window_timer = thiswindowtimer;
					
					//set category to 2 so that this move doesn't cancel when sliding over ledges.
					set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2); 
					//stop rising.
					epinel_other_weightless_vsp = 0;
				}
				
				else if (window_timer == 3) {
					//epinel inflicts inertia on himself.
					//epinel_other_update_performed = false;
					epinel_other_weightless_timer = max(7, epinel_other_weightless_timer);
					epinel_other_player_that_inflicted_weightless_id = id;
					epinel_other_weightless_hsp = 0;
					epinel_other_weightless_vsp = -0.5;
					
				}


			break;
			
			
			
			case 3:
				
				soft_armor = 12;
				epinel_is_armored = 1;
				
				
				//allow wall-jumps during armor frames
				can_wall_jump = true;
				
				//leave the ground, if able.
				if (!free && window_timer <= 2 && !place_meeting(x, y-1, asset_get("par_block"))) {
					y -= 1;
				}
				
				if (epinel_other_weightless_timer < 180) epinel_other_weightless_timer += 2;
				//commit at least 15 charge points.
				if (epinel_charge_timer >= 15) {
					//if the special button was released, progress to the next window.
					if (!special_down) {
						window = 4;
						window_timer = 0;
						epinel_other_weightless_vsp = 0;
					}
					
					//if an airdodge input was made, cancel into that instead.
					else if (shield_pressed && has_airdodge)
					{
						//allow airdodge cancels.
						iasa_script();
						set_state( PS_AIR_DODGE );
						epinel_other_weightless_timer = 0;
						soft_armor = 0;
					}
				}
				if (!hitpause) epinel_charge_timer += 1;
				
			break;
			
			case 4:
				//rapidly reduce inertia time.
				epinel_other_weightless_timer = max(0, 12 - window_timer * 6);
			
				if (window_timer == 0) vsp = 0;
				else vsp = 1;
				//if (place_meeting(x + spr_dir * hsp, y - 1, asset_get("par_block")) == false) y -= 1;
				
				if (window_timer == 1) {
					
					//set extra cooldown for this move
					set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_LENGTH, 27 + max(1, floor((epinel_charge_timer - 15) / 3) ));
					set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_VSPEED, -3 - max(0, floor((epinel_charge_timer - 15) / 10) ));
					set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_HSPEED, -1 - max(0, floor((epinel_charge_timer - 15) / 25) ));
					//store start position
					epinel_fspecial_start_position_x = x;
					epinel_fspecial_start_position_y = y;
				}
				
			break;
			
			case 5:
				fall_through = true;
				down_down = true;
				epinel_fspecial_currently_moving_with_superarmor = true;
				if (hitpause == false) {
					
					//air version has no superarmor while travelling
					super_armor = 0;
					soft_armor = 0;
					epinel_is_armored = 0;
					
					//reposition sourspot hitboxes
					if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) {
						var nyoom_x = x + hsp;
						var nyoom_y = y + vsp;
						var nyoom_width = abs(nyoom_x - epinel_fspecial_start_position_x);
						var nyoom_height = max(0, nyoom_y - epinel_fspecial_start_position_y);
						var nyoom_length = min(nyoom_width, nyoom_height);
						var nyoom_length_one_eighth = nyoom_length / 8;
						var nyoom_offset_x = 0;
						var nyoom_offset_y = 0;
						if (nyoom_width > nyoom_height) {
							nyoom_offset_x = 0.5 * (nyoom_width - nyoom_height);
						}
						else {
							nyoom_offset_y = 0.5 * (nyoom_height - nyoom_width);
						}

						for (var i = 1; i < 8; i++;) {
							set_hitbox_value(AT_FSPECIAL_AIR, i+3, HG_HITBOX_X, round(  -nyoom_offset_x - nyoom_length_one_eighth * i) );
							set_hitbox_value(AT_FSPECIAL_AIR, i+3, HG_HITBOX_Y,  round(-30 - nyoom_offset_y - nyoom_length_one_eighth * i) );
						}
						var nyoom_offset_x_round_abs = round(abs(nyoom_offset_x));
						set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_HITBOX_X, round(nyoom_offset_x_round_abs * -0.5));
						set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_WIDTH, max( 16, nyoom_offset_x_round_abs ) ); 
						
						set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_HITBOX_Y, -30 - round(nyoom_offset_y * 0.5));
						set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_HEIGHT, max( 16, round(abs(nyoom_offset_y)) ) ); 
					}
					
					
					if (!free) {
						//landed on a surface.
						vsp = 0;
						if (epinel_other_standing_on_platform_id == noone) hsp = 0;
					}
					else {
						
						var nyoom = (epinel_charge_timer * 9 + 30) / 3;
						
						hsp = nyoom * spr_dir / 2;
						vsp = nyoom / 2;
						
						
						
						
						spawn_hit_fx(x, y, epinel_fx_afterimage_air);
						//if (window_timer < 3) 
						spawn_hit_fx(round(x+hsp/2), round(y+vsp/2), epinel_fx_afterimage_air);
					}
					
					scr_epinel_nspecial_air_break_platforms();
				}
				else {
					//prevent hitpause from causing an instant SD.
					old_hsp = clamp(old_hsp, -4, 4);
					old_vsp = min(old_vsp, 4);
					hsp = clamp(hsp, -4, 4);
					vsp = min(vsp, 4);
				}
			break;

			
			case 6:
				if (window_timer > 1) { 
					super_armor = 0;
					soft_armor = 0;
					can_wall_jump = true;
					epinel_is_armored = 0;
					epinel_fspecial_currently_moving_with_superarmor = false;
				}
				else {
					
					if (!hitpause) {
						spawn_hit_fx(x, y, epinel_fx_afterimage_air); 
					}
				}
				vsp = 0;
			break;
			
			case 7:
				//this move's sourspot does not remove the attack's whifflag. keep track using hit_player.
				if (window_timer == 1 && epinel_fspecial_hit_player == false) { 
					has_hit_player = false;
					has_hit = false;
				}
			
			case 8:
				//allow slow air drift
				var holding_dir = right_down - left_down;
				if (holding_dir == spr_dir) holding_dir *= 1.5;
				hsp += (holding_dir) * 0.12;
				//allow wall jumps
				can_wall_jump = true;
				//allow move cancels if this attack ricocheted off a platform
				if (epinel_platform_ricochet) { 
					iasa_script();
					//can_attack = true;
					//can_special = true;
					//can_shield = true;
					can_fast_fall = true; 
					move_cooldown[AT_FSPECIAL] = 0;
				}
				//if on the ground at the last frame of this attack, add a little landing lag.
				if (!free && window == 8 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 4 && !was_parried) {
					set_state(PS_LANDING_LAG);
				}
				//if in heavy state, speed up recovery
				if (epinel_heavy_state > 0 && !hitpause && (window_timer mod 3) == 1) { vsp -= 0.1; window_timer++; }
				//if in heavy state, transition to heavy state
				//else if (window == 10 && !free) transition_to_heavy_state_recovery_at_end_of_window();
			break;
		} //close switch(window)

	break;
	
	
	case AT_DSPECIAL:
		old_jump = false; //make sure this move doesn't rise from a DJC
		
		//cancel this move if it is used in mid-air
		if (free && window >= 3) {
			safely_set_attack(AT_EXTRA_1);
			vsp = min(vsp, 4);
			break;
		}
		
		if (hitpause) break;
		
		switch (window) {
			case 1:
				//clear down inputs
				clear_button_buffer(PC_DOWN_HARD_PRESSED);
				//make sure the player isn't rising for some other reason.
				vsp = max(vsp, 0);
				if (hitpause) break;
				
				//if (window_timer == 1) {
					//for this move, epinel_charge_timer keeps track of whether the player has cancelled the attack or not
					epinel_charge_timer = 0;
					hsp = clamp(hsp, -3, 3);
				//}
				//make absolutely sure epinel snaps to his own platforms, overriding if the game engine decides to shift him onto a stage platform
				if (window_timer == 2 && instance_exists(epinel_other_standing_on_platform_id)) {
					y = epinel_other_standing_on_platform_id.y;
				}
			break;
			
			case 2:
				//at the end of this window, transition to the correct window
				hsp = 0;
				if (window_timer >= get_window_value( attack, window, AG_WINDOW_LENGTH )) {
					if (!instance_exists(epinel_other_standing_on_platform_id))  {
						//if we're not on an inertia platform, check for solid ground
						//check if there is enough room to dig out a platform.
						//don't make a platform if this move has been cancelled earlier.
						
						if (!check_if_epinel_has_room_to_spawn_dspecial_platform()) {
							if (!instance_exists(epinel_other_standing_on_platform_id)) {
								spawn_hit_fx(x, y - 50, epinel_fx_cannot);
							}
							
						}
						else if (!shield_down) {
							//create platform
							window = 5;
							window_timer = 0;
						}
						//otherwise, just go into the surf stance
					}
					//if we are on a platform, make this Epinel the owner of that platform.
					else {
						if (epinel_other_standing_on_platform_id.player_id != id
						&& instance_exists(epinel_other_standing_on_platform_id.player_id) 
						&& epinel_other_standing_on_platform_id.player_id.epinel_other_standing_on_platform_id != epinel_other_standing_on_platform_id) //I swear this makes sense
						{
							epinel_other_standing_on_platform_id.player_id = id;
						}
					}
				}
			case 7:
				if (sign(epinel_charge_timer) != -1) {
					epinel_charge_timer++;
					if (!special_down && !down_stick_down) {
						epinel_charge_timer = -epinel_charge_timer; //prevent charging past this
					}
				}
				
			break;
			
			
			
			case 4: //loop surfing
				//end the attack if player lets go of special
				if (!special_down) {
					window = 10;
					window_timer = 0;
				}
				//halt animation if not on a platform
				else if (!instance_exists(epinel_other_standing_on_platform_id)) {
					window_timer = 0;
				}
			//don't break
			
			case 3: //start surfing
			//case 5: //create platform startup
				//the player can jump-cancel  or drop-cancel at any of these points
				if (!was_parried && state_timer >= 5) {
					can_jump = true;
					if (jump_down == false && down_hard_pressed == true && instance_exists(epinel_other_standing_on_platform_id)) {
						set_state(PS_IDLE);
						apply_short_ground_cooldowns();
						//y += 4;
						//vsp = 1;
						//free = true;
						//clear_button_buffer(PC_DOWN_HARD_PRESSED);
						//hsp = epinel_other_standing_on_platform_id.hsp;
						//epinel_other_standing_on_platform_id = noone;
						
					}
				}
			break;
			
			case 10: //final endlag
				//can jump cancel if epinel wasn't parried
				if (was_parried) break;
				can_jump = true;
				//can also cancel into another down special
				if (is_special_pressed( DIR_DOWN )) {
					window = 1;
					window_timer = 0;
					//turn the character around if the player is holding backwards
					if (left_down - right_down == spr_dir) spr_dir *= -1;
				}
			break;
			
			case 8: //the attack part - spawn a platform
				if (window_timer == 1) {
					
					if (!was_parried && check_if_epinel_has_room_to_spawn_dspecial_platform()) {
						var dig = instance_create(x, y, "obj_article_platform");
						dig.spr_dir = spr_dir;
						dig.player_id = id;
						dig.image_xscale = (1 + runeG / 3);
						//print(epinel_charge_timer);
						if (sign(epinel_charge_timer) = 1) dig.vsp = -5;
						else if (abs(epinel_charge_timer) > 4) dig.vsp = -4;
						//if (special_down) dig.vsp = -4;
						else dig.vsp = -2;
						dig.hsp = (right_down - left_down) * 2;
						
						
						spawn_hit_fx( x, y, 193);
						spawn_hit_fx( x-40, y, 193);
						spawn_hit_fx( x+40, y, 193);
						spawn_hit_fx( x, y - 5, 155 );
						spawn_hit_fx( x+50, y, 13   );
						spawn_hit_fx( x-50, y, 13   );
						
						sound_play(asset_get("sfx_kragg_rock_shatter"), 0, noone, 0.5, 1.5);
						sound_play(asset_get("sfx_kragg_roll_start"));
						scr_epinel_ground_dspecial_create_spawn_particles();
						
						//stand on this platform
						epinel_other_standing_on_platform_id = dig;
						
					}
				}
				//destroy the hitbox on hit
				if (has_hit_player) destroy_hitboxes();
			break;
			
			case 9: //spawn platform recovery
				//at the end of this window, decide whether to keep using the attack
				if (!was_parried && window_timer >= get_window_value( attack, window, AG_WINDOW_LENGTH ) 
				 && special_down && !free && instance_exists(epinel_other_standing_on_platform_id)) {
					window = 2;
					window_timer = 0;
				}
				//destroy the hitbox on hit
				if (has_hit_player) destroy_hitboxes();
			break;
		
		
			case 11: //final frame; transition to crouch
				if (was_parried) break;
				can_jump = true;
				attack_end();
				if (down_down && !free) {
					set_state(PS_CROUCH);
					prev_state = PS_IDLE;
					state_timer = 0;
				}
			break;
		}
		
	break;
	
	case AT_DSPECIAL_AIR:
		can_move = false;
		can_fast_fall = false;
		//while falling:
		switch (window) {
			case 2:
				if (window_timer < 3) break;
			case 3:
			case 4:
			case 8:
			case 9:
				//clamp hsp. allow minimal movement.
				hsp = clamp(hsp + (0.225 + runeA / 5) * (right_down - left_down), -(3.5 + runeA), 3.5 + runeA); //0.25
				
				//fall faster than normal.
				if (vsp > -2) vsp = min(vsp * 1.04 + (epinel_air_dspecial_platform_hits * 0.02) + (epinel_heavy_state > 0) * 0.04,  20 + epinel_heavy_state * 5);
				else if (free) vsp += 0.02;
				
				//cancel this move if shield is pressed.
				if (shield_pressed && state_timer >= 45 && vsp > 6) {
					window = 15;
					window_timer = 0;
					if (scr_epinel_is_below_bottom_of_screen()) {
						old_vsp = min(-0.5, old_vsp);
						vsp = min(-0.5, vsp);
					}
				}
			break;
		}

		
		//failsafe: if something should happen to make this attack last longer than 20 seconds, go to window 15.
		if (window < 15 && state_timer > 1200) {
			window = 15;
			window_timer = 0;
		}
		
		//manage the grab.
		if (epinel_grab_connected == true && window >= 7 && window < 13 && hitstop <= 0 ) {
			if ( scr_epinel_grabbed_opponent_is_still_grabbed() ) {
				
				//increase grab charge timer
				epinel_charge_timer++;
				
				//influence hsp while grabbed
				if (!hitpause) hsp += (epinel_grabbed_player_object_id.right_down - epinel_grabbed_player_object_id.left_down) * 0.05
				
				//get fastest fall speed while grabbed
				if (window == 9 && vsp > 0) epinel_air_dspecial_fall_distance += vsp;
				
				//increase break points if the other player is holding buttons - only while epinel is moving downwards
				if (vsp > 0 && ( 
					 epinel_grabbed_player_object_id.joy_pad_idle == false
				  || epinel_grabbed_player_object_id.attack_down
				  || epinel_grabbed_player_object_id.strong_down
				  || epinel_grabbed_player_object_id.special_down) ) {
					//epinel_grabbed_player_break_points++;
					epinel_grabbed_player_break_points += ceil(vsp);
				}
				
				//check if the threshold has been reached
				if (epinel_grabbed_player_break_points < epinel_grabbed_player_break_threshold || window == 11) {
					
					//threshold not reached; continue grabbing
					with (epinel_grabbed_player_object_id) {
					
						//extend hitstop and hitstun.
						hitstop = 2;
						hitstun = max(hitstun, 5);
						
						//drag this player to Epinel's claw.
						var drag_x = other.x - 2 + (x > floor(room_width / 2)) * 4;
						var drag_y = other.y;
						
						switch (other.window) {
							case 7:
								drag_y -= 60;
							break;
							case 8:
								drag_y += floor( ease_quadIn(-60, round(char_height / 2), other.window_timer, 18) );
							break;
							case 10:
							case 11:
								//add nothing
							break;
							
							case 12:
								drag_y += floor( ease_quadOut(round(char_height / 2), -60, other.window_timer, 13) );
							default:
								drag_y += round(char_height / 2);
							break;
						}
						
						if ((x != drag_x || y != drag_y) ) {//&& place_meeting(drag_x, drag_y, asset_get("par_block")) == false) {
							x = drag_x;
							y = drag_y;
							
						}
					}
				}
				else {
					//break points equals or exceeds the threshold. escape.
					epinel_grabbed_player_object_id.old_vsp = -3;
					//epinel_grabbed_player_object_id.vsp = min(-0.5, epinel_grabbed_player_object_id.vsp);
					epinel_grabbed_player_object_id.old_hsp = spr_dir * 2;
				}
			}
					
			else {
				//the player escaped the grab somehow. don't keep teleporting them in.
				epinel_grab_connected = false;
				epinel_grabbed_player_object_id = noone;
				//go to window 15.
				window = 15;
				window_timer = 0;
				//don't fall if below the bottom of the screen.
				if (scr_epinel_is_below_bottom_of_screen()) {
					old_vsp = min(-0.5, old_vsp);
					vsp = min(-0.5, vsp);
				}
			}		
		}		
			
		
		
		//manage everything else.
		switch (window) {
			//1: startup
			case 1:
				can_move = true;
				if (hitpause) break;
				
				
				
				//hsp *= 0.99;
				
				if (window_timer == 1) {
				//remove landing lag.
				set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 0);
				
				//reset variables.
				epinel_grab_connected = false;
				epinel_grabbed_player_object_id = noone;
				epinel_air_dspecial_platform_hits = 0;
				epinel_air_dspecial_fall_distance = 0;
				epinel_air_dspecial_max_fall_speed = 11;
				
				//stop movement.
				//vsp = -3;
				//vsp = clamp(vsp / 3, -3, 0);
				//hsp = clamp(hsp, -5, 5);
				
				//grab escape variables
				epinel_grabbed_player_break_points = -18;
				epinel_grabbed_player_break_threshold = max(0, epinel_grabbed_player_break_points + 1); 
				
				//grab 'charge' variable
				epinel_charge_timer = 0; //max( 0, -floor( (y - get_stage_data( SD_Y_POS )) * 0.25) ); //bonus charge based on starting height

				}
	
				//prevent any additional upward movement from a double-jump.
				else if (window_timer > 3) {
					old_jump = false;
				
					if (window_timer < 10) {
						if ((shield_down || shield_pressed) && (up_down == false || down_down == true)) scr_epinel_dspecial_air_snap_to_platforms();
					}
				}
			break;
			
			//2: upward grab
			case 2:
				//upward movement.
				if (window_timer == 1 && !hitpause) {
					epinel_uair_jump_counter++;
					
					hsp *= 0.9;
					vsp = -7;
					//vsp = min(vsp, (-7 / epinel_uair_jump_counter));
					
					//don't jump if still holding down+special.
					//if (down_down && special_down) {
					//	vsp = min(vsp, (-2 / epinel_uair_jump_counter));
					//}
					
					//move in direction held.
					//hsp += right_down - left_down * 0.75;
					//if (right_down - left_down == -sign(hsp)) { hsp -= sign(hsp); } 
					old_jump = false;
				}
				
				//shorten vertical height if a fastfall is input
				//if (window_timer > 0 && !hitpause && down_hard_pressed) {
				//	vsp = max(vsp, -3);
				//}
				
				
				//go to window 8 if this attack grabbed a player.
				if (epinel_grabbed_player_object_id != noone && instance_exists(epinel_grabbed_player_object_id)) {
					window = 8;
					window_timer = 0;
				}
				//extend the attack length if epinel is not falling yet
				else if (window_timer >= 6 && vsp < (-4 * (epinel_other_weightless_timer <= 0)) ) {
					window_timer = 4;
					create_hitbox(attack, 9, x, y);
				}
				//prevent any additional upward movement from a double-jump.
				old_jump = false;
			break;
			
			
			//3: begin to fall (did not grab player)
			case 3:
				//shorten vertical height if a fastfall is input
				if (!hitpause && down_hard_pressed) {
					vsp = max(vsp, -3);
				}
			break;
			
			//4: fall (did not grab player)
			case 4:
				//cancel state when on the ground.
				if (!free) {
					window = 5;
					window_timer = 0;
					//delete hitboxes
					destroy_hitboxes();
				}
				//increase charge while falling.
				if (vsp > 0) epinel_charge_timer++;
				//allow walljumps.
				can_wall_jump = true;
			break;
	
			//5: hit surface while falling (did not grab player) -> transition
			case 5:
				//stop.
				hsp = 0;
				//if the floor disappeared(?), go back to falling.
				if (free) {
					window = 3;
					window_timer = 2;
				}
				else if (window_timer > 1) {
					//go to a different window depending on if we are on one of epinel's platforms or not.
					if (epinel_other_standing_on_platform_id != noone && instance_exists(epinel_other_standing_on_platform_id)) {
						
						//do nothing
						//window = 8;
						//window_timer = 0;
					}
					else {
						window = 13;
						window_timer = 0;
					}
				}
			break;
			
			//6: hit epinel-platform while falling
			case 6:
				//if the special button is held: land on this platform.
				
				//replenish heavy state
				if (window_timer == 1 && !hitpause) remove_heavy_state_if_currently_in_heavy_state();
				
				var tempvar_transition_to_ground_special = false;
				//break the platform that epinel is on.
				if (epinel_other_standing_on_platform_id != noone && instance_exists(epinel_other_standing_on_platform_id)) {

						//break the platform and steal ownership.
						if (epinel_other_standing_on_platform_id.hp > -1) sound_play(asset_get("sfx_kragg_rock_shatter"));
						
						epinel_other_standing_on_platform_id.instant_destroy = true;
						epinel_other_standing_on_platform_id.player_id = id;
						//epinel_other_standing_on_platform_id.hp = min(epinel_other_standing_on_platform_id.hp, -1);
						
						//reassign the platform's owner.
						epinel_other_standing_on_platform_id.player_id = id;
						
						//jump slightly.
						vsp = -0.5;
					//}
				}
				
				//return to window 3.
				if (tempvar_transition_to_ground_special == false && window_timer >= get_window_value( AT_DSPECIAL_AIR, 6, AG_WINDOW_LENGTH )) {
					//window = 3;
					//window_timer = 2;
					//accelerate up a little before returning to this window.
					vsp = -2;
					attack_end();
					set_state(PS_DOUBLE_JUMP);
					state_timer = 15;
					apply_short_aerial_cooldowns();
					//safely_set_attack(AT_EXTRA_1);
				}
			break;
			
			//7: hit player with first rising grab
			case 7:
				if (!hitpause) { vsp = min(vsp, -0.75 - (epinel_charge_timer * 0.01)); }
			break;
			//8: hit player on rising grab, begin to fall (grabbed player)
			case 8:
				//rise.
				if (window_timer <= 1) {
					vsp = clamp(vsp, -6, max(-6, -0.75 - (epinel_charge_timer * 0.01)) );
					hsp += right_down - left_down;
					//if (right_down - left_down == -sign(hsp)) { hsp -= sign(hsp); } 
				}
				//stay on frame 1 until this move starts falling.
				if (vsp < -1) window_timer = 1;
			break;
			
			
			//9: fall (grabbed player)
			case 9:
				//cancel state when on the ground.
				if (!free) {
					window = 10;
					window_timer = 0;
				}
				else {
					epinel_air_dspecial_max_fall_speed = max(vsp, epinel_air_dspecial_max_fall_speed);
				}
			break;
	
			//10: hit surface while falling (grabbed player) -> transition
			case 10:
				//stop.
				hsp = 0;
				//if the floor disappeared(?), go back to falling.
				//update ground slam damage/knockback.
				
				if (free) {
					window = 9;
					window_timer = 2;
				}
				else if (window_timer > 1) {
					//go to a different window depending on if we are on one of epinel's platforms or not.
					if (epinel_other_standing_on_platform_id != noone && instance_exists(epinel_other_standing_on_platform_id)) {
						//do nothing
						//window = 8;
						//window_timer = 0;
					}
					else {
						//ground slam
						window = 13;
						window_timer = 0;
					}
				}
			break;
			
			//11: hit player into epinel platform
			case 11:
			
				//replenish heavy state
				if (window_timer == 1 && !hitpause) remove_heavy_state_if_currently_in_heavy_state();
				
				//break the platform that epinel is on.
				if (epinel_other_standing_on_platform_id != noone && instance_exists(epinel_other_standing_on_platform_id)) {
					//increase the platform-hit-count if the platform has above -1 hp.
					if (epinel_other_standing_on_platform_id.hp > -1) {
						epinel_air_dspecial_platform_hits += 1;
						
						scr_epinel_air_dspecial_create_impact_particles();
						
						//increase the threshold so the grabbed player doesn't escape
						if (epinel_grabbed_player_object_id != noone && instance_exists(epinel_grabbed_player_object_id)) {
							var add_to_threshold = 
								( get_player_damage( epinel_grabbed_player_object_id.player ) + 50)
								/ max(0.1, epinel_grabbed_player_object_id.knockback_adj)
								* 2 // 3 // 0.75 
								* (epinel_air_dspecial_platform_hits + 1) / 2;
							
							epinel_grabbed_player_break_threshold += floor(add_to_threshold);
						}
					}
					//set the platform's hp to -1.
					epinel_other_standing_on_platform_id.instant_destroy = true;
					//epinel_other_standing_on_platform_id.hp = min(epinel_other_standing_on_platform_id.hp, -1);
					//shorten the lifespan of the resulting inertia pillar.
					epinel_other_standing_on_platform_id.pillar_lifetime_factor = 0;
					//reassign the platform's owner.
					epinel_other_standing_on_platform_id.player_id = id;
				}
				//transition back to falling.
				if (window_timer >= get_window_value( AT_DSPECIAL_AIR, 11, AG_WINDOW_LENGTH )) {
					window = 9;
					window_timer = 0;
					vsp = epinel_air_dspecial_max_fall_speed + 1;
					hsp += right_down - left_down;
				}
			break;
			
			
			//12: rebound after hitting player into epinel platform (then return to 8)
			case 12:
				if (window_timer == 1) {
					vsp = -1;//-5.5;
					//hsp += right_down - left_down;
				}
				
				//return to window 8.
				if (window_timer >= get_window_value( AT_DSPECIAL_AIR, 12, AG_WINDOW_LENGTH )) {
					window = 8;
					window_timer = 0;
				}
			break;
			
			
			//13: ground slam
			case 13:
				if (epinel_air_dspecial_platform_hits > 3) epinel_air_dspecial_platform_hits = 3;
				if (window_timer == 1) {
					//update damage depending on length charged.
					var newdmg = clamp(floor(6 + (epinel_air_dspecial_fall_distance / 20) ), 7, 15);
					set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_DAMAGE, newdmg );
					set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_DAMAGE, newdmg + epinel_air_dspecial_platform_hits );
					
					set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_HITPAUSE, clamp(8 + (epinel_air_dspecial_fall_distance / 20), 8, 20));
					set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_BASE_HITPAUSE, clamp(10 + (epinel_air_dspecial_fall_distance / 20), 10, 22));
					
					//var newscaling = 1.1 + epinel_air_dspecial_fall_distance / 700;
					//print("fall distance: " + string(round(epinel_air_dspecial_fall_distance)))
					var fall_distance_bonus = min(epinel_air_dspecial_fall_distance / 60, 8);
					set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_BASE_KNOCKBACK, 4 + epinel_air_dspecial_platform_hits + fall_distance_bonus);
					
					//update attack frame for the landing hit.
					if (epinel_air_dspecial_platform_hits <= 0) {
						set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 2);
						set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 2);
					}
					else {
						set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 5);
						set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 5);
					}
					
				}
				
				//spawn hitboxes 7 and 8 if a platform was hit on the way down to the ground.
				if (!hitpause && epinel_air_dspecial_platform_hits > 0) {
					if (window_timer <= epinel_air_dspecial_platform_hits && window_timer <= 3) {
						create_hitbox( AT_DSPECIAL_AIR, 7, x, y );
						spawn_hit_fx(x, y, epinel_fx_inertia);
					}
					else if (window_timer == epinel_air_dspecial_platform_hits + 1) {
						create_hitbox( AT_DSPECIAL_AIR, 8, x, y );
						if (!hitpause) { scr_epinel_air_dspecial_create_impact_particles_final(); }
						if (epinel_air_dspecial_platform_hits >= 3) {
							sound_play(sound_get("bigexplosion"));
						}
						else {
							sound_play(sound_get("smallexplosion"), 0, noone, 1, 1 + 0.1 * epinel_air_dspecial_platform_hits);
						}
						
					}
				}
			break;
	
			//14: recovery after ground slam (transition to crouch)
			case 14:
				//crouch at the end of this window.
				if (window_timer == 1 && !hitpause) {
					scr_epinel_air_dspecial_create_impact_particles();
					
					//recover from heavy state
					if (!free) {
						remove_heavy_state_if_currently_in_heavy_state();
					}
				}
				//transition straight to ground dspecial if desired
				else if (window_timer > 16 && !was_parried && (((down_down && special_down) || is_special_pressed(DIR_DOWN)) ) ) {
					safely_cancel_into_ground_dspecial();
				}
				
				else if (window_timer >= get_window_value( AT_DSPECIAL_AIR, 14, AG_WINDOW_LENGTH )) {
					attack_end();
					if (!was_parried) {
						//transition to crouch
						set_state(PS_CROUCH);
						state_timer = 4;
					}
					else {
						if (free) set_state(PS_PRATFALL);
						else set_state(PS_PRATLAND);
					}
				}
			break;
			//15: airborne move cancel
			case 15:
				//add landing lag.
				
				if (window_timer == 1 && !hitpause) {
					//if (!hitpause) {
						
						
					//}
					//don't meteor the oppoent if they escape or are released.
					if (epinel_grab_connected == true && scr_epinel_grabbed_opponent_is_still_grabbed()) {
						epinel_grabbed_player_object_id.old_vsp = -2;
					}
					set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
					//jump slightly.
					hsp = spr_dir * -3;
					vsp = -1;
					//fx.
					if (was_parried == false) {
						spawn_hit_fx(x, y-30, epinel_fx_inertia_small); //
						sound_play(asset_get("sfx_blow_weak2"), 0, noone, 1, 1.2);
						//sound_play(sound_get("glass_bottle_edited_freesounds_dasebr"), 0, noone, 0.5, 1.5);
					}
					old_hsp = hsp;
					old_vsp = vsp;
					hitpause = true;
					hitstop = 2;
				}
				//mercy rule: prevent falling into the bottom blast zone.
				if (vsp > 0 && y > room_height + 90) {
					vsp = 0;
				}
			break;
		}
	break;
	
	
	
	
	case AT_BAIR:
		scr_epinel_spawn_sweetspot_fx(attack, 2, 180);
		switch (window) {
			case 1: //startup.
				if (window_timer == 1) {
					epinel_grab_connected = false;
					epinel_grabbed_player_object_id = noone;
					//use epinel's charge variable for the grab animation.
					epinel_charge_timer = 0;
					//set landing lag.
					set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
					//remove artificial first-hit whiff lag.
					set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 12);
				}
				//if (window_timer = get_window_value( AT_BAIR, 1, AG_WINDOW_LENGTH )
			break;

			
						

			
			case 3: //perform the grab only if the button is held.
				set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, (window_timer > 1 || !has_hit_player));
				
				if (window_timer == 1) {

					if (epinel_grab_connected && !shield_down && (attack_down || strong_down || left_stick_down || right_stick_down || attack_pressed || left_strong_pressed || right_strong_pressed) ) { 
						window = 4;
						window_timer = 0;
						
						if (scr_epinel_grabbed_opponent_is_still_grabbed() )  {
							//freeze the opponent in the grab.
							epinel_grabbed_player_object_id.hitstop = 2; //+= 1;
							//since this attack is now a grab, remove the knockback applied by the first hitbox.
							epinel_grabbed_player_object_id.old_vsp = 0;
							epinel_grabbed_player_object_id.old_hsp = 0;
							//mostly remove epinel's hitstop.
							hitstop = min(hitstop, 1);
						}
					}
					else {
						//if we didn't grab, this attack can have landing lag now.
						set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
						
						//if we didn't hit, this attack can have whiff-lag too.
						if (has_hit == false) set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 18);
						
					}
				}
				else if (window_timer == get_window_value( AT_BAIR, 3, AG_WINDOW_LENGTH ) ) {
					window = 8;
					window_timer = 0;
				}
			break;
			
			case 2:
				//set whifflag.
				set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, !(has_hit_player));
				//skip ahead if this attack hits a target.
				if (epinel_grab_connected == true) {
					window = 3;
					window_timer = 0;
				}
			break;
			

			case 4:
				//prevent fast-falling the throw.
				can_fast_fall = false;

			case 5:
			
				//throw direction rune
				if (runeC && window_timer == 9) {
					if (joy_pad_idle) {
						set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 70);
					}
					else {
						var throwdir = round(joy_dir);
						if (spr_dir < 0) throwdir = 180 - throwdir;
						set_hitbox_value(AT_BAIR, 3, HG_ANGLE, throwdir);
						set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 9 - lengthdir_y(1.5, throwdir));
					}
				}
			
				if (scr_epinel_grabbed_opponent_is_still_grabbed() ) {
					
					epinel_charge_timer++;
					
					with (epinel_grabbed_player_object_id) {
					
						//extend hitstop.
						hitstop = 2;
						
						//drag this player to Epinel's claw.
						var starting_x =  other.x - other.epinel_grabbed_player_x_offset * other.spr_dir;
						var starting_y = other.y - other.epinel_grabbed_player_y_offset;
						var drag_x = round(ease_quadIn( starting_x, round(other.x + 10 * other.spr_dir), other.epinel_charge_timer, 14 )); 
						var drag_y = round(ease_quadOut( starting_y, round(other.y + char_height * 0.5 - other.char_height * 0.5), other.epinel_charge_timer, 14 )); 
						if ((x != drag_x || y != drag_y) ) {// && place_meeting(drag_x, drag_y, asset_get("par_block")) == false) {
							x = drag_x;
							y = drag_y;
						}
					}
				}
						
				else {
					//the player escaped the grab somehow. don't keep teleporting them in.
					epinel_grab_connected = false;
					epinel_grabbed_player_object_id = noone;
				}				
			break;
			
			case 6:
				//enable fast-falling again after the throw.
				if (window_timer == 1) { 
					can_fast_fall = true;
					//add hsp depending on the direction the player is holding.
					hsp += (right_down - left_down) * 1; //1.2
					spawn_hit_fx(x, y, epinel_fx_jump).depth = depth+1;
				}
			break;
			
			case 7:
				//allow any cancel after frame 15
				if (window_timer > 15) iasa_script();
			break;
			case 8:
				iasa_script();
			break;
		}
	break;
	
	case AT_USPECIAL:
		
		can_fast_fall = false;
		switch (window) {
			case 1:
				//reset charge.
				if (window_timer == 1) {
					epinel_charge_timer = 90; 
					//move_cooldown[AT_USPECIAL] = 9999;
					

				}
				else if (window_timer == 2) {
					spawn_hit_fx(x, y - char_height / 2, epinel_fx_absorb);
					spawn_hit_fx(x, y - char_height / 2, epinel_fx_inertia_medium);
				}
				//prevent falling.
				if (y > room_height + char_height) { vsp = min(vsp, 0); } //prevent falling whatsoever while offscreen below the map
				else { vsp = min(vsp, 1); }
				//slow down.
				hsp *= 0.96;
				
				//prevent moving during startup.
				can_move = false;
				
				//prevent double-jump.
				old_jump = false;
				
				//get direction
				if (!joy_pad_idle) epinel_charge_timer = joy_dir;
				
				//charged version transition
				//if (hitpause == false && special_down && window_timer == 9) {
				//	window = 3;
				//	window_timer = 0;
				//}
				
			break;
			
			case 2:
				//uncharged ver active
				
				//can airdodge if on the ground.
				can_airdodge = (!free && window_timer > 1);
				
				if (window_timer == 1 && hitpause == false) {
					
					
					move_cooldown[AT_USPECIAL] = 60;
					//spawn effect.
					//spawn_hit_fx(x, y - char_height / 2, epinel_fx_inertia);
					/*
					spawn_hit_fx(x, y - char_height / 2, epinel_fx_absorb);
					
					//spawn effect and projectile on all of epinel's platforms
					with (obj_article_platform) {
						if (player_id != other || hp <= 0) continue;
						with (other) { spawn_hit_fx(other.x, other.y, epinel_fx_absorb); }
						//store the hitbox's id in the article; when parried, the platform article is destroyed
						var plat_hitbox = create_hitbox(AT_USPECIAL, 2, x, y);
						plat_hitbox.spawned_by_platform_id = id;
						sound_play(sound_get("drop"), 0, noone, 0.25, 1.1);
						draw_glow = 100;
						vsp = min(vsp, -1);
						if (hp == 1) hp = 0;
					}
					*/
					
					sound_play(sound_get("drop"));
					
					//inflict inertia on self.
					can_move = 0;
					
					epinel_other_weightless_inflicted = 3;
					epinel_other_player_that_inflicted_weightless_id = id;
					
					var uspec_dir;
					if (joy_pad_idle) uspec_dir = epinel_charge_timer;
					else uspec_dir = joy_dir - (shield_down * 22.5 * spr_dir);
					
					hsp = lengthdir_x(8, uspec_dir);
					vsp = lengthdir_y(8, uspec_dir);
						
					epinel_heavy_state = 2;
					
					/*
					var inertiadir;
					if (joy_pad_idle) {
						hsp = 0;
						vsp = 0;
						
						epinel_heavy_state = 2;
					}
					
					else {
						var inertiadir = joy_dir;
						if (shield_down) inertiadir -= 22.5 * spr_dir;
						//hsp = lengthdir_x(7.75, inertiadir);
						//vsp = lengthdir_y(7.75, inertiadir);
						hsp = lengthdir_x(8, inertiadir);
						vsp = lengthdir_y(8, inertiadir);
						
						epinel_heavy_state = 2;
					}
					
					/*
					epinel_other_weightless_timer = 48;
					epinel_other_player_that_inflicted_weightless_id = id;
					var inertia_dir = 90;
					epinel_other_weightless_vsp = -3;
					epinel_other_weightless_hsp = 0;
					epinel_other_weightless_inflicted = 2;
					*/
					
				}
				
				//skip charged-version windows
				else if (window_timer >= get_window_value(AT_USPECIAL, window, AG_WINDOW_LENGTH)) {
					//set_state(PS_IDLE_AIR);
					window = 5;
					window_timer = 4;
					epinel_charge_timer = 1;
				}
				
				//if (free) { vsp = -3 + epinel_charge_timer*1.5; hsp = 0; }
			break;
			/*	

			case 3:
				//charged ver startup
				
			break;
			
			
			case 4:
				//charged ver active
				if (window_timer == 1 && hitpause == false) {
					//spawn effect.
					spawn_hit_fx(x, y - char_height / 2, epinel_fx_field_small);
				}
					//destroy crumbling platforms with a shockwave.
					
					
			break;
			
*/
			/*
			
			case 5:
				if (window_timer < 5 * (1 + epinel_charge_timer)) {
					can_move = false;
				}
			break;
			*/
			//case 6:
			//if (epinel_charge_timer == 1 && window_timer >= get_window_value(AT_USPECIAL, window, AG_WINDOW_LENGTH)) {
			//	set_state(PS_IDLE_AIR);
			//}
				//skip pratfall if on the ground.
				//if (!free && window_timer > 4) {
				//	set_state(PS_IDLE);
				//}
			break;
		}
	break;
	
	case AT_USPECIAL_2:
		can_fast_fall = false;
		switch (window) {
			case 1:
				//reset charge.
				if (window_timer == 1) {
					epinel_charge_timer = 0; 
					//move_cooldown[AT_USPECIAL] = 9999;
					

				}
				else if (window_timer == 2) {
					spawn_hit_fx(x, y - char_height / 2, epinel_fx_inertia_small);
				}
				//prevent falling.
				if (y > room_height + char_height) { vsp = min(vsp, 0); } //prevent falling whatsoever while offscreen below the map
				else { vsp = min(vsp, 1); }
				//slow down.
				hsp *= 0.96;
				
				//prevent moving during startup.
				can_move = false;
				
				//prevent double-jump.
				old_jump = false;
				
				//charged version transition
				//if (hitpause == false && special_down && window_timer == 9) {
				//	window = 3;
				//	window_timer = 0;
				//}
				
			break;
			
			case 2:
				//can airdodge if on the ground.
				can_airdodge = (!free && window_timer > 1);
				
				//uncharged ver active
				if (window_timer == 1 && hitpause == false) {
					
					move_cooldown[AT_USPECIAL] = 30;
					epinel_heavy_state = 2;
					//spawn effect.
					//spawn_hit_fx(x, y - char_height / 2, epinel_fx_inertia);
					//spawn_hit_fx(x, y - char_height / 2, epinel_fx_absorb);
					sound_play(sound_get("drop"), 0, noone, 0.5, 1.5);
					
					//inflict inertia on self.
					can_move = 0;
					
					epinel_other_weightless_inflicted = 1;
					epinel_other_player_that_inflicted_weightless_id = id;
					
					var inertiadir;
					if (joy_pad_idle) {
						hsp = 0;
						vsp = 0;
					}
					
					else {
						var inertiadir = joy_dir;
						if (shield_down) inertiadir -= 22.5 * spr_dir;
						//hsp = lengthdir_x(7.75, inertiadir);
						//vsp = lengthdir_y(7.75, inertiadir);
						hsp = lengthdir_x(8, inertiadir);
						vsp = lengthdir_y(8, inertiadir);
						
					}
					
					/*
					epinel_other_weightless_timer = 48;
					epinel_other_player_that_inflicted_weightless_id = id;
					var inertia_dir = 90;
					epinel_other_weightless_vsp = -3;
					epinel_other_weightless_hsp = 0;
					epinel_other_weightless_inflicted = 2;
					*/
					
				}
			break;
		}
	break;
	
	case AT_NSPECIAL:
		if (!has_hit) trigger_b_reverse();
		can_wall_jump = true;
		can_fast_fall = false;
		if (window <= 7) can_move = false; 
		else if (!hitpause) hsp = clamp(hsp, -3, 3);
		if (window == 1) {
			epinel_charge_timer = 0;
			if (window_timer == 1) {
				invincible = true;
				invince_time = max(0, invince_time);
				if (free && !hitpause) {
					spawn_hit_fx(x, y, epinel_fx_jump).depth = depth+1;
				}
			}
		}
		else if (!hitpause && window < 6 && window > 3 && epinel_charge_timer >= 1) {window = 6; window_timer = 0; }
		else if ((window == 8 || window == 9) && window_timer == 1) {
			//change whifflag depending on if epinel is in the air or not
			var has_not_hit_and_is_free = (!has_hit && free);
			set_window_value(AT_NSPECIAL_2, 8, AG_WINDOW_LENGTH, 8 + (4 * has_not_hit_and_is_free)); 
			set_window_value(AT_NSPECIAL_2, 9, AG_WINDOW_LENGTH, 8 + (4 * has_not_hit_and_is_free)); 
		}
	break;
	
	
	case AT_EXTRA_1:
		//this move can be cancelled with anything else.
		iasa_script();
		can_jump = true;
		can_wall_jump = true;
		//land cancel.
		if (!free && window_timer > 1) {
			set_state(PS_LAND);
		} 
	break;
	
	case AT_JAB:
		//make the second attack quickly move forwards.
		if (free && window >= 5 && window <= 6) {
			can_special = true;
			can_jump = true;
			can_wall_jump = true;
			if (has_hit) hsp = clamp (hsp, -1, 1);
		}
		else if (hitpause == false) {
			switch (window) {
				case 1:
					//image_index = (window_timer > 0);
					if (window_timer > 1)  break;
					set_attack_value(AT_JAB, AG_OFF_LEDGE, 0);
					set_attack_value(AT_JAB, AG_CATEGORY, 2); //grounded or aerial
				break;
				
				case 3:
					if (window_timer > 1) break;
					set_attack_value(AT_JAB, AG_OFF_LEDGE, 1);
				break;
				
				case 4:
					if (window_timer <= 1) {
						if (!free) hsp = 12.5 * spr_dir;
						set_attack_value(AT_JAB, AG_OFF_LEDGE, 1);
						clear_button_buffer( PC_ATTACK_PRESSED );
						has_hit = false;
					}
					else {
						if (free) hsp = clamp(hsp, -10.5, 10.5);
					}
				break;
				
				case 5:
					if (!free) {
						if (has_hit) hsp = clamp (hsp, -3, 3);
						break;
					}
					
					hsp = clamp(hsp, -10.5, 10.5);
					can_special = true;
					can_jump = true;
					can_wall_jump = true;
				break;
				
				case 6:
					if (free && window_timer > 3) {
						set_state(PS_IDLE);
					}
				break;
				
				case 7:
					can_move = false;
					if (window_timer == 4) {
						if (!free) vsp = -5;
						else vsp = -2;
						hsp = 5.5 * spr_dir;
					}
					else if (window_timer <= 1) {
						//if (hsp * spr_dir < 5) {
							hsp = 5.5 * spr_dir;
							has_hit = false;
							has_hit_player = false;
						//}
						
					}
					else if (window_timer == 5) {
						set_attack_value(AT_JAB, AG_CATEGORY, 1); //aerial only - for landing lag
					}
				break;
				
				case 8:
					can_move = false;
				break;
				
				case 9:
					can_move = true;
					can_fast_fall = has_hit;
				break;
				
				case 10:
					if (has_hit_player && window_timer > 5) { iasa_script(); can_fast_fall = true; }
					else { can_fast_fall = has_hit; }
				break;
			}
		}

	break;
	
	
	case AT_TAUNT_2: {
		if (window == 3 && window_timer == 1 && !hitpause) { 
			sound_play(sound_get("smallexplosion"));
			for (var i = 1; i <= 3; i++;) { 
				var newpebble = instance_create(x + spr_dir * 12, y, "obj_article1");
				newpebble.state = 102;
				newpebble.random_index = i;
			}
			//parry fx
			spawn_hit_fx(x + spr_dir * 4, y, epinel_fx_parry).depth = depth + 1;
			spawn_hit_fx(x + spr_dir * 4, y, epinel_fx_parry_front).depth = depth - 1;
			
		}
	}
	
	
	case AT_EXTRA_2: {
		
		switch (window) {
			case 1:
				if (window_timer == 1 && !hitpause) state_timer = 1;
				epinel_charge_timer = 1;
			break;
			case 3:
				//allow epinel to be pushed by other players while sleeping, as though he were in an idle state.
				go_through = false;
				/*
				if (taunt_pressed && epinel_charge_timer == 120 && state_timer > 180) {
					epinel_charge_timer = state_timer + 180;
					sound_play(sound_get("drop"));
					spawn_hit_fx(x, y - 30, epinel_fx_inertia_medium);
					with (oPlayer) {
						if (id == other.id || object_index != oPlayer || point_distance(x, y, other.x, other.y) > 120) continue;
						epinel_other_weightless_inflicted = 4;
						//epinel_other_weightless_timer = 180;
						//epinel_other_player_that_inflicted_weightless_id = other.id;
						//epinel_other_weightless_hsp = 0;
						//epinel_other_weightless_vsp = 0;
						//hsp = 0; vsp = 0; old_hsp = 0; old_vsp = 0;
						//has_walljump = true;
					}
					break;
				}
				
				if (state_timer == 180) {
					var newfx = spawn_hit_fx(x, y - 6, epinel_fx_sweetspot);
					newfx.depth = depth - 1;
					newfx.spr_dir = 1;
					newfx.image_angle = 90;
					newfx.image_alpha = 0.1;
				}
				*/
				
				
				if (was_parried) {
					set_state(PS_PRATLAND);
					break;
				}
				
				if (state_timer < 68) break;
				
				
				
				
				//fast end
				if (jump_pressed || attack_pressed || special_pressed || shield_pressed || left_hard_pressed || right_hard_pressed) {
					window = 4;
					window_timer = 0;
					break;
				}
				
				//slow end
				else if (taunt_pressed || !joy_pad_idle) {
					window = 5;
					window_timer = 0;
					break;
				}
				
				//heal
				//if (epinel_charge_timer * 360 < state_timer) {
				//	epinel_charge_timer++;
				//	take_damage(player, player, -1);
				//	spawn_hit_fx(x, y, epinel_fx_parry).depth = depth + 1;
				//	//heal 5 hp max
				//	if (epinel_charge_timer >= 5) epinel_charge_timer = 9999;
				//}
				
			break;
			
			case 4:
				clear_button_buffer(PC_TAUNT_PRESSED);
				if (window_timer >= get_window_value( attack, window, AG_WINDOW_LENGTH) - 1) {
					set_state(PS_IDLE);
				}
			break;
			
			case 5:
				clear_button_buffer(PC_TAUNT_PRESSED);
				if (window_timer >= get_window_value( attack, window, AG_WINDOW_LENGTH) - 1) {
					set_state(PS_IDLE);
				}
				else if (window_timer >= 10) {
					can_attack = true;
					can_special = true;
					can_ustrong = true;
					can_strong = true;
					can_jump = true;
				}
			break;
		}
	}
	break;
	
	case AT_EXTRA_3:
		if (window == 2) {
			attack_end(); set_state(PS_CROUCH); state_timer = 10; break;
		}
		//transition straight to ground dspecial if desired
		if (window_timer == 10 && (((down_down && special_down) || is_special_pressed(DIR_DOWN)) ) ) {
			safely_cancel_into_ground_dspecial();
			
		}

		if (window != 1 || window_timer != 1 || hitpause) break;
		
		heavy_state_recovery_effect();

	break;
}


//jump-cancel rune
if (runeI && !free && epinel_other_standing_on_platform_id > 0) { 
	can_jump = true;
}





#define scr_epinel_spawn_sweetspot_fx
//(attack, hbox num, direction)
var tempvar_sweetspot_window = get_hitbox_value(argument[0], argument[1], HG_WINDOW) - 1;

if (window_timer < get_window_value(argument[0], tempvar_sweetspot_window, AG_WINDOW_LENGTH) || window != tempvar_sweetspot_window || hitpause) return;
get_hitbox_value(argument[0], argument[1], HG_HITBOX_X);
var newfx = spawn_hit_fx( 
	x + round(hsp) + get_hitbox_value(argument[0], argument[1], HG_HITBOX_X) * spr_dir, 
	y + round(vsp) + get_hitbox_value(argument[0], argument[1], HG_HITBOX_Y), 
	epinel_fx_sweetspot );
newfx.depth = depth-1; 
newfx.draw_angle = argument[2]; newfx.spr_dir = 1;
if (spr_dir < 0) newfx.draw_angle = 180 - newfx.draw_angle;
return;


#define scr_epinel_nspecial_air_break_platforms
//platform detection code
if (instance_number(obj_article_platform) == 0) return;

var found_plat = epinel_other_standing_on_platform_id;
var found_plat_intersect_x = x;

if (found_plat == noone) {

	
	with(obj_article_platform) {
		//check if this is an epinel platform that hasn't been broken
		if (!instance_exists(player_id) || !(player_id.epinel_other_is_epinel) || crumble < 1 ) continue;
		//check if inside y coord range
		if (y + 20 < other.y || y > other.y + ceil(other.vsp)) continue;
		//check if inside x coord range
		var intersect_dir = sign(other.hsp);
		var intersect_x = (min(other.y, y) - (intersect_dir * other.x) - y) * -intersect_dir;
		var plat_width = 63 * image_xscale + 10;
		var plat_offset = -other.spr_dir * 20;
		if (x - plat_width + plat_offset > intersect_x || x + plat_width + plat_offset <= intersect_x) continue; 
		
		//check if a lower y coord than the last found platform
		if (found_plat != noone && (y > found_plat.y || (y == found_plat.y && hp <= found_plat.hp))) continue;
		
		//use this platform.
		found_plat = id;
		found_plat_intersect_x = intersect_x;
	}
}
	
if (found_plat != noone) {	
	//intersect found. try to move the player here

	var move_success = !place_meeting(found_plat_intersect_x, found_plat.y, asset_get("par_block")) 
	&& !place_meeting(round((x + found_plat_intersect_x) / 2), round((y + found_plat.y) / 2), asset_get("par_block"));
	
	//the path to this point is blocked. 
	/*
	if (!move_success) {
		if (x >= other.x - 55 && x < other.x + 55
			&& !place_meeting(x, other.y, asset_get("par_block")) 
	}
	*/
	if (move_success) {
		//teleport to the platform
		x = found_plat_intersect_x;
		y = found_plat.y;

		//destroy this platform
		found_plat.instant_destroy = true;
		//reassign the hit platform's owner
		found_plat.player_id = id;
		//set the platform's hsp to maximum
		found_plat.hsp = spr_dir * 5;
		
		//ricochet
		window = 8;
		window_timer = 10;
		free = true;
		super_armor = 0;
		soft_armor = 0;
		epinel_platform_ricochet = true;
		
		var launch_angle = 55 - ((right_down - left_down) * spr_dir * 10);
		old_hsp = lengthdir_x(9, launch_angle) * spr_dir;
		old_vsp = lengthdir_y(9, launch_angle);
		//old_hsp = (spr_dir * 8) + 6 * (right_down - left_down);
		//old_vsp = -9;
		hsp = 0;
		vsp = 0;
		
		hitstop = 3;
		hitpause = true;
		
		apply_short_aerial_cooldowns();
		
		//restore double-jump
		//djumps = 0;
		
		epinel_fspecial_currently_moving_with_superarmor = false;
		epinel_is_armored = 0;
	}

}

return;







#define scr_epinel_grabbed_opponent_is_still_grabbed
//returns true if a grabbed opponent still meets all the conditions for being grabbed.
return (
	epinel_grabbed_player_object_id != noone
	&& instance_exists(epinel_grabbed_player_object_id)
	&& epinel_grabbed_player_object_id.hitpause == true
	&& epinel_grabbed_player_object_id.hitstun > 0
	&& epinel_grabbed_player_object_id.invincible == false
);


#define scr_epinel_ground_dspecial_create_spawn_particles
var n = 5;
for(var i = 1; i <= n; i++) {
	var newarticle = instance_create(x, y, "obj_article1");
	newarticle.state = 100;
	newarticle.player_id = id;
	newarticle.random_index = i;
	if (instance_exists(epinel_other_standing_on_platform_id))
	newarticle.vsp = epinel_other_standing_on_platform_id.vsp;
	newarticle.hsp = 0;
}
return;


#define scr_epinel_air_dspecial_create_impact_particles
var n = min(3, epinel_air_dspecial_platform_hits) * 2 + 3;
for(var i = 1; i <= n; i++) {
	var newarticle = instance_create(x, y, "obj_article1");
	newarticle.state = 100;
	newarticle.player_id = id;
	newarticle.random_index = i;
	newarticle.vsp = -epinel_air_dspecial_platform_hits
	newarticle.hsp = ((i mod 3) - 1) * 3;
}
return;

#define scr_epinel_air_dspecial_create_impact_particles_final
var n = min(3, epinel_air_dspecial_platform_hits) * 2 + 4;
for(var i = 1; i <= n; i++) {
	var newarticle = instance_create(x, y, "obj_article1");
	newarticle.state = 101;
	newarticle.player_id = id;
	newarticle.random_index = i;
	//newarticle.vsp = -epinel_air_dspecial_platform_hits;
}
return;

#define scr_epinel_dspecial_air_snap_to_platforms
//platform detection code

if (instance_number(obj_article_platform) == 0) return;
var found_plat = epinel_other_standing_on_platform_id;
var found_plat_distance = 9999;

if (found_plat == noone) {

	with(obj_article_platform) {
		//check if this is an epinel platform that hasn't been broken
		if (!instance_exists(player_id) || !(player_id.epinel_other_is_epinel) || crumble < 1 ) continue;
		//check if inside y coord range
		if (other.y < y - 16 || other.y > y + 32) continue;
		//check if inside x coord range
		var plat_width = 63 * image_xscale + 16;
		if (abs(x - other.x) > plat_width / 2) continue;
		var this_plat_distance = abs(y - other.y);
		//no other plats found: use this plat
		if (found_plat == noone) {
			found_plat = id;
			found_plat_distance = this_plat_distance;
		}
		//other plats found: use this plat if it is closer
		else {
			if (this_plat_distance > found_plat_distance) continue;
			if (this_plat_distance < found_plat_distance || abs(x - other.x) < abs(found_plat.x - other.x)) {
				found_plat = id;
				found_plat_distance = this_plat_distance;
			}
		}
	}
}

if (found_plat == noone) return;

//snap to this platform if able
if (place_meeting(x, found_plat.y, asset_get("par_block"))) return;

y = found_plat.y;
vsp = 0;
hsp = 0;
epinel_other_standing_on_platform_id = found_plat;
epinel_buffered_standing_on_platform_id = found_plat;
//transition to the ground version of down-special.
set_attack_value(AT_DSPECIAL, AG_CATEGORY, 1);
var prev_window_timer = window_timer;
safely_set_attack(AT_DSPECIAL);
free = false;
//window = 1;
window_timer = prev_window_timer;
epinel_charge_timer = -2;
//turn around if holding the opposite direction
if (right_down - left_down == -spr_dir) spr_dir *= -1;
//damage the platform
found_plat.landed_on = true;
return;

#define scr_epinel_is_below_bottom_of_screen
return (y > room_height + 60);

#define safely_set_attack
destroy_hitboxes();
attack_end();
set_attack(argument0);
hurtboxID.sprite_index = get_attack_value(argument0, AG_HURTBOX_SPRITE);
return;


#define safely_cancel_into_ground_dspecial
safely_set_attack(AT_DSPECIAL);
if (check_if_epinel_has_room_to_spawn_dspecial_platform()) {
	window = 5;
}
else {
	window = 2;
}
epinel_charge_timer = 2; //prevent jump cancelling
hsp = clamp(hsp, -3, 3);
return;

#define transition_to_heavy_state_recovery_at_end_of_window
if (epinel_heavy_state > 0 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 && !hitpause && !free) {
	safely_set_attack(AT_EXTRA_3);
} 
return;

#define heavy_state_recovery_effect
		
sound_play(sound_get("releaseland"), 0, noone, 0.4);

var next_frame_x = x + round(hsp * 2);

for (var i = 1; i <= 3; i++;) { 
	var newpebble = instance_create(next_frame_x + spr_dir * 12, y, "obj_article1");
	newpebble.state = 100;
	newpebble.random_index = i;
	newpebble.vsp -= 2;
}

spawn_hit_fx(next_frame_x, y+16, epinel_fx_parry).depth = depth + 1;
spawn_hit_fx(next_frame_x, y+16, epinel_fx_parry_front).depth = depth - 1;
return;

#define remove_heavy_state_if_currently_in_heavy_state
if (epinel_heavy_state == 0) return;
epinel_heavy_state = 0;
heavy_state_recovery_effect();
return;

#define apply_short_aerial_cooldowns 
move_cooldown[AT_NAIR]     = 3;
move_cooldown[AT_FAIR]     = 3;
move_cooldown[AT_BAIR]     = 3;
move_cooldown[AT_DAIR]     = 3;
move_cooldown[AT_UAIR]     = 3;
move_cooldown[AT_NSPECIAL] = 3;
move_cooldown[AT_FSPECIAL] = 3;
move_cooldown[AT_DSPECIAL] = 3;
return;

#define apply_short_ground_cooldowns
move_cooldown[AT_JAB]      = 3;
move_cooldown[AT_DATTACK]  = 3;
move_cooldown[AT_FTILT]    = 3;
move_cooldown[AT_DTILT]    = 3;
move_cooldown[AT_UTILT]    = 3;
move_cooldown[AT_NSPECIAL] = 3;
move_cooldown[AT_FSPECIAL] = 3;
move_cooldown[AT_DSPECIAL] = 3;
return;



#define check_if_epinel_has_room_to_spawn_dspecial_platform
var plat_radius = 24 *  (1 + runeG / 3);
var check =  (!free
	&& position_meeting(x, y+1, asset_get("par_block") )
	&& position_meeting(x + plat_radius, y+1, asset_get("par_block") )
	&& position_meeting(x - plat_radius, y+1, asset_get("par_block") ) 
	&& object_index != oTestPlayer); //prevents platforms being spawned in the move preview mode. caused bugs at one point.
return check;