// HODAN'S UPDATE FILE

// Master if statement for attack state. Sometimes things don't quite work
// properly in attack_update.gml, so they need to be done here
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	attacking = true; // Sets this variable for future use,
	// So you don't have to check the states all the time
	switch (attack) {
	    case AT_DATTACK:
	        if (!free && free_time > 0 && !hitpause) {
	            // Switches state to landing lag
	            landing_lag_time = 3;
	            if (!was_parried) {
	            	set_state(PS_LANDING_LAG);
	            }
	        }
	        break;
	    case AT_USPECIAL:
	    	if (somersault_charged) {
	    		if (state_timer % flash_timing == 0) {
	    			// Every flash_timing frames, alternate the flash_visible status
	    			if (!flash_on) {
	    				flash_visible = 1;
	    				flash_on = true;
	    			} else {
	    				flash_visible = 0;
	    				flash_on = false;
	    			}
	    		} else if (state_timer % (flash_timing/2) == 0) {
	    			if (flash_on) {
	    				flash_visible = 0;
	    			}
	    		}
	    	}
	    case AT_DSPECIAL:
	    	// DSPECIAL landing cancels the move
	        if (!free && free_time > 0 && !hitpause) {
	        	if (window > 2 || sweatwhirl_looped) {
	        		// Since holding a sweatwhirl loops window 1, this needs
	        		// to be in place so you can land-cancel the sweatwhirl.
		            // Switches state to landing lag
		            if (!inf_steam) {
			            if (attack == AT_USPECIAL) {
			            	if (has_hit_player) {
			            		landing_lag_time = uspecial_landing_lag;
			            	} else {
			            		landing_lag_time = ceil(uspecial_landing_lag * 1.5);
			            	}
			            } else {
			            	if (has_hit_player) {
			            		landing_lag_time = dspecial_landing_lag;
			            	} else {
			            		landing_lag_time = ceil(dspecial_landing_lag * 1.5);
			            	}
			            }
		            } else {
		            	landing_lag_time = land_time;
		            }
		        	if (sweatwhirl_grabbed || (window == 4 && !nspecial_thrown)) {
		        		instance_create(round(x), round(y), "obj_article1");
		        		sweatwhirl_grabbed = false;
		        		spawn_hit_fx(x, y, sweatwhirl_fx);
		        		sound_play(sound_get("sfx_stinky_steam2"));
		        	}
		            if (!was_parried) {
		            	set_state(PS_LANDING_LAG);
		            } else {
		            	set_state(PS_PRATLAND);
		            	parry_lag = 40;
		            }
	        	}
	        }
	        break;
	    case AT_FSPECIAL:
	    case AT_NSPECIAL:
	    	if (!free && free_time > 0 && !hitpause) {
	    		sound_play(landing_lag_sound);
	    	}
	    	if (sweatwhirl_charged) {
	    		if (state_timer % flash_timing == 0) {
	    			// Every flash_timing frames, alternate the flash_visible status
	    			if (!flash_on) {
	    				flash_visible = 1;
	    				flash_on = true;
	    			} else {
	    				flash_visible = 0;
	    				flash_on = false;
	    			}
	    		} else if (state_timer % (flash_timing/2) == 0) {
	    			if (flash_on) {
	    				flash_visible = 0;
	    			}
	    		}
	    	}
	    	if (runeO && !free && free_time > 0 && !hitpause) {
	    		// Rune Buddy rune O makes sweatwhirl land-cancellable on hit
	            // Switches state to landing lag
            	landing_lag_time = land_time;

	            if (!was_parried) {
	            	set_state(PS_LANDING_LAG);
	            }
	        }
	    	break;
	    case AT_USTRONG:
	    	var frame = image_index - get_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START);
	    	if (window == 5 && frame == 5 && !slam_hit) {
				create_hitbox(AT_USTRONG, 6, grabbed.x, grabbed.y);
				create_hitbox(AT_USTRONG, 7, grabbed.x, grabbed.y);
				slam_hit = true; // Assure it only is created once
			}
			break
		case AT_DSTRONG:
			if (window == 3 && window_timer = 0 && !hitpause) {
				// Play SFX for non-charged variant
				sound_play(asset_get("sfx_land_heavy"));
			}
	}
} else {
	attacking = false; // You're not attacking if you're not attacking
}

// Make sure you can't be invincible in idle on whiff
if (attack == AT_DSTRONG && dstrong_charged && invincible && state_cat == SC_GROUND_NEUTRAL && !has_hit) {
	invincible = false;
}

// Make sure that regular parries still give you invincibility
if (state == PS_PARRY_START && !dstrong_parry) {
	dstrong_charged = false;
}

if ((attack == AT_DSPECIAL || attack == AT_USPECIAL) && was_parried && sweatwhirl_grabbed) {
	sweatwhirl_grabbed = false;
}

if (state == PS_LANDING_LAG && attack == AT_DSPECIAL) {
	// If you're in landing lag from using DSPECIAL
	dspecial_land++;
	if (inf_steam) {
		if (dspecial_land > land_time) {
			set_state(PS_IDLE);
		} else {
			landing_lag_time = land_time;
		}
	}
}

if (state == PS_PARRY && dstrong_parry) {
	parry_is_dstrong = true;
} else if (state == PS_PARRY) {
	parry_is_dstrong = false;
}

if (!attacking && state != PS_PARRY && parry_is_dstrong) {
	invincible = false;
}

if (!burning_bros_init) {
	with (pet_obj) if (owner.id == other.id && "is_burning_bros" in self) {
		other.burning_bros = true;
	}
	if (burning_bros) {
		set_victory_portrait(sprite_get("portraitbb"));
	}
	burning_bros_init = true;
}

if ((state_cat == SC_HITSTUN || state == PS_PRATLAND) && sweatwhirl_grabbed) {
	// Delete held NSPECIAL if you get hit while holding it or if you land on the ground
	spawn_hit_fx(x + hsp, y + vsp, sweatwhirl_fx);
	sound_play(sound_get("sfx_stinky_steam2"));
	if (state == PS_PRATLAND) {
		instance_create(round(x), round(y), "obj_article1");
	}
	sweatwhirl_grabbed = false;
}

if ((state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP) && attack == AT_DSPECIAL && inf_steam && !dspecial_jc) {
	sound_play(sound_get("sfx_stinky_steam2"));
	spawn_hit_fx(x + hsp, y - (char_height/2) + vsp, 6);
	dspecial_jc = true;
	/*if (dspecial_jumped == -1) {
		dspecial_jumped = [round(x), round(y)];
		dspecial_jump_steam = inf_steam_source;
		inf_steam_source.djumped = true;
	}*/
}

if (attack == AT_DSPECIAL && (state != PS_DOUBLE_JUMP && state != PS_WALL_JUMP && !attacking)) {
	// No JC effects if you're already past it homie
	dspecial_jc = true;
}

