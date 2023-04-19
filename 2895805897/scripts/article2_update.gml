//article1_update

// Enumeration for all animation names
enum Animation {
    Book,
    Jacks,
    Dynamite,
    JackExplode
}

if (flytrapBounceDelay > 0) {
	flytrapBounceDelay--;
}

switch (state) {
	case 1: // Book
		with (oPlayer) {
			// Check if something close by - handle flytrap interaction in flytrap itself
			if (point_distance( other.x, other.y, x, y - char_height / 2) < 30 && id != other.currentOwner && id != other.player_id.CV_cloneID && other.despawningTimer > 0) {
				other.spawnHitbox = true;
				other.getOppDamage = get_player_damage( id.player );
			}
		}
		
		if (arthit_trueHitpause == -15) {
			if (despawningTimer > 0) {
				despawningTimer--;
			} else {
				opacity -= 0.05;
				if (opacity < 0) {
					artDel_activate = true;
				}
			}
		} else {
			despawningTimer = 100;
		}
		
		// Destroy and create rubble
		if (free == false || wall_hit == true || spawnHitbox == true) {
			// Spawn Hitbox
			var book_hitbox = create_hitbox(AT_NSPECIAL, 1, round(x), round(y));
			book_hitbox.player_id = currentOwner;
			book_hitbox.orig_player = currentOwner.player;
			book_hitbox.player = currentOwner.player;
			spawn_hit_fx(x, y, 13);
			
			// Rubble 1
			var bookRubble1 = create_hitbox(AT_NSPECIAL, 10, round(x), round(y));
			bookRubble1.rubbleImage = sprite_get("book_particle");
			//sprite_index = sprite_get("book_particle");
			bookRubble1.rubbleFrame = 0;
			bookRubble1.rubbleRotation = 0;
			bookRubble1.rubbleOpacity = 1;
			var random_dir = random_func( 0, 90, true ) + 45;
			bookRubble1.hsp = 3 * cos(random_dir);
			bookRubble1.vsp = abs(5 * sin(random_dir)) * -1;
			
			// Rubble 2
			var bookRubble2 = create_hitbox(AT_NSPECIAL, 10, round(x), round(y));
			bookRubble2.rubbleImage = sprite_get("book_particle");
			bookRubble2.rubbleFrame = 1;
			bookRubble2.rubbleRotation = 0;
			bookRubble2.rubbleOpacity = 1;
			var random_dir = random_func( 1, 90, true ) + 45;
			bookRubble2.hsp = 3 * cos(random_dir);
			bookRubble2.vsp = abs(5 * sin(random_dir)) * -1;
			
			// Rubble 3
			var bookRubble3 = create_hitbox(AT_NSPECIAL, 10, round(x), round(y));
			bookRubble3.rubbleImage = sprite_get("book_particle");
			bookRubble3.rubbleFrame = 2;
			bookRubble3.rubbleRotation = 0;
			bookRubble3.rubbleOpacity = 1;
			var random_dir = random_func( 2, 90, true ) + 45;
			bookRubble3.hsp = 3 * cos(random_dir);
			bookRubble3.vsp = abs(5 * sin(random_dir)) * -1;
			
			sound_play(asset_get("sfx_obstacle_hit"));
			
			// Despawn
			artDel_activate = true;
		} else {
			CheckForHit();
		}
		break;
		
	case 2: // Jacks
		with (oPlayer) {
			// Check if something close by - handle flytrap interaction in flytrap itself
			if (point_distance( other.x, other.y, x, y - char_height / 2) < 30 && id != other.currentOwner && id != other.player_id.CV_cloneID && other.despawningTimer > 0 && other.jacksMultis <= 0) {
				other.spawnHitbox = true;
				other.getOppDamage = get_player_damage( id.player );
			}
		}
		
		if (arthit_trueHitpause == -15) {
			if (despawningTimer > 0) {
				despawningTimer--;
			} else {
				opacity -= 0.05;
				if (opacity < 0) {
					artDel_activate = true;
				}
			}
		} else {
			despawningTimer = 100;
		}
		
		// Destroy and create rubble
		if ((free == false || wall_hit == true || spawnHitbox == true) && jacksMultis <= 0) {
			vsp = 0;
			hsp = 0;
			artAnim_newAnim = Animation.JackExplode;
			
			// Spawn Hitbox
			var jacksmall_hitbox = create_hitbox(AT_NSPECIAL, 2, round(x), round(y));
			jacksmall_hitbox.player_id = currentOwner;
			jacksmall_hitbox.orig_player = currentOwner.player;
			jacksmall_hitbox.player = currentOwner.player;
			
			// FX
			spawn_hit_fx(x + random_func( 10, 80, true ) - 40, y + random_func( 11, 80, true ) - 40, player_id.jacksmallFX);
			spawn_hit_fx(x + random_func( 12, 80, true ) - 40, y + random_func( 13, 80, true ) - 40, player_id.jacksmallFX);
			spawn_hit_fx(x + random_func( 14, 80, true ) - 40, y + random_func( 15, 80, true ) - 40, player_id.jacksmallFX);
			
			// Rubble Effect
			SpawnRubble(sprite_get("jacks_particle"), 0, 0);
			SpawnRubble(sprite_get("jacks_particle"), 0, 1);
			SpawnRubble(sprite_get("jacks_particle"), 1, 2);
			SpawnRubble(sprite_get("jacks_particle"), 1, 3);
			
			jacksMultis = 1;
			
			sound_play(asset_get("sfx_mobile_gear_deploy"));
		} else if (jacksMultis <= 0) {
			CheckForHit();
		}
		
		break;
		
	case 3: // Dynamite
		with (oPlayer) {
			// Check if something close by - handle flytrap interaction in flytrap itself
			if (point_distance( other.x, other.y, x, y - char_height / 2) < 30 && id != other.currentOwner && id != other.player_id.CV_cloneID && other.despawningTimer > 0) {
				other.spawnHitbox = true;
				other.getOppDamage = get_player_damage( id.player );
			}
		}
		
		if (arthit_trueHitpause == -15) {
			if (despawningTimer > 0) {
				despawningTimer--;
			} else {
				opacity -= 0.05;
				if (opacity < 0) {
					artDel_activate = true;
				}
			}
		} else {
			despawningTimer = 100;
		}
		
		// Destroy and create rubble
		if (free == false || wall_hit == true || spawnHitbox == true) {
			// Spawn Hitbox
			var dynamite_hitbox = create_hitbox(AT_NSPECIAL, 5, round(x), round(y));
			dynamite_hitbox.player_id = currentOwner;
			dynamite_hitbox.orig_player = currentOwner.player;
			dynamite_hitbox.player = currentOwner.player;
			spawn_hit_fx(x + 5 * artAnim_spriteDirection, y, 260);
			
			// Rubble 1
			var bookRubble1 = create_hitbox(AT_NSPECIAL, 10, round(x), round(y));
			bookRubble1.rubbleImage = sprite_get("dynamite_particle");
			//sprite_index = sprite_get("book_particle");
			bookRubble1.rubbleFrame = 0;
			bookRubble1.rubbleRotation = 0;
			bookRubble1.rubbleOpacity = 1;
			var random_dir = random_func( 0, 90, true ) + 45;
			bookRubble1.hsp = 3 * cos(random_dir);
			bookRubble1.vsp = abs(5 * sin(random_dir)) * -1;
			
			// Rubble 2
			var bookRubble2 = create_hitbox(AT_NSPECIAL, 10, round(x), round(y));
			bookRubble2.rubbleImage = sprite_get("dynamite_particle");
			bookRubble2.rubbleFrame = 1;
			bookRubble2.rubbleRotation = 0;
			bookRubble2.rubbleOpacity = 1;
			var random_dir = random_func( 1, 90, true ) + 45;
			bookRubble2.hsp = 3 * cos(random_dir);
			bookRubble2.vsp = abs(5 * sin(random_dir)) * -1;
			
			// Rubble 3
			var bookRubble3 = create_hitbox(AT_NSPECIAL, 10, round(x), round(y));
			bookRubble3.rubbleImage = sprite_get("dynamite_particle");
			bookRubble3.rubbleFrame = 2;
			bookRubble3.rubbleRotation = 0;
			bookRubble3.rubbleOpacity = 1;
			var random_dir = random_func( 2, 90, true ) + 45;
			bookRubble3.hsp = 3 * cos(random_dir);
			bookRubble3.vsp = abs(5 * sin(random_dir)) * -1;
			
			sound_play(asset_get("sfx_forsburn_combust"));
			
			// Despawn
			artDel_activate = true;
		} else {
			CheckForHit();
		}
		
		break;
}

