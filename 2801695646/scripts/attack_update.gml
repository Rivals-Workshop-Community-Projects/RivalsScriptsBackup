// attack_update
var _gameplay_time = get_gameplay_time();
var time_2s = _gameplay_time mod 2 == 0;	// True on every other frame.
var time_4s = _gameplay_time mod 4 == 0;	// True on every 4 frames.
var time_60s = _gameplay_time mod 60 == 0;	// True on every 60 second.

//=========================================================
// CUSTOM INPUT
//=========================================================
//var strong_pressed = (right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed);
//var strong_down = (right_strong_down || left_strong_down || up_strong_down || down_strong_down);

//B - Reversals
switch(attack) {
	case AT_NSPECIAL: case AT_FSPECIAL: case AT_DSPECIAL: case AT_USPECIAL:
		trigger_b_reverse();
	break;
}


//=========================================================
// ATTACK LOGIC
//=========================================================

switch (attack) {
	
	//--------------------------------------------------------------------------
	// Forward Special (Firearms)
	//--------------------------------------------------------------------------
	case AT_FSPECIAL:
		
		var _cur_firearm = dict_equipment[inv_firearm];
		var _cur_win_length = get_window_value(AT_FSPECIAL, window, AG_WINDOW_LENGTH );
		var _has_grabbed_player = instance_exists(sna_grabbed_playerid);
		
		var _win_ready = 1;
		var _win_aim = 2;
		var _win_fire = 3;
		var _win_chamber = 4;
		var _win_reload_unload = 5;												// Set these to be all the same number, if there's only one reload window.
		var _win_reload_newmag = 6;
		var _win_reload_load = 7;
		var _win_lower = 8;
		
		
		var _fire_pressed = (attack_pressed || strong_pressed);
		var _fire_down = (attack_down || strong_down);
		
		var _reload_pressed = taunt_pressed;
		
		var _altaim_pressed = shield_pressed;
		var _altaim_down = shield_down;
		
		var _dodge_pressed = (_altaim_pressed && (!special_pressed && !special_down));	// Aiming while not holding the special button will do a dodge cancel.
		var _dodge_down = (_altaim_down && (!special_pressed && !special_down));
		
		var _aiming_left = (left_down || left_pressed || left_stick_down || left_stick_pressed);
		var _aiming_right = (right_down || right_pressed || right_stick_down || right_stick_pressed);
		
		var sna_aim_dir_visual = (spr_dir == 1) ? sna_aim_dir : sna_aim_dir - 180;			// Set the visual aim direction, for sprites. Has rotation offset for spr_dir.
		
		var _crosshair_dist = _cur_firearm.crosshair_distance;
		
		// Aiming Target Collision Check
		/*var tx = x + sna_muzzle_x + lengthdir_x(_crosshair_dist, sna_aim_dir);
		var ty = y + sna_muzzle_y + lengthdir_y(_crosshair_dist, sna_aim_dir);
		sna_aim_target = collision_line(tx, ty, x + sna_muzzle_x, y + sna_muzzle_y, pHurtBox, true, true);		// Collision Line check for players.
		if (window == _win_lower) sna_aim_target = noone;						// Reset the aim target when not aiming.*/
		
		
		// Hurtbox Sprite
		if (is_crouching) hurtboxID.sprite_index = crouchbox_spr;				// Switch to crouch hurtbox sprite when crouching.
		
		if (_dodge_pressed || _dodge_down) can_shield = true;					// Allow dodge cancelling when pressing dodge, while not holding special.
		
		can_fast_fall = sna_lock_aiming;										// Disable fast falling when in aim mode.
		can_wall_jump = true;													// Allow wall jumping while aiming. (Doesn't work?)
		
		// Lock aiming
		sna_lock_aiming = !(_altaim_pressed || _altaim_down);						// Lock the aiming when NOT holding the alt aim button.
		
		// Allow Falling through platforms.
		if (sna_lock_aiming)													// If not in the aiming mode...
			fall_through = ((free && down_down) || (!free && down_hard_pressed));	// Allow falling through platforms.
		
		// Enable/disable aim movement
		if (window != _win_ready && sna_lock_aiming && !free) {						// If on the ground while the aim is locked...
			sna_lock_aimwalk = false;												// Allow movement.
			
		} else {																	// If not on the ground, or aim is locked
			sna_lock_aimwalk = true;
		}
		
		// Enable/disable strafing
		if (_has_grabbed_player) sna_legs_strafemode = true;					// Always be in strafe mode when a player is grabbed.
		else sna_legs_strafemode = sna_is_aiming;								// Enable strafe mode when aiming. Disable strafe mode when NOT aiming.
		
		// Non-Strafe Movement
		//if (!sna_is_aiming && !free) {											// If Snake is NOT aiming...	(I.E. Reloading while not pressing the special button, to allow for regular, non-aiming movement)
		if (!sna_legs_strafemode && !free) {										// If Snake is NOT in strafe mode...
			if (right_down || right_pressed) spr_dir = 1;						// Turn Snake to face the direction he's moving in.
			else if (left_down || left_pressed) spr_dir = -1;
		}
		
		
		// Reset angle on B reverse
		if (state_timer <= 4) {
			sna_aim_dir_target = (spr_dir == 1) ? 0 : 180;							// Reset the aim angles to 0 if facing right, or 180 if facing left.
			sna_aim_dir = (spr_dir == 1) ? 0 : 180;
		}
		
		
		// Deplete Grip, if a player is held
		if (_has_grabbed_player && !sna_grabbed_playerid.sna_psyche_depleted) {	// If a player is grabbed, and the grabbed player is NOT unconscious...
			sna_grab_time--;													// Advance the grab timer
			
			// Release the grabbed player, if the grip runs out.
			if (sna_grab_time <= 0) {											// If the grab timer reaches 0...
				attack_end();
				set_attack(AT_NTHROW);											// Go to grab state.
				set_attack_window(29);											// Go to release state.
			}
		}
		
		// Grabbed player settings
		if (_has_grabbed_player) {												// If a player is grabbed...
			// Set the grabbed cooldown.
			sna_grabbed_playerid.sna_grabbed_cooldown = sna_grab_delay;			// Set the grabbed cooldown for the grabbed player.
			// Prevent the grabbed player from being shot.
			sna_grabbed_playerid.invincible = true;								// Make the grabbed player invincible.
			sna_grabbed_playerid.invincible_time = 6;							// Make the grabbed player invincible.
		}
		
		
		
		switch (window) {
			
			case 1: // _win_ready
				
				if (!_has_grabbed_player) inv_can_open = true;					// Allow the player to unequip the weapon.
				
				if (_fire_pressed) sna_fire_buffered = true;					// Buffer the fire button if it's pressed during the ready animation.
			
			break;
			
			case 2: // _win_aim
				
				if (!_has_grabbed_player) inv_can_open = true;					// Allow the player to unequip the weapon.
				
				// Fire
				if (_fire_pressed || sna_fire_buffered || (_cur_firearm.full_auto && _fire_down && _cur_firearm.ammo_total > 0)) {	// On attack down (for semi) or held (for auto)...
					
					sna_fire_buffered = false;										// Clear the fire buffer.
					
					if (_cur_firearm.ammo_total > 0) {							// If you have ammo for this weapon...
						
						if (_cur_firearm.ammo_mag > 0) {							// If the magazine has ammo...
							
							set_attack_window(_win_fire);							// Fire the weapon.
						
						}
						else {														// If the magazine is out of ammo...
							
							if (!_cur_firearm.full_auto || (_cur_firearm.full_auto && _fire_pressed))	// Prevent accidental reloading if using an automatic weapon.
								set_attack_window(_win_reload_unload);				// Reload.
							
						}
						
					}
					else {														// If you do NOT have ammo for this weapon...
						if (_cur_firearm.sfx_fire_dry != noone)						// If a dry fire sound effect is specified...
							sound_play(sound_get(_cur_firearm.sfx_fire_dry));		// Play the dry fire sound effect.
						clear_button_buffer(PC_ATTACK_PRESSED);						// Clear the input buffer, so the sound only plays once.
						clear_button_buffer(PC_STRONG_PRESSED);
					}
					
					if (_cur_firearm.full_auto) {								// If the weapon is automatic...
						clear_button_buffer(PC_ATTACK_PRESSED);					// Clear the input buffer, to allow the player to fire single shots.
						clear_button_buffer(PC_STRONG_PRESSED);
					}
					
				}
				
				// Reload
				if (_reload_pressed && (special_down || special_pressed)) {				// On pressing the reload button...
					
					var _ammo_mag = _cur_firearm.ammo_mag;
					var _ammo_mag_max = _cur_firearm.ammo_mag_max;
					var _ammo_total = _cur_firearm.ammo_total;
					
					if (_ammo_mag < _ammo_mag_max && _ammo_total > _ammo_mag)			// If the magazine isn't full, and you have reserve ammo...
						set_attack_window(_win_reload_unload);							// Reload.
				
					
				}
				
				// Lower
				if (!special_down && !special_pressed) {						// If not holding special...
					set_attack_window(_win_lower);								// Lower the weapon.
				}
				
				// Chamber
				if (!_cur_firearm.is_chambered && _cur_firearm.ammo_mag > 0) {	// If the firearm is NOT chambered, AND you have ammo in the magazine...
					set_attack_window(_win_chamber);							// Go to chamber window.
				}
				
				
				// Quick Turn
				if (abs(angle_difference(sna_aim_dir, sna_aim_dir_target)) > 90) {						// If suddenly aiming at a great angle...
					if (_aiming_left && spr_dir == 1) {									// If aiming left...
						sna_aim_dir = 180;																// Turn left.
						spr_dir = -1;
						set_attack_window(_win_ready);													// Raise the weapon again.
					}
					else if (_aiming_right && spr_dir == -1) {							// If aiming right...
						sna_aim_dir = 0;																// Turn right.
						spr_dir = 1;
						set_attack_window(_win_ready);													// Raise the weapon again.
					}
				}
				
				
			break;
			
			case 3: // _win_fire
				
				can_shield = false;												// Can't dodge while firing. Kinda exploitable if you could.
				
				if (window_timer == 1) {
					
					var _hbox_idx = _cur_firearm.hitbox_idx;
					
					// Create Projectile
					if (_hbox_idx >= 0) {										// If the hitbox number isn't -1...
						
						var _vel = _cur_firearm.proj_speed;						// Get the weapon's specified projectile velocity.
						
						// Set Projectile Speed
						set_hitbox_value(AT_FSPECIAL, _hbox_idx, HG_PROJECTILE_HSPEED, abs(lengthdir_x(_vel, sna_aim_dir)));		// Set the x and y projectile speed, based on the angle Snake is aiming.
						set_hitbox_value(AT_FSPECIAL, _hbox_idx, HG_PROJECTILE_VSPEED, lengthdir_y(_vel, sna_aim_dir));
						
						var _projectile = create_hitbox(AT_FSPECIAL, _hbox_idx, x + sna_muzzle_x, y + sna_muzzle_y);		// Create the fspecial hitbox.
						
						_projectile.proj_angle = sna_aim_dir_visual;												// Rotate the hitbox sprite in the direction Snake is aiming.
						_projectile.x -= get_hitbox_value(AT_FSPECIAL, _hbox_idx, HG_PROJECTILE_HSPEED) * spr_dir;			// Set the hitbox position back by one step, so it doesn't spawn too far ahead.
						_projectile.y -= get_hitbox_value(AT_FSPECIAL, _hbox_idx, HG_PROJECTILE_VSPEED);
						
					}
					
					// Subtract Ammo
					ammo_add(inv_firearm, -1, -1);								// Subtract one bullet from the firearm. (Automatically clamped.)
					
					// Chambering
					if (!_cur_firearm.automatic_chambering || _cur_firearm.ammo_mag <= 0) {	// If the firearm does NOT have automatic chambering, OR you've fired the last bullet in the magazine...
						dict_equipment[inv_firearm].is_chambered = false;					// Clear the chamber.
					}
					else {																	// If the firearm has automatic chambering, and the last bullet in the mag has NOT been fired...
						dict_equipment[inv_firearm].is_chambered = true;					// Chamber the firearm. (Probably redundant, since the firearm should already be chambered.)
					}
					
					//------------------------------------------------------
					// Gunshot Alert System
					//------------------------------------------------------
					// Suppressed
					if (_cur_firearm.suppressor_attached) {									// If the firearm is suppressed...
						if (_cur_firearm.sfx_fire_suppressed != noone)						// If a sound effect is specified...
							sound_play(sound_get(_cur_firearm.sfx_fire_suppressed));		// Play the suppressed firing sound effect.
					}
					// Unsuppressed
					else {																	// If the firearm is NOT suppressed...
						if (_cur_firearm.sfx_fire != noone)									// If a sound effect is specified...
							sound_play(sound_get(_cur_firearm.sfx_fire));					// Play the unsuppressed firing sound effect.			TODO: Create sound entity here
						
						// Trigger Alert with Unsuppressed Weapons
						var _sfx_alert = sound_get("ui_alert");										// Get alert sound effect
						var _sfx_seen = sound_get("ui_see_snake");									// Get seen sound effect.
						with (oPlayer) {
							if ("sna_prime" in self) continue;												// Skip other Snake players.
							if (clone) continue;															// Skip Forsburn clones.
							if (get_player_team(self.player) == get_player_team(other.player)) continue;	// Skip teammates.
							if (sna_psyche_depleted) continue;												// Skip knocked out opponents.
							if (self == other.sna_grabbed_playerid) continue;								// Skip grabbed opponents.
							
							var _earshot_alert = 540;
							var _earshot_caution = 960;
							
							// Alert Earshot
							if (point_distance(x, y, other.x, other.y) < _earshot_alert ) { 		// If the opponent is within alert earshot...
								if (other.sna_stealth_state < 2) {									// If in the sneak or caution phase...
									// Display exclamation mark
									sna_emote_window = 4;											// Draw the exclamation mark.
									sna_emote_start_time = get_gameplay_time();
									// Play alert sound effect
									sound_play(_sfx_alert);											// Play the alert sound.
								}
								else if (other.sna_stealth_state == 2) {							// If in the evasion phase...
									// Display exclamation mark
									sna_emote_window = 4;											// Draw the exclamation mark.
									sna_emote_start_time = get_gameplay_time();
									// Play alert sound effect
									sound_play(_sfx_seen);											// Play the alert sound.
								}
								
								// Go into Alert
								other.sna_stealth_state = 3;										// Go into the alert phase.
								other.sna_stealth_state_awareness = 99.99;							// Reset the awareness.
								
								break;																// Stop looping through players.
							}
							
							// Caution Earshot
							else if (point_distance(x, y, other.x, other.y) < _earshot_caution && other.sna_stealth_state < 2 ) {	// If the opponent is within caution earshot...
								
								// Go into Caution
								other.sna_stealth_state = 1;										// Go into the alert phase.
								other.sna_stealth_state_awareness = 99.99;							// Reset the awareness.
								
							}
							
						}
						
					}
					
					// Suppressor Deterioration
					suppressor_deteriorate(dict_equipment[inv_firearm]);				// If a suppressor is attached, deteriorate it.
					
				}
				
				// End
				if (window_timer >= _cur_win_length) {							// If at the end of the window length...
					set_attack_window(_win_aim);								// Go to aim window.
				}
			
			break;
			
			case 4: // _win_chamber
				can_attack = !(special_down || special_pressed);				// Allow attack cancelling when not holding the special button.
				can_special = true;
				if (!_has_grabbed_player) inv_can_open = true;					// Allow the player to unequip the weapon while chambering.
				
				// Chamber weapon
				if (window_timer >= _cur_win_length) {							// If at the end of the window length...
					dict_equipment[inv_firearm].is_chambered = true;			// Chamber the firearm.
					set_attack_window(_win_aim);								// Go to aim window.
				}
			break;
			
			case 5: // _win_reload_unload
			case 6: // _win_reload_newmag
				can_attack = !(special_down || special_pressed);				// Allow attack cancelling when not holding the special button.
				can_special = true;
				if (window == 5) inv_can_open = false;							// Don't initially allow the player to unequip the weapon while reloading, to prevent accidentally unequipping the weapon.
				else if (!_has_grabbed_player) inv_can_open = true;				// Allow the player to unequip the weapon while reloading.
			break;
			
			case 7: // _win_reload_load
				can_attack = !(special_down || special_pressed);				// Allow attack cancelling when not holding the special button.
				can_special = true;
				//if (!_has_grabbed_player) inv_can_open = true;					// Allow the player to unequip the weapon while reloading.
				inv_can_open = false;											// Don't allow the player to unequip cancel after the ammo is already loaded. Too exploitable.
				
				if (window_timer == 1) ammo_reload(inv_firearm);				// Reload the magazine's ammo. (Automatically clamped.)
				
				if (window_timer >= _cur_win_length) {							// If at the end of the window length...
					
					if (_cur_firearm.reload_chambering_mode == 1)				// If the firearm is set to chamber after every time you reload...
						dict_equipment[inv_firearm].is_chambered = false;		// Un-chamber the firearm, so it always goes into the chamber window after you reload.
					
					else if (_cur_firearm.reload_chambering_mode == 2)			// If the firearm is set to NEVER chamber after reloading...
						dict_equipment[inv_firearm].is_chambered = true;		// Chamber the firearm, so it never goes into the chamber window after you reload.
					
					set_attack_window(_win_aim);								// Go to aim window.
					
				}
			break;
			
			case 8: // _win_lower
				
				sna_fire_buffered = false;										// Clear the fire buffer. (Just in case.)
				
				// Allow cancelling into other attacks.
				if (!_has_grabbed_player) {										// If we're not grabbing a player...
					can_attack = true;											// Allow attack cancelling
					can_special = true;
					can_shield = true;											// Allow shield cancelling
					inv_can_open = true;										// Allow the player to unequip the weapon.
				}
				
				// Transition to Cover
				if (window_timer >= _cur_win_length) {							// If at the end of the window timer...
					
					// Return to grab
					if (_has_grabbed_player) {									// If we have a grabbed player...
						clear_button_buffer(PC_STRONG_PRESSED);					// Clear the strong button buffer, to prevent accidental chokes.
						attack_end();
						set_attack(AT_NTHROW);									// Go to grab state.
						set_attack_window(4);										// Go to idle state.
					}
					
					// Return to cover
					else if (sna_is_in_cover) {									// If cover is detected...
						attack_end();
						set_attack(AT_EXTRA_3);									// Go to cover state.
						set_attack_window(2);									// Go straight to idle window.
					}
					
				}
				
			break;
			
			
		}
		
	break;
	
	
	//--------------------------------------------------------------------------
	// Neutral Special (Throwables)
	//--------------------------------------------------------------------------
	case AT_NSPECIAL:
		
		var _cur_throwable = dict_equipment[inv_throwable];
		var _cur_win_length = get_window_value(AT_NSPECIAL, window, AG_WINDOW_LENGTH );
		
		var _throw_pressed = (attack_pressed || strong_pressed);
		var l_r_input_dir = (right_down - left_down);
		
		var _hand_x = 0;
		var _hand_y = 0;
		
		
		if (sna_lock_aimwalk) sna_lock_aimwalk = false;							// Allow legs movement.
		if (!sna_legs_strafemode) sna_legs_strafemode = true;					// Enable strafe mode.
		
		fall_through = ((free && down_down) || (!free && down_hard_pressed));	// Allow falling through platforms.
		
		switch (window) {
			
			case 1: // Ready
				
				if (window_timer == 1 && !hitpause) { 
					
					// Subtract Ammo
					ammo_add(inv_throwable, 0, -1);								// Remove one grenade.
					
					// Spawn the Entity
					sna_held_entity = instance_create( x + 14 * spr_dir, y - 38, "obj_article1" );	// Spawn the throwable entity.
					
					with (sna_held_entity) {
						ent_idx = _cur_throwable.ent_idx;						// Set the thrown entity's ID.
						is_held = true;											// Set the entity to be held.
					}
					
				}
				
				if (sna_held_entity != noone) move_entity_to_hands(sna_held_entity);	//Move the entity to the hands.
				
				if (window_timer >= 12)								// If at the end of the window length...
					nspecial_set_aim_window();										// Set the aim window, based on the direction held.
				
			break;
			
			case 2: // Aim - Neutral
			case 4: // Aim - Forward
			case 6: // Aim - Up
			case 8: // Aim - Back
			case 10: // Aim - Down
				
				can_shield = true;												// Allow shield cancelling.
				
				
				nspecial_set_aim_window();										// Set the aim window, based on the direction held.
				
				
				move_entity_to_hands(sna_held_entity);							// Move the entity to the hands.
				
				// Go to throw
				if (_throw_pressed) {											// If attack is pressed...
					
					switch (window) {
						case 4:	// If holding forward...
							set_attack_window(5);									// Go to forward toss window.
						break;
						case 8:	// If holding backward...
							set_attack_window(9);									// Go to backward toss window.
						break;
						case 6:	// If holding up...
							set_attack_window(7);									// Go to up toss window.
						break;
						case 10:	// If holding down...
							set_attack_window(11);									// Go to down toss window.
						break;
						default:	// If NOT holding a direction...
							set_attack_window(3);									// Go to neutral toss window.
						break;
					}
					
				}
				
				if (!special_down && !special_pressed) {						// If special is released...
					
					// Add Ammo
					ammo_add(inv_throwable, 0, 1);								// Add the previously subtracted throwable ammo. (Putting away the throwable.)
					
					set_attack_window(12);										// go to exit window.
				}
				
			break;
			
			case 3: // Toss - Neutral
			case 5: // Toss - Forward
			case 7: // Toss - Up
			case 9: // Toss - Back
			case 11: // Toss - Down
				
				// Hold Entity
				if (window_timer < 8)											// If the throw frame isn't reached...
					move_entity_to_hands(sna_held_entity);						// Move the entity to the hands.
				
				// Throw entity
				else if (window_timer == 8) {									// On the throw frame...
					
					// Throw the entity
					throw_entity(sna_held_entity);								// Throw and release the held entity.
					
					// Create and Parent the Bounce Hitbox
					sna_held_entity.child_hitbox = create_hitbox(AT_NSPECIAL, 1, sna_held_entity.x, sna_held_entity.y - 8);	// Create the player bounce hitbox for the entity.
					sna_held_entity.depth = 1;									// Reset the entity's depth.
					
					// Unlink the held entity.
					sna_held_entity = noone;									// Unlink the entity.
					
				}
				
				if (window_timer >= _cur_win_length) {							// If at the end of the window length...
					
					// Return to Ready
					if (special_down && _cur_throwable.ammo_total > 0) set_attack_window(1);	// If holding special, and you still have throwable ammo, go back to ready window.
					// Go to Exit
					else set_attack_window(12);									// If NOT holding special, or you're out of ammo, go to exit window.
					
				}
				
			break;
			
			case 12: // Exit
				
				if (sna_held_entity != noone) {									// If Snake is still holding an article...
					instance_destroy( sna_held_entity );						// Destroy the article.
					sna_held_entity = noone;									// Unlink the entity.
				}
				
				can_attack = true;												// Allow attack cancelling
				can_special = true;
				can_shield = true;												// Allow shield cancelling
				/*if (special_down || special_pressed) {							// If special is pressed...
					set_attack_window(1);										// Go back to the ready window.
				}*/
				
			break;
			
		}
		
	break;
	
	
	//--------------------------------------------------------------------------
	// Down Special (Plantables)
	//--------------------------------------------------------------------------
	case AT_DSPECIAL:
		
		var _cur_plantable_idx = dict_equipment[inv_plantable].ent_idx;
		var _cur_win_length = get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH );
		
		var _plant_pressed = (attack_pressed || strong_pressed);
		var _detonate_pressed = (taunt_pressed || shield_pressed);
		
		// Get Stick Target TODO: OPTIMIZE THIS!
		var _near_stick_target = noone;
		if (dict_entities[_cur_plantable_idx].plnt_sticky){					// If the held plantable is sticky...
			
			_near_stick_target = collision_rectangle(x, y, x + 50 * spr_dir, y - 80, oPlayer, false, true);		// Collision check for player stick targets.
			
			if (instance_exists(_near_stick_target) && !_near_stick_target.sna_is_stuck) // If a valid player target is detected...
				sna_aim_target = _near_stick_target.hurtboxID;					// Update the reticle target.
			else																// If NO valid player target is detected...
				sna_aim_target = noone;											// Reset the reticle target.
		}
		
		if (sna_lock_aimwalk) sna_lock_aimwalk = false;							// Allow legs movement.
		
		// Strafe Movement
		if (!sna_legs_strafemode) sna_legs_strafemode = true;					// Enable strafe mode.
			
		
		// Set Hurtbox Sprite
		if (free) hurtboxID.sprite_index = get_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE);
		else hurtboxID.sprite_index = get_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE);
		
		switch (window) {
			
			case 1: // Ready
				fall_through = ((free && down_down) || (!free && down_hard_pressed));	// Allow falling through platforms. (Not on window 1, to prevent accidental falling through.)
				
				if ((attack_pressed || strong_pressed)) {											// If attack is pressed...
					set_attack_window(3);										// Go to plant window.
				}
				
				else if (_detonate_pressed) {									// If the detonate button is pressed...
					set_attack_window(5);										// Go to detonate antic window. (With "Now!" antic.)
					clear_button_buffer(PC_SHIELD_PRESSED);						// Clear shield input buffer.
					clear_button_buffer(PC_TAUNT_PRESSED);						// Clear taunt input buffer.
				}
				
				if (!special_down && !special_pressed)							// If not holding special...
					set_attack_window(8);										// Go to exit window.
				
			break;
			case 2: // Idle
				
				if ((attack_pressed || strong_pressed) && dict_equipment[inv_plantable].ammo_total > 0) {			// If attack is pressed, and you have ammo for this plantable...
					
					// Go to the appropriate plant window.
					if (instance_exists(_near_stick_target) &&
					!is_crouching)												// If the current plantable is sticky, and Snake is near a stick target...
						set_attack_window(4);									// Go to wall plant window.
					else
						set_attack_window(3);									// If there is no sticky target, go to the floor plant window.
				}
				
				else if (_detonate_pressed) {									// If the detonate button is pressed...
					set_attack_window(6);										// Go to detonate antic window.  (No antic.)
					clear_button_buffer(PC_SHIELD_PRESSED);						// Clear shield input buffer.
					clear_button_buffer(PC_TAUNT_PRESSED);						// Clear taunt input buffer.
				}
				
				if (!special_down && !special_pressed)							// If not holding special...
					set_attack_window(8);										// Go to exit window.
				
			break;
			
			case 3: // Plant - Floor
			case 4: // Plant - Wall
				
				// Set the plantable spawn coordinates based on the animation playing.
				var _spawn_x = x + 40 * spr_dir;
				var _spawn_y =  y;
				if (window == 4) _spawn_y = y - 36;
				
				if (instance_exists(_near_stick_target)) {			// If the current plantable is sticky, and Snake is near a stick target...
					_spawn_x = round(_near_stick_target.x);							// Set the spawn coordinates to the opponent's coordinates.
					_spawn_y = round(_near_stick_target.y - _near_stick_target.char_height * 0.5);
				}
				
				//sna_legs_strafemode = true;										// Disable turning
				
				if (window_timer == 5 && !hitpause) { 
					
					// Subtract Ammo
					ammo_add(inv_plantable, 0, -1);								// Remove one plantable.
					
					// Spawn the Entity
					var _planted_entity = instance_create( _spawn_x, _spawn_y, "obj_article1" );	// Spawn the plantable entity.
					variable_instance_set(_planted_entity, "ent_idx", _cur_plantable_idx);			// Set the planted entity's ID
					variable_instance_set(_planted_entity, "spr_dir", spr_dir);						// Set the planted entity's direction
					variable_instance_set(_planted_entity, "depth", 1);								// Set the planted entity's depth
					variable_instance_set(_planted_entity, "free", free);							// If the player is grounded, the entity is grounded.
					variable_instance_set(_planted_entity, "plnt_play_plant_sfx", true);			// tell this entity to play planting sound effects, when grounded.
					
				}
				
				if (window_timer >= _cur_win_length)							// If at the end of the window length...
					set_attack_window(2);										// Go back to idle window.
				
			break;
			
			case 5: // Detonate Antic
				if (window_timer == 1 && !hitpause)
					vox_play(sound_get("vox_sna_detonate"), true); // "Now!"
			break;
				
			//break;
			case 6: // Detonate
				
				//sna_legs_strafemode = true;										// Disable turning
				
				// Detonate Entities
				if (window_timer == 3 && !hitpause) {							// If on the detonate frame...
					
					var _newest_detonatable = -1;
					
					// Get newest detonatable entity. (The highest number is the newest. Find the highest number.)
					with (obj_article1){														// Get all entities.
						if (other == player_id) {												// If the entity is owned by the player...
							if (!plnt_detonatable) continue;									// Ignore entities that can't be detonated.
							if (ent_num > _newest_detonatable || _newest_detonatable == -1)		// If the entity is newer than the oldest detected entity, or no entities have been detected yet...
								_newest_detonatable = ent_num;									// Set the newest detonatable entity to the current entity.
						}
					}
					
					// Detonate the newest entity.
					with (obj_article1){														// Get all entities.
						if (other == player_id) {												// If the entity is owned by the player...
							if (ent_num == _newest_detonatable)									// If this is the oldest entity...
								plnt_is_detonated = true;										// Detonate the entity.
						}
					}
					
				}
				
			break;
			case 7: // Detonate Endlag
				
				sna_legs_strafemode = true;										// Disable turning
				
				if (_detonate_pressed) {										// If the detonate button is pressed in rapid succession...
					set_attack_window(6);										// Go back to detonate window.
					clear_button_buffer(PC_SHIELD_PRESSED);						// Clear shield input buffer.
					clear_button_buffer(PC_TAUNT_PRESSED);						// Clear taunt input buffer.
				}
				
				if (window_timer >= _cur_win_length)							// If at the end of the window length...
					set_attack_window(2);										// Go back to idle window.
				
			break;
			
			case 8: // Exit
				
			break;
			
		}
	break;
	
	
	//--------------------------------------------------------------------------
	// CQC Grab
	//--------------------------------------------------------------------------
	case AT_NTHROW:
		
		var _cur_win_length = get_window_value(AT_NTHROW, window, AG_WINDOW_LENGTH );
		var _wish_dir = (right_down - left_down);
		
		// Set the grabbed cooldown.
		if (instance_exists(sna_grabbed_playerid))
			sna_grabbed_playerid.sna_grabbed_cooldown = sna_grab_delay;			// Set the grabbed cooldown for the grabbed player.
		
		if (sna_interrogate_vox_cooldown > 0) sna_interrogate_vox_cooldown--;	// Advance the interrogation voice cooldown timer.
		
		switch(window){
			case 2: // Grab
				if (window_timer >= _cur_win_length)							// If at the end of the grab window...
					set_attack_window(30);										// Exit the grab attack.
			break;
			
			case 3:
				// Set the grab timers.
				if (window_timer == 1) {
					// Adjust the grab time based on the alert state.
					var _grab_stealth_state_mult = 1;
					switch (sna_stealth_state) {
						case 0: // SNEAK
							_grab_stealth_state_mult = 1.5;	// Longer grabs on SNEAK
						break;
						case 1: // CAUTION
							// Don't do anything; Use default multiplier.
						break;
						case 2: // EVASION
						case 3: // ALERT
							_grab_stealth_state_mult = 0.5;	// Shorter grabs on ALERT
						break;
					}
					// Set the grab time.
					sna_grab_time = max(60, (get_player_damage(sna_grabbed_playerid.player) * 1.4) * _grab_stealth_state_mult);	// Set the grab timer.
					sna_grab_time_max = sna_grab_time;							// Set the grab timer's high number.
					sna_interrogate_vox_cooldown = 0;							// Reset the voice cooldown timer.
				}
				
			break;
			
			case 4: // Hold - Idle
				
				// Deplete Grip
				cqc_deplete_grip();
				
				// Advance window timer if NOT holding strong...
				if (strong_down) window_timer = 1;								// If holding strong, don't advance the window timer.
				
				// Movement
				// Forward
				if (_wish_dir == spr_dir) {										// If holding forward...
					if (strong_pressed) {										// If strong is pressed...
						clear_button_buffer(PC_STRONG_PRESSED);					// Clear the input buffer
						//if (!hitpause) spr_dir = _wish_dir;					// Flip the player
						set_attack_window(15);									// Go to fthrow window.
					}
					else {														// If strong is NOT pressed...
						if (!hitpause) spr_dir *= -1;							// Flip the player
						set_attack_window(7);									// Go to turn window.
					}
				}
				// Backward
				else if (_wish_dir == -spr_dir) {								// If holding backward...
					if (strong_pressed) {										// If strong is pressed...
						if (!hitpause) spr_dir *= -1;							// Flip the player
						set_attack_window(19);									// Go to bthrow window.
					}
					else {														// If strong is NOT pressed...
						set_attack_window(5);									// Go to drag window.
					}
				}
				// No Movement
				else {															// If NOT holding forward or backward...
					// Up
					if (up_down && strong_pressed) {
						set_attack_window(22);									// Go to the uthrow window.
					}
					// Down
					else if (down_down && strong_pressed) {
						//if (!hitpause) spr_dir *= -1;							// Flip the player
						set_attack_window(26);									// Go to dthrow window.
					}
					// No Direction Pressed
					else {
						if (strong_pressed && !sna_grabbed_playerid.sna_psyche_depleted) {	// If pressing strong again, and the PSYCHE gauge is NOT depleted...
							clear_button_buffer(PC_STRONG_PRESSED);					// Clear the input buffer
							set_attack_window(11);									// Go to chokehold window.
						}
					}
				}
				
				// Interrogate
				if (taunt_down && !sna_grabbed_playerid.sna_psyche_depleted) {	// If holding taunt, and the PSYCHE gauge is NOT depleted...
					set_attack_window(8);										// Go to interrogate window.
				}
				
				// Aim Weapon
				if (special_pressed && dict_equipment[inv_firearm].hold_type == 1) {	// If pressing special, and a pistol is equipped...
					set_attack(AT_FSPECIAL);									// Go into firearm attack
				}
				
				// Release
				if (window_timer >= _cur_win_length) {							// If at the end of the idle window... (from not holding strong)
					set_attack_window(29);										// Go to release window.
				}
				
			break;
			
			case 5: // Drag - Start
				
				// Deplete Grip
				cqc_deplete_grip();
				
				// Drag End
				if (_wish_dir != -spr_dir) {									// If NOT holding backwards...
					set_attack_window(4);										// Go to idle window.
				}
				
				// To Slam
				if (strong_pressed) {											// If strong is pressed...
					if (!hitpause) spr_dir *= -1;								// Flip the player forward.
					set_attack_window(19);										// Go to bthrow window.
				}
				
			break;
			case 6: // Drag - Move
				
				// Deplete Grip
				cqc_deplete_grip();
				
				// Drag End
				if (window_timer >= _cur_win_length || _wish_dir != -spr_dir) {	// If at the end of the drag window, or NOT holding backwards...
					if (strong_down || strong_pressed)							// If strong is held or buffered...
						set_attack_window(4);									// Go to idle window.
					else														// If strong is NOT held...
						set_attack_window(29);									// Go to release window.
				}
				
				// To Slam
				if (strong_pressed) {											// If strong is pressed...
					if (!hitpause) spr_dir *= -1;								// Flip the player forward.
					set_attack_window(19);										// Go to bthrow window.
				}
				
			break;
			
			case 7: // Turn
				
				// Deplete Grip
				cqc_deplete_grip();
				
				// To Slam
				if (strong_pressed) {											// If strong is pressed...
					if (!hitpause) spr_dir *= -1;								// Flip the player forward.
					set_attack_window(15);										// Go to fthrow window.
				}
				
				// Turn end
				if (window_timer >= _cur_win_length) {							// If at the end of the turn window...
					if (strong_down || strong_pressed)							// If strong is held or buffered...
						set_attack_window(4);									// Go to idle window.
					else														// If strong is NOT held...
						set_attack_window(29);									// Go to release window.
				}
				
			break;
			
			case 8: // Interrogate - Start
				
				// Deplete Grip
				cqc_deplete_grip();
				
				// Interrogation Start Logic
				if (window_timer == 1) {
					
					sna_ingerrogate_timer = 0; // Reset the interrogation timer.
					
					// Advance the interrogation line index.
					with (sna_grabbed_playerid) {
						if (sna_interrogated_line_spoken) { // If the interrogation line has been spoken...
							
							switch(sna_interrogated_line_idx) {
								case 1:
									if (sna_interrogated_line_02 != noone)		// If the character has a second interrogation line...
										sna_interrogated_line_idx = 2;			// Set the interrogation index to 2.
								break;
								case 2:
									if (sna_interrogated_line_03 != noone)		// If the character has a third interrogation line...
										sna_interrogated_line_idx = 3;			// Set the interrogation index to 3.
									else sna_interrogated_line_idx = 1;			// If a third line isn't specified, loop back to 1.
								break;
								case 3:
									sna_interrogated_line_idx = 1;				// Reset the interrogation index back to 1.
								break;
							}
							
							sna_interrogated_line_spoken = false;				// Set the new line to have not been spoken yet.
							
						}
					}
					
				}
				
				// Play Voice Clip
				if (window_timer == 8 && sna_interrogate_vox_cooldown <= 0 && !hitpause) {	// If NOT in a voice cooldown...
					
					// Set the cooldown
					sna_interrogate_vox_cooldown = 60;							// Set the voice cooldown.
					
					// Play a random voice clip.
					sna_interrogate_vox_idx = random_func(0, 3, true);			// Randomize the voice clip index.
			        switch (sna_interrogate_vox_idx){
			            case 0: // "Talk."
			            	vox_play(sound_get("vox_snake_interrogate_01"), true);
			            break;
			            case 1: // "Speak."
			            	vox_play(sound_get("vox_snake_interrogate_02"), true);
			            break;
			            case 2: // "Answer me!"
			            	vox_play(sound_get("vox_snake_interrogate_03"), true);
			            break;
			        }
					
				}
				
			break;
			
			case 9: // Interrogate - Idle
				
				// Deplete Grip
				cqc_deplete_grip();
				
				// Opponent Interrogation Logic
				if (sna_ingerrogate_timer == 55) {
					
					// Interrogation Sound
					sound_play(sound_get("vox_enemy_interrogate"));				// Play the interrogation sound.
					
					// Set the opponent's interrogation index.
					sna_grabbed_playerid.sna_interrogated_line_spoken = true;
					
				}
				
				// Interrogation Timer
				sna_ingerrogate_timer++;										// Advance the interrogation timer.
				
				// Interrogation End Window
				if (!taunt_down || sna_grabbed_playerid.sna_psyche_depleted)	// If NOT holding taunt, or the PSYCHE gauge is depleted...
					set_attack_window(10);										// Go to interrogation end window.
			
			break;
			
			case 10: // Interrogate - End
				
				// Deplete Grip
				cqc_deplete_grip();
				
				// Return to Idle
				if (window_timer >= _cur_win_length)							// If at the end of the window timer...
					set_attack_window(4);										// Go to idle window.
				
			break;
			
			case 11: // Chokehold - Start
				
				// Deplete Grip
				cqc_deplete_grip();
				
				// Display Grabbed Player's Status
				sna_grabbed_playerid.sna_ui_status_state = 1;
				sna_grabbed_playerid.sna_ui_status_timer = 0;
				
				// Damage Player
				if (window_timer == 1 && !hitpause) {
					// Inflict Regular Damage
					take_damage( sna_grabbed_playerid.player, player, 2 );		// Damage the player.
					
					// Inflict PSYCHE Damage
					with (sna_grabbed_playerid) {
						// Set the knockout type
						sna_psyche_ko_type = 0;												// Sets the opponent's knockout type to stun.
						// Deplete the PSYCHE gauge
						if (!sna_psyche_depleted)											// If the PSYCHE gauge is NOT depleted...
							sna_psyche = clamp(sna_psyche - 10 * knockback_adj, 0, 100);	// Apply PSYCHE damage. Scales based on player weight.
					}
				}
			break;
			
			case 12: // Chokehold - Idle
				
				// Deplete Grip
				cqc_deplete_grip();
				
				// Display Grabbed Player's Status
				sna_grabbed_playerid.sna_ui_status_state = 1;
				sna_grabbed_playerid.sna_ui_status_timer = 0;
				
				if (strong_pressed && !sna_grabbed_playerid.sna_psyche_depleted) {	// If strong is pressed, and the PSYCHE gauge is NOT depleted...
					set_attack_window(13);										// Go to pummel window.
				}
				
				if (window_timer >= _cur_win_length)							// If at the end of the window timer...
					set_attack_window(14);										// Go to choke end window.
				
			break;
			
			case 13: // Chokehold - Pummel
				
				// Deplete Grip
				cqc_deplete_grip();
				
				// Display Grabbed Player's Status
				sna_grabbed_playerid.sna_ui_status_state = 1;
				sna_grabbed_playerid.sna_ui_status_timer = 0;
				
				// Damage Player
				if (window_timer == 1 && !hitpause) {
					// Inflict Regular Damage
					take_damage( sna_grabbed_playerid.player, player, 2 );		// Damage the player.
					
					// Inflict PSYCHE Damage
					with (sna_grabbed_playerid) {
						// Set the knockout type
						sna_psyche_ko_type = 0;												// Sets the opponent's knockout type to stun.
						// Deplete the PSYCHE gauge
						if (!sna_psyche_depleted)											// If the PSYCHE gauge is NOT depleted...
							sna_psyche = clamp(sna_psyche - 10 * knockback_adj, 0, 100);	// Apply PSYCHE damage. Scales based on player weight.
					}
					
				}
				
				// Window End
				if (window_timer >= _cur_win_length) {							// If at the end of the window timer...
					window = 12;												// Go to choke idle window.
					window_timer = 20;
				}
			break;
			
			case 14: // Chokehold - End
				
				// Deplete Grip
				cqc_deplete_grip();
				
				// Return to Idle
				if (window_timer >= _cur_win_length)							// If at the end of the window timer...
					set_attack_window(4);										// Go to idle window.
				
			break;
			
			case 15: // FThrow - Turn
			case 22: // UThrow - Turn
				// Play voice clips
				if (window_timer == 6 && !hitpause) {
					var rand = random_func(0, 2, true);
					
					switch (rand){
			            case 0:
			            vox_play(vox_attack_light_01, true);
			            break;
			            case 1:
			            vox_play(vox_attack_light_02, true);
			            break;
			        }
				}
			break;
			/*
			case 16: // FThrow - Antic
			case 19: // BThrow - Antic
			case 23: // UThrow - Antic
			case 26: // DThrow - Antic
			
			break;
			
			case 17: // FThrow - Move
			case 20: // BThrow - Move
			case 24: // UThrow - Move
			case 27: // DThrow - Move
				
			break;*/
			
			case 18: // FThrow - End
			case 21: // BThrow - End
			case 25: // UThrow - End
			case 28: // DThrow - End
				if (window_timer >= _cur_win_length)							// If at the end of the window timer...
					set_attack_window(30);										// Exit the attack.
			break;
			
			case 29: // Release
				
				
				// Release the grabbed player
				if (instance_exists(sna_grabbed_playerid) && window_timer == 1) {	// If we have a grabbed player...
					sna_grabbed_playerid.orig_knock = 6;
					sna_grabbed_playerid.old_hsp = 2 * spr_dir;
					sna_grabbed_playerid.old_vsp = -1;
					sna_grabbed_playerid = noone;								// Release the grabbed player.
				}
				
				
			break;
			
		}
		
	break;
	
	
	//--------------------------------------------------------------------------
	// Cypher
	//--------------------------------------------------------------------------
	case AT_USPECIAL:
		
		switch(window){
			case 1: // Startup
				if (window_timer == 1) sna_has_uspecial = false;				// Snake can't perform another uspecial, until grounded or hurt.
			break;
			case 2: // Ascension
				
				soft_armor = 8;													// Give Snake soft armor when recovering.
				
				if (window_timer == 1) {
					sound_stop(sound_get("sfx_cypher"));						// Stop the cypher sound, if it's already playing.
					sound_play(sound_get("sfx_cypher"));						// Play the cypher sound.
				}
				
				// Allow cancelling
				can_wall_jump = true;
				
				var _cancel_move = false;
				var _stick_pressed = (right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed);
				if (attack_pressed || (special_pressed && !up_down) || (shield_pressed && has_airdodge) || down_hard_pressed || _stick_pressed)
					_cancel_move = true;
				
				if (_cancel_move) {												// If cancelling...
					sound_stop(sound_get("sfx_cypher"));						// Stop the cypher sound.
					sound_play(sound_get("sfx_cypher_end"));					// Play the cypher end sound.
					set_attack_window(3);										// Go into exit window.
					clear_button_buffer(PC_DOWN_HARD_PRESSED);					// Clear the down input buffer, to prevent accidental fast falling.
				}
			break;
			case 3: // Exit
				can_attack = true;
				can_special = true;
				can_wall_jump = true;
				can_shield = true;
			break;
		}
		
	break;
	
	
	//--------------------------------------------------------------------------
	// Jab
	//--------------------------------------------------------------------------
	case AT_JAB:
		switch (window) {
			case 3:
			case 6:
				// Disable Strongs and Specials
				if((strong_pressed or special_pressed)){
				window_timer = 0;
				window++;
				}
				if(up_down and (strong_pressed or special_pressed) or up_stick_down){
					attack_end();
					set_attack(AT_UTILT);
				} else if (down_down and (strong_pressed or special_pressed) or down_stick_down){
					attack_end();
					set_attack(AT_DTILT);
				} else if (right_down and (strong_pressed or special_pressed) or right_stick_down){
					attack_end();
					spr_dir = 1;
				} else if (left_down and (strong_pressed or special_pressed) or left_stick_down){
					attack_end();
					spr_dir = -1;
				}
			break;
			case 10:
				iasa_script();													// Attack is cancellable after the hop animation.
			break;
		}
	break;
	
	
	//--------------------------------------------------------------------------
	// Forward Tilt
	//--------------------------------------------------------------------------
	case AT_FTILT:
		// Allow cancelling ftilt into up or down tilt.
		if(!free and has_hit and window == 4){
			if (up_down and (attack_pressed or strong_down) or up_stick_down) {
				attack_end();
				set_attack(AT_UTILT);
			}
			else if (down_down and (attack_pressed or strong_down) or down_stick_down) {
				attack_end();
				set_attack(AT_DTILT);
			}
		}
		
		// Play voice clips
		if (window == 1 && window_timer == 3 && !hitpause) {
			var rand = random_func(0, 3, true);
			
			switch (rand){
	            case 0:
	            vox_play(vox_attack_light_01, true);
	            break;
	            case 1:
	            vox_play(vox_attack_light_02, true);
	            break;
	        }
	        
		}
		else if (window == 5 && window_timer == 2 && !hitpause) {
			var rand = random_func(0, 4, true);
        
	        switch (rand){
	            case 0:
	            vox_play(vox_attack_heavy_01, true);
	            break;
	            case 1:
	            vox_play(vox_attack_heavy_02, true);
	            break;
	            case 2:
	            vox_play(vox_attack_heavy_03, true);
	            break;
	        }
	        
		}
		
	break;
	
	
	//--------------------------------------------------------------------------
	// Down Tilt
	//--------------------------------------------------------------------------
	case AT_DTILT:
		// Play voice clips
		if (window == 1 && window_timer == 1 && !hitpause) {
			var rand = random_func(0, 3, true);
			
			switch (rand){
	            case 0:
	            vox_play(vox_attack_light_01, true);
	            break;
	            case 1:
	            vox_play(vox_attack_light_02, true);
	            break;
	        }
	        
		}
		// Crouch Transition
		else if ( window == 3 && window_timer >= 19) {								// If at the end of the down tilt attack...
			attack_end();															// Refresh hitboxes.
			set_attack(AT_EXTRA_1);													// Go to the crouch "attack".
			window = 2;
			window_timer = 0;
			hurtboxID.sprite_index = crouchbox_spr;									// Switch to crouch hurtbox sprite
		}
	break;
	
	
	//--------------------------------------------------------------------------
	// Dash Attack
	//--------------------------------------------------------------------------
	case AT_DATTACK:
		// Go into transition to crouch if down is pressed.
		if (
			window == 3 &&
			window_timer >= get_window_value( AT_DATTACK, 3, AG_WINDOW_LENGTH ) &&
			!down_down
		) {																			// If down is held during the final frame of the roll window...
			window = 5;																// Go into crawl transition window.
			window_timer = 0;
		}
		
		else if (window == 4 &&
			window_timer >= get_window_value( AT_DATTACK, 5, AG_WINDOW_LENGTH )
		) {																			// If at the end of the dash attack animation, and the transition to crouch is enabled...
			attack_end();															// Refresh hitboxes.
			set_attack(AT_EXTRA_1);													// Go to the crouch "attack".
			window = 2;
			window_timer = 0;
			hurtboxID.sprite_index = crouchbox_spr;									// Switch to crouch hurtbox sprite
		}
	
	break;
	
	//--------------------------------------------------------------------------
	// Taunt
	//--------------------------------------------------------------------------
	case AT_TAUNT:
	//case AT_TAUNT_2:
		
		//hurtboxID.sprite_index = hurtbox_spr;									// Switch to default hurtbox sprite
		
		//if (!taunt_down && !taunt_pressed) {									// TODO: Change to check if the weapon menu is open, instead.
		if (!(inv_menu_open || supply_menu_open) || ui_state_current < 2) {							// If an inventory category is NOT open...
			
			if (is_crouching) {													// If crouched...
				set_attack(AT_EXTRA_1);											// Go into the crouch state.
				window = 1;
				window_timer = 6;
				// No iasa_script() here, or it will reset the crouch animation.
			}
			else {																// If NOT crouched...
				iasa_script();													// Let the player cancel out of the animation.
			}
			
			if (window == 2) {
				window = 3;														// Cancel window 2 loop when taunt is released.
				window_timer = 0;
			}
			
		}
		
	break;
	
	//--------------------------------------------------------------------------
	// Forward Strong
	//--------------------------------------------------------------------------
	case AT_FSTRONG: // Rifle FSTRONG
		// Play voice clip
		if (window == 1 && window_timer == 1 && !hitpause) {
			var rand = random_func(0, 3, true);
			
			switch (rand){
	            case 0:
	            vox_play(vox_attack_heavy_01, true);
	            break;
	            case 1:
	            vox_play(vox_attack_heavy_02, true);
	            break;
	            case 2:
	            vox_play(vox_attack_heavy_03, true);
	            break;
	        }
	        
		}
	break;
	
	//--------------------------------------------------------------------------
	// Up Strong
	//--------------------------------------------------------------------------
	case AT_USTRONG: // Rifle USTRONG
		if (window == 1 && window_timer == 1 && !hitpause) {
			var rand = random_func(0, 3, true);
			
			switch (rand){
	            case 0:
	            vox_play(vox_attack_heavy_01, true);
	            break;
	            case 1:
	            vox_play(vox_attack_heavy_02, true);
	            break;
	            case 2:
	            vox_play(vox_attack_heavy_03, true);
	            break;
	        }
	        
		}
	break;
	
	//--------------------------------------------------------------------------
	// Down Strong
	//--------------------------------------------------------------------------
	case AT_DSTRONG: // Rifle USTRONG
		if (window == 2 && window_timer == 1 && !hitpause) {
			var rand = random_func(0, 3, true);
			
			switch (rand){
	            case 0:
	            vox_play(vox_attack_light_01, true);
	            break;
	            case 1:
	            vox_play(vox_attack_light_02, true);
	            break;
	        }
	        
		}
	break;
	
	//--------------------------------------------------------------------------
	// Neutral Air
	//--------------------------------------------------------------------------
	case AT_NAIR:
		if (window == 1 && window_timer == 3 && !hitpause) {
			var rand = random_func(0, 3, true);
			
			switch (rand){
	            case 0:
	            vox_play(vox_attack_light_01, true);
	            break;
	            case 1:
	            vox_play(vox_attack_light_02, true);
	            break;
	        }
	        
		}
		else if (window == 7 && window_timer == 1 && !hitpause) {
			var rand = random_func(0, 4, true);
        
	        switch (rand){
	            case 0:
	            vox_play(vox_attack_heavy_01, true);
	            break;
	            case 1:
	            vox_play(vox_attack_heavy_02, true);
	            break;
	            case 2:
	            vox_play(vox_attack_heavy_03, true);
	            break;
	        }
	        
		}
	break;
	
	//--------------------------------------------------------------------------
	// Forward Air
	//--------------------------------------------------------------------------
	case AT_FAIR:
		if (window == 2 && window_timer == 1 && !hitpause) {
			var rand = random_func(0, 4, true);
        
	        switch (rand){
	            case 0:
	            vox_play(vox_attack_heavy_01, true);
	            break;
	            case 1:
	            vox_play(vox_attack_heavy_02, true);
	            break;
	            case 2:
	            vox_play(vox_attack_heavy_03, true);
	            break;
	        }
	        
		}
	break;
	
	//--------------------------------------------------------------------------
	// Up Air
	//--------------------------------------------------------------------------
	case AT_UAIR:
		if (window == 1 && window_timer == 6 && !hitpause) {
			var rand = random_func(0, 3, true);
			
			switch (rand){
	            case 0:
	            vox_play(vox_attack_light_01, true);
	            break;
	            case 1:
	            vox_play(vox_attack_light_02, true);
	            break;
	        }
	        
		}
	break;
	
	//--------------------------------------------------------------------------
	// Up Tilt
	//--------------------------------------------------------------------------
	case AT_UTILT:
		// Play voice clips
		if (window == 1 && window_timer == 1 && !hitpause) {
			var rand = random_func(0, 4, true);
			
			switch (rand){
	            case 0:
	            vox_play(vox_attack_heavy_01, true);
	            break;
	            case 1:
	            vox_play(vox_attack_heavy_02, true);
	            break;
	            case 2:
	            vox_play(vox_attack_heavy_03, true);
	            break;
	        }
	        
		}
	break;
	
	//--------------------------------------------------------------------------
	// Crouch
	//--------------------------------------------------------------------------
	case AT_EXTRA_1:
		
		can_attack = true;														// Allow cancelling
		can_jump = true;
		can_strong = true;
		can_special = true;
		can_shield = true;
		
		hurtboxID.sprite_index = crouchbox_spr;									// Switch to crouch hurtbox sprite
		
		switch (window) {
			case 5: case 6:
				iasa_script();							// Allow the stand transition window to be cancelled.
			break;
			
			default:															// If in the idle and movement windows...
				var _move_input = (right_down - left_down);
				
				
				if (state_timer == 1) crouch_move_timer = 0;						// Reset the crouch move timer when starting the state.
				
				if (_move_input == spr_dir) {							// If inputting forward movement...
					if (window != 3) {												// If not in the forward movement window...
						window = 3;													// Go into forward movement window.
						window_timer = 0;											// Reset the window timer.
					}
					hsp = lerp(0, crouch_speed * spr_dir, crouch_move_timer * crouch_accel);	// Accelerate to the desired crawl speed.
					hsp = clamp(hsp, -crouch_speed, crouch_speed);					// Clamp the speed.
					crouch_move_timer++;											// Advance the crouch move timer.
					
					// Crouched FSpecial
					if (special_pressed) {
						set_attack(AT_FSPECIAL);									// Go into FSpecial
						window = 0;
						window_timer = 0;
					}
					
				}
				
				else if (_move_input == -spr_dir) {					// If inputting backward movement...
					if (window != 4) {												// If not in the backward movement window...
						window = 4;													// Go into backward movement window.
						window_timer = 0;											// Reset the window timer.
					}
					hsp = lerp(0, -crouch_speed * spr_dir, crouch_move_timer * crouch_accel);	// Accelerate to the desired crawl speed.
					hsp = clamp(hsp, -crouch_speed, crouch_speed);					// Clamp the speed.
					crouch_move_timer++;											// Advance the crouch move timer.
					
					// Crouched FSpecial
					if (special_pressed) {
						if (!hitpause) spr_dir *= -1;								// Flip the player.	
						set_attack(AT_FSPECIAL);									// Go into FSpecial
						window = 0;
						window_timer = 0;
					}
					
				}
				
				else {																// If not pressing forward or backward...
					if !(window == 1 || window == 2) {								// If not in the idle window...
						window = 2;													// Go into the idle window.
						window_timer = 0;											// Reset the window timer.
					}
					crouch_move_timer = 0;
				}
				
				if (!(down_down|| down_pressed) && !(taunt_down || taunt_pressed) || (up_down || up_pressed)) {	// If not pressing down... (or taunt, just to make using the UI while crouching more intuitive...)
					window = 5;														// Go into stand transition window.
					window_timer = 0;												// Reset the window timer.
					crouch_move_timer = 0;											// Reset the crouch move timer.
				}
			break;
		}
		
	break;
	
	//--------------------------------------------------------------------------
	// Rifle Jab
	//--------------------------------------------------------------------------
	case AT_EXTRA_2:
		// Play voice clips
		if (window == 1 && window_timer == 1 && !hitpause) {
			var rand = random_func(0, 3, true);
        
	        switch (rand){
	            case 0:
	            vox_play(vox_attack_light_01, true);
	            break;
	            case 1:
	            vox_play(vox_attack_light_02, true);
	            break;
	        }
	        
		}
	break;
	
	//--------------------------------------------------------------------------
	// Cover
	//--------------------------------------------------------------------------
	case AT_EXTRA_3:
		
		var _cur_win_length = get_window_value(AT_EXTRA_3, window, AG_WINDOW_LENGTH );	// Get the current window length.
		
		hurtboxID.sprite_index = sprite_get("hurtbox_box");						// Switch to box hurtbox.
		
		can_jump = true;
		//can_special = true;
		//can_shield = true;
		
		var _menu_open = (inv_menu_open || supply_menu_open);
		
		switch(window){
			case 1: // Startup
				
				// Remove Dash Effects.
				sound_stop(sfx_dashstart_orig);									// Stop dash sound effect.
			
			case 2: // Idle
				
				// Knock
				if ((attack_pressed || strong_pressed) && !_menu_open) {		// If the attack button is pressed...
					set_attack_window(3);										// Go do knock window.
					clear_button_buffer(PC_ATTACK_PRESSED);						// Clear the input buffer.
					clear_button_buffer(PC_STRONG_PRESSED);
				}
				
				// Shoot From Cover
				if (!_menu_open) {
					if (special_pressed) {											// If special is pressed...
						set_attack(AT_FSPECIAL);									// Go to FSpecial
						clear_button_buffer(PC_SPECIAL_PRESSED);					// Clear input buffer
					}
				}
				
				// No Cover Detected
				if (!sna_is_in_cover)											// If the cover is removed...
					set_attack_window(5);										// Go to exit window.
				
				// Exit Cover
				if !(right_down - left_down == spr_dir || _menu_open) {			// If NOT holding in the direction of the cover object...
					set_attack_window(5);										// Go to exit window.
				}
				
			break;
			
			case 3: // Knock
				
				// Allow rapeated knocking.
				if (window_timer > 4 && (attack_pressed || strong_pressed) && !_menu_open) {		// If the attack button is pressed...
					set_attack_window(3);										// Go do knock window.
					clear_button_buffer(PC_ATTACK_PRESSED);						// Clear the input buffer.
					clear_button_buffer(PC_STRONG_PRESSED);
				}
				
				// Exit Knock Window
				if (window_timer >= _cur_win_length)							// If at the end of the window...
					set_attack_window(2);										// Return to the idle window.
				
				// No Cover Detected
				if (!sna_is_in_cover)											// If the cover is removed...
					set_attack_window(5);										// Go to exit window.
				
			break;
			
		}
		
	break;
	
}