paused = false; // Sets the paused variable to false: set to true in post_draw

// Drop NSPECIAL on succesful jump cancel
if (sweatwhirl_grabbed && (state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP)) {
	create_hitbox(AT_NSPECIAL, 1, x, y - (char_height/2));
	nspecial_thrown = false; // Safety precatuion
	sweatwhirl_exists = true;
	move_cooldown[AT_FSPECIAL] = 999;
	move_cooldown[AT_NSPECIAL] = 999;
	sweatwhirl_cooldown_time = get_gameplay_time();
}

// UTILT height
if (attacking && attack == AT_UTILT
&& window == 2 && window_timer < round(get_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH) - 1)) {
	char_height = utilt_height;
} else if (attacking && attack == AT_UTILT
&& window != 1) {
	// Make it slide to default
	// This function works by linearly easing through the uptilt height
	// and the default height, using the state timer as a basis. The maximum
	// time is the remaining time on the up tilt (plus one for safety against crashes)
	var utilt_win1 = get_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH);
	var utilt_win2 = get_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH);
	var utilt_win3 = get_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH);
	char_height = ease_expoOut(utilt_height, default_height,
	state_timer - utilt_win1 - (utilt_win2 - 1), 
	utilt_win2 + utilt_win3 );
} else {
	char_height = default_height;
}

// Code for handling the DSTRONG parry frames
if (state == PS_PARRY) {
	if (dstrong_parry) {
		switch (window) {
			case 1:
				// Detects if there's a hitbox in the collision
				proj_eat = collision_circle(x + parry_x_offset, y - parry_y_offset, parry_radius, asset_get("pHitBox"), true, false);
				if (instance_exists(proj_eat) && (proj_eat.player_id.was_parried || proj_eat.was_parried)) {
					// Verifies Hodan has, indeed, parried
					dstrong_parried = true;
					set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
					set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 4);
					set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
				}
				if (instance_exists(proj_eat) && proj_eat.type == 2) {
					// Eats the projectile and makes sure it won't stun
					proj_eat.projectile_parry_stun = false;
					proj_eat.does_not_reflect = false;
					if (proj_eat.was_parried) {
						if (proj_eat_timer == 0) {
							vapour4_time = true;
							instance_create(round(proj_eat.x), round(proj_eat.y), "obj_article1");
							vapour4_time = false;
							proj_eat_timer = proj_eat_timer_max;
						}
						proj_eat.destroyed = true;
						proj_eat.player_id.was_parried = false;
						proj_eat.was_parried = false;
					}
				}
				parry_window_timer = window_timer;
				break;
			case 2:
				// Set the attack back to DSTRONG and play the ground hit sfx
				// Also create the hitbox because it won't automatically
				proj_eat = noone;
				attack = AT_DSTRONG;
				set_state(PS_ATTACK_GROUND);
				window = 3;
				window_timer = 0;
				sound_play(asset_get("sfx_land_heavy"));
				if (dstrong_parried) {
					sound_play(sound_get("sfx_stinky_steam2"));
				}
				if (runeM) {
					create_hitbox(AT_DSTRONG, 1, x, y);
				}
				break;
		}
	}
	if (runeM) {
		if ((ustrong_parry || fstrong_parry) && window == 2) {
			// Set the attack back to DSTRONG and play the ground hit sfx
			// Also create the hitbox because it won't automatically
			if (attack == AT_USTRONG) {
				attack = AT_USTRONG;
				sound_play(asset_get("sfx_swipe_heavy2"));
				create_hitbox(AT_USTRONG, 3, x, y);
			} else {
				attack = AT_FSTRONG;
				hsp = 10 * spr_dir;
				sound_play(asset_get("sfx_swipe_heavy2"));
				create_hitbox(AT_FSTRONG, 1, x, y);
			}
			set_state(PS_ATTACK_GROUND);
			window = 3;
			window_timer = 0;
		}
	}
} else {
	if (dstrong_parry && !attacking && state_cat != SC_HITSTUN) {
		attack = AT_DSTRONG;
		set_state(PS_ATTACK_GROUND);
		window = 3;
		window_timer = 0;
		sound_play(asset_get("sfx_land_heavy"));
		if (dstrong_parried) {
			sound_play(sound_get("sfx_stinky_steam2"));
		}
	} else {
		dstrong_parry = false;
	}
	ustrong_parry = false;
	dstrong_parry = false;
}

if (proj_eat_timer > 0) {
	proj_eat_timer--;
}

// Make the enemy have the second hit of charged sweatwhirl for parrying
var sfx_stinky_steam2 = sound_get("sfx_stinky_steam2");
var sprite_empty = sprite_get("empty");

if (sweatwhirl_level < 1) {
	// For some reason it corrupts sometimes? This fixes it
	sweatwhirl_level = 1;
}

with (oPlayer) if (id != other.id) {
	// Check if other player is currently in hitpause from charged sweatwhirl
	if (hitpause && hit_player_obj == other && (last_attack == AT_FSPECIAL || last_attack == AT_NSPECIAL) && other.sweatwhirl_charged) {
		other.sweatwhirl_hitpause = true;
	} else {
		other.sweatwhirl_hitpause = false;
	}
}

if (parried_sweatwhirl_hitpause && state_cat != SC_HITSTUN) {
	// Reset the sweatwhirl hitpause if you're not in hitpause for parried hits
	parried_sweatwhirl_hitpause = false;
}

// If the hit has landed and they are no longer in hitpause, give them the second
// hit, then set it to false so it only hits once
if ((!sweatwhirl_hitpause && !parried_sweatwhirl_hitpause) && sweatwhirl_charged_hit) {
	create_hitbox(AT_FSPECIAL, 2, round(sweatwhirl_hit_pos[0]), round(sweatwhirl_hit_pos[1]));
	sweatwhirl_charged_hit = false;
}

// Determing FSPECIAL and NSPECIAL cooldowns
if (sweatwhirl_cooldown_time + 1 < get_gameplay_time()) {
	// If the gameplay time and the cooldown time in hitbox_update
	// aren't synced, the projectile is dead and a new one can spawn
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_NSPECIAL] = 0;
}

// Get rid of DSPECIAL and USPECIAL cooldowns
if (state == PS_RESPAWN || state == PS_SPAWN || state == PS_WALL_JUMP 
	|| state == PS_WALL_TECH || state == PS_HITSTUN || !free) {
	move_cooldown[AT_DSPECIAL] = 0;
    move_cooldown[AT_USPECIAL] = 0;
}

