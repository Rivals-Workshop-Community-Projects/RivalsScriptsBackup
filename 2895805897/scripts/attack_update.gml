// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack) {
	case AT_JAB:
		if (window < 4) {
			was_parried = false;
		}
		if (was_parried) {
			move_cooldown[AT_FTILT] = 5;
			move_cooldown[AT_DTILT] = 5;
			move_cooldown[AT_UTILT] = 5;
			move_cooldown[AT_DATTACK] = 5;
		}
		break;
	
	case AT_DATTACK:
		
		switch (window) {
			case 1:
			if (window_timer == 1) {
				hsp = 9 * spr_dir;
			}
			if (window_timer == 6) {
				sound_play(asset_get("sfx_shovel_swing_med1"));
			}
			break
			case 3:
			if (window_timer == 6) {
				hsp /= 2;
			}
			break;
		}
		break;
	
	case AT_NAIR:
		if (window == 1 && window_timer == 1) {
			sound_play(asset_get("sfx_ori_stomp_spin"), false, noone, 0.9, 1.1);
		}
		/*if (window == 2 && window_timer == 1) {
			sound_stop(asset_get("sfx_ori_stomp_spin"));
		}*/
		break;
	
	case AT_DAIR:
		switch (window) {
			case 1:
				if (free == false) {
					window = 4;
					window_timer = 0;
				}
				atk_DAirJumpTime = 15;
				//if (window_timer == 13) {
				//	spawn_hit_fx(x, y - 20, 302);
				//} 
				break;
			case 2:
				move_cooldown[AT_DAIR] = 20;
				//vsp = min(12, vsp + 0.5);
				hsp = clamp(hsp, -2, 2);
				if (hitstop <= 0) {
					if (hitstop <= 0) {
						vsp = 15;
					}
					if (jump_down && atk_DAirJumpTime == 0) {
						spawn_hit_fx(x, y - 36, 302);
						sound_play(asset_get("sfx_forsburn_consume_fail"));
						window = 3;
						window_timer = 0;
						atk_DAirJumps = djumps;
						atk_DAirSpeed = -12;
					}
					if (has_hit == true) {
						window = 3;
						window_timer = 0;
						atk_DAirJumps = djumps;
						atk_DAirSpeed = -10;
					}
					if (free == false) {
						window = 4;
						window_timer = 0;
					}
				}
				break;
			case 3:
				if (window_timer == 1) {
					vsp = atk_DAirSpeed;
				}
				//djumps = 1;
				if (window_timer == 6) {
					window = 5;
					window_timer = 0;
				}
				move_cooldown[AT_DAIR] = 40;
				break;
		}
		break;
	
	case AT_USTRONG:
		switch (window) {
			case 1:
				if (window_timer == 2) {
					sound_play(asset_get("sfx_mol_swap_start"));
				}
				break;
			case 2:
				if (window_timer == 3) {//sfx_mol_huge_light
					sound_play(asset_get("sfx_mol_norm_explode"));
				}
				break;
		}
		
		break;
	
	case AT_FSTRONG:
		if (window == 1 && window_timer == 15) {
			if (atk_FStrongChargeTimer == 10) {
				atk_FStrongChargeTimer = 0;
				pokebox = create_hitbox(AT_FSTRONG, 2, x - 52 * spr_dir, y - 45);
			}
			atk_FStrongChargeTimer++;
			
			// Jump cancel on hit
			can_jump = has_hit;
			
		} else {
			atk_FStrongChargeTimer = 10;
		}
		break;
	
	case AT_NSPECIAL:
		if (window == 2 && window_timer == 1 && atk_NSpecialRechargeTimer <= 0 && isPlaytest == false) {
			instance_create(x + 15 * spr_dir, y - 30, "obj_article2");
			atk_NSpecialRechargeTimer = 100;
		}
		break;
		
	case AT_TAUNT:
		switch (window_timer) {
			case 9:
			case 18:
			case 27:
			case 36:
			sound_play(sound_get("SE_Watermelon"));
			break;
		}
		
		break;
		
	case AT_USPECIAL:
		switch (window) {
			case 1:
				vsp /= 1.05;
				hsp /= 1.05;
				break
		}
		break;
		
	case AT_FSPECIAL:
		switch (window) {
			case 2:
				atk_FSpecialUsed = true;
				if (window_timer == 1) {
					vsp = -7;
					hsp = 7 * spr_dir;
				}
				if (has_hit == true && hitstop <= 0 && window_timer == 6) {
					window = 4;
					window_timer = 0;
				}
				break;
			case 3:
				if (has_hit == false && window_timer == 9) {
					window = 7;
					window_timer = 0;
				}
				break;
			case 4:
				var stage_bottom = get_stage_data( SD_TOP_BLASTZONE ) + get_stage_data( SD_BOTTOM_BLASTZONE ) - 250;
				var dist_bz = round(get_stage_data( SD_SIDE_BLASTZONE ) * 0.25);
				// Checks if player is getting too close to the blastzones, and slows them down
				if (x < dist_bz || x > room_width - dist_bz) {
					hsp *= 0.9;
				}
		    	if (free == true && y > stage_bottom) {
		    		spawn_hit_fx(x, y, 305);
		    		window = 5;
		    		window_timer = 0;
		    		sound_play(asset_get("sfx_fishing_rod_land"));
		    	}
		    	grav = 0.7;
				break;
			case 5:
				if (window_timer == 1 && grabId == FlytrapID && FlytrapID != 0) {
					window = 7;
					window_timer = 0;
					grabId = 0;
					FlytrapID.strongLag = 10;
					spawn_hit_fx(FlytrapID.x, FlytrapID.y - 10, 159);
					create_hitbox(AT_FSPECIAL, 3, FlytrapID.x, FlytrapID.y - 15);
					sound_play(asset_get("sfx_may_whip2"));
				}
				
				vsp = 0;
				hsp = 0;
				break;
			case 6:
				// Note: Remember to give windows 4, 5 and 6 invincibility
				vsp = 0;
				hsp = 0;
				move_cooldown[AT_FSPECIAL] = 35;
				break;
		}
		
		CommandGrab(/*General Stuff*/ 1, 5, [-1], [true], [2], 
    			/*Player Movement*/ true, [30], [-10], 
    			/*Hitbox Movement*/ true, [30], [-25], true, 
    			/*Article Movement*/ true, [30], [-10]);
		
		break;
		
	case AT_DSPECIAL:
		if (window == 2 & window_timer == 1) {
			if (FlytrapID != 0) {
				FlytrapID.killNow = true;
			}
		}
		break;
}