// Gravity & Friction
if (artHit_inGrab == false && arthit_trueHitpause == -15 && artAnim_currentAnim != Animation.JackExplode) {
	if (free == true) {
		// Gravity
		vsp += 0.4;
		// Air Friction
		if (hsp > 0) {
			hsp = max(0, hsp - 0.02);
			// Check if would pass zero, and set to zero
			if (hsp < 0) {
				hsp = 0;
			}
		} else if (hsp < 0) {
			hsp = min(0, hsp + 0.02);
			// Check if would pass zero, and set to zero
			if (hsp > 0) {
				hsp = 0;
			}
		}
	} else {
		if (hsp > 0) {
			hsp = max(0, hsp - 0.4);
			// Check if would pass zero, and set to zero
			if (hsp < 0) {
				hsp = 0;
			}
		} else if (hsp < 0) {
			hsp = min(0, hsp + 0.4);
			// Check if would pass zero, and set to zero
			if (hsp > 0) {
				hsp = 0;
			}
		}
	}
}


// Animation Handling
if (artAnim_currentAnim != artAnim_newAnim) {
	artAnim_frame = 0;
	artAnim_timer = 0;
	artAnim_window = 0;
	artAnim_active = false;
	// Destroy all active hitboxes from article
	for (var i = 0; i < ds_list_size(artAnim_activeHitboxes); i++) {
		// teleports far away and enables destroyed
		if (instance_exists(artAnim_activeHitboxes[|i])) {
			artAnim_activeHitboxes[|i].y = -5000;
			artAnim_activeHitboxes[|i].destroyed = true;
		}
	}
	// Clear out the list of active hitboxes
	ds_list_clear(artAnim_activeHitboxes);
	// Set new
	artAnim_currentAnim = artAnim_newAnim;
}

switch (artAnim_currentAnim) {
    // Normal Animations
	case Animation.Book:
		ArtAnim(sprite_get("book"), sprite_get("book_hbox"), [20], [4], [0], true);
		break;
	case Animation.Jacks:
		ArtAnim(sprite_get("jacks"), sprite_get("jacks_hbox"), [10], [2], [0], true);
		break;
	case Animation.Dynamite:
		ArtAnim(sprite_get("dynamite"), sprite_get("dynamite_hbox"), [20], [4], [0], true);
		break;
	case Animation.JackExplode:
		ArtAnim(sprite_get("jacks_hbox"), sprite_get("jacks_hbox"), [10], [1], [0], true);
		break;
}