// Sound looping script, makes the sound loop if Hodan is in the second window
// of his jab, cancels it in all other circumstances
if (state == PS_ATTACK_GROUND && attack == AT_JAB && window == 3) {
    // Sound looping
    if (window_timer == 0 && !hitpause) {
        // Doesn't play during hitpause so the sound doesn't loop over itself
        sound_play(sound_get("sfx_stinky_shake"));
        jab_sound_ongoing = true;
    }
} else {
    sound_stop(sound_get("sfx_stinky_shake"));
    if (jab_sound_ongoing && !hitpause) {
        // Checks if the jab sound is still playing, then plays the fade out
        sound_play(sound_get("sfx_stinky_shakefade"));
        jab_sound_ongoing = false;
    }
}

// Timers for various functions in other parts of the code
if (free) {
    free_time++;
    not_free_time = 0;
} else {
    not_free_time++;
    free_time = 0;
}

if (state == PS_WAVELAND) {
    // Makes the airdodge sound not play while wavelanding
    sound_stop(asset_get("sfx_quick_dodge"));
}

if (state == PS_LANDING_LAG && attack == AT_NAIR) {
	if (!splash_created) {
		// Spawn the NAIR splash, and play the sound
		spawn_hit_fx(x, y, splash_fx).depth = depth-1; // Makes it appear infront
		sound_play(sound_get("sfx_stinky_steam2"));
		splash_created = true;
	}
}

// Make the animation speed for sweatwhirl slightly faster if charged
if (sweatwhirl_charged) {
	sweatwhirl_anim_speed = sweatwhirl_charged_speed;
} else {
	sweatwhirl_anim_speed = sweatwhirl_noncharged_speed;
}

// Fixes the NAIR's splash hit properly parrying
if (attack == AT_NAIR && state == PS_LANDING_LAG && nair_parry) {
	nair_parry = false;
	set_state(PS_PRATLAND);
	was_parried = true;
	parry_lag = 40;
}

// Rainbow steam code
if (!rainbow && rainbow_window > 0) {
	rainbow_window--
	if (shield_pressed && taunt_pressed) {
		rainbow = true;
	}
}

// Thank you, Super!
if (rainbow) {
	hue++;
	
	if (hue>255) {
		hue -= 255;
	}
	
	color_rgb = make_color_rgb(255, 100, 255); 
	hue2 = (color_get_hue(color_rgb) + hue) mod 255;
	color_hsv = make_color_hsv(hue2,color_get_saturation(color_rgb), color_get_value(color_rgb)); 
	
	init_shader();
}

// Detect if view hitboxes is on
hitbox_view = get_match_setting(SET_HITBOX_VIS);

// ++++++++++++++++++++++
//          STEAM
// ++++++++++++++++++++++

if (!inf_steam_override) {
	// If infinite steam is not being overriden
	if (inf_steam_checker == get_gameplay_time()) {
		inf_steam = true;
	} else {
		inf_steam = false;
	}
}

// Creates the vapour when instructed
if (create_vapour) {
	instance_create(round(vapour_fx_xy[0]), round(vapour_fx_xy[1]), "obj_article1");
	create_vapour = false;
}

if (inf_steam) {
	// Determines how infinite steam works. 
	// This is mostly visual - since infinite steam just lets you do any 
	// charged move while facing any direction
	steam = spr_dir;
	v_steam = -1;
}

// Steam Charging
steam_dir = steam/abs(steam); // Sets the direction for the horizontal steam
v_steam_dir = v_steam/abs(v_steam); // Sets the direction for the vertical steam

if (state != PS_DASH_START && (moonwalking_buffer < get_gameplay_time() - steam_buffer_max)) {
	moonwalking = false;
}

// Make turning still secretly charge your steam
if (state == PS_DASH_TURN) {
	kill_steam = true;
}

// Make the steam set to what it would've been if you weren't turnign
if (kill_steam && state == PS_DASH) {
	steam_sfx_played = false;
	// Make it calculate what it would've been if dash turn didn't buffer you
	steam = (-1 + (steam_charge + steam_decay/2) * dash_turn_time) * spr_dir;
	steam_buffer = 0;
	kill_steam = false;
}

// All instances of 'runeG' remove steam decay
if (!taunt_menu && !taunt_switched && !inf_steam) {
	// Can't charge steam in the menu or while steam is infinite
	if ((state == PS_DASH_START) && ((hsp/abs(hsp) != spr_dir)) && (hsp != 0) && state_timer > 2) {
	    // Moonwalk code
	    moonwalking = true;
	    moonwalking_buffer = get_gameplay_time();
	    if (steam > -1 && steam < 1) {
	        // If still chargeable
	         steam -= steam_charge * spr_dir; // Make steam charge to the left
	    } else {
	        steam = steam_dir; // Overflow cap for steam
	        steam_buffer = get_gameplay_time(); // Set the buffer
	    }
	} else if (moonwalking) {
		if (steam > -1 && steam < 1) {
	        // If still chargeable
	         steam -= steam_charge * spr_dir; // Make steam charge to the left
	    } else {
	        steam = steam_dir; // Overflow cap for steam
	        steam_buffer = get_gameplay_time(); // Set the buffer
	    }
	} else if (((left_down || right_down) && ((state != PS_WAVELAND && state != PS_AIR_DODGE
	    && state != PS_PARRY_START && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD 
	    && state != PS_JUMPSQUAT && state != PS_FIRST_JUMP && state != PS_DASH_TURN && state != PS_DASH_STOP) || (steam > -1 && steam < 1)))) {
	    // Check for all other scenarios to charge, with protection so you don't
	    // lose it in certain states
	    var charge_dir = right_down - left_down;
	    if (steam_buffer < get_gameplay_time() - steam_buffer_max * 2) {
	    	// This checks if the steam is currently in buffer or not
	    	if ((charge_dir == -1 && steam > charge_dir || charge_dir == 1 && steam < charge_dir)) {
	    		// This sees if your steam isn't already maxed in your current
	    		// charge direction. Can't use abs() here because of the
	    		// overflow cap, it will let you instantly change direction
	    		if (steam - charge_dir > 1) {
	    			// If you still have some steam charge in the opposite
	    			// direction of what you're currently charging,
	    			// stack the decay on top of the charge rate
	    			steam += ((steam_charge + steam_decay) * charge_dir);
	    		} else {
	    			steam += (steam_charge * charge_dir);
	    		}
	    	} else if (charge_dir != 0) {
	    		steam = charge_dir; // Make sure it can't overflow
	    		steam_buffer = get_gameplay_time(); // Set the buffer
	    	}
	    }
	} else if (((!free && state != PS_JUMPSQUAT && state != PS_FIRST_JUMP) || (free && hsp/abs(hsp) != steam_dir) || (free && steam > -1 && steam < 1))) {
	    // Makes it so your steam stays whatever it was while grounded in the
	    // air, and then starts getting rid of steam if you're not moving in
	    // the same direction as you were
	    if ((state == PS_WALL_JUMP || state == PS_WALK_TURN
	    || state == PS_WALL_TECH || state == PS_PARRY_START || state == PS_PARRY 
	    || state == PS_LAND || state == PS_LANDING_LAG || state == PS_ROLL_BACKWARD 
	    || state == PS_ROLL_FORWARD || state == PS_DASH_TURN || state == PS_DASH_STOP) && (steam == 1 || steam == -1) || (runeG)) {
	    	steam_buffer = get_gameplay_time(); // Set the buffer
	        // Just don't change the steam value if you're in certain states,
	        // to make it hold the buffer in all sorts of situations.
	    } else if (steam_buffer < get_gameplay_time() - steam_buffer_max) {
	        // If the buffer is finished, start decaying
	        if ((steam < -steam_decay || steam > steam_decay)) {
	            steam -= steam_decay * steam_dir; // Make steam decay
	        } else {
	            steam = 0; // Set it to 0 if it's between the steam decay so it
	                       // doesn't endlessly flipflop
	        }
	    }
	} else if (!free && state == PS_JUMPSQUAT && spr_dir == steam) {
		steam_buffer = get_gameplay_time(); // Set the buffer in jumpsquat
	}
	
	if (down_down && !up_down) {
	    if (v_steam > -1) {
	        v_steam -= steam_charge; // Make steam charge downwards
	    } else {
	        v_steam_buffer = get_gameplay_time(); // Set the buffer
	        v_steam = -1; // Cap overflow
	    }
	} else if ((state == PS_WALL_JUMP || state == PS_WALK_TURN
	|| state == PS_WALL_TECH || state == PS_PARRY_START || state == PS_PARRY 
	|| state == PS_LAND || state == PS_LANDING_LAG || state == PS_ROLL_BACKWARD 
	|| state == PS_ROLL_FORWARD || state == PS_DASH_TURN) && (v_steam == -1) || (runeG)) {
	    	v_steam_buffer = get_gameplay_time(); // Set the buffer
	        // Just don't change the steam value if you're in certain states,
	        // to make it hold the buffer in all sorts of situations.
	   } else if ((v_steam_buffer < get_gameplay_time() - steam_buffer_max)) {
	    // If the buffer is finished, start decaying
	    if (v_steam < 0) {
	        v_steam -= steam_decay * v_steam_dir; // Make steam decay
	    } else {
	        v_steam = 0; // Set it to 0 if it's above the steam decay
	    }
	}
	
}