//=========================================================
// CUSTOM ATTACK SOUND LAYERS													(The hit sound layers are in hit_player.gml)
//=========================================================

switch (attack) {																// ONLY plays the attack anticipation sound layers, if you've already hit a player during this attack.
	
	case AT_JAB:
		
		if (has_hit && !hitpause) {												// I'm using has_hit instead of has_hit_player, for Adventure Mode and boss fight compatibility.
			if (window == 4 && window_timer == 1) sound_play(sound_get("sfx_at_punch_lyr_02"));
		}
	
	break;
	
	case AT_FSTRONG:
		
		if (!hitpause) {
			if (window == 2 && window_timer == 1) sound_play(sound_get("sfx_at_punch_lyr_01"), false, noone, 0.5 );
		}
	
	break;
	
	case AT_USTRONG:
		
		if (!hitpause) {
			if (window == 2 && window_timer == 1) sound_play(sound_get("sfx_at_punch_lyr_01"), false, noone, 0.5 );
		}
	
	break;
	
	case AT_FTILT:
		
		if (window <= 5 && !has_hit) sound_stop(sound_get("sfx_at_punch_ko_lyr_01"));
		
		if (has_hit && !hitpause) {
			if (window == 5 && window_timer == 1) sound_play(sound_get("sfx_at_punch_ko_lyr_01"));
		}
	
	break;
	
	case AT_NAIR:
		
		if (has_hit && !hitpause) {
			if (window == 3 && window_timer == 1) sound_play(sound_get("sfx_at_punch_lyr_01"));
			else if (window == 5 && window_timer == 1) sound_play(sound_get("sfx_at_punch_lyr_02"));
			else if (window == 7 && window_timer == 1) sound_play(sound_get("sfx_at_punch_ko_lyr_01"));
		}
	
	break;
	
	case AT_DAIR:
		
		if (has_hit && !hitpause) {
			if (window == 5 && window_timer == 1) sound_play(sound_get("sfx_at_punch_lyr_01"));
		}
	
	break;
	
	case AT_FSPECIAL:															// Firearm sound effects I couldn't include in the attack grid windows.
		
		if (!hitpause) {														// If NOT in hitpause...
			// Mosin
			if (inv_firearm == EQ_MOSIN) {										// If the Mosin is equipped...
				
				switch(window) {
					
					case 4: // Chamber
						//if (window_timer == 36) sound_play(sound_get("sfx_w_rifle_chamber_mosin_02"));
						if (window_timer == 48) sound_play(sound_get("sfx_w_rifle_chamber_mosin_02"));
					break;
					
					case 7: // Reload - Load Clip
						if (window_timer == 24) sound_play(sound_get("sfx_w_rifle_chamber_mosin_02"));
					break;
					
				}
				
			}
		}
	
	break;
	
}



