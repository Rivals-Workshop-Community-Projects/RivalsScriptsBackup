//update

// Don't run for clones
if (!custom_clone) {
	// Character Specific:
	
	// Check if Flytrap Exists
	if (!instance_exists(FlytrapID)) {
		FlytrapID = 0;
	}
	
	FlytrapCooldownTimer = max(FlytrapCooldownTimer - 1, 0);
	
	if (FlytrapCooldownTimer > 0 || atk_noDSpecial == true || FlytrapID != 0) {
		move_cooldown[AT_DSPECIAL] = 6;
	}
	
	// No more fspecial
	if (atk_FSpecialUsed == true) {
		move_cooldown[AT_FSPECIAL] = 6;
		if (free == false || state_cat == SC_HITSTUN || state == PS_WALL_JUMP) {
			atk_FSpecialUsed = false;
		}
	}
	
	// Recharge time for NSpecial
	if (atk_NSpecialRechargeTimer > 0) {
		move_cooldown[AT_NSPECIAL] = 6;
		atk_NSpecialRechargeTimer--;
	} else if (atk_NSpecialRechargeTimer == 0) {
		// Set the projectile type
		if (atk_NSpecialProjectile < 3) {
			atk_NSpecialProjectile++;
		} else {
			atk_NSpecialProjectile = 1;
		}
		// Spawn the effect
		sound_play(sound_get("funnymelong"));
		switch (atk_NSpecialProjectile) {
			case 1:
				spawn_hit_fx(x, y - 20, bookpickFX);
				break;
			case 2:
				spawn_hit_fx(x, y - 20, jackpickFX);
				break;
			case 3:
				spawn_hit_fx(x, y - 20, dynamitepickFX);
				break;
		}
		atk_NSpecialRechargeTimer = -1;
	}
	
	// DAir Jumping
	atk_DAirJumpTime--;
	
	if (free == false) {
		atk_DairBounces = 0;
	}
	
	// The COMMAND GRAB Code
	// By Wabungus!
	
	// player with lowest player number will run everything involving the fake other_updates
	if (otherRunIsHighest == true && isPlaytest == false) {
	    if (otherRunTime == 30) {
	        // Whichever player has the lowest player number will get here first
	        with (oPlayer) {
	            try {
	                if (player != other.player) {
	                    otherRunIsHighest = false;
	                }
	            } catch (err) {}
	        }
	        otherRunTime++;
	        
	    } else if (otherRunTime > 30) {
	        // This will run for the player which is supposed to run all your with
	        // calls (oPlayer, pHitbox, etc.)
	        // Set Hitboxes to be grabbed
	        with (pHitBox) {
	            
	            // Setting for base cast & workshop (needs testing)
	            if (type == 2 && !does_not_reflect && !unbashable && ((rnk_intUrl < 100 && rnk_intUrl != noone) || (!plasma_safe && hit_priority != 0))) {
	                // Checks if the variable has been set before
	                if !variable_instance_exists(self, "grabObjectType") {
	                    grabObjectType = 2;
	                    // If I end up needing to make code to fix players not aligning their sprites correctly I will destroy whoever is reading this
	                    // Note: Do not destroy self. Its bad gamefeel :skull_emoji:
	                    grabObjectCenter_x = 0; //sprite_xoffset
	                    grabObjectCenter_y = 0; //sprite_yoffset
	                    // NOTE: If you would like your hitbox to not be grabbable specifically, set this to zero on its creation
	                    
	                    // Store initial movement stats to be used
			        	projInitial_hsp = hsp;
			        	projInitial_vsp = vsp;
	                }
	                // Check every value in list for duplicates
	                var listsize = ds_list_size(other.grabHitboxID);
	                var valexists = true;
	                for (i = 0; i < listsize; i++) {
	                	if (id == other.grabHitboxID[|i]) {
	                		valexists = false;
	                	}
	                }
	                // Add hitbox to list of hitboxes
	                if (valexists == true) {
	                	ds_list_add(other.grabHitboxID, id);
	                }
	            } else {
	                // Checks if the variable has been set before
	                if !variable_instance_exists(self, "grabObjectType") {
	                    // Sets any hitboxes that don't already have a grab type set
	                    // so that they can never be grabbed
	                    // throw errors down bellow
	                    grabObjectType = 0;
	                    grabObjectCenter_x = 0;
	                    grabObjectCenter_y = 0;
	                    
	                    // Store initial movement stats to be used
			        	projInitial_hsp = hsp;
			        	projInitial_vsp = vsp;
	                } else {
	                	// Add to list for workshop characters with hitboxes that specifically say they are grabbable but don't
	                	// meet the normal criteria for being added
	                	if (grabObjectType == 2) {
			                var listsize = ds_list_size(other.grabHitboxID);
			                var valexists = true;
			                // Check every value in list for duplicates
			                for (i = 0; i < listsize; i++) {
			                	if (id == other.grabHitboxID[|i]) {
			                		valexists = false;
			                	}
			                }
			                if (valexists == true) {
			                	ds_list_add(other.grabHitboxID, id);
			                }
	                	}
	                }
	            }
	            
	            // Detect if grab should start (grabbing hitbox hit)
	            if (player_id.grabCanHitbox == true && player_id.grabId == 0) {
	                // Check all values in list
	                var listsize = ds_list_size(other.grabHitboxID);
	                // Check all hitboxes from base cast
	                for (i = 0; i < listsize; i++) {
	                	var currentID = other.grabHitboxID[| i];
	                	// Check if hitbox is still existant
	                	if instance_exists(currentID) {
	                		var possibleHitbox = place_meeting(x, y, currentID);
		                	if (point_distance( x, y, currentID.x, currentID.y) < 60 && player_id.grabId == 0 && currentID != id) {
		                		
			                    player_id.grabId = currentID;
			                    
			                    player_id.grabStartX = x;
				                player_id.grabStartY = y;
				                
			                    player_id.has_hit = true;
			                    
			                    // Opponent's damage at start of grab (used for falling out early)
			                    player_id.grabOpponetDamage = 30;
			                    
			                    // Sets to be parried
			                    currentID.was_parried = true;
			                    
			                    // Values stored from grabbing hitbox (used if hitbox should somehow fall out of the grab early)
			                    player_id.grabKnockbackScaling = kb_scale;
			                    player_id.grabHitBoxDamage = damage;
			                    player_id.grabKnockback = kb_value;
			                    player_id.grabLaunchAngle = get_hitbox_angle( self );
			                    
			                    player_id.grabHitboxWidth = image_xscale;
			                    player_id.grabHitboxHeight = image_yscale;
			                    
			                    possibleHitbox = false;
			                    
			                    spawn_hit_fx(x + hit_effect_x, y + hit_effect_y, hit_effect);
	        					sound_play(sound_effect);
			                    
			                    // End to prevent further checks
			                    break;
			                }
	                	}
	                }
	            }
	        }
	        
	        with (oPlayer) {
	        	// Make sure this only runs if they have something being grabbed
	        	if (grabId != 0) {
	        		// Attempts to locate the caught projectile
	        		try {
		        		switch (grabId.grabObjectType) {
		        			case 1:
			        			// Player Grab Release
			        			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
								    // hsp & vsp for player that is released
								    var force = get_kb_formula(30, 0.9, 1.0, grabHitBoxDamage, grabKnockback, grabKnockbackScaling);
	        						grabId.hsp = lengthdir_x( force, grabLaunchAngle );
	        						grabId.vsp = lengthdir_y( force, grabLaunchAngle );
								    if (grabId.visible == false) {
								        grabId.visible = true;
								    }
								    grabId = 0;
									grabEasingTimer = 0;
									positionsCurrent = 0;
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
			        			break;
			        			
		        			case 2:
			        			// Hitbox Grab Release
			        			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
									// hsp and vsp already constantly set in attack_update during grab
								    if (grabId.visible == false) {
								        grabId.visible = true;
								    }
								    grabId = 0;
									grabEasingTimer = 0;
									positionsCurrent = 0;
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
			        			break;
			        			
		        			case 3:
			        			// Article Grab Release
			        			if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
								    // hsp & vsp for player that is released
								    var force = get_kb_formula(30, 0.9, 1.0, grabHitBoxDamage, grabKnockback, grabKnockbackScaling);
	        						grabId.hsp = lengthdir_x( force, grabLaunchAngle );
	        						grabId.vsp = lengthdir_y( force, grabLaunchAngle );
								    if (grabId.visible == false) {
								        grabId.visible = true;
								    }
								    grabId = 0;
									grabEasingTimer = 0;
									positionsCurrent = 0;
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
			        			break;
		        		}
		        	} catch (err) {
		        		grabId = 0;
						grabEasingTimer = 0;
						positionsCurrent = 0;
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
	        	} else if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) {
	        		grabCanPlayer = false;
					grabCanHitbox = false;
					grabCanArticle = false;
	        	}
	        }
	    } else {
	        // Amount of time to allow all players to spawn
	        otherRunTime++;
	    }
	}
}