if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256)
    artDel_activate = true;
}

// Delete Article
if (artDel_activate == true) {
	// Destroy Lists (prevents memory leaks)
	ds_list_destroy(artHit_hbGroup);
	ds_list_destroy(artHit_hbTempStorage);
	ds_list_destroy(artAnim_activeHitboxes);
	instance_destroy();
}

#define CheckForHit()

// Checks if last hitbox to hit exists, and if it doesn't removes its reference
if (artHit_hbLastID != 0) {
	if (!instance_exists(artHit_hbLastID)) {
		artHit_hbLastID = 0;
	}
}

// Check for hitboxes being removed
// Fun fact article hit sucks so we are returning to the one true way: pHitbox trolling
// This will add in the ids of any hitboxes which on this frame hit the article to a list
with (pHitBox) {
	if (place_meeting(x,y,other.id) // Checks if position of projectile overlaps with article
	    && damage > 0 // Makes sure the attack deals more than 0 damage
	    && effect != 9 // Ignores Polite hitboxes
	    && kb_value != 0 // Ignores hitboxes with no knockback
	    && hit_priority != 0 // Ignores hitboxes with hit priority of 0
	    && hitpause != 0 // Ignores windbox type moves
	    && (type != 2 || plasma_safe == true) // Ignores true projectiles)
	    && other.artHit_hbLastID == 0) // Last hitbox doesn't exist
	    {
	    
	    // Check if hitboxes are of same group, player, and attack
	    var allowHit = true;
	    
		// Checks group value when compared to previously successful hitboxes
		// Looks through each hitbox in list
		for (i = 0; i < ds_list_size(other.artHit_hbGroup); i++) {
			// Checks if GROUP is equal
			if (other.artHit_hbGroup[|i] == hbox_group && hbox_group != -1) {
				// Group was equal to an older hitbox, so ignore it
				allowHit = false;
			}
		}
		
		// Checks all hitboxes with different priorities have hit on same frame, to pick one with highest priority
		if (other.artHit_hbVerify != 0) {
			// Checks if PLAYER is equal
			if (other.artHit_hbVerify.player_id == player_id ) {
				// Checks PRIORITY
		    	if (other.artHit_hbVerify.hit_priority > hit_priority) {
		    		// Hitbox had a lower priority than another one that hit in this frame, so this one is ignored
		    		allowHit = false;
		    	}
			}
		}
		
		// Hit lockout for projectiles
		if (other.arthit_lockout > 0) {
			allowHit = false;
		}
		
		if (variable_instance_exists(id, "hitSelf") == true) {
			allowHit = hitSelf;
		}
		
		// Add to pass through hitbox list (once all hitboxes hitting this frame have been checked all these will be added to main hit list)
		if (ds_list_find_index(other.artHit_hbTempStorage, id) == -1 && id != other.artHit_hbLastID && allowHit == true) {
			ds_list_add(other.artHit_hbTempStorage, id);
		}
		
		// Hitbox is valid thus can hit the player
		if (allowHit == true && id != other.artHit_hbLastID) {
			other.artHit_hbVerify = id;
		}
	}
}

if (artHit_hbVerify != 0) {
	if (arthit_lockout <= 0) {
		arthit_lockout = 3;
	} else {
		arthit_lockout--;
		artHit_hbVerify = 0;
	}
} else {
	arthit_lockout--;
}

// Will check all hitboxes just added to list to see which one has highest priority (will use it for getting hit stats)
if (artHit_hbVerify != 0) {
	// Set actual getting hit stuff
	artHit_Hitstop = 10;
	
	// Set special things to happen on hit
	OnHitAction();
	
	// Stores the last hitbox to be allowed to hit the article. If this hitbox ceases to live it will reduce total time in hitstop for article greatly
	artHit_hbLastHitID = artHit_hbVerify;
	artHit_hbHitPlayer = artHit_hbLastHitID.player;
	
	// Push all temp storage to livingID
	var tempListSize = ds_list_size(artHit_hbTempStorage);
	for (i = 0; i < tempListSize; i++) {
		ds_list_add(artHit_hbGroup, artHit_hbTempStorage[|i].hbox_group);
	}
	
	// Clear extras
	ds_list_clear(artHit_hbTempStorage);
	artHit_hbLastID = artHit_hbVerify;
	artHit_hbVerify = 0;
}

// If hitstop is greater than 0
if (artHit_Hitstop > 0 && artHit_hbLastID == 0) {
	// Hitstop goes down
		artHit_Hitstop--;
} else if (artHit_Hitstop <= 0 && artHit_Hitstop > -20) {
	// Custom on hitstun end code
	HitlockEndAction();
	
	// Fixing info stuff
	artHit_hbLastHitID = 0;
	ds_list_clear(artHit_hbGroup);
	artHit_Hitstop = -20;
}
artHit_hbSkipRemaining = false;

// Grab Check
if (artHit_inGrab == true) {
	with (artHit_grabberID) {
		if (grabId != other.id) {
			other.artHit_inGrab = false;
		}
	}
}

// Hitpause to Hitstun
if (arthit_trueHitpause > 0 && artHit_inGrab == false) {
	vsp = 0;
	hsp = 0;
	arthit_trueHitpause--;
} else if (arthit_trueHitpause <= 0 && arthit_trueHitpause > -10) {
	HitstunStartAction();
	arthit_trueHitpause = -15;
}

#define OnHitAction() // Runs at the moment a hitbox successfully hits the article (put whatever you want here)