//=========================================================
// FUNCTIONS
//=========================================================

//-----------------------------------------
// Add Ammo
//-----------------------------------------
#define ammo_add(_weap_idx, _mag_adj, _total_adj)

/* When firing, subtract both the magazine ammo, and the total ammo at the same time.*/

/* When using this function to give ammo from item boxes,
DO NOT give the magazine ammo.
That way, Snake will still reload once he picks up ammo. */

var _weap = dict_equipment[_weap_idx];

// Adjust magazine amount
dict_equipment[_weap_idx].ammo_mag = clamp(_weap.ammo_mag + _mag_adj, 0, _weap.ammo_mag_max );

// Advance the mag bullet queue.
if (_weap.uses_magazines)
	dict_equipment[_weap_idx].mag_bullet_queue = clamp(_weap.mag_bullet_queue + _mag_adj, -_weap.ammo_total_max, _weap.ammo_total_max);

// Adjust total amount
dict_equipment[_weap_idx].ammo_total = clamp(_weap.ammo_total + _total_adj, 0, _weap.ammo_total_max);


//-----------------------------------------
// Reload Ammo
//-----------------------------------------
#define ammo_reload(_weap_idx)

var _weap = dict_equipment[_weap_idx];

// Reload the magazine.
dict_equipment[_weap_idx].ammo_mag = clamp(_weap.ammo_total, 0, _weap.ammo_mag_max);					// Set the magazine ammo to the remaining total ammo. (clamped.)