// Steam SFX
if (((steam >= 1 || steam <= -1) || (v_steam <= -1)) && !steam_sfx_played) {
    sound_play(sound_get("sfx_stinky_charged"));
    steam_sfx_played = true;
} else if ((steam < (steam_charge + steam_decay) && steam > -(steam_charge + steam_decay)) && (v_steam < (steam_charge + steam_decay) && v_steam > -(steam_charge + steam_decay))) {
    // Only set it to false if it gets to 0.
    steam_sfx_played = false;
}
	
// Steam code - Changes outline and makes an effect at full steam
if (abs(steam) > steam_vis_per || abs(v_steam) > steam_vis_per) {
	if (gb_alt) {
		// Gameboy skin
		if (abs(steam) + abs(v_steam) < 1 + steam_vis_per) {
			outline_color = primary_gb_colour;
		} else {
			outline_color = secondary_gb_colour;
		}
	} else if (abyss_alt) {
		if (abs(steam) + abs(v_steam) < 1 + steam_vis_per) {
			outline_color = [ (122/2 * (abs(steam) + abs(v_steam))), (120/2 * (abs(steam) + abs(v_steam))), (187/2 * (abs(steam) + abs(v_steam))) ];
		} else {
			outline_color = [ (220/4 * (abs(steam) + abs(v_steam))), (113/4 * (abs(steam) + abs(v_steam))), (255/4 * (abs(steam) + abs(v_steam))) ];
		}
	} else if (gold_alt) {
		if (abs(steam) + abs(v_steam) < 1 + steam_vis_per) {
			outline_color = [ (255/1.5 * (abs(steam) + abs(v_steam))), (197/1.5 * (abs(steam) + abs(v_steam))), (23/1.5 * (abs(steam) + abs(v_steam))) ];
		} else {
			outline_color = [ (255/2 * (abs(steam) + abs(v_steam))), (255/2 * (abs(steam) + abs(v_steam))), (255/2 * (abs(steam) + abs(v_steam))) ];
		}
	} else if (champ_alt) {
		if (abs(steam) + abs(v_steam) < 1 + steam_vis_per) {
			outline_color = [ (125/1.5 * (abs(steam) + abs(v_steam))), (125/1.5 * (abs(steam) + abs(v_steam))), (125/1.5 * (abs(steam) + abs(v_steam))) ];
		} else {
			outline_color = [ (175/2 * (abs(steam) + abs(v_steam))), (175/2 * (abs(steam) + abs(v_steam))), (175/2 * (abs(steam) + abs(v_steam))) ];
		}
	} else if (ambi_alt) {
		outline_color = [ (255/2 * (abs(steam) + abs(v_steam))), (128/2 * (abs(steam) + abs(v_steam))), (221/2 * (abs(steam) + abs(v_steam))) ];
	} else {
		// No alts
    	outline_color = [ (steam_red_colour * (abs(steam) + abs(v_steam))), 0, 0 ];
	}
} else {
	if (!gold_alt) {
		outline_color = [ 0, 0, 0 ]; // Reset it to black
	} else {
		outline_color = [ 76, 53, 0 ]; // Reset it to gold
	}
    
}
init_shader();

if (((steam >= 1 || steam <= -1) && (v_steam >= -1))) {
    // Code for making steam particles. They are drawn in pre_draw. They are
    // lightweight objects, they are all looped through every frame here to determine
    // their x/y pos and stuff.
    
	// Any instance of horizontal steam
	for (i = 1; i <= steam_sprites; i++) {
		// Iterates from 1 to the last steam sprite for horizontal steam,
		// then randomly decides which steam sprite to make.
		if ((random_func(i, steam_appearance_odds, true) == 5)) {
			// 5 is a random number, just doing it to calculate rng, should be
			// less than steam_appearance_odds
			if (i <= steam_sprites) {
				ds_list_add(steam_lines, create_steam_particle("h", i, x, y - (random_func(21, 56, true) + 10)));
			}
		}
	}
} else if (((v_steam == 1 || v_steam == -1) && (steam != 1 && steam != -1)) || (v_steam == -1) && (steam == 1 || steam == -1)) {
	// Vertical steam
	for (i = steam_sprites + 1; i <= (steam_sprites * 2); i++) {
		// Iterates from the end of steam_sprites before, to the end of steam_sprites * 2.
		// This ends up being 5-8, if steam_sprites is 4.
		if ((random_func(i, steam_appearance_odds, true) == 5)) {
			// 5 is a random number, just doing it to calculate rng, should be
			// less than steam_appearance_odds
			if (i <= (steam_sprites * 2)) {
				ds_list_add(steam_lines, create_steam_particle("v", i, x - ((random_func(21, 50, true) - 25) * v_steam / abs(v_steam)) + round(hsp) * spr_dir, y - 50));
			}
		}
	}
}
	
