//article1_update

// Enumeration for all animation names
enum Animation {
    Spawn,
    Idle,
    PauseSmall,
    PauseBig,
    HitSmall,
    HitBig,
    HitKill,
    FStrong,
    UStrong,
    DStrong,
    Bop
}

//cloneCV_ID.x = x;
//cloneCV_ID.y = y;
//cloneCV_ID.vsp = 0;
//cloneCV_ID.hsp = 0;
//cloneCV_ID.hitstop = 4;

switch (state) {
	case 1: // Flytrap
		// Check if player is trying to input a strong
		if (artAnim_interruptible == true && artAnim_currentAnim == 1 && player_id.state_cat != SC_HITSTUN && player_id.state != PS_PRATFALL && player_id.state != PS_PRATLAND && arthit_trueHitpause == -15) {
			// Check direction
			if (strongLag <= 0) {
				if (player_id.left_strong_pressed) {
					// FSTRONG LEFT
					artAnim_spriteDirection = -1;
					artAnim_newAnim = Animation.FStrong;
				} else if (player_id.right_strong_pressed) {
					// FSTRONG LEFT
					artAnim_spriteDirection = 1;
					artAnim_newAnim = Animation.FStrong;
				} else if (player_id.up_strong_pressed) {
					// USTRONG
					artAnim_newAnim = Animation.UStrong;
				} else if (player_id.down_strong_pressed) {
					// DSTRONG
					artAnim_newAnim = Animation.DStrong;
				}
			}
			
			with (obj_article2) {
				// Check if something close by - handle flytrap interaction in flytrap itself
				if (point_distance( other.x, other.y - 25, x, y) < 45 && player_id.id == other.player_id) {
					if (flytrapBounceDelay <= 0 && jacksMultis <= 0 && currentOwner == other.player_id && artHit_inGrab == false) {
						other.artAnim_newAnim = 10;
						x = other.x - 5 * other.artAnim_spriteDirection;
						y = other.y - 60;
						if (hsp > 0) {
							hsp = 2;
						} else {
							hsp = -2;
						}
						vsp = -14;
						
						spawn_hit_fx(x, y, 17);
						sound_play(asset_get("sfx_blow_medium1"));
						flytrapBounceDelay = 20;
					}
				}
			}
			// Pop up player
			if (place_meeting(x, y - 15, player_id) && player_id.hitstop <= 0) {
				if (player_id.state == PS_ATTACK_AIR && player_id.attack == AT_DAIR && player_id.window == 2) {
					// Flytrap Bounce anim
					artAnim_newAnim = 10;
					spawn_hit_fx(x, y - 70, player_id.juiceFX);
					sound_play(sound_get("wood"));
					// Player bounce
					player_id.window = 3;
					player_id.window_timer = 0;
					player_id.djumps = 0;
					player_id.atk_DAirSpeed = -16 + player_id.atk_DairBounces * 2;
					player_id.atk_DairBounces++;
				}
			}
		}
		
		// Strong Lag
		strongLag = max(0, strongLag - 1);
		
		// Check if article has been hit
		if (artAnim_currentAnim < 5 || artAnim_currentAnim > 6) {
			CheckForHit();
		}
		
		if (killNow == true && artAnim_currentAnim == 1) {
			artAnim_newAnim = Animation.HitKill;
	    	state = 2;
		}
		break;
}