// Give empty magazine.
if (_weap.mag_bullet_queue < 1) {																		// If the mag bullet queue is less than one...
	
	// Give a magazine
	if (_weap.gives_magazines) {																														// If the weapon gives empty magazines...
		//dict_equipment[EQ_MAGAZINE].ammo_total = clamp(dict_equipment[EQ_MAGAZINE].ammo_total + 1, 0, dict_equipment[EQ_MAGAZINE].ammo_total_max);	// Give an empty magazine.
		give_equipment(EQ_MAGAZINE, 1, false);																											// Give an empty magazine.
	}
	
	// Reset the mag queue.
	dict_equipment[_weap_idx].mag_bullet_queue = clamp(_weap.mag_bullet_queue + _weap.ammo_mag_max, -_weap.ammo_mag_max, _weap.ammo_mag_max);	// Reset the mag bullet queue.
}



//-----------------------------------------
// Suppressor Deteriorate
//-----------------------------------------
#define suppressor_deteriorate( _weap_idx )

if (_weap_idx.suppressor_attached) {															// If a suppressor is attached...
	
	var _sup_dmg = (_weap_idx.ammo_mag_max > 0) ? 100 / (floor((_weap_idx.ammo_mag_max * 2.5) * 100) / 100) : 0;		// Calculate suppressor damage based on mag size. (The * 100 / 100 is to round to limit the numer of decimal digits.)
	
	_weap_idx.suppressor_durability = clamp(_weap_idx.suppressor_durability - _sup_dmg, 0, 100);	// Damage the suppressor.
	
	if (_weap_idx.suppressor_durability <= 0) {													// If the suppressor completely loses durability...
		
		_weap_idx.suppressor_attached = false;													// Detach the suppressor.
		
		if (_weap_idx.num_suppressors > 0) _weap_idx.suppressor_durability = 100;				// If you still have extra suppressors, reset the suppressor durability.
		_weap_idx.num_suppressors = clamp(_weap_idx.num_suppressors - 1, 0, 99);				// Subtract a suppressor from the inventory.
		
		sound_play(sound_get("sfx_w_suppressor_break"));										// Play the suppressor breaking sound.
		
	}
	
}