// This sets a purely visual steam direction variable to make steam particles
// not change while turning around
if (steam >= 1) {
	old_steam_dir = 1;
} else if (steam <= -1) {
	old_steam_dir = -1;
}
	
	
for (i = 0; i < ds_list_size(steam_lines); i++) {
	var steam_line = steam_lines[| i]; // Which steam particle are we working with?
	
	// Give the steam particles some speed, all values are hardcoded because
	// there's so many of them, and they're so different, that it wouldn't really
	// make sense to have like 16 variables for this. The way this ease function
	// works is that it goes from the first number to the second number over the max lifetime
	// frames, using the frame count supplied by lifetime
	if ((steam == 1 || steam == -1) && (v_steam == -1)) {
        // If vertical steam AND regular steam are charged
        steam_line.hsp = ease_expoIn(2, 9, steam_line.lifetime, steam_line_lifetime) * -old_steam_dir;
        steam_line.vsp = ease_expoIn(4, 9, steam_line.lifetime, steam_line_lifetime) * -1;
    } else {
        if (steam_line.alignment == "h") {
            // Left and right
            steam_line.hsp = ease_expoIn(2, 9, steam_line.lifetime, steam_line_lifetime) * -old_steam_dir;
            steam_line.vsp = ease_expoIn(1, 3, steam_line.lifetime, steam_line_lifetime) * -1;
        } else {
            // Down
            steam_line.vsp = ease_expoIn(4, 9, steam_line.lifetime, steam_line_lifetime) * -1;
        }
    }
    steam_line.x += steam_line.hsp;
    steam_line.y += steam_line.vsp;
    
    // Lifetime calculations
	if (steam_line.lifetime < steam_line_lifetime) {
		steam_line.lifetime++;
	} else {
		// Delete it once it hits its max lifetime
		ds_list_delete(steam_lines, ds_list_find_index(steam_lines, steam_line));
	}
	
	// Sprite calculations
	steam_line.frame = round((steam_line.lifetime * steam_line_lifetime)/steam_line_max_frames) - 1;
}

// Rune Buddy movement speed increase during steam
if (runeJ) {
	if ((steam >= 1 || steam <= -1) && (v_steam <= -1)) {
		// Double charge
		walk_speed = orig_walk_speed * 1.5;
		walk_accel = orig_walk_accel * 1.5;
		initial_dash_time = orig_initial_dash_time / 1.5;
		initial_dash_speed = orig_initial_dash_speed * 1.5;
		dash_speed = orig_dash_speed * 1.5;
		moonwalk_accel = orig_moonwalk_accel * 1.5;
		jump_start_time = 2; // Is actually 3 frames because of how changing jump_start works
		jump_speed = orig_jump_speed * 1.3;
		short_hop_speed = orig_short_hop_speed * 1.3;
		djump_speed = orig_djump_speed * 1.3;
		leave_ground_max = orig_leave_ground_max * 1.5;
		max_jump_hsp = orig_max_jump_hsp * 1.5;
		air_max_speed = orig_air_max_speed * 1.5;
		jump_change = orig_jump_change * 1.5;
	} else if ((steam >= 1 || steam <= -1) || (v_steam <= -1)) {
		// Single charge
		walk_speed = orig_walk_speed * 1.2;
		initial_dash_speed = orig_initial_dash_speed * 1.2;
		dash_speed = orig_dash_speed * 1.2;
		moonwalk_accel = orig_moonwalk_accel * 1.2;
		jump_start_time = 3; // Is actually 4 frames because of how changing jump_start works
		jump_speed = orig_jump_speed * 1.2;
		short_hop_speed = orig_short_hop_speed * 1.2;
		djump_speed = orig_djump_speed * 1.2;
		leave_ground_max = orig_leave_ground_max * 1.2;
		max_jump_hsp = orig_max_jump_hsp* 1.2;
		air_max_speed = orig_air_max_speed * 1.2;
		jump_change = orig_jump_change * 1.2;
	} else {
		// No charge
		walk_speed = orig_walk_speed;
		walk_accel = orig_walk_accel;
		initial_dash_time = orig_initial_dash_time;
		initial_dash_speed = orig_initial_dash_speed;
		dash_speed = orig_dash_speed;
		moonwalk_accel = orig_moonwalk_accel;
		jump_start_time = orig_jump_start_time - 1 // Changing jump_start adds an extra frame on for some reason;
		jump_speed = orig_jump_speed;
		short_hop_speed = orig_short_hop_speed;
		djump_speed = orig_djump_speed;
		leave_ground_max = orig_leave_ground_max;
		max_jump_hsp = orig_max_jump_hsp;
		air_max_speed = orig_air_max_speed;
		jump_change = orig_jump_change;
	}
}

// ++++++++++++++++++++++
//        TRAINING
// ++++++++++++++++++++++