// Do this on hit
if (artHit_hbVerify.player_id == player_id) {
	if (artHit_health > 0 || artHit_healthInitial == -4) { // Doesn't allow player to hit own article at max health (-4 is for if health isn't in use)
	    // Get other player's id
		var hitboxOwnerID = artHit_hbVerify.player_id;
		
		ownerColor = get_player_hud_color( artHit_hbVerify.player_id.player );
		
		// Must be run here to access opponent's special assets
		with (hitboxOwnerID) {
			// Hit Effect
		    if (other.artHit_oHitHFX == -1) {
		        spawn_hit_fx(other.artHit_hbVerify.x + other.artHit_hbVerify.hit_effect_x, other.artHit_hbVerify.y + other.artHit_hbVerify.hit_effect_y, other.artHit_hbVerify.hit_effect); // opponent's hit effect
		    } else {
		        spawn_hit_fx(other.artHit_hbVerify.x + other.artHit_hbVerify.hit_effect_x, other.artHit_hbVerify.y + other.artHit_hbVerify.hit_effect_y, other.artHit_oHitHFX); // custom hit effect
		    }
		    
		    // Sound
			if (other.artHit_oSound == -1) {
			    sound_play(other.artHit_hbVerify.sound_effect); // hitbox sound
			} else {
			    sound_play(other.artHit_oSound); // note that this must be a sound / asset get
			}
		}
		
		// Article enters hitpause
    	if (artHit_oHitPSelf == true) {
    	    var orig_knock = get_kb_formula(50, artHit_kbAdjust, 1, artHit_hbVerify.damage, artHit_hbVerify.kb_value, artHit_hbVerify.kb_scale);
        	var quick_dir = get_hitbox_angle( artHit_hbVerify );
	    	if (quick_dir > 90 && quick_dir < 270) {
	    		artAnim_spriteDirection = 1;
	    	} else if (quick_dir < 90 || quick_dir > 270) {
	    		artAnim_spriteDirection = -1;
	    	}
        	// set time article will be frozen in place
        	arthit_trueHitpause = get_hitstop_formula(15, artHit_hbVerify.damage, 3, 0, 0);
    		
    		// Controller rumble
        	//ControllerVibrate(orig_knock, arthit_trueHitpause, artHit_hbVerify.player_id);
    	}
    	
    	// Attacker enters hitpause on hit
		if (artHit_eHitPAtk == true && artHit_hbVerify.type != 2) {
    		artHit_hbVerify.player_id.old_hsp = artHit_hbVerify.player_id.hsp;
	    	artHit_hbVerify.player_id.old_vsp = artHit_hbVerify.player_id.vsp;
    	    artHit_hbVerify.player_id.hitpause = true;
    	    artHit_hbVerify.player_id.hitstop_full = get_hitstop_formula(50, artHit_hbVerify.damage, artHit_hbVerify.hitpause, artHit_hbVerify.hitpause_growth, 0);
    	    artHit_hbVerify.player_id.hitstop = artHit_hbVerify.player_id.hitstop_full;
    	}
		
		// Sound
    	if (artHit_oSound == -1) {
    	    sound_play(artHit_hbVerify.sound_effect); // hitbox sound
    	} else {
    	    sound_play(artHit_oSound); // note that this must be a sound / asset get
    	}
		
		// Camera Shake
		if (artHit_oShakeIntensity != 0 && artHit_oShakeTime != 0) {
		    shake_camera( artHit_oShakeIntensity, artHit_oShakeTime );
		}
		
		// Get Launch Data
		if (artHit_oLauching == true) {
		    artHit_launchFinalKB = get_kb_formula(50, artHit_kbAdjust, 1, artHit_hbVerify.damage, artHit_hbVerify.kb_value, artHit_hbVerify.kb_scale);
		    if (artHit_hbVerify.attack == AT_DAIR) {
		    	artHit_launchDirection = 270;
		    } else {
		    	artHit_launchDirection = get_hitbox_angle( artHit_hbVerify );
		    }
	    	
		    
		    // Set Owner
		    currentOwner = artHit_hbVerify.player_id;
		    artHit_hbVerify.player_id.has_hit = true;
		    
		    // Command Grab
			// Gets info from grabbed article
			if (artHit_grabbable == true && artHit_hbVerify.player_id.grabCanArticle == true && artHit_hbVerify.player_id.grabId == 0 && artHit_inGrab == false) {
			    // Grabbed Player's Id (long number attached to the player)
			    artHit_hbVerify.player_id.grabId = id;
			    
			    // Tells player something has been hit
			    artHit_hbVerify.player_id.has_hit = true;
			    
			    // Starting positions for grab movement
			    artHit_hbVerify.player_id.grabStartX = x;
			    artHit_hbVerify.player_id.grabStartY = y;
			    
			    // Opponent's damage at start of grab (used for falling out early)
			    artHit_hbVerify.player_id.grabOpponetDamage = 30;
			    
			    // Values stored from grabbing hitbox (used if player should somehow fall out of the grab early)
			    artHit_hbVerify.player_id.grabKnockbackScaling = artHit_hbVerify.kb_scale;
		    	artHit_hbVerify.player_id.grabHitBoxDamage = artHit_hbVerify.damage;
		    	artHit_hbVerify.player_id.GrabKnockback = artHit_hbVerify.kb_value;
		    	artHit_hbVerify.player_id.GrabLaunchAngle = artHit_launchDirection;
			    
			    artHit_inGrab = true;
			    artHit_grabberID = artHit_hbVerify.player_id;
			}
		}
	}
} else if (artHit_health > 0 || artHit_healthInitial == -4) { // Won't run if health is 0 (-4 is for if health isn't in use)
	// Get other player's id
	var hitboxOwnerID = artHit_hbVerify.player_id;
	
	ownerColor = get_player_hud_color( artHit_hbVerify.player_id.player );
	
	// Must be run here to access opponent's special assets
	with (hitboxOwnerID) {
		// Hit Effect
	    if (other.artHit_eHitHFX == -1) {
	        spawn_hit_fx(other.artHit_hbVerify.x + other.artHit_hbVerify.hit_effect_x, other.artHit_hbVerify.y + other.artHit_hbVerify.hit_effect_y, other.artHit_hbVerify.hit_effect); // opponent's hit effect
	    } else {
	        spawn_hit_fx(other.artHit_hbVerify.x + other.artHit_hbVerify.hit_effect_x, other.artHit_hbVerify.y + other.artHit_hbVerify.hit_effect_y, other.artHit_eHitHFX); // custom hit effect
	    }
	    
	    // Sound
		if (other.artHit_eSound == -1) {
		    sound_play(other.artHit_hbVerify.sound_effect); // hitbox sound
		} else {
		    sound_play(other.artHit_eSound); // note that this must be a sound / asset get
		}
	}
    
	// Article enters hitpause
	if (arthit_eHitPSelf == true) {
	    var orig_knock = get_kb_formula(50, 1.1, 1, artHit_hbVerify.damage, artHit_hbVerify.kb_value, artHit_hbVerify.kb_scale);
    	// Set Sprite Direction (based on hitbox that hit)
    	var quick_dir = get_hitbox_angle( artHit_hbVerify );
    	if (quick_dir > 90 && quick_dir < 270) {
    		artAnim_spriteDirection = 1;
    	} else if (quick_dir < 90 || quick_dir > 270) {
    		artAnim_spriteDirection = -1;
    	}
    	// set time article will be frozen in place
		arthit_trueHitpause = get_hitstop_formula(15, artHit_hbVerify.damage, 3, 0, 0);
		// Controller rumble
        //ControllerVibrate(orig_knock, arthit_trueHitpause, artHit_hbVerify.player_id);
	}
	
	// Attacker enters hitpause on hit
	if (artHit_eHitPAtk == true && artHit_hbVerify.type != 2) {
		artHit_hbVerify.player_id.old_hsp = artHit_hbVerify.player_id.hsp;
	    artHit_hbVerify.player_id.old_vsp = artHit_hbVerify.player_id.vsp;
	    artHit_hbVerify.player_id.hitpause = true;
	    artHit_hbVerify.player_id.hitstop_full = get_hitstop_formula(50, artHit_hbVerify.damage, artHit_hbVerify.hitpause, artHit_hbVerify.hitpause_growth, 0);
	    artHit_hbVerify.player_id.hitstop = artHit_hbVerify.player_id.hitstop_full;
	}
	
	// Camera Shake
	if (artHit_eShakeIntensity != 0 && artHit_eShakeTime != 0) {
	    shake_camera( artHit_eShakeIntensity, artHit_eShakeTime );
	}
	
	// Get Launch Data
	if (artHit_eLauching == true) {
		// Normal Launch
	    artHit_launchFinalKB = get_kb_formula(50, artHit_kbAdjust, 1, artHit_hbVerify.damage, artHit_hbVerify.kb_value, artHit_hbVerify.kb_scale);
	    artHit_launchDirection = get_hitbox_angle( artHit_hbVerify );
	    
	    // Set Owner
		currentOwner = artHit_hbVerify.player_id;
		artHit_hbVerify.player_id.has_hit = true;
	    
	    // Command Grab
		// Gets info from grabbed article
		if (artHit_grabbable == true && artHit_hbVerify.player_id.grabCanArticle == true && artHit_hbVerify.player_id.grabId == 0) {
		    // Grabbed Player's Id (long number attached to the player)
		    artHit_hbVerify.player_id.grabId = id;
		    
		    // Tells player something has been hit
		    artHit_hbVerify.player_id.has_hit = true;
		    
		    // Starting positions for grab movement
		    artHit_hbVerify.player_id.grabStartX = x;
		    artHit_hbVerify.player_id.grabStartY = y;
		    
		    // Opponent's damage at start of grab (used for falling out early)
		    artHit_hbVerify.player_id.grabOpponetDamage = 50;
		    
		    // Values stored from grabbing hitbox (used if player should somehow fall out of the grab early)
		    artHit_hbVerify.player_id.grabKnockbackScaling = artHit_hbVerify.kb_scale;
		    artHit_hbVerify.player_id.grabHitBoxDamage = artHit_hbVerify.damage;
		    artHit_hbVerify.player_id.GrabKnockback = artHit_hbVerify.kb_value;
		    artHit_hbVerify.player_id.GrabLaunchAngle = artHit_launchDirection;
		    
		    artHit_inGrab = true;
		    artHit_grabberID = artHit_hbVerify.player_id;
		}
	}
}