//-----------------------------------------
// Reload Ammo
//-----------------------------------------
#define nspecial_set_aim_window

var l_r_input_dir = (right_down - left_down);

/*if (l_r_input_dir == spr_dir) set_attack_window(4); 							// If holding forward, go to aim forward window.
else if (l_r_input_dir == -spr_dir)	set_attack_window(8);						// If holding backward, go to aim backward window.
else if (up_down) set_attack_window(6);											// If holding up, go to aim up window.
else if (down_down) set_attack_window(10);										// If holding down, go to aim down window.
else set_attack_window(2);														// If NOT holding ANY direction, go to neutral aim window.*/

if (!joy_pad_idle) {
	
	// Vertical
	// Up
	if (joy_dir > 45 && joy_dir < 135) set_attack_window(6);						// If holding up, go to aim up window.
	// Down
	else if (joy_dir > 225 && joy_dir < 315) set_attack_window(10);				// If holding down, go to aim down window.
	// Horizontal
	else {																		// If NOT holding up or down...
		// Forward
		if (l_r_input_dir == spr_dir) set_attack_window(4); 					// If holding forward, (or in cover), go to aim forward window.
		// Backward
		else if (l_r_input_dir == -spr_dir)	set_attack_window(8);				// If holding backward, go to aim backward window.
	}
	
}
// Neutral
else set_attack_window(2);														// If NOT holding ANY direction, go to neutral aim window.