if (practice_mode) {
	// Practice mode version of taunt
	// Make it usable in the air
	set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
	
	if (window == 2 && attack == AT_TAUNT && attacking && taunt_frozen) {
		// Loop the taunt window if frozen
		if (window_timer == 47) {
			window_timer = 0;
		}
	}

	// Turns on the taunt if it was buffered
	if (state_cat != SC_AIR_COMMITTED && state_cat != SC_GROUND_COMMITTED && state_cat != SC_HITSTUN && taunt_buffered) {
		if (!free) {
			set_state(PS_ATTACK_GROUND);
		} else {
			set_state(PS_ATTACK_AIR);
		}
		attack = AT_TAUNT;
	}
	
	if ((attacking) && attack == AT_TAUNT) {
		taunt_buffered = false;
	}

	if (taunt_pressed && state_cat != SC_HITSTUN && !hitpause) {
		// Buffers the taunt
		if (!taunt_buffered) {
			taunt_buffered = true;
		}
		// If taunt is pressed, either close or open the menu
		if (!taunt_menu && !taunt_switched) {
			taunt_menu = true;
			taunt_frozen = true;
		}
		if (taunt_menu && taunt_switched) {
			if (!up_down) {
				// Close the taunt menu unless holding up
				taunt_menu = false;
				taunt_frozen = false;
			} else {
				// If holding up, loop between freezing and unfreezing,
				// freeze_switched resets whenever the taunt buffer is up.
				if (taunt_frozen && !freeze_switched) {
					taunt_frozen = false;
					freeze_switched = true;
				} else if (!freeze_switched) {
					taunt_frozen = true;
					freeze_switched = true;
				}
			}
		}
	} else {
		freeze_switched = false;
	}
	// Make the taunt menu cycle through the animation for opening and closing
	if (taunt_menu && !taunt_switched) {
		if (bighud_frame < 19) {
			if (bighud_frame == 1) {
				sound_play(taunt_mfx_open);
			}
    		bighud_frame++;
		} else if (bighud_frame == 19) {
			taunt_switched = true;
		}
	}
	if (!taunt_menu && taunt_switched) {
		if (bighud_frame > 0) {
			if (bighud_frame == 19) {
				cursor_line = cursor_lines[0];
				sound_play(taunt_mfx_close);
			}
    		bighud_frame--;
		} else if (bighud_frame == 0) {
			taunt_switched = false;
		}
	}
	
	if (taunt_menu && taunt_switched && taunt_frozen) {
		// Cursor movement code
		if (!frame_data) {
			if (!array_has(cursor_lines, cursor_line)) {
				// If the cursor is not selected to an available line
				cursor_line = cursor_lines[0]; // Reset the cursor_line to the lowest one
			} else {
				if (cursor_line > cursor_lines[0] && up_pressed) {
					sound_play(sound_get("mfx_option"));
					for (i = 0; i < array_length_1d(cursor_lines); i++) {
						if (cursor_lines[i] == cursor_line) {
							cursor_line = cursor_lines[i - 1];
							break;
						}
					}
				} else if (cursor_line <= cursor_lines[0] && up_pressed) {
					// Wrap-around
					cursor_line = cursor_lines[array_length_1d(cursor_lines) - 1];
					sound_play(sound_get("mfx_option"));
				} else if (cursor_line < cursor_lines[array_length_1d(cursor_lines) - 1] && down_pressed) {
					sound_play(sound_get("mfx_option"));
					for (i = 0; i < array_length_1d(cursor_lines); i++) {
						if (cursor_lines[i] == cursor_line) {
							cursor_line = cursor_lines[i + 1];
							break;
						}
					}
				} else if (cursor_line >= cursor_lines[array_length_1d(cursor_lines) - 1] && down_pressed) {
					sound_play(sound_get("mfx_option"));
					// Wrap-arround
					cursor_line = cursor_lines[0];
				}
			}
		} else {
			
		}
		
		// Selection code
		if ((attack_pressed || left_pressed || right_pressed) && !menu_buffered) {
			menu_buffered = true;
			if (!frame_data) {
				for (i = 0; i < array_length_1d(cursor_lines); i++) {
					if (cursor_lines[i] == cursor_line) {
						switch (menu_options[i]) {
							case "player_info":
								sound_play(sound_get("mfx_option"));
								player_info = !player_info;
								break;
							case "inf_steam":
								sound_play(sound_get("mfx_option"));
								if (inf_steam && inf_steam_override) {
									steam = 0;
									v_steam = 0;
								}
								inf_steam_override = !inf_steam_override;
								inf_steam = !inf_steam;
								break;
							case "god_mode":
								sound_play(sound_get("mfx_option"));
								god_mode = !god_mode;
								break;
							case "frame_data":
								if (attack_pressed) {
									sound_play(sound_get("mfx_option"));
									frame_data = true;
									cursor_line = cursor_lines[0];
								}
								break;
						}
					}
				}
			} else {
				if (left_pressed && displayed_steam_text > 0) {
					displayed_steam_text--;	
					sound_play(sound_get("mfx_option"));
				} else if (right_pressed && displayed_steam_text < 2) {
					displayed_steam_text++;
					sound_play(sound_get("mfx_option"));
				}

			}
		}
		if (special_pressed && !menu_buffered) {
			if (frame_data) {
				sound_play(sound_get("mfx_return_cursor"));
				frame_data = false;
			}
		}
		if (!special_pressed && !attack_pressed && !left_pressed && !right_pressed) {
			menu_buffered = false;
		}
	}
	
	if (taunt_menu && taunt_switched) {
		// If the taunt menu is open and running, frozen or not
		// Making HUD invisible script
		// First checks if Hodan is in front of the HUD, then checks all other players.
		// The hud is invisible if anyone is in front, but is only visible is all
		// are away.
		var true_x = x - view_get_xview();
		var true_y = y - view_get_yview();
		if (((true_x > hud_x - hud_buffer && true_x < (hud_x + hud_w + hud_buffer))) && (true_y > hud_y - hud_h)) {
			invis_hud_me = true;
		} else {
			invis_hud_me = false;
		}
		look_if_in_hud(self, oPlayer);
		look_if_in_hud(self, pHitBox);
		look_if_in_hud(self, hit_fx_obj);
		look_if_in_hud(self, obj_article1);
		look_if_in_hud(self, obj_article2);
		look_if_in_hud(self, obj_article3);
		look_if_in_hud(self, obj_article_solid);
		look_if_in_hud(self, obj_article_platform);
		if (invis_hud_me || invis_hud_other) {
			// If either are in the way, make the hud invisible
			invis_hud = true;
		}
		if (!invis_hud_me && !invis_hud_other) {
			// If neither are in the way, make it visible
			invis_hud = false;
		}
		
		// Alternates the cursor frames
		if (get_gameplay_time() % cursor_anim_speed == 0) {
			cursor_frame = !cursor_frame; // Alternates between 0 and 1
		}
	}
}

// +++++++++++++++++++++++++++
//  CHARACTER COMPATABILITIES
// +++++++++++++++++++++++++++

// Runes

if (runesUpdated) {
	if (runeC) {
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
	} else if (abyssEnabled) {
		reset_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE);
	}
	if (runeD) {
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
	} else if (abyssEnabled) {
		reset_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH);
	}
	if (runeF) {
		set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -6);
		set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
		set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 40);
		set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 40);
	} else if (abyssEnabled) {
		reset_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED);
		reset_hitbox_value(AT_DAIR, 2, HG_WIDTH);
		reset_hitbox_value(AT_DAIR, 2, HG_HEIGHT);
	}
	if (runeH && !runeG) {
		steam_charge = 0.06;
	} else if (abyssEnabled) {
		steam_charge = orig_steam_charge;
	}
	if (runeG && runeH) {
		inf_steam = true;
		inf_steam_override = true;
	} else if (abyssEnabled) {
		inf_steam = false;
		inf_steam_override = false;
	}
	if (runeK) {
		set_hitbox_value(AT_NAIR, 3, HG_EFFECT, 11);
		set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 11);
		set_hitbox_value(AT_FTILT, 1, HG_EFFECT, 11);
		set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 11);
		set_hitbox_value(AT_FTILT, 2, HG_EFFECT, 11);
		set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 11);
		set_hitbox_value(AT_DTILT, 1, HG_EFFECT, 11);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 11);
		set_hitbox_value(AT_UTILT, 1, HG_EFFECT, 11);
		set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 11);
	} else if (abyssEnabled) {
		reset_hitbox_value(AT_NAIR, 3, HG_EFFECT);
		reset_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_FTILT, 1, HG_EFFECT);
		reset_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_FTILT, 2, HG_EFFECT);
		reset_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_DTILT, 1, HG_EFFECT);
		reset_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_UTILT, 1, HG_EFFECT);
		reset_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE);
	}
	if (runeL) {
		set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
		set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, round(get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH)/1.4));
		set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, round(get_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH)/1.4) - 1);
		set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, round((get_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME)/1.4)));
		set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, round(get_hitbox_value(AT_USTRONG, 3, HG_LIFETIME)/1.4));
	} else if (abyssEnabled) {
		reset_attack_value(AT_USTRONG, AG_CATEGORY);
		reset_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH);
		reset_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME);
	}
	if (runeM) {
		dstrong_parry_frame = 7;
	} else if (abyssEnabled) {
		dstrong_parry_frame = orig_dstrong_parry_frame;
	}
	runesUpdated = false;
}

