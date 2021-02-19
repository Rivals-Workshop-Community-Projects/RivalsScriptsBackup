//B - Reversals
if (attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR || attack == AT_USPECIAL) {
    trigger_b_reverse();
}


//uspecial cancel
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
		set_attack(AT_USPECIAL);
	}
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
			case 4: //looping window
				if (hitpause) break;
				epinel_charge_timer--;
				repeat (1 + (window_timer == 1)) {
					hsp += (right_down - left_down) * (0.5 - has_hit_player * 0.1);
					if (has_hit_player && !runeE) hsp = clamp(hsp, -3, 3);
				}
				if (epinel_charge_timer <= 0 || (runeE && (down_strong_pressed || left_strong_pressed || right_strong_pressed || attack_pressed))) { window += 1; window_timer = 0; }
				else  {
					attack_end();
					//if (epinel_charge_timer mod 6 == 0) attack_end(); //reset hit lockout
					if (window_timer == 6) window_timer = 0;
				}
			break;
			case 7:
			if (window_timer == 1) {
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
					drag_y = round(ease_quadIn( starting_y, y + 5, window_timer, 6 ));
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
				if ((x != drag_x || y != drag_y) && place_meeting(drag_x, drag_y, asset_get("par_block")) == false) {
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
		
		switch (window) {
			case 2:
				if (window_timer == 1 && epinel_other_standing_on_platform_id != noone && !hitpause && instance_exists(epinel_other_standing_on_platform_id)) {
					epinel_other_standing_on_platform_id.hp = min(epinel_other_standing_on_platform_id.hp, 0);
					epinel_other_standing_on_platform_id.crumble = max(epinel_other_standing_on_platform_id.crumble, 1.5);
					
					//reassign this platform's owner.
					epinel_other_standing_on_platform_id.player_id = id;
					hitstop = max(hitstop, 5);
					
					//spawn_hit_fx(x+40*spr_dir, y+6, epinel_fx_inertia);//192);
					sound_play(sound_get("drop"));
				}
			break;
			
			case 5:
				if (window_timer == 1 && epinel_other_standing_on_platform_id != noone && !hitpause && instance_exists(epinel_other_standing_on_platform_id)) {
					epinel_other_standing_on_platform_id.hp = min(epinel_other_standing_on_platform_id.hp, -1);
					epinel_other_standing_on_platform_id.crumble = max(epinel_other_standing_on_platform_id.crumble, 1);
					
					//reassign this platform's owner.
					epinel_other_standing_on_platform_id.player_id = id;
					
					spawn_hit_fx(x+40*spr_dir, y+6, epinel_fx_inertia);//192);
					//sound_play(sound_get("drop"));
				}
			break;
			//crouch stance
			case 6:
				if (!was_parried) { set_state(PS_CROUCH); state_timer = 10; }
			break;
		}
	
	break;
	
	case AT_NAIR:
		switch (window) {
			case 1:
				epinel_charge_timer = 0;
			break;
			case 3: //hasten the attack if it connects early.
				if (has_hit) { window_timer = max(window_timer, ceil(get_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH) / 3) ); }
			case 2: //hasten the attack if it connects early.
				if (hitpause && hitstop <= 1 && has_hit && epinel_charge_timer == 0 && !down_hard_pressed && (down_down - up_down) <= 0) {
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
		can_move = true;
		//can't fastfall unless it hits.
		can_fast_fall = has_hit;
		if (window_timer == 1) {
			switch (window) {
				case 1:
					//workaround to give a grounded move landing lag.
					set_attack_value(AT_UTILT, AG_CATEGORY, 2);
					//shorten recovery if lightweight.
					set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 10 + (epinel_lightweight_time == 0) * 10);
				break;
				
				case 2:
					//add hsp to the jump if holding forwards
					hsp += (spr_dir + right_down - left_down) * 0.8;

					//shorten recovery if lightweight (under a platform). Also increase jump height.
					if (epinel_lightweight_time > 0) { 
						set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 10); 
						vsp -= 4; 
					}
					//apply landing lag if not.
					else { 
						set_attack_value(AT_UTILT, AG_CATEGORY, 1); 
					}
					
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
				hsp /= max(1, max(epinel_uair_jump_counter, epinel_consecutive_uair_jumps));
				hsp *= spr_dir;
				hsp = clamp(hsp * 0.8, 2.35, 8); //2.35
				hsp *= spr_dir;
				
				//hsp = 2.35 * spr_dir;
				
				//lock drifting
				//can_move = false;
			break;
			
			case 3:
				
				//re-enable landing lag.
				if (window_timer == 1) {
					set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
				}
				//allow wall jump
				can_move = true;
				if (vsp >= 0) { can_wall_jump = true; }
			break;
			
			case 4:
				//add a miniscule cooldown if the move didn't hit an opponent.
				if (epinel_uair_jump_counter > 0) move_cooldown[AT_UAIR] = 3;
				//if (window_timer == 1 && epinel_uair_jump_counter > 0) move_cooldown[AT_UAIR] = ceil(get_window_value(AT_UAIR, window, AG_WINDOW_LENGTH) * 1.5 + 2);
				
				//lock drifting, allow wall jump
				if (window_timer < 12 && !has_hit ) { can_move = false; }
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
		//optionally fall through platforms.
		if (state_timer > 1) can_fast_fall = false;
		if (window <= 6) { fall_through = (down_down); } // && (!has_hit_player) ); }
		switch (window) {
			case 1:
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
				if (window_timer == 1 && hitpause == false) { hsp *= 1; vsp = clamp(vsp, 6, 9); set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 0); } // *= 1.06
			break;
		
			case 3:
				vsp = min(vsp - 0.1, 8.5);
				
				var dair1_knockback = max(vsp * 0.7, 4);
				set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK,dair1_knockback);
				set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, dair1_knockback);
				set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, dair1_knockback);
				if (!free) hsp *= 0.9;
			break;
			case 4:
				if (!free) hsp *= 0.9;
				else vsp -= 0.1;
			break;
			
			case 5:
				if (has_hit && window_timer == get_window_value( AT_DAIR, 5, AG_WINDOW_LENGTH ) ) {
					window = 7;
					window_timer = 0;
				}
				if (!free) hsp *= 0.9;
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
				
				if (!fast_falling) vsp -= 0.02;
				
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
				if (window_timer >= 14) {
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
					spawn_hit_fx( x, round(y - char_height / 2), epinel_fx_inertia_medium );
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
					else if ((taunt_pressed || shield_pressed) && epinel_charge_timer >= 25 && !free)// && (right_down - left_down != 0))
					{				
						//on the ground, allow only roll cancels, not parry cancels.
						//if (sign(right_down - left_down) == sign(spr_dir)) 
						//set_state( PS_ROLL_FORWARD );
						set_attack(AT_FSPECIAL_2);
						hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
						super_armor = false;
						soft_armor = 0;
						//else set_state( PS_ROLL_BACKWARD );
						epinel_other_weightless_timer = 0;
						//add a cooldown so that roll-cancelled f-special stance can't be spammed
						move_cooldown[AT_FSPECIAL] = 40;

					}
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
					set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 4 + max(1, floor((epinel_charge_timer - 15) * 0.5) ));
					
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
			break;
		} //close switch(window)
	break;
    
    case AT_FSPECIAL_2:
    	switch (window) {
    		case 0:
    		case 1:
    			can_move = false;
    			if (window_timer == 1  && !hitpause) {
    				spawn_hit_fx(x + spr_dir * 24, y - 60, epinel_fx_warning);
    				spawn_hit_fx(x, y-30, epinel_fx_inertia_small); 
    				sound_play(asset_get("sfx_blow_weak2"), 0, noone, 0.5, 1.2);
					sound_play(sound_get("glass_bottle_edited_freesounds_dasebr"), 0, noone, 0.5, 1.5);
					
					hsp = spr_dir * 3;
    			}
    			
    		break;
    		default:
    			set_attack(AT_EXTRA_2);
				hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
				window_timer = 7;
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
				//epinel_is_armored = 1;
				
				if (window_timer == 1 && !hitpause) {
					spawn_hit_fx( x, round(y - char_height / 2), epinel_fx_inertia_medium );
				}
				
				//if we touch the ground during this window, switch all smoothly to the grounded version.
				if (!free && down_down) {
					var thiswindow = window;
					var thiswindowtimer = window_timer;
					set_attack(AT_FSPECIAL);
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
				//epinel_is_armored = 1;
				
				
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
					set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_LENGTH, 31 + max(1, floor((epinel_charge_timer - 15) / 3) ));
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
				hsp += (holding_dir) * 0.15;
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
			break;
		} //close switch(window)

	break;
	
	
	case AT_DSPECIAL:
		old_jump = false; //make sure this move doesn't rise from a DJC
		switch (window) {
			case 1:
				if (window_timer == 1) {
					epinel_charge_timer = -2;
					//set_attack.gml changes this move's category to 'aerial or grounded' if the move is buffered after falling through a platform.
					//this changes it back to a grounded-only move, after epinel has 'landed' on the platform he snapped back to.
					
					//if (get_attack_value(AT_DSPECIAL, AG_CATEGORY) != 1) {
					//	set_attack_value(AT_DSPECIAL, AG_CATEGORY, 1);
					//	epinel_other_standing_on_platform_id = epinel_buffered_standing_on_platform_id;
					//}
				}
				clear_button_buffer(PC_DOWN_HARD_PRESSED);
				//make sure the player isn't rising for some other reason.
				vsp = max(vsp, 0);
			break;
			
			case 2:
				if (window_timer > 2) {
					set_attack_value(AT_DSPECIAL, AG_CATEGORY, 1);
					if (epinel_other_standing_on_platform_id != noone && instance_exists(epinel_other_standing_on_platform_id)) {
						if (spr_dir * epinel_other_standing_on_platform_id.hsp  < 4) {
							epinel_other_standing_on_platform_id.hsp += spr_dir;
							epinel_other_standing_on_platform_id.state_timer = 0;
						}
					}
				}
			case 3:
			//allow cancels.
				if (epinel_other_standing_on_platform_id > 0) {
					//can be jump cancelled.
					can_jump = true;
					
					//can also be platdrop-cancelled.
					if (down_hard_pressed) {
						//fall through the platform on a hard down press.
						set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
						set_state(PS_IDLE_AIR);
						if (!place_meeting(x, y+1, asset_get("par_block"))) {
							y += 1;
						}
					}
				}
			break;
			
			case 4:
				
				if (window_timer == 1) {
					//check if there is enough room to dig out a platform.
					if (!free
						&& position_meeting(x + spr_dir * 110 * (1 + runeG / 3), y+1, asset_get("par_block") )
						&& position_meeting(x + spr_dir * 65 * (1 + runeG / 3), y+1, asset_get("par_block") )
						&& position_meeting(x + spr_dir * 20 * (1 + runeG / 3), y+1, asset_get("par_block") ) 
						&& object_index != oTestPlayer) {
						
						var dig = instance_create(x + 70 * spr_dir, y, "obj_article1");
						dig.spr_dir = spr_dir;
						dig.player_id = id;
						dig.image_xscale = (1 + runeG / 3);
					}
					else {
						//no room to spawn a platform here. if <not> already on a platform, just perform the attack.
						if (epinel_other_standing_on_platform_id < 0 || !special_down) {
							epinel_charge_timer = -10;
							window = 5;
							window_timer = 0;
						}						

					}
					break;
				}
				
				
				
				if (epinel_other_standing_on_platform_id > 0) {
					//this move lasts indefinitely while on a platform.
					window_timer = 2;
					
					//can be jump cancelled.
					can_jump = true;
					
					//can also be platdrop-cancelled.
					if (down_hard_pressed) {
						//fall through the platform on a hard down press.
						set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
						set_state(PS_IDLE_AIR);
						free = true;
						if (!place_meeting(x, y+2, asset_get("par_block"))) {
							y += 2;
						}
					}
					
					//perform the attack if the button is released.
					else if (!special_down) {
						epinel_charge_timer = -10;
						window = 5;
						window_timer = 0;
					}
					
					
				}
				
				else {
					//otherwise, increase charge.
					epinel_charge_timer += 1;
					
					if (!special_down && window_timer >= 2) {
						window = 5;
						window_timer = 0;
						break;
					}
				}
				
				//if ((epinel_charge_timer mod 20) == 0) {
					//create_hitbox( AT_DSPECIAL, 1, x + epinel_charge_timer * spr_dir, y );
					
				//}
			break;
			
			
			case 5:
				//attack startup. can be jump or dropthrough-cancelled while on one of epinel's platforms.
				if (epinel_other_standing_on_platform_id > 0) {
					//can be jump cancelled.
					can_jump = true;
					
					//can also be platdrop-cancelled.
					if (down_hard_pressed) {
						//fall through the platform on a hard down press.
						set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
						set_state(PS_IDLE_AIR);
						free = true;
						repeat (2) {
							if (!place_meeting(x, y+1, asset_get("par_block"))) {
							y += 1;
							}
						}
					}
					
					//else if (attack_pressed || down_stick_pressed) {
					//	set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
					//	set_attack(AT_DTILT);
					//}
				}
			break;
			
			case 6:
				if (window_timer == 1 && hitpause == 0){
					//reset can_jump, just in case
					can_jump = false;
					
					var temp_x = 32;

					if (epinel_charge_timer <= -5) {
						//don't make a platform if there wasn't enough space / the move was used on a platform
						sound_play(asset_get("sfx_shovel_swing_light2"));
					}
					else {
						//make a platform
						sound_play(asset_get("sfx_kragg_roll_start"));
						//uncharged version
						if (epinel_charge_timer <= 0) {
							var plat = instance_create(x+32*spr_dir, y-1, "obj_article_platform");//"obj_article_platform"); "obj_article1"); 
							spawn_hit_fx( x+temp_x*spr_dir, y - 5, 155   );
							spawn_hit_fx( x+temp_x*spr_dir + 30, y, 13   );
							spawn_hit_fx( x+temp_x*spr_dir - 30, y, 13   );
							plat.player_id = id;
							plat.player = player;
							plat.spr_dir = 1;
							plat.hsp = 0;
							plat.vsp = -4;
							//plat size rune
							plat.image_xscale = 1 + runeG * 0.4;
						}
						//charged version
						else {
							var plat = instance_create(x+64*spr_dir, y-1, "obj_article2"); 
							spawn_hit_fx( x+temp_x*spr_dir, y - 5, 155   );
							spawn_hit_fx( x+temp_x*spr_dir + 30, y, 13   );
							spawn_hit_fx( x+temp_x*spr_dir - 30, y, 13   );
							plat.player_id = id;
							plat.player = player;
							plat.spr_dir = 1;
							plat.vsp = -3 - sqrt(epinel_charge_timer);
							//plat size rune
							plat.image_xscale = 1 + runeG * 0.4;
							plat.plat_xscale = 1 + runeG * 0.4;
						}
					}


					
					
					//if (place_meeting(x, y-1, asset_get("par_block")) == false) y -= 1;
					//stalk.spr_dir = spr_dir;
					
					//move_cooldown[AT_DSPECIAL] = 60;
					//move_cooldown[AT_DSPECIAL_AIR] = 60;
				}
			break;
			
			case 7:
				if (window_timer == 1) set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
			break;	
			
			case 8:
				//cancel this move into crouch.
				if (was_parried) break;
				if (window_timer >= get_window_value( attack, window, AG_WINDOW_LENGTH) ) {
					attack_end();
					set_state(PS_CROUCH);
					state_timer = 10;
				}
				//this move cancels into itself.
				//else if (special_pressed && down_down && !up_down) {
				//	window = 1;
				//	epinel_charge_timer = 4;
				//	window_timer = 6;
				//	//allow turning around.
				//	if (right_down - left_down == -spr_dir) spr_dir *= -1;
				//}
			break;
			
			
			
			
		}
	break;
	
	case AT_DSPECIAL_AIR:
		can_move = false;
		can_fast_fall = false;
		//while falling:
		if (window == 3 || window == 4 || window == 8 || window == 9) {
			//clamp hsp. allow minimal movement.
			hsp = clamp(hsp + (0.25 + runeA / 5) * (right_down - left_down), -(3.5 + runeA), 3.5 + runeA);
			
			//fall faster than normal.
			if (vsp > -2) vsp *= 1.04 + (epinel_air_dspecial_platform_hits * 0.02) + (epinel_heavy_state > 0) * 0.04;
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
						
						if ((x != drag_x || y != drag_y) && place_meeting(drag_x, drag_y, asset_get("par_block")) == false) {
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
				if (hitpause) break;
				
				if (window_timer == 1) {
				//remove landing lag.
				set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 0);
				
				//reset variables.
				epinel_grab_connected = false;
				epinel_grabbed_player_object_id = noone;
				epinel_air_dspecial_platform_hits = 0;
				epinel_air_dspecial_fall_distance = 0;
				epinel_air_dspecial_max_fall_speed = 3;
				
				//stop movement.
				vsp = clamp(vsp / 3, -3, 0);
				hsp = clamp(hsp, -5, 5);
				
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
				if (window_timer == 1) {
					epinel_uair_jump_counter++;
					
					vsp = min(vsp, (-7 / epinel_uair_jump_counter));
					
					//don't jump if still holding down+special.
					//if (down_down && special_down) {
					//	vsp = min(vsp, (-2 / epinel_uair_jump_counter));
					//}
					
					//move in direction held.
					hsp += right_down - left_down * 0.75;
					if (right_down - left_down == -sign(hsp)) { hsp -= sign(hsp); } 
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
				
				var tempvar_transition_to_ground_special = false;
				//break the platform that epinel is on.
				if (epinel_other_standing_on_platform_id != noone && instance_exists(epinel_other_standing_on_platform_id)) {
				
					if (special_down) {
						//transition to the ground version of down-special.
						set_attack(AT_DSPECIAL);
						window = 1;
						window_timer = 0;
						epinel_charge_timer = -2;
						//allow turning around.
						//if (right_down - left_down == -spr_dir) spr_dir *= -1;
						
						tempvar_transition_to_ground_special = true;
					}
					
					else {
						//break the platform.
						if (epinel_other_standing_on_platform_id.hp > -1) sound_play(asset_get("sfx_kragg_rock_shatter"));
						epinel_other_standing_on_platform_id.hp = min(epinel_other_standing_on_platform_id.hp, -1);
						
						//reassign the platform's owner.
						epinel_other_standing_on_platform_id.player_id = id;
						
						//jump slightly.
						vsp = -0.5;
					}
				}
				
				//return to window 3.
				if (tempvar_transition_to_ground_special == false && window_timer >= get_window_value( AT_DSPECIAL_AIR, 6, AG_WINDOW_LENGTH )) {
					window = 3;
					window_timer = 2;
					//accelerate up a little before returning to this window.
					vsp = -2;
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
					epinel_other_standing_on_platform_id.hp = min(epinel_other_standing_on_platform_id.hp, -1);
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
					var newdmg = clamp(floor(6 + (epinel_air_dspecial_fall_distance / 20) ), 7, 14);
					set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_DAMAGE, newdmg );
					set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_DAMAGE, newdmg + epinel_air_dspecial_platform_hits );
					
					set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_HITPAUSE, clamp(8 + (epinel_air_dspecial_fall_distance / 20), 8, 20));
					set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_BASE_HITPAUSE, clamp(10 + (epinel_air_dspecial_fall_distance / 20), 10, 22));
					
					var newscaling = 1.1 + epinel_air_dspecial_fall_distance / 700;
					set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_KNOCKBACK_SCALING, newscaling);
					set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_KNOCKBACK_SCALING, newscaling);
					
					set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_BASE_KNOCKBACK, 4 + epinel_air_dspecial_platform_hits);
					
					//update angle depending on position
					//var tempvar_angle = 45 + ((spr_dir == -1) * 90) + ((spr_dir * 90) * (x < room_width / 2));
					//set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_ANGLE, tempvar_angle);
					//set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_ANGLE, tempvar_angle);
					
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
				}
				else if (window_timer >= get_window_value( AT_DSPECIAL_AIR, 14, AG_WINDOW_LENGTH )) {
					attack_end();
					if (!was_parried) {
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
				
				if (window_timer == 1) {
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
						if ((x != drag_x || y != drag_y) && place_meeting(drag_x, drag_y, asset_get("par_block")) == false) {
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
					epinel_charge_timer = 0; 
					//move_cooldown[AT_USPECIAL] = 9999;
					

				}
				else if (window_timer == 2) {
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
				
				//charged version transition
				//if (hitpause == false && special_down && window_timer == 9) {
				//	window = 3;
				//	window_timer = 0;
				//}
				
			break;
			
			case 2:
				//uncharged ver active
				if (window_timer == 1 && hitpause == false) {
					
					epinel_heavy_state = 2;
					move_cooldown[AT_USPECIAL] = 30;
					//spawn effect.
					//spawn_hit_fx(x, y - char_height / 2, epinel_fx_inertia);
					spawn_hit_fx(x, y - char_height / 2, epinel_fx_absorb);
					sound_play(sound_get("drop"));
					
					//inflict inertia on self.
					can_move = 0;
					
					epinel_other_weightless_inflicted = 3;
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
				
				//skip charged-version windows
				else if (window_timer >= get_window_value(AT_USPECIAL, window, AG_WINDOW_LENGTH)) {
					//set_state(PS_IDLE_AIR);
					window = 5;
					window_timer = 4;
					epinel_charge_timer = 1;
				}
				
				//if (free) { vsp = -3 + epinel_charge_timer*1.5; hsp = 0; }
			break;
				

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
			

			
			
			case 5:
				if (window_timer < 5 * (1 + epinel_charge_timer)) {
					can_move = false;
				}
			break;
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
		can_move = (window <= 1 && window_timer > 3);
		//can only fast-fall during recovery
		can_fast_fall = true;//(window == 4 || window == 7 || window >= 10);
		if (has_hit) epinel_nspecial_halt_vsp = true;
		//special_pressed = special_down || special_pressed;
		//if (!attack_pressed && attack_down) attack_pressed = true;
		switch (window) {
			case 1:
				//this attack can only be b-reversed on window 1 and 2. prevents b-reversing after the sweetspot hits.
				trigger_b_reverse();
				//invincible = true;
				if (hitpause || window_timer > 1) break;
					
				if (epinel_nspecial_halt_vsp) {
					for (var i = 2; i < 7; i++; ) { set_window_value(AT_NSPECIAL, i, AG_WINDOW_VSPEED, 0.5); }
				} 
				else {
					for (var i = 2; i < 7; i++; ) { set_window_value(AT_NSPECIAL, i, AG_WINDOW_VSPEED, 1); }
				}
				epinel_nspecial_halt_vsp = false;
			break;
			
			case 2:
				//this attack can only be b-reversed on window 1 and 2. prevents b-reversing after the sweetspot hits.
				trigger_b_reverse();
				if (window_timer <= 1) {
					//this variable is re-used to decide which player epinel should track.
					epinel_grabbed_player_object_id = noone;
					epinel_charge_timer = 0;
				}
				else if (!hitpause && !epinel_nspecial_halt_vsp) { vsp = 2; }
			break;
			
			//skip to recovery windows if the player did not cancel.
			case 4:
				if (window_timer >= get_window_value(AT_NSPECIAL, window, AG_WINDOW_LENGTH)) {
					if (was_parried) window = 17;
					else window = 13;
					window_timer = 0;
				}
				//just holding the attack completes the combo.
				else if (!hitpause && special_down && window_timer == get_window_value(AT_NSPECIAL, window, AG_WINDOW_CANCEL_FRAME) + !has_hit_player * 6) {
					window += 1;
					window_timer = 0;
					break;
				}
			break;

			//third hit active frames and recovery can be walljump-cancelled.
			case 10:
				if (window_timer >= 3) can_wall_jump = true;
			case 11: 
				can_wall_jump = true;
			break;

			//end the attack on these windows.
			case 12: //hit 1 recovery
				can_wall_jump = true;
			case 14: //hit 2 recovery
				if (!has_hit && move_cooldown[AT_NSPECIAL] < 3) move_cooldown[AT_NSPECIAL] = 3;
			case 16: //hit 3 recovery
				if (was_parried) { window = 17; window_timer = 0; }
 				else  set_state(PS_IDLE);
			break;
			
			case 13:
				//third hit recovery can be fast-falled and walljump-cancelled.
				can_wall_jump = true;
				can_fast_fall = true;
			break;
			
			case 15:
				//second hit recovery can be cancelled on hit.
				if (has_hit && window_timer >= 3 && !was_parried) { move_cooldown[AT_NSPECIAL] = 2; iasa_script(); can_jump = true; }
				//second hit recovery can be fast-falled and walljump-cancelled.
				can_wall_jump = true;
				can_fast_fall = true;
			break;
			
			//home in during these windows.
			//case 5:
			//case 8:
				//if (window_timer > 1) break;
			
			case 7:
			if (window_timer >= get_window_value(AT_NSPECIAL, window, AG_WINDOW_LENGTH)) {
				if (was_parried) window = 17;
				else window = 15;
				window_timer = 0;
				break;
			}
			//just holding the attack completes the combo.
			else if (!hitpause && special_down && window_timer == get_window_value(AT_NSPECIAL, window, AG_WINDOW_CANCEL_FRAME) + !has_hit_player * 6) {
				window += 1;
				window_timer = 0;
				break;
			}
			else if (window_timer > 2) break;
			//continue
			case 5:
			case 8:
				if (hitpause || epinel_grabbed_player_object_id == noone) { break; }
				if (!instance_exists(epinel_grabbed_player_object_id)) { epinel_grabbed_player_object_id = noone; break; }
				var tempvar_targetx = epinel_grabbed_player_object_id.x + epinel_grabbed_player_x_offset * (window != 7);
				var tempvar_targety = y; //2nd hit does not follow into the air if on the ground
				if (free || window == 8) tempvar_targety = epinel_grabbed_player_object_id.y + epinel_grabbed_player_y_offset;
				var tempvar_targetdist = max(6 - (window == 7), sqrt( point_distance(x, y, tempvar_targetx, tempvar_targety) ) / 3 ) - 1;
				if (tempvar_targetdist <= 0) break;
				var tempvar_targetdir = point_direction(x, y, tempvar_targetx, tempvar_targety);
				var tempvar_targethsp = lengthdir_x(tempvar_targetdist, tempvar_targetdir);
				var tempvar_targetvsp = lengthdir_y(tempvar_targetdist, tempvar_targetdir);
				hsp = max(-0.5, tempvar_targethsp * spr_dir) * spr_dir;
				vsp = tempvar_targetvsp;

			break;
			
		}
	break;
	
	case AT_EXTRA_1:
		//this move can be cancelled with anything else.
		iasa_script();
		can_jump = true;
		can_wall_jump = true;
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
	
	
	case AT_TAUNT: {
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
				else if (window_timer >= 7) {
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
		if (window != 1 || window_timer != 1 || hitpause) break;
		
		sound_play(sound_get("releaseland"), 0, noone, 0.4);
		
		for (var i = 1; i <= 3; i++;) { 
			var newpebble = instance_create(x + spr_dir * 12, y, "obj_article1");
			newpebble.state = 100;
			newpebble.random_index = i;
			newpebble.vsp -= 2;
			spawn_hit_fx(x, y+16, epinel_fx_parry).depth = depth + 1;
			spawn_hit_fx(x, y+16, epinel_fx_parry_front).depth = depth - 1;
		}
		

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
		var plat_width = 57 * image_xscale + 10;
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
		old_hsp = lengthdir_x(13, launch_angle) * spr_dir;
		old_vsp = lengthdir_y(13, launch_angle);
		//old_hsp = (spr_dir * 8) + 6 * (right_down - left_down);
		//old_vsp = -9;
		hsp = 0;
		vsp = 0;
		
		hitstop = 2;
		hitpause = true;
		
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


#define scr_epinel_air_dspecial_create_impact_particles
var n = min(3, epinel_air_dspecial_platform_hits) * 2 + 3;
for(var i = 1; i <= n; i++) {
	var newarticle = instance_create(x, y, "obj_article1");
	newarticle.state = 100;
	newarticle.player_id = id;
	newarticle.random_index = i;
	newarticle.vsp = -epinel_air_dspecial_platform_hits
	newarticle.hsp = (i mod 3) - 1;
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
		var plat_width = 57 * image_xscale + 16;
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
epinel_other_standing_on_platform_id = found_plat;
epinel_buffered_standing_on_platform_id = found_plat;
//transition to the ground version of down-special.
set_attack_value(AT_DSPECIAL, AG_CATEGORY, 1);
var prev_window_timer = window_timer;
set_attack(AT_DSPECIAL);
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
							  