//-----------------------------------------
// Throw Entity
//-----------------------------------------
#define throw_entity(_ent_obj)

var _throw_hsp = 0;
var _throw_vsp = 0;

switch(window){
	
	case 3: // Neutral
		_throw_hsp = 5 * spr_dir;
		_throw_vsp = -5;
	break;
	
	case 5: // Forward
		//_throw_hsp = 7 * spr_dir;
		//_throw_vsp = -5;
		_throw_hsp = 9 * spr_dir;
		_throw_vsp = -4;
	break;
	
	case 7: // Up
		_throw_hsp = 2 * spr_dir;
		_throw_vsp = -10;
	break;
	
	case 9: // Back
		_throw_hsp = 2.5 * spr_dir;
		_throw_vsp = -7.5;
	break;
	
	case 11: // Down
		_throw_hsp = 3.5 * spr_dir;
		_throw_vsp = -2;
	break;
	
}

with (_ent_obj) {
	
	// Release the entity
	is_held = false;
	
	// Play the throw sound.
	if (other.hitpause == false && sfx_throw != noone)		// If the entity has a throw sound...
		sound_play(sfx_throw);					// Play the throw sound.
	
	// Set the velocity
	hsp_float = _throw_hsp;
	vsp_float = _throw_vsp;
	
	//depth = 1;											// Set the article to draw behind the players.
	depth = -6;												// Set the article to draw in front of players.
	
}