// Trummel & Alto

if (trummelcodecneeded) {
    trummelcodec = 17;
    trummelcodecmax = 5;
    trummelcodecsprite1 = sprite_get("X");
    trummelcodecsprite2 = sprite_get("X");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "That's Hodan! Formally";
    trummelcodecline[page,2] = "known as the Hot Spring";
    trummelcodecline[page,3] = "Sage, he's known for";
    trummelcodecline[page,4] = "getting steamed up";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "in battle and releasing";
    trummelcodecline[page,2] = "powerful attacks!";
    trummelcodecline[page,3] = "Be careful when you see";
    trummelcodecline[page,4] = "him steaming!";
    page++; 

    //Page 2
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "oo oo aa aa";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 3
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Indeed. He's a hot spring";
    trummelcodecline[page,2] = "monkey. This guy in";
    trummelcodecline[page,3] = "particular is apparently a";
    trummelcodecline[page,4] = "wise sage, wise";
    page++; 

    //Page 4
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "enough to have trained";
    trummelcodecline[page,2] = "Zetterburn and Forsburn!";
    trummelcodecline[page,3] = "But, to be honest with";
    trummelcodecline[page,4] = "you, he doesn't look";
    page++
    
    //Page 5
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "so wise to me. The";
    trummelcodecline[page,2] = "things I've seen him do";
    trummelcodecline[page,3] = "with that towel...";
    trummelcodecline[page,4] = "";
}

// Kirby
if (enemykirby != -1) {
	// Spawn hit FX on sweatwhirl breaking - will later make vapour once I get around to it
	// Why this doesn't work in with oPlayer I couldn't tell you lol
	if (enemykirby.kirby_create_vapour) {
		spawn_hit_fx(enemykirby.kirby_vapour_fx_xy[0], enemykirby.kirby_vapour_fx_xy[1], sweatwhirl_fx);
		sound_play(sound_get("sfx_stinky_steam2"))
		enemykirby.kirby_create_vapour = false;
	}
	
	
	var hodan = self; // Assign this so we can reference hodan variables in Kirby
	with (oPlayer) {
		if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
			kirby_attacking = true;
		} else {
			kirby_attacking = false;
		}
		if (free) {
			free_time++;
			not_free_time = 0;
		} else {
			not_free_time++;
			free_time = 0;
		}
		
		if (get_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES) == 3433) {
			// Update.gml
			if (kirby_sweatwhirl_cooldown_time + 1 < get_gameplay_time()) {
				// If the gameplay time and the cooldown time in hitbox_update
				// aren't synced, the projectile is dead and a new one can spawn
				move_cooldown[AT_EXTRA_3] = 0;
			}
			
			if (attack == AT_EXTRA_3 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
				if (window == 0 && window_timer == 0) {
			        kirby_flash_sprite = sprite_get(type + "fspecialflash");
				    kirby_sweatwhirl_starting_dir = spr_dir;
			        switch (random_func(0, 3, true)) {
			            case 0:
			                kirby_vapour_fx = hit_fx_create( sprite_get( "vapour" ), vapour_length );
			                break;
			            case 1:
			                kirby_vapour_fx = hit_fx_create( sprite_get( "vapour2" ), vapour_length );
			                break;
			            case 2:
			                kirby_vapour_fx = hit_fx_create( sprite_get( "vapour3" ), vapour_length );
			                break;
			        }
				}
				// Attack_update.gml
				if (!free && free_time > 0 && !hitpause) {
		    		sound_play(landing_lag_sound);
		    	}
		    	if (kirby_sweatwhirl_charged) {
		    		if (state_timer % hodan.flash_timing == 0) {
		    			// Every flash_timing frames, alternate the flash_visible status
		    			if (!kirby_flash_on) {
		    				kirby_flash_visible = 1;
		    				kirby_flash_on = true;
		    			} else {
		    				kirby_flash_visible = 0;
		    				kirby_flash_on = false;
		    			}
		    		} else if (state_timer % (hodan.flash_timing/2) == 0) {
		    			if (kirby_flash_on) {
		    				kirby_flash_visible = 0;
		    			}
		    		}
		    	}
		    	if (kirby_runeO && !free && free_time > 0 && !hitpause) {
		    		// Rune Buddy rune O makes sweatwhirl land-cancellable on hit
		            // Switches state to landing lag
	            	landing_lag_time = land_time;
	
		            if (!was_parried) {
		            	set_state(PS_LANDING_LAG);
		            }
		        }
				
				// Continually reset the cooldown time so it doesn't start until
		    	// the move is no longer active
		    	if (!kirby_runeO) {
		    		// Rune Buddy rune J disables this
		    		kirby_sweatwhirl_cooldown_time = get_gameplay_time();
		    	}
			    if (window == 1 && window_timer == 1 && !kirby_runeO) {
			    	// Rune Buddy rune O disables this
			        move_cooldown[AT_EXTRA_3] = 999;
			    }
			    if (window == 2 && window_timer == 1 && vsp > 0) {
			    	if (!kirby_runeO || !down_down) {
			        	vsp = hodan.sweatwhirl_float_speed;
			    	}
			        grav = hodan.sweatwhirl_gravity/2;
			    } else if (window >= 2) {
			        if (window < 3) {
			            grav = hodan.sweatwhirl_gravity/2;
			        } else {
			            grav = hodan.sweatwhirl_gravity;
			        }
			    }
			    if (spr_dir != kirby_sweatwhirl_starting_dir) {
			    	// Make B-reversing cancel the charge
			    	// Sweatwhirl
				    kirby_sweatwhirl_charged = false;
				    // FSPECIAL
				    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 20);
				    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, ability_hspeed);
				    set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 200);
				    set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 7);
					set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.2);
					set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 4);
					set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.25);
					set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 0.5);
			    }
			    if (window > 2 && !was_parried) {
			    	// Make it walljump cancellable to enhance recovery
			    	can_wall_jump = true;
			    }
			}
			
			
			var kirby = self; // This has to be nested to work in FFA.
			with (pHitBox) {
				if (attack == AT_EXTRA_3 && player_id == kirby) {
					// Simulating hitbox_update.gml
					
					    if (hbox_num == 1) {
				        // Sets that the sweatwhirl exists
				        if (!destroyed) {
				            player_id.kirby_sweatwhirl_exists = true;
				        } else {
				            player_id.kirby_sweatwhirl_exists = false;
				        }
				        
				        // Assures that the sweatwhirl dies
				        if (((y > get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE))) || ((x <= 0) || (x >= room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE)))) {
				            player_id.kirby_sweatwhirl_exists = false;
				            hbox_num = 3;
				            destroyed = true;
				            destroy_fx = 1; // Assures that it disappears from reality rather than
				            // visibly explode
				        }
				    }
					
					var anim_speed = hodan.sweatwhirl_anim_speed; // How many frames it takes to update the looping part
				    var startup_frames = hodan.sweatwhirl_startup_anim_frames; // How many actual animation frames sweatwhirl has
				    var max_frames = hodan.sweatwhirl_max_frames; // The full amount of frames it has
				    var startup = hodan.sweatwhirl_startup_frames; // The game-startup time
				    if (hitbox_timer < startup) {
				        // Slightly complex - this basically just automatically splits the total
				        // startup time into equal halves depending on how many startup frames
				        // are defined
				        image_index = floor((hitbox_timer / (startup)) * (startup_frames - 0.1));
				    } else  {
				        if (hitbox_timer % anim_speed == 0) {
				            // loops between max frame and the end of the startup frame every sweatwhirl_anim_speed frames
				            if (image_index < max_frames) {
				                image_index += 1;
				            } else {
				                image_index = startup_frames;
				            }
				        }
				    }
				    
				    // Sets the time so that it can later check if the time is desynced, which would
				    // prove the projectile is dead
				    player_id.kirby_sweatwhirl_cooldown_time = get_gameplay_time();
				    if ((!free || y >= get_stage_data(SD_BOTTOM_BLASTZONE) + get_stage_data(SD_TOP_BLASTZONE)) && hbox_num == 1) {
				        destroyed = true;
				    }
				    // Give sweatwhirl gravity + speed
				    // These values are made into local variables because it does not work if they are not.
				    var f_hspeed = hodan.fspecial_hspeed;
				    var f_vspeed = hodan.fspecial_vspeed;
				    var f_time = hodan.fspecial_time;
				    var n_hspeed = hodan.nspecial_hspeed;
				    var n_vspeed = hodan.nspecial_vspeed;
				    var n_time = hodan.nspecial_time;
				    if (!player_id.kirby_sweatwhirl_charged) {
			            if (hitbox_timer < f_time) {
			                vsp = ease_expoIn( 0, f_vspeed, hitbox_timer, f_time );
			                hsp = ease_circIn( f_hspeed * spr_dir, 4 * spr_dir, hitbox_timer, f_time );
			            }
				    }
				    if (destroyed && hbox_num == 1) {
				        player_id.kirby_sweatwhirl_exists = false; // Assures that it no longer exists
				        player_id.kirby_create_vapour = true; // Initiate vapour vfx creation
				        // Give coordinates of where sweatwhirl was destroyed
				        player_id.kirby_vapour_fx_xy = [x, y];
				        player_id.kirby_vapour_fx_time = get_gameplay_time();
				        // Do destruction SFX
				        if (!player_id.kirby_sweatwhirl_charged) {
				            sound_play(ability_hit_sfx);
				        } else {
				            sound_play(ability_hit_sfx);
				        }
				    }
				}
			}
		}	
	}
}