#define HitstunStartAction() // When the article is out of hitpause, and enters hitstun

// REMEMBER TO CODE ON GRAB STUFF

// Launch article
if (artHit_launchFinalKB != 0) {
    hsp = lengthdir_x( artHit_launchFinalKB, artHit_launchDirection );
    vsp = lengthdir_y( artHit_launchFinalKB, artHit_launchDirection );
    
    // Reset
    artHit_launchFinalKB = 0;
    artHit_launchDirection = 0;
}

#define HitlockEndAction() // Runs when the article gets out of its multihit protection (put whatever code you want here)
// What player hit last
if (artHit_hbHitPlayer != player_id.player) {
    if (artHit_healthInitial != -4) { // If the article has health, manage it here
        // Enemy Player
    	artHit_health--;
    }
} else {
    if (artHit_healthInitial != -4) { // If the article has health, manage it here
        artHit_health = artHit_healthInitial;
    }
}


#define ArtAnim(displayedImage, hurtboxImage, windowLengths, windowFrames, windowFStart, interruptable) // Normal Animation (no attack stuff)

/* displayedImage -> The image to use when displaying the animation
 * hurtboxImage -> The hurtbox to use for the article during the animation
 * windowLengths -> The length of each window in the animation
 * windowFrames -> The number of frames in each window (values must exist for all existing windows)
 * windowFStart -> The frame to start each window at (will end at windowFStart + windowFrames)
 * interruptable - > can the animation be interrupted by another animation
 */