//-----------------------------------------
// Move Entity To Hands
//-----------------------------------------
#define move_entity_to_hands(_ent_obj)
var _hand_x = 0;
var _hand_y = 0;

switch(window){
	
	case 1: // Ready
		if (window_timer < 6) {
			_hand_x = 14 * spr_dir;
			_hand_y = -38;
		}
		else {
			_hand_x = 4 * spr_dir;
			_hand_y = -42;
		}
	break;
	
	case 2: // Neutral Aim
	case 8: // Back Aim
	case 10: // Down Aim
		_hand_x = 4 * spr_dir;
		_hand_y = -42;
	break;
	
	case 4: // Forward Aim
		_hand_x = -12 * spr_dir;
		_hand_y = -62;
	break;
	
	case 6: // Up Aim
		_hand_x = -26 * spr_dir;
		_hand_y = -42;
	break;
	
	case 3: // Neutral Throw
	case 9: // Back Throw
	case 11: // Down Throw
		if (window_timer < 6) {
			_hand_x = -30 * spr_dir;
			_hand_y = -44;
		}
		else {
			_hand_x = 8 * spr_dir;
			_hand_y = -18;
		}
	break;
	
	case 5: // Forward Throw
		if (window_timer < 6) {
			_hand_x = -14 * spr_dir;
			_hand_y = -56;
		}
		else {
			_hand_x = 12 * spr_dir;
			_hand_y = -66;
		}
	break;
	
	case 7: // Up Throw
		if (window_timer < 6) {
			_hand_x = -26 * spr_dir;
			_hand_y = -42;
		}
		else {
			_hand_x = -6 * spr_dir;
			_hand_y = -74;
		}
	break;
	
	case 12: // Exit
		_hand_x = 14 * spr_dir;
		_hand_y = -18;
	break;
	
}