#define  CommandGrab(windowStart, windowEnd, moveTime, visibility, grabDirection, /*Player Movement*/p_access, p_moveX, p_moveY,/*Hitbox Movement*/hb_access, hb_moveX, hb_moveY, isReflector, /*Article Movement*/ art_access, art_moveX, art_moveY) 
/* Variable Explanation:
 *
 * windowStart: The window where the grab should begin to check for players (recomended you start checking in the window before your grab hitbox comes out)
 *
 * windowEnd: The last window the grab will be active in
 *
 * For move time and the specific moveX and move Ys, use arrays to indicate how many positions the grab will
 * move between (ex: moveX being [0, 50, 20] would move the grabbed object to 0, then 50, then 20)
 * moveTime: The time the grab will take to ease the caught player into the desired position (use an array!)
 * 
 * visibility will decide whether or not the object is hidden while they are grabbed (uses an array like moveTime)
 *
 * grabDirection sets the grabbed player's direction (2 = the player's direction, -2 is opposite the player's direction)
 *
 * p, hb, & art: These will determine placement for various kinds of objects. by turning access to true it will allow that type of thing to be grabbed by this move
 * moveX & moveY: Position to move the player to (use an array)
 *
 * HITBOX isReflector: This causes the grab to use the hitboxes initial movement for when it is let go, acting like a reflector, rather than using the hitbox that hit it
 *				   for the launch direction
 *
 * EX:
 * CommandGrab(2, 5, [20, -1, 30], true, false, [50, 30, -20], [70, -10, -500], hb_access, hb_moveX, hb_moveY, art_access, art_moveX, art_moveY) 
 * 
 * windowStart = 2 this means the grab will begin checking on window 2
 * 
 * windowEnd = 5 this means the grab will stop checking after window 5
 * 
 * movetime = [20, -1, 30] The moment something is grabbed, it will be moved somewhere taking 20 frames, then it will move for as long as the remaining time in
 *						 the current window (see Special Movement Times), and finally it will move somewhere over the course of 30 frames. If there is still time
 *						 left the grabbed object will be held at its final location until the end window is reached.
 * 
 * visibility = [false, false, true] This will make the caught object be invisible for the first and second movements, and turn visible again for the third
 * 
 * grabDirection = [1, 2, -1] First player is made to face right, then match the player's direction, then left.
 *
 * p_access = true this means that the attack can grab players (player grabbing is handled in hit_player when landing a grabbing attack, or got_hit for counters)
 * 
 * p_moveX = [50, 30, -20] The grabbed object will be moved to an x position relative to the player that grabbed them, first to 50 units in front of the player, then
 *						 30 units in front, then 20 units behind (works off of sprite direction);
 *					   
 * p_moveY = [70, -10, -500] The grabbed object will be moved to a y position relative to the player that grabbed them, first to 70 units up from the player, then
 *						   10 units down, and finally 500 units up (remember that negative numbers go up for rivals, since the origin is at the top left corner);
 * 
 * hb_access = false This attack does not work on hitboxes (hitbox is here for consistency, though I'll only be providing code for how to set up an article)
 * 
 * hb_moveX & hb_moveY = [0, 0, 0] Include an array with same number of slots as moveTime, though it won't be run in this case since hb_access is false.
 * 
 * isReflector = true the following grab will reflect hitboxes grabbed
 *
 * art_access = true The attack will register articles (articles must have an active article_hit.gml, and the variable grabObjectType = 3 in order to be grabbable)
 * 
 * hb_moveX & hb_moveY = -11 Copies the values in the Player grab, since in this case the article doesn't need a different position (see Special X-Ys).
 */

