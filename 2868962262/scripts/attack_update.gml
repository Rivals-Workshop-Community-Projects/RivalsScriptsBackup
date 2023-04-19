//attack_update.gml

if (attack == AT_DSPECIAL){
	if(window == 3){
		toasted = false;
	}
	if(window == 4){
		toasted = true;
	}
}


switch (attack)
{
	//B-reverse - it allows the character to turn in while using specials
	case AT_NSPECIAL: case AT_FSPECIAL: case AT_DSPECIAL: case AT_USPECIAL:
		trigger_b_reverse();
		break;


	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
	case AT_JAB:
		if window < 3 {
			was_parried = false;
		}
	break;
	case AT_USTRONG:
		trigger_b_reverse(); //put this on any attacks you would like to b reverse
		//remove the above it you dont want it, most recovery moves have this though!
		//up air code goes here
		if window == 2 {
			if window_timer == get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH) {
				spawn_hit_fx(x,y-25,197);
			}
			if window_timer == 1 {
				sound_play(asset_get("sfx_absa_cloud_place"));
			}
		}
	break;
	case AT_FTILT:
	break;
	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
    //
	case AT_NSPECIAL:
		move_cooldown[AT_NSPECIAL] = 10;
	break;
	case AT_FSPECIAL:
		
		CommandGrab(1, 3, [-1], [true], 
		/*Player Movement*/true, [10], [-20],
		/*Hitbox Movement*/false, [-11], [-11],
		/*Article Movement*/true, [-11], [-11]);
		if window > 1 && grabId == 0 {
			can_wall_jump = true;
		}
		else {
			can_wall_jump = false;
		}
		if y > blastzone_b-150 && grabId == 0 && playtest_active == false {
			can_jump = true;
			can_special = true;
		}
		if window >= 2 && window < 4 && grabId != 0{
			if y > blastzone_b-200 && playtest_active == false {
				window = 4;
				window_timer = 0;
			}
		}
		break;
		
	case AT_USPECIAL:
		if window > 1 {
			can_wall_jump = true;
		}
	break;
	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
	case 2: //intro
		if (window <= window_last) hud_offset = lerp(hud_offset, 2000, 0.1); //put hud away
		if (window == window_last && window_timer == window_end-1 && get_gameplay_time() <= 125) state = PS_SPAWN; //correct state to spawn if needed
		break;
}



//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;
}

#define  CommandGrab(windowStart, windowEnd, moveTime, visibility, /*Player Movement*/p_access, p_moveX, p_moveY,/*Hitbox Movement*/hb_access, hb_moveX, hb_moveY,/*Article Movement*/ art_access, art_moveX, art_moveY) 

/* Variable Explanation:
 *
 * windowStart: The window where the grab should begin to check for players
 *
 * windowEnd: The last window the grab will be active in
 *
 * For move time and the specific moveX and move Ys, use arrays to indicate how many positions the grab will
 * move between (ex: moveX being [0, 50, 20] would move the grabbed object to 0, then 50, then 20)
 * moveTime: The time the grab will take to ease the caught player into the desired position (use an array!)
 *
 * visibility will decide whether or not the object is hidden while they are grabbed (uses an array like moveTime)
 *
 * p, hb, & art: These will determine placement for various kinds of objects. by turning access to true it will allow that type of thing to be grabbed by this move
 * moveX & moveY: Position to move the player to (use an array)
 *
 * EX:
 * CommandGrab(2, 5, [20, -1, 30], true, false, [50, 30, -20], [70, -10, -500], hb_access, hb_moveX, hb_moveY, art_access, art_moveX, art_moveY) 
 
 windowStart = 2 this means the grab will begin checking on window 2
 
 windowEnd = 5 this means the grab will stop checking after window 5
 
 movetime = [20, -1, 30] The moment something is grabbed, it will be moved somewhere taking 20 frames, then it will move for as long as the remaining time in
						 the current window (see Special Movement Times), and finally it will move somewhere over the course of 30 frames. If there is still time
						 left the grabbed object will be held at its final location until the end window is reached.
 
 visibility = [false, false, true] This will make the caught object be invisible for the first and second movements, and turn visible again for the third
 
 p_access = true this means that the attack can grab players (player grabbing is handled in hit_player when landing a grabbing attack, or got_hit for counters)
 
 p_moveX = [50, 30, -20] The grabbed object will be moved to an x position relative to the player that grabbed them, first to 50 units in front of the player, then
						 30 units in front, then 20 units behind (works off of sprite direction);
					   
 p_moveY = [70, -10, -500] The grabbed object will be moved to a y position relative to the player that grabbed them, first to 70 units up from the player, then
						   10 units down, and finally 500 units up (remember that negative numbers go up for rivals, since the origin is at the top left corner);
 
 hb_access = false This attack does not work on hitboxes (hitbox is here for consistency, though I'll only be providing code for how to set up an article)
 
 hb_moveX & hb_moveY = [0, 0, 0] Include an array with same number of slots as moveTime, though it won't be run in this case since hb_access is false.
 
 art_access = true The attack will register articles (articles must have an active article_hit.gml, and the variable grabObjectType = 3 in order to be grabbable)
 
 hb_moveX & hb_moveY = -11 Copies the values in the Player grab, since in this case the article doesn't need a different position (see Special X-Ys).
 
 */

// Grab will run within desired range of windows
if (window >= windowStart && window <= windowEnd) {
	//print_debug("e");
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
					print_debug("player end");
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
				
				// Make the player doing the grab owner of the hitbox
				grabId.player = player;
				
				attack_invince = 2;
				
				grabId.transcendent = true;
				
				var force = get_kb_formula(30, 0.9, 1.0, grabHitBoxDamage, grabKnockback, grabKnockbackScaling);
	        	grabId.hsp = lengthdir_x( force, grabLaunchAngle );
	        	grabId.vsp = lengthdir_y( force, grabLaunchAngle );
				
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
														round(x + (hb_moveX[grabPositionsCurrent] * spr_dir)), // Location it should end up at
														grabEasingTimer, // How many frames into movement is the object
														moveTime[grabPositionsCurrent] ); // Total frames this should take
							
							grabId.y = ease_cubeOut( round(grabStartY), // Starting location of grabbed object
														round(y + hb_moveY[grabPositionsCurrent]), // Location it should end up at
														grabEasingTimer, // How many frames into movement is the object
														moveTime[grabPositionsCurrent] ); // Total frames this should take
							
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
				
				// Holds article in hitstop for grab
				//grabId.hitstop = 3;
					
				if (grabPositionsCurrent < grabPositionsTotal) {
					
					// Runs through each movement specified in the move arrays
					if (grabEasingTimer < moveTime[grabPositionsCurrent]) {
						
						// Changes the player's position with easing (I'm using cubeOut here)
						grabId.x = ease_cubeOut( round(grabStartX), // Starting location of grabbed object
													round(x + (art_moveX[grabPositionsCurrent] * spr_dir)), // Location it should end up at
													grabEasingTimer, // How many frames into movement is the object
													moveTime[grabPositionsCurrent] ); // Total frames this should take
						
						grabId.y = ease_cubeOut( round(grabStartY), // Starting location of grabbed object
													round(y + art_moveY[grabPositionsCurrent]), // Location it should end up at
													grabEasingTimer, // How many frames into movement is the object
													moveTime[grabPositionsCurrent] ); // Total frames this should take
						
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