// Move the entity to hand position.
with (_ent_obj) {
	x = other.x + _hand_x;
	y = other.y + _hand_y;
}



//-----------------------------------------
// Deplete Grip
//-----------------------------------------
#define cqc_deplete_grip
if (sna_grabbed_playerid.sna_psyche_depleted) exit;				// If the grabbed player is unconscious, do NOT deplete the grip timer.

sna_grab_time--;												// Advance the grab timer.
// Release the grabbed player, if the grip runs out.
if (sna_grab_time <= 0)											// If the grab timer reaches 0...
	set_attack_window(29);										// Go to release state.



//-----------------------------------------
// Set Attack Window
//-----------------------------------------
#define set_attack_window(_window)												// Go to a specified window, and reset the window timer.
window = _window;
window_timer = 0;



//-----------------------------------------
// Play Voice Clip
//-----------------------------------------
#define vox_play(_vox, _can_be_interrupted)                                     // Play voice clip; Overwrites already playing voice clips.

sound_stop(vox_prev);                                                           // Stop the previous voice clip, if one is currently playing.
sound_play(_vox);                                                               // Play the voice clip.
if (_can_be_interrupted) vox_prev = _vox;                                       // Update the previous voice clip



//==============================================================================
// GIVE EQUIPMENT FUNCTIONS
//==============================================================================

/* WARNING:
If making changes to these functions, remember to update these in all the other
scripts that also share these functions.

These scripts are:
	- init.gml
	- attack_update.gml
	
TODO: Put these functions in a user event?

*/

//-----------------------------------------
// Give Equipment
//-----------------------------------------
#define give_equipment(_idx, _ammo, _fill_magazine)															// Give an item. Specify the given ammo, and whether or not it should fill the magazine.
var _given_equipment = dict_equipment[_idx];

dict_equipment[_idx].is_owned = true;																		                    // Give the player the equipment.

if (_given_equipment.uses_ammo) {																								// If the given equipment uses ammo...
	
	give_ammo(_idx, _ammo, _fill_magazine);																						// Give the player the desired ammo.
	
	dict_equipment[_idx].is_chambered = (_given_equipment.ammo_mag > 0) ? true : false;											// If the mag has ammo, chamber it. If the mag comes empty, don't chamber it.

	
}

inventory_refresh();																						                    // Rebuild the inventory lists.



//-----------------------------------------
// Give Ammo
//-----------------------------------------
#define give_ammo(_idx, _ammo, _fill_magazine)
var _given_equipment = dict_equipment[_idx];

dict_equipment[_idx].ammo_total = clamp(dict_equipment[_idx].ammo_total + _ammo, 0, _given_equipment.ammo_total_max);		// Give the player the desired ammo.

if (_fill_magazine == true && _given_equipment.uses_magazines == true) {													// Should the magazine be filled?
	dict_equipment[_idx].ammo_mag = clamp(_given_equipment.ammo_total, 0, _given_equipment.ammo_mag_max);	                // Fill the magazine, if specified.
	if (_given_equipment.mag_bullet_queue < 1)																				// If the mag bullet queue is less than 1...
		dict_equipment[_idx].mag_bullet_queue = clamp(_given_equipment.mag_bullet_queue + _ammo, -_given_equipment.ammo_mag_max, _given_equipment.ammo_mag_max);	// Reset the mag bullet queue.
}



//-----------------------------------------
// Remove Equipment
//-----------------------------------------
#define remove_equipment(_idx )														// Remove an item. Specify the given ammo, and whether or not it should fill the magazine.
var _taken_equipment = dict_equipment[_idx];

dict_equipment[_idx].is_owned = false;												// Remove the equipment.

inventory_refresh();																// Rebuild the inventory lists.


#define inv_update_firearm_index												// Update the current firearm index.
inv_firearm = inv_firearm_containers[inv_firearm_container];

if (inv_firearm != EQ_EMPTY) inv_firearm_prev = inv_firearm;					// If you didn't switch to an empty slot, update your previously equipped firearm to the currently equipped one.

#define inv_update_throwable_index												// Update the current throwable index.
inv_throwable = inv_throwable_containers[inv_throwable_container];

#define inv_update_plantable_index												// Update the current plantable index.
inv_plantable = inv_plantable_containers[inv_plantable_container];

#define inv_update_item_index													// Update the current item index.
inv_item = inv_item_containers[inv_item_container];



//-----------------------------------------
// Refresh Inventory
//-----------------------------------------
#define inventory_refresh                                                       // Go through the equipment dictionary, and add the owned equipment to the inventory.
inv_firearm_containers = [];
inv_throwable_containers = [];
inv_plantable_containers = [];
inv_item_containers = [];

var _len = array_length(dict_equipment);
for (var _i = 0; _i < _len; _i++) {
    var _category = dict_equipment[_i].category;
    
    // Add an empty container to the firearms category, by default.
    if (_i == EQ_EMPTY) array_push(inv_firearm_containers, EQ_EMPTY);				// By default, add an empty container to the firearms category. THIS IS REQUIRED!!!
    
    else {																			// Skip EQ_EMPTY, since whether or not you "own" it shouldn't affect anything.
    	
    	// Add the rest of the owned weapons.
	    if (dict_equipment[_i].is_owned) {                                          // If the weapon is owned...
	        
	        if (_category == 0) array_push(inv_firearm_containers, _i);              // Add the equipment IDs to the inventory slots.
	        else if (_category == 1) array_push(inv_throwable_containers, _i);
	        else if (_category == 2) array_push(inv_plantable_containers, _i);
	        else if (_category == 3) array_push(inv_item_containers, _i);
	        
	    }
    
    }
    
}

// Handle container categories with no equipment:
if (array_length(inv_throwable_containers) == 0) array_push(inv_throwable_containers, EQ_EMPTY);	// If you have an empty category, add an empty container to each empty category.
if (array_length(inv_plantable_containers) == 0) array_push(inv_plantable_containers, EQ_EMPTY);
if (array_length(inv_item_containers) == 0) array_push(inv_item_containers, EQ_EMPTY);


inventory_retain_selection();                                                   // Retain the current inventory selection.

// Update the inventory equipment IDs
inv_update_firearm_index();														// Update the currently selected inventory indexes.
inv_update_throwable_index();
inv_update_plantable_index();
inv_update_item_index();



//-----------------------------------------
// Retain Inventory Selections
//-----------------------------------------
#define inventory_retain_selection												// Retain the inventory selection. Used after adding/removing an inventory item.

// Firearms
var _len = array_length(inv_firearm_containers);
for (var i = 0; i < _len; i++) {				// Loop through the firearm containers, and find the currently equipped firearm.
	
	if (inv_firearm_containers[i] == inv_firearm)								// If you find the previously equipped firearm index...
		inv_firearm_container = i;												// Set the current firearm container to this one.
	
	else if (i == _len - 1) {				    // If you haven't found your last equipped firearm...
		
		inv_firearm_container = clamp(inv_firearm_container, 0, i);				// Clamp the current container, in case it's over the array length.
		
	}
	
}

// Throwables
_len = array_length(inv_throwable_containers);
for (var i = 0; i < _len; i++) {				// Loop through the throwable containers, and find the currently equipped throwable.
	
	if (inv_throwable_containers[i] == inv_throwable)							// If you find the previously equipped throwable index...
		inv_throwable_container = i;											// Set the current throwable container to this one.
	
	else if (i == _len - 1) {		// If you haven't found your last equipped throwable...
		
		inv_throwable_container = clamp(inv_throwable_container, 0, i);			// Clamp the current container, in case it's over the array length.
		
	}
	
}

// Plantables
_len = array_length(inv_plantable_containers);
for (var i = 0; i < _len; i++) {				// Loop through the plantable containers, and find the currently equipped plantable.
	
	if (inv_plantable_containers[i] == inv_plantable)							// If you find the previously equipped plantable index...
		inv_plantable_container = i;											// Set the current plantable container to this one.
	
	else if (i == _len - 1) {		// If you haven't found your last equipped plantable...
		
		inv_plantable_container = clamp(inv_plantable_container, 0, i);			// Clamp the current container, in case it's over the array length.
		
	}
	
}

// Items
_len = array_length(inv_item_containers);
for (var i = 0; i < _len; i++) {					// Loop through the item containers, and find the currently equipped item.
	
	if (inv_item_containers[i] == inv_item)										// If you find the previously equipped item index...
		inv_item_container = i;													// Set the current item container to this one.
	
	else if (i == _len - 1) {						// If you haven't found your last equipped item...
		
		inv_item_container = clamp(inv_item_container, 0, i);					// Clamp the current container, in case it's over the array length.
		
	}
	
}



//-----------------------------------------
// Spawn Base Dust
//-----------------------------------------
#define spawn_base_dust // written by supersonic
/// @param x
/// @param y
/// @param name
/// @param dir=0
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

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
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;