// Grab will run within desired range of windows
if (window >= windowStart && window <= windowEnd) {
	// Number of times the position of the grabbed thing should be moved around
	grabPositionsTotal = array_length(moveTime);
	if (grabPositionsCurrent < grabPositionsTotal) {
		// Special Movement Times
		if (moveTime[grabPositionsCurrent] == -1) { 
			if (grabWindowRemaining == -1) {
				grabWindowRemaining = get_window_value( attack, window, AG_WINDOW_LENGTH ) - window_timer;
				moveTime[@grabPositionsCurrent] = grabWindowRemaining;
			} else {
				moveTime[@grabPositionsCurrent] = grabWindowRemaining;
			}
		}
		switch (moveTime[grabPositionsCurrent]) {
			// Time is as long as remaining time in window upon reaching movement period
			case -1:
				if (grabWindowRemaining == -1) {
					grabWindowRemaining = get_window_value( attack, window, AG_WINDOW_LENGTH ) - window_timer;
					moveTime[@grabPositionsCurrent] = grabWindowRemaining;
				} else {
					moveTime[@grabPositionsCurrent] = grabWindowRemaining;
				}
				break;
			// Time remaining in all windows (this should always be the last movement, since it will go to very end)
			case -2: 
				if (grabWindowRemaining == -1) {
					// Run through every remaining window and add its length to
					var window_checking = window;
					moveTime[@grabPositionsCurrent] = 0;
					while (window_checking <= windowEnd) {
						moveTime[@grabPositionsCurrent] += get_window_value( attack, window_checking, AG_WINDOW_LENGTH );
						window_checking++;
					}
					// Remove the time that is already gone from the current window
					moveTime[@grabPositionsCurrent] -= window_timer;
					grabWindowRemaining = moveTime[@grabPositionsCurrent];
				} else {
					moveTime[@grabPositionsCurrent] = grabWindowRemaining;
				}
				break;
		}
		// Special X-Ys
		if (hb_moveX[grabPositionsCurrent] == -11) { // Copies values from p_moveX
			hb_moveX[@grabPositionsCurrent] = p_moveX[@grabPositionsCurrent];
		}
		if (art_moveX[grabPositionsCurrent] == -11) { // Copies values from p_moveX
			art_moveX[@grabPositionsCurrent] = p_moveX[@grabPositionsCurrent];
		}
		if (hb_moveY[grabPositionsCurrent] == -11) { // Copies values from p_moveY
			hb_moveY[@grabPositionsCurrent] = p_moveY[@grabPositionsCurrent];
		}
		if (art_moveY[grabPositionsCurrent] == -11) { // Copies values from p_moveY
			art_moveY[@grabPositionsCurrent] = p_moveY[@grabPositionsCurrent];
		}
	}
	
	// Activates various grabbing abilities such as those in hit_player, got_hit, or article_hit
	if (p_access == true) {
		// Generally used in hit_player & got_hit
		grabCanPlayer = true;
	}
	if (hb_access == true) {
		// Note this will only work on projectiles (also will give player projectile immunity while working)
		// Currently only adding vague support for this, you'll need to set up your own activator in hitbox_update if you want to use it
		grabCanHitbox = true;
	}
	if (art_access == true) {
		// Generally used in article_hit for the various aritcles the player can spawn in
		grabCanArticle = true;
	}
	
	// Checks to see if anything has been grabbed
	if (grabId != 0) {
		// Make sure the right objects are being used
		try { 
			// Stop object from moving
			grabId.hsp = 0;
			grabId.vsp = 0;
			
			// Set up visibilty check after grab ends
			grabVisibleReset = true;
			
			// Is a player or an article being grabbed?
			if (grabId.grabObjectType == 1) { // Player 
				// Prevents player from acting
				grabId.hitstop = 3;
				
				// State Checks (grab ends if any of these states occur)
				if (grabId.state != PS_DEAD && grabId.state != PS_RESPAWN && grabId.state != PS_TECH_GROUND && grabId.state != PS_TECH_FORWARD && grabId.state != PS_TECH_BACKWARD && grabId.state != PS_WALL_TECH) { 
					if (grabPositionsCurrent < grabPositionsTotal) {
						// Runs through each movement specified in the move arrays
						if (grabEasingTimer < moveTime[grabPositionsCurrent]) {
							// Changes the player's position with easing (I'm using cubeOut here)
							grabId.x = ease_cubeOut( round(grabStartX), // Starting location of grabbed object
													 round(x + (p_moveX[grabPositionsCurrent] * spr_dir)), // Location it should end up at
													 grabEasingTimer, // How many frames into movement is the object
													 moveTime[grabPositionsCurrent] ); // Total frames this should take
							grabId.y = ease_cubeOut( round(grabStartY), // Starting location of grabbed object
													 round(y + p_moveY[grabPositionsCurrent]), // Location it should end up at
													 grabEasingTimer, // How many frames into movement is the object
													 moveTime[grabPositionsCurrent] ); // Total frames this should take
													 
							// Changes the direction of the object
							switch (grabDirection[grabPositionsCurrent]) {
								case 2:
								grabId.spr_dir = spr_dir * -1;
								break;
								case -2:
								grabId.spr_dir = spr_dir;
								break;
								default:
								grabId.spr_dir = grabDirection[grabPositionsCurrent];
								break;
							}
							
							// Whether or not the grabbed object is visible
							grabId.visible = visibility[grabPositionsCurrent];
							
							// Move to next frame of movement
							grabEasingTimer += 1;
						} else {
							// Resets for next movement
							grabStartX = grabId.x;
							grabStartY = grabId.y;
							grabEasingTimer = 0;
							grabWindowRemaining = -1;
							grabPositionsCurrent++;
						}
					} else {
						// In case somehow there is extra time, this will hold grabbed object in place
						grabId.x = x + (p_moveX[grabPositionsTotal - 1] * spr_dir);
						grabId.y = y + p_moveY[grabPositionsTotal - 1];
					}
				} else {
					// If grab ends early somehow
					grabId = 0;
					grabEasingTimer = 0;
					grabPositionsCurrent = 0;
					grabEasingTimer = 0;
					grabWindowRemaining = -1;
					grabStartX = 0;
					grabStartY = 0;
					grabCanPlayer = false;
					grabCanHitbox = false;
					grabCanArticle = false;
				}
			} else if (grabId.grabObjectType == 2) { // Hitbox
				// Adds center changing variables if they do not exist
				if !variable_instance_exists(grabId, "grabObjectCenter_x") {
					grabId.grabObjectCenter_x = 0;
				}
				if !variable_instance_exists(grabId, "grabObjectCenter_y") {
					grabId.grabObjectCenter_y = 0;
				}
				
				// Make the player doing the grab owner of the hitbox
				grabId.player = player;
				attack_invince = 2;
				grabId.transcendent = true;
				var force = get_kb_formula(30, 0.9, 1.0, grabHitBoxDamage, grabKnockback, grabKnockbackScaling);
				if (isReflector == true) {
					// Reflects using hitboxes initial movement
					grabId.hsp = abs(grabId.projInitial_hsp) * spr_dir;
					grabId.vsp = grabId.projInitial_vsp;
					grabId.spr_dir = spr_dir;
				} else {
					// Launches using the hitboxes stats
					grabId.hsp = lengthdir_x( force, grabLaunchAngle );
	        		grabId.vsp = lengthdir_y( force, grabLaunchAngle );
				}
	        	
				
				// while hitpriority = 0 projectile can't hit anything
				hit_priority = 0;
				
				// Reset priority at end
				grabIsHitbox = true;
				grabId.hitbox_timer = 0;
				grabId.grabObjectType = 2;
				
				// State Checks (hitbox will be destroyed if the grab ends early)
				if (state != PS_HITSTUN) {
					if (grabPositionsCurrent < grabPositionsTotal) {
						// Runs through each movement specified in the move arrays
						if (grabEasingTimer < moveTime[grabPositionsCurrent]) {
							// Changes the player's position with easing (I'm using cubeOut here)
							grabId.x = ease_cubeOut( round(grabStartX), // Starting location of grabbed object
													 round(x + ((hb_moveX[grabPositionsCurrent] + (grabId.grabObjectCenter_x * grabId.spr_dir)) * spr_dir)), // Location it should end up at
													 grabEasingTimer, // How many frames into movement is the object
													 moveTime[grabPositionsCurrent] ); // Total frames this should take
							grabId.y = ease_cubeOut( round(grabStartY), // Starting location of grabbed object
													 round(y + hb_moveY[grabPositionsCurrent] + grabId.grabObjectCenter_y), // Location it should end up at
													 grabEasingTimer, // How many frames into movement is the object
													 moveTime[grabPositionsCurrent] ); // Total frames this should take
							
							// Changes the direction of the object
							switch (grabDirection[grabPositionsCurrent]) {
								case 2:
								grabId.spr_dir = spr_dir * -1;
								break;
								case -2:
								grabId.spr_dir = spr_dir;
								break;
								default:
								grabId.spr_dir = grabDirection[grabPositionsCurrent];
								break;
							}
							
							// Whether or not the grabbed object is visible
							grabId.visible = visibility[grabPositionsCurrent];
							
							// Move to next frame of movement
							grabEasingTimer += 1;
						} else {
							// Resets for next movement
							grabStartX = grabId.x;
							grabStartY = grabId.y;
							grabEasingTimer = 0;
							grabWindowRemaining = -1;
							grabPositionsCurrent++;
						}
					} else { 
						// In case somehow there is extra time, this will hold grabbed object in place
						grabId.x = round(x + ((hb_moveX[grabPositionsTotal - 1] + (grabId.grabObjectCenter_x * grabId.spr_dir)) * spr_dir));
						grabId.y = round(y + hb_moveY[grabPositionsTotal - 1] + grabId.grabObjectCenter_y);
					}
				} else {
					// Destroy hitbox
					grabId.destroyed = true;
					
					// If grab ends early somehow
					grabId = 0;
					grabEasingTimer = 0;
					grabPositionsCurrent = 0;
					grabEasingTimer = 0;
					grabWindowRemaining = -1;
					grabStartX = 0;
					grabStartY = 0;
					grabCanPlayer = false;
					grabCanHitbox = false;
					grabCanArticle = false;
				}
			} else if (grabId.grabObjectType == 3) { // Article
				// Adds center changing variables if they do not exist
				if !variable_instance_exists(grabId, "grabObjectCenter_x") {
					grabId.grabObjectCenter_x = 0;
				}
				if !variable_instance_exists(grabId, "grabObjectCenter_y") {
					grabId.grabObjectCenter_y = 0;
				}
				
				// Holds article in hitstop for grab
				if (grabPositionsCurrent < grabPositionsTotal) {
					// Runs through each movement specified in the move arrays
					if (grabEasingTimer < moveTime[grabPositionsCurrent]) {
						// Changes the player's position with easing (I'm using cubeOut here)
						grabId.x = ease_cubeOut( round(grabStartX), // Starting location of grabbed object
												 round(x + ((art_moveX[grabPositionsCurrent] + (grabId.grabObjectCenter_x * grabId.spr_dir)) * spr_dir)), // Location it should end up at
												 grabEasingTimer, // How many frames into movement is the object
												 moveTime[grabPositionsCurrent] ); // Total frames this should take
						grabId.y = ease_cubeOut( round(grabStartY) , // Starting location of grabbed object
												 round(y + art_moveY[grabPositionsCurrent] + grabId.grabObjectCenter_y), // Location it should end up at
												 grabEasingTimer, // How many frames into movement is the object
												 moveTime[grabPositionsCurrent] ); // Total frames this should take
						
						// Changes the direction of the object
						switch (grabDirection[grabPositionsCurrent]) {
							case 2:
							grabId.spr_dir = spr_dir * -1;
							break;
							case -2:
							grabId.spr_dir = spr_dir;
							break;
							default:
							grabId.spr_dir = grabDirection[grabPositionsCurrent];
							break;
						}
						// Whether or not the grabbed object is visible
						grabId.visible = visibility[grabPositionsCurrent];
						
						// Move to next frame of movement
						grabEasingTimer += 1;
					} else {
						// Resets for next movement
						grabStartX = grabId.x;
						grabStartY = grabId.y;
						grabEasingTimer = 0;
						grabWindowRemaining = -1;
						grabPositionsCurrent++;
					}
				} else {
					// In case somehow there is extra time, this will hold grabbed object in place
					grabId.x = round(x + ((art_moveX[grabPositionsTotal - 1] + (grabId.grabObjectCenter_x * grabId.spr_dir)) * spr_dir));
					grabId.y = round(y + art_moveY[grabPositionsTotal - 1] + grabId.grabObjectCenter_y);
				}
			}
		} catch (err) {
			// Catch in case something happens
			grabId = 0;
			grabEasingTimer = 0;
			grabPositionsCurrent = 0;
			grabEasingTimer = 0;
			grabWindowRemaining = -1;
			grabStartX = 0;
			grabStartY = 0;
			grabCanPlayer = false;
			grabCanHitbox = false;
			grabCanArticle = false;
			
			grabOpponetDamage = 0;
			grabKnockbackScaling = 0;
			grabHitBoxDamage = 0;
			grabKnockback = 0;
			grabLaunchAngle = 0;
		}
	}
} else {
	// Set Hitbox to be able to hurt again
	if (grabIsHitbox == true) {
		hit_priority = 1;
		grabIsHitbox = false;
	}
	
	// Make Visible
	if (grabVisibleReset == true) {
		grabId.visible = true;
		grabVisibleReset = false;
	}
	
	// Outside windows for grab, sets all values to be turned off
	grabId = 0;
	grabEasingTimer = 0;
	grabPositionsCurrent = 0;
	grabEasingTimer = 0;
	grabWindowRemaining = -1;
	grabStartX = 0;
	grabStartY = 0;
	grabCanPlayer = false;
	grabCanHitbox = false;
	grabCanArticle = false;
	
	grabOpponetDamage = 0;
	grabKnockbackScaling = 0;
	grabHitBoxDamage = 0;
	grabKnockback = 0;
	grabLaunchAngle = 0;
}