// Gravity & Friction
if (artHit_inGrab == false && arthit_trueHitpause == -15) {
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
	case Animation.Spawn:
		ArtAnim(sprite_get("ft_grow"), sprite_get("article_hitbox"), [20], [4], [0], true);
		break;
	case Animation.Idle:
		ArtAnim(sprite_get("ft_idle"), sprite_get("article_hitbox"), [154], [14], [0], true);
		break;
	// Animations When Hit
	case Animation.PauseSmall:
		ArtAnim(sprite_get("ft_smallhurt"), sprite_get("article_hitbox"), [3], [1], [0], false);
		break;
	case Animation.PauseBig:
		ArtAnim(sprite_get("ft_bighurt"), sprite_get("article_hitbox"), [3], [1], [0], false);
		break;
	case Animation.HitSmall:
		ArtAnim(sprite_get("ft_smallhurt"), sprite_get("article_hitbox"), [9], [3], [0], false);
		break;
	case Animation.HitBig:
		ArtAnim(sprite_get("ft_bighurt"), sprite_get("article_hitbox"), [12], [4], [0], false);
		break;
	case Animation.HitKill:
		ArtAnim(sprite_get("ft_kill"), sprite_get("article_hitbox"), [32], [9], [0], false);
		break;
	// Attacks
	case Animation.FStrong:
		ArtAtkSound(sprite_get("ft_fstrong"), sprite_get("article_hitbox"), [16, 5, 5, 17], [3, 1, 2, 4], [0, 3, 4, 6], true, // Animation
					[2, 2], [1, 1], [AT_DSPECIAL, AT_DSPECIAL], [1, 2], [32, 67], [-47, -47], // Hitboxes
					["sfx_swipe_heavy1"], [false], [1], [11]); // Sounds
		break;
	case Animation.UStrong:
		ArtAtkSound(sprite_get("ft_ustrong"), sprite_get("article_hitbox"), [13, 4, 5, 24], [3, 1, 1, 5], [0, 3, 4, 5], true, // Animation
					[2, 3], [1, 1], [AT_DSPECIAL, AT_DSPECIAL], [3, 4], [0, -3], [-36, -106], // Hitboxes
					["sfx_syl_fspecial_bite"], [false], [1], [6]); // Sounds
		break;
	case Animation.DStrong:
		ArtAtkSound(sprite_get("ft_dstrong"), sprite_get("article_hitbox"), [15, 4, 5, 21], [3, 1, 1, 5], [0, 3, 4, 5], true, // Animation
					[2, 3, 3], [1, 1, 1], [AT_DSPECIAL, AT_DSPECIAL, AT_DSPECIAL], [5, 6, 7], [0, -69, 69], [-17, -37, -37], // Hitboxes
					["sfx_syl_ustrong"], [false], [1], [8]); // Sounds
		break;
	// Bop Item
	case Animation.Bop:
		ArtAnim(sprite_get("ft_bop"), sprite_get("article_hitbox"), [20], [5], [0], true);
		break;
}