sprite_index = hurtboxImage;

// Like the normal animation system, except it supports 
var numberWindows = array_length(windowLengths);

// can be interrupted
artAnim_interruptible = interruptable;

// Window Changing
if (artAnim_hitpause <= 0) {
	if (artAnim_window < numberWindows) {
		// ANIMATION
		// Check if within windows
		if (artAnim_timer < windowLengths[artAnim_window] - 1) {
			// Check if winthin window length
			artAnim_frame = floor(windowFrames[artAnim_window] - windowFrames[artAnim_window] * (windowLengths[artAnim_window] - artAnim_timer) / windowLengths[artAnim_window] + windowFStart[artAnim_window]);
			artAnim_timer++;
		} else {
			// Outside window length
			artAnim_frame = windowFrames[artAnim_window] + windowFStart[artAnim_window] - 1;
			artAnim_timer = 0;
			artAnim_window++;
		}
	} else {
		// End animation
		artAnim_frame = 0;
		artAnim_timer = 0;
		artAnim_window = 0;
		artAnim_stickFrame = true;
		artAnim_interruptible = true;
		AnimEnd();
	}
	
	// Sets current animation & hitbox to be as player desires
	if (artAnim_stickFrame == false) {
		// animation
		artAnim_image = displayedImage;
		
		// Hitbox
		new_sprite = hurtboxImage;
		image_index = artAnim_frame;
	}
	artAnim_stickFrame = false;
} else {
	artAnim_hitpause--;
}

#define ArtAnimSound(displayedImage, hurtboxImage, windowLengths, windowFrames, windowFStart, interruptable, soundPlay, soundCustom, soundWindow, soundFrame) // Runs with sound

/* displayedImage -> The image to use when displaying the animation
 * hurtboxImage -> The hurtbox to use for the article during the animation
 * windowLengths -> The length of each window in the animation
 * windowFrames -> The number of frames in each window (values must exist for all existing windows)
 * windowFStart -> The frame to start each window at (will end at windowFStart + windowFrames)
 * interruptable - > can the animation be interrupted by another animation
 * soundPlay -> The sounds to play
 * soundCustom -> true/false if the sound is from the sounds folder or from base cast
 * soundWindow -> Thw window to play sound
 * soundFrame -> The frame in the window to play sound
 */

// Like the normal animation system, except it supports 
var numberWindows = array_length(windowLengths);
var numberSounds = array_length(soundPlay);

// Only run these while within proper lengths
if (artAnim_window < numberWindows && artAnim_timer < windowLengths[artAnim_window]) {
	// SOUND
	// Run through each sound's stats
	for (var i = 0; i < numberSounds; i++) {
		// Check if window and frame are equal
		if (soundWindow[i] - 1 == artAnim_window && soundFrame[i] == artAnim_timer) {
			// Create hitbox based on input stats
			var soundFX = soundPlay[i];
			if (soundCustom == true) {
				sound_play( sound_get(soundPlay[i]) );
			} else {
				sound_play( asset_get(soundPlay[i]) );
			}
		}
	}
}

// Animation itself
if (arthit_multiOverload == false) {
	ArtAnim(displayedImage, hurtboxImage, windowLengths, windowFrames, windowFStart, interruptable);
}

#define ArtAtk(displayedImage, hurtboxImage, windowLengths, windowFrames, windowFStart, interruptable, hitboxWindow, hitboxFrame, hitboxAttack, hitboxNumber, hitboxXOffset, hitboxYOffset)

/* displayedImage -> The image to use when displaying the animation
 * hurtboxImage -> The hurtbox to use for the article during the animation
 * windowLengths -> The length of each window in the animation
 * windowFrames -> The number of frames in each window (values must exist for all existing windows)
 * windowFStart -> The frame to start each window at (will end at windowFStart + windowFrames)
 * hitboxWindow -> The window each hitbox should spawn at
 * hitboxFrame -> The frame in the window the hitbox should spawn at
 * interruptable - > can the animation be interrupted by another animation
 * hitboxAttack -> The attack the hitbox comes from (this is an enumeration for attack names, like when creating hitboxes normally)
 * hitboxNumber -> The hitbox number to pull from the attack
 * hitboxXOffset & hitboxYOffset -> Offset from article's position
 * NOTE: Hitbox stats are still controlled by the hitboxes themselves, you'll need to set up separately
 */

// A simpler animation system, that can be called to determine active frames from animations
var numberWindows = array_length(windowLengths);
var numberHitboxes = array_length(hitboxAttack);