if (swallowed && swallowed != -1) {
	swallowed = 0;
	var ability_spr = sprite_get("kirby_sweatwhirl");
	var ability_hurt_spr = sprite_get("kirby_sweatwhirl_hurt");
	var ability_hit_sfx = sound_get("sfx_stinky_steam1");
	var ability_sfx = sound_get("sfx_stinky_steam2");
	var ability_hspeed = fspecial_hspeed;
	var sweatwhirl_break_sprite = sprite_get("sweatwhirlhit");
	var fx_length = sweatwhirl_length;
	var ability_fx = hit_fx_create(sweatwhirl_break_sprite, fx_length);
	var ability_proj = sprite_get("sweatwhirl_proj");
	var empty_sprite = sprite_get("empty");
	var myicon = sprite_get("kirbyicon");
	var kirby_runeO = runeO;
	var kirby_runeG = runeG;
	
	with (enemykirby) {
		newicon = myicon;
		
		// Sweatwhirl
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt_spr);
		
		// Startup
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 17);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 11);
		
		// Attack
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, ability_sfx);
		
		// Endlag
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
		
		// Verify
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES, 3433);
		
		set_num_hitboxes(AT_EXTRA_3, 2);
		
		// Projectile
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 200);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, -6);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -34);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 22);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 50);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.25);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 0.5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 1); // Normally 6, disabled bc kirby bein weird lol
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, ability_hit_sfx);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, ability_hspeed);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, false);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
		
		// Charged Second Hit
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 20);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 20);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 55);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.4);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, 0.25);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITSTUN_MULTIPLIER, 0.7);
		set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 6); // Temp Water Effect
		set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_X_OFFSET, 15);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, ability_sfx);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, empty_sprite);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_PARRY_STUN, false);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
	}
}

#define create_steam_particle(alignment, sprite, x, y)

var steam = {
	alignment : alignment,
	sprite : 0,
	frame : 0,
	x : x,
	y : y,
	hsp : 0,
	vsp : 0,
	lifetime : 0
}

if (alignment == "h") {
	steam.sprite = sprite_get(type + "steamparticle" + string(sprite));
} else {
	// The latter half are all vertical
	steam.sprite = sprite_get(type + "steamparticle" + string(sprite));
}

return steam;

#define array_has(array_to_search, value_to_find)

// Array search function
var search_array = array_to_search;
var find_value = value_to_find;
for (i = 0; i < array_length_1d(search_array); i++) {
	if (search_array[i] == find_value) {
		return true;
	}
}
return false;

#define look_if_in_hud(hodan, object)

// Does a with statement with the defined object and looks to check if it's in the test hud
with (object) {
	if (self != hodan && "this_is_hodans_article3" not in self) {
		var true_x_other = x - view_get_xview();
		var true_y_other = y - view_get_yview();
		// If any other player is in front of the hud
		if (((true_x_other > hodan.hud_x - hodan.hud_buffer && true_x_other < (hodan.hud_x + hodan.hud_w + hodan.hud_buffer))) && (true_y_other > hodan.hud_y - hodan.hud_h)) {
			hodan.invis_hud_other = true;
		} else {
			hodan.invis_hud_other = false;
		}
	}
}