if (y > room_height || x > room_width || x < 0) { // Off Screen Kill
	artDel_activate = true;
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
	instance_destroy(cloneCV_ID);
	FlytrapID = 0;
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
	    
	    // Checks if you are attempting to hit it with your own attacks
	    if (player_id == other.player_id) {
	    	if (attack != AT_FSPECIAL || hbox_num != 1) {
	    		allowHit = false;
	    	}
		}
	    
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
			print_debug("bobux");
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
		strongLag = 10;
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
		
		var owner_dist_x = abs(artHit_hbVerify.player_id.x - artHit_hbVerify.x);
		var owner_dist_y = abs(artHit_hbVerify.player_id.y - artHit_hbVerify.y);
		var owner_dist_r = darctan2(owner_dist_y, owner_dist_x);
		
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
        	if (orig_knock >= 10) {
        		artAnim_newAnim = Animation.PauseBig;
        	} else {
        		artAnim_newAnim = Animation.PauseSmall;
        	}
        	var quick_dir = get_hitbox_angle( artHit_hbVerify );
	    	if (quick_dir > 90 && quick_dir < 270) {
	    		artAnim_spriteDirection = 1;
	    	} else if (quick_dir < 90 || quick_dir > 270) {
	    		artAnim_spriteDirection = -1;
	    	}
        	// set time article will be frozen in place
        	arthit_trueHitpause = get_hitstop_formula(15, artHit_hbVerify.damage, artHit_hbVerify.hitpause, artHit_hbVerify.hitpause_growth, artHit_hbVerify.extra_hitpause);
    		
    		// Controller rumble
        	//ControllerVibrate(orig_knock, arthit_trueHitpause, artHit_hbVerify.player_id);
    	}
    	
    	// Attacker enters hitpause on hit
		if (artHit_eHitPAtk == true
		    && artHit_hbVerify.damage > 0 // Makes sure the attack deals more than 0 damage
		    && artHit_hbVerify.effect != 9 // Ignores Polite hitboxes
		    && artHit_hbVerify.kb_value != 0 // Ignores hitboxes with no knockback
		    && artHit_hbVerify.hit_priority != 0 // Ignores hitboxes with hit priority of 0
		    && artHit_hbVerify.hitpause != 0 // Ignores windbox type moves
		    && (artHit_hbVerify.type != 2 || artHit_hbVerify.plasma_safe == true)) // Ignores true projectiles
		{
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
		    //artHit_launchFinalKB = get_kb_formula(50, artHit_kbAdjust, 1, artHit_hbVerify.damage, artHit_hbVerify.kb_value, artHit_hbVerify.kb_scale);
		    //artHit_launchDirection = get_hitbox_angle( artHit_hbVerify );
		    artHit_launchFinalKB = 0;
		    artHit_launchDirection = 90;
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
			    artHit_hbVerify.player_id.grabKnockbackScaling = 0;
			    artHit_hbVerify.player_id.grabHitBoxDamage = 0;
			    artHit_hbVerify.player_id.GrabKnockback = 0;
			    artHit_hbVerify.player_id.GrabLaunchAngle = 90;
			    
			    artHit_inGrab = true;
			    artHit_grabberID = artHit_hbVerify.player_id;
			}
		}
	}
} else if (artHit_health > 0 || artHit_healthInitial == -4) { // Won't run if health is 0 (-4 is for if health isn't in use)
	// Get other player's id
	var hitboxOwnerID = artHit_hbVerify.player_id;
	
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
    	if (orig_knock >= 10) {
    		artAnim_newAnim = Animation.PauseBig;
    	} else {
    		artAnim_newAnim = Animation.PauseSmall;
    	}
    	// Set Sprite Direction (based on hitbox that hit)
    	var quick_dir = get_hitbox_angle( artHit_hbVerify );
    	if (quick_dir > 90 && quick_dir < 270) {
    		artAnim_spriteDirection = 1;
    	} else if (quick_dir < 90 || quick_dir > 270) {
    		artAnim_spriteDirection = -1;
    	}
    	// set time article will be frozen in place
    	arthit_trueHitpause = get_hitstop_formula(15, artHit_hbVerify.damage, artHit_hbVerify.hitpause, artHit_hbVerify.hitpause_growth, artHit_hbVerify.extra_hitpause);
	
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

// Set Hurt Animation
if (artAnim_currentAnim == Animation.PauseBig) {
	artAnim_newAnim = Animation.HitBig;
} else if (artAnim_currentAnim == Animation.PauseSmall) {
	artAnim_newAnim = Animation.HitSmall;
}

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
    	// Set Hurt Animation
    	artAnim_newAnim = Animation.HitKill;
    	state = 2;
    	strongLag = 100;
		/*if (artAnim_currentAnim == Animation.PauseBig) {
			artAnim_newAnim = Animation.HitBig;
		} else if (artAnim_currentAnim == Animation.PauseSmall) {
			artAnim_newAnim = Animation.HitSmall;
		} else if (artHit_healthInitial != -4 && artHit_health <= 0) {
			artAnim_newAnim = Animation.HitKill;
    		state = 2;
		}*/
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
ArtAnimSound(displayedImage, hurtboxImage, windowLengths, windowFrames, interruptable, windowFStart, soundPlay, soundCustom, soundWindow, soundFrame);

// Hitbox creation
ArtAtk(displayedImage, hurtboxImage, windowLengths, windowFrames, windowFStart, interruptable, hitboxWindow, hitboxFrame, hitboxAttack, hitboxNumber, hitboxXOffset, hitboxYOffset);

arthit_multiOverload = false;

#define AnimEnd() // Runs whenever an animation ends

switch (state) {
	case 0:
		// Spawning In
		state = 1;
		artAnim_newAnim = Animation.Idle;
		artAnim_image = sprite_get("ft_idle");
		break;
	
	case 1:
		// Article exists normally
		if (artAnim_currentAnim == Animation.PauseBig) {
			artAnim_newAnim = Animation.PauseBig;
			artAnim_image = sprite_get("ft_bighurt");
		} else if (artAnim_currentAnim == Animation.PauseSmall) {
			artAnim_newAnim = Animation.PauseSmall;
			artAnim_image = sprite_get("ft_smallhurt");
		} else if ((artAnim_currentAnim == Animation.HitSmall || artAnim_currentAnim == Animation.HitBig) && artHit_healthInitial != -4 && artHit_health <= 0) {
			artAnim_newAnim = Animation.HitKill;
    		state = 2;
		} else {
			if (artAnim_currentAnim >= 7 && artAnim_currentAnim < 10) {
				strongLag = 80;
			}
			if (killNow == true) {
				artAnim_newAnim = Animation.HitKill;
	    		state = 2;
			} else {
				artAnim_newAnim = Animation.Idle;
				artAnim_image = sprite_get("ft_idle");
			}
		}
		break;
	case 2:
		artDel_activate = true;
		break;
	
}

#define ControllerVibrate(CV_kb, CV_hitstop, CV_playerID)

// CV_kb = kb amount to use for controller rumble strength
// CV_hitstop = hitstop amount to use for controller rumble strength
// CV_playerID = player Id of player to give controller vibrate to

// Controller Vibration effect
with (player_id) {
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, CV_kb);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, CV_hitstop);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 0);
}
var CV_hitbox = create_hitbox(AT_NSPECIAL, 1, round(cloneCV_ID.x), round(cloneCV_ID.y - 1013));
CV_hitbox.player_id = CV_playerID;
CV_hitbox.orig_player = CV_playerID.player;
CV_hitbox.player = CV_playerID.player;
CV_hitbox.can_hit_self = true;