// Only run these while within proper lengths
if (artAnim_window < numberWindows && artAnim_timer < windowLengths[artAnim_window]) {
	// ATTACK HITBOXES
	// Run through each hitbox's stats
	for (var i = 0; i < numberHitboxes; i++) {
		// Check if window and frame are equal
		if (hitboxWindow[i] - 1 == artAnim_window && hitboxFrame[i] == artAnim_timer) {
			// Create hitbox based on input stats
			var created_hitbox = create_hitbox(hitboxAttack[i], hitboxNumber[i], round(x + hitboxXOffset[i] * artAnim_spriteDirection), round(y + hitboxYOffset[i]));
			// Set Launch Direction with Sprite Direction (normally right facing based)
			if (artAnim_spriteDirection == -1 && created_hitbox.hit_flipper == 0) {
				if (created_hitbox.kb_angle >= 0 && created_hitbox.kb_angle < 90) {
					// Angles 0 - 89
					created_hitbox.kb_angle = 180 - created_hitbox.kb_angle;
				} else if (created_hitbox.kb_angle > 90 && created_hitbox.kb_angle <= 180) {
					// Angles 91 - 180
					created_hitbox.kb_angle = 90 + (90 - created_hitbox.kb_angle);
				} else if (created_hitbox.kb_angle > 180 && created_hitbox.kb_angle < 270) {
					// Angles 181 - 269
					created_hitbox.kb_angle = 360 - created_hitbox.kb_angle;
				} else if (created_hitbox.kb_angle > 270 && created_hitbox.kb_angle <= 360) {
					// Angles 271 - 360
					created_hitbox.kb_angle = 180 + (360 - created_hitbox.kb_angle);
				}
			}
			created_hitbox.artHit = false;
			created_hitbox.hitSelf = false;
			// Add hitbox to list of all article hitboxes
			ds_list_add(artAnim_activeHitboxes, created_hitbox);
		}
	}
	
	// Check all hitboxes to see if they have hit something
	for (var i = 0; i < ds_list_size(artAnim_activeHitboxes); i++) {
		// Check if hitbox has hit something
		if (instance_exists(artAnim_activeHitboxes[|i])) { // variable_instance_exists(my_hitboxID, "playerHitIDs") && variable_instance_exists(my_hitboxID, "playerHitIDs") put in the for loop
			if (artAnim_activeHitboxes[|i].artHit == false) {
				// Getting Player Hit Damage (actually insane code vomit, go check hit_player for more)
				var playerDamage = -1;
				for (var i = 0; i < 8; i++) {
					if (variable_instance_exists(artAnim_activeHitboxes[|i], "playerHitIDs") && variable_instance_exists(artAnim_activeHitboxes[|i], "playerHitIDs")) {
						if (artAnim_activeHitboxes[|i].playerHitIDs[@i] != 0 && artAnim_activeHitboxes[|i].playerHitChecked[@i] == false) {
							playerDamage = get_player_damage( artAnim_activeHitboxes[|i].playerHitIDs[@i].player );
							artAnim_activeHitboxes[|i].playerHitChecked[@i] = true;
							break;
						}
					}
				}
				if (playerDamage >= 0) {
					artAnim_hitpause = floor(get_hitstop_formula(playerDamage, artAnim_activeHitboxes[|i].damage, artAnim_activeHitboxes[|i].hitpause, artAnim_activeHitboxes[|i].hitpause_growth, 0) - 1);
					// hitbox will no longer activate
					artAnim_activeHitboxes[|i].artHit = true;
				}
			}
		}
	}
}

// Animation itself
if (arthit_multiOverload == false) {
	ArtAnim(displayedImage, hurtboxImage, windowLengths, windowFrames, windowFStart, interruptable);
}

#define ArtAtkSound(displayedImage, hurtboxImage, windowLengths, windowFrames, windowFStart, interruptable, hitboxWindow, hitboxFrame, hitboxAttack, hitboxNumber, hitboxXOffset, hitboxYOffset, soundPlay, soundCustom, soundWindow, soundFrame)

/* displayedImage -> The image to use when displaying the animation
 * hurtboxImage -> The hurtbox to use for the article during the animation
 * windowLengths -> The length of each window in the animation
 * windowFrames -> The number of frames in each window (values must exist for all existing windows)
 * windowFStart -> The frame to start each window at (will end at windowFStart + windowFrames)
 * hitboxWindow -> The window each hitbox should spawn at
 * hitboxFrame -> The frame in the window the hitbox should spawn at
 * hitboxAttack -> The attack the hitbox comes from (this is an enumeration for attack names, like when creating hitboxes normally)
 * hitboxNumber -> The hitbox number to pull from the attack
 * hitboxXOffset & hitboxYOffset -> Offset from article's position
 * NOTE: Hitbox stats are still controlled by the hitboxes themselves, you'll need to set up separately
 * soundPlay -> The sounds to play
 * soundCustom -> true/false if the sound is from the sounds folder or from base cast
 * soundWindow -> Thw window to play sound
 * soundFrame -> The frame in the window to play sound
 */

// Prevent running Art Anim in the extras
arthit_multiOverload = true;

// Animation itself
ArtAnim(displayedImage, hurtboxImage, windowLengths, windowFrames, windowFStart, interruptable);

// Sound effects
ArtAnimSound(displayedImage, hurtboxImage, windowLengths, windowFrames, interruptable, windowFStart, soundPlay, soundCustom, soundWindow, soundFrame)

// Hitbox creation
ArtAtk(displayedImage, hurtboxImage, windowLengths, windowFrames, windowFStart, interruptable, hitboxWindow, hitboxFrame, hitboxAttack, hitboxNumber, hitboxXOffset, hitboxYOffset);

arthit_multiOverload = false;

#define AnimEnd() // Runs whenever an animation ends

switch (state) {
	case 1:
	artAnim_newAnim = Animation.Book;
	//artAnim_image = sprite_get("book");
	break;
	case 2:
	switch (artAnim_currentAnim) {
		case Animation.Jacks:
			artAnim_newAnim = Animation.Jacks;
			break;
		case Animation.JackExplode:
			if (jacksMultis < 4) {
				switch (jacksMultis) {
					// Hit 1
					case 1:
						// Spawn Hitbox
						var jacksmall_hitbox = create_hitbox(AT_NSPECIAL, 3, round(x), round(y));
						jacksmall_hitbox.player_id = currentOwner;
						jacksmall_hitbox.orig_player = currentOwner.player;
						jacksmall_hitbox.player = currentOwner.player;
						
						// FX
						spawn_hit_fx(x + random_func( 10, 80, true ) - 40, y + random_func( 11, 80, true ) - 40, player_id.jacksmallFX);
						spawn_hit_fx(x + random_func( 12, 80, true ) - 40, y + random_func( 13, 80, true ) - 40, player_id.jacksmallFX);
						spawn_hit_fx(x + random_func( 14, 80, true ) - 40, y + random_func( 15, 80, true ) - 40, player_id.jacksmallFX);
						
						// Rubble Effect
						SpawnRubble(sprite_get("jacks_particle"), 0, 0);
						SpawnRubble(sprite_get("jacks_particle"), 0, 1);
						SpawnRubble(sprite_get("jacks_particle"), 1, 2);
						SpawnRubble(sprite_get("jacks_particle"), 1, 3);
						
						break;
					case 2:
						// Spawn Hitbox
						var jacksmall_hitbox = create_hitbox(AT_NSPECIAL, 2, round(x), round(y));
						jacksmall_hitbox.player_id = currentOwner;
						jacksmall_hitbox.orig_player = currentOwner.player;
						jacksmall_hitbox.player = currentOwner.player;
					
						// FX
						spawn_hit_fx(x + random_func( 10, 80, true ) - 40, y + random_func( 11, 80, true ) - 40, player_id.jacksmallFX);
						spawn_hit_fx(x + random_func( 12, 80, true ) - 40, y + random_func( 13, 80, true ) - 40, player_id.jacksmallFX);
						spawn_hit_fx(x + random_func( 14, 80, true ) - 40, y + random_func( 15, 80, true ) - 40, player_id.jacksmallFX);
						
						// Rubble Effect
						SpawnRubble(sprite_get("jacks_particle"), 0, 0);
						SpawnRubble(sprite_get("jacks_particle"), 0, 1);
						SpawnRubble(sprite_get("jacks_particle"), 1, 2);
						SpawnRubble(sprite_get("jacks_particle"), 1, 3);
						
						break;
					// Final Hit
					case 3:
					// Hitbox
					var jackbig_hitbox = create_hitbox(AT_NSPECIAL, 4, round(x), round(y));
					jackbig_hitbox.player_id = currentOwner;
					jackbig_hitbox.orig_player = currentOwner.player;
					jackbig_hitbox.player = currentOwner.player;
					spawn_hit_fx(x, y, player_id.jackbigFX);
					
					// Rubble Effect
					SpawnRubble(sprite_get("jacks_particle"), 0, 0);
					SpawnRubble(sprite_get("jacks_particle"), 0, 1);
					SpawnRubble(sprite_get("jacks_particle"), 1, 2);
					SpawnRubble(sprite_get("jacks_particle"), 1, 3);
					SpawnRubble(sprite_get("jacks_particle"), 2, 4);
					
					sound_play(asset_get("sfx_mobile_gear_jump"));
					
					break;
				}
				jacksMultis++;
			} else {
				// Despawn
				artDel_activate = true;
			}
			artAnim_newAnim = Animation.JackExplode;
			break;
	}
	
	//artAnim_image = sprite_get("jacks");
	break;
	case 3:
	artAnim_newAnim = Animation.Dynamite;
	//artAnim_image = sprite_get("dynamite");
	break
	
}


#define ControllerVibrate(CV_kb, CV_hitstop, CV_playerID)

// CV_kb = kb amount to use for controller rumble strength
// CV_hitstop = hitstop amount to use for controller rumble strength
// CV_playerID = player Id of player to give controller vibrate to

// Controller Vibration effect
with (player_id) {
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, CV_kb);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, CV_hitstop);
}
var CV_hitbox = create_hitbox(AT_NSPECIAL, 1, round(cloneCV_ID.x), round(cloneCV_ID.y - 1013));
CV_hitbox.player_id = CV_playerID;
CV_hitbox.orig_player = CV_playerID.player;
CV_hitbox.player = CV_playerID.player;
CV_hitbox.can_hit_self = true;

#define SpawnRubble(rImage, rFrame, rRandom)

// Rubble 1
var bookRubble1 = create_hitbox(AT_NSPECIAL, 10, round(x), round(y));
bookRubble1.rubbleImage = rImage;
bookRubble1.rubbleFrame = rFrame;
bookRubble1.rubbleRotation = 0;
bookRubble1.rubbleOpacity = 1;
var random_dir = random_func( rRandom, 90, true ) + 45;
bookRubble1.hsp = 3 * cos(random_dir);
bookRubble1.vsp = abs(5 * sin(random_dir)) * -1;