// Knuckles DE Update

attacking = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND);

if (attacking && !hitpause) {
    switch (attack) {
    // Here instead of attack_update to avoid attack_update running too early shenanigans
    // Some of this code doesn't need to be here, but is for organization purposes.
    case AT_NSPECIAL:
        if (window == 1 && window_timer == 0) {
            clear_button_buffer(PC_SPECIAL_PRESSED);
        }
    
        // For polished feeling landings
        if (!free && free_time > 0) {
            var land_dust = spawn_dust_fx(x, y, asset_get("fx_land_bg"), 24);
            land_dust.dust_color = 0;
            land_dust.fg_index = asset_get("fx_land_fg");
            sound_play(landing_lag_sound);
        }
        
        if (window == 3 && window_timer == 0) {
            if (right_down - left_down != 0) {
                spr_dir = right_down - left_down;
            }
        }
        
        // This is here so that it can line up exactly with the animation.
        // If the 'white circle' appears, that means that the punch will go through.
        // To avoid mixed signals in gameplay, you have to charged punch when it shows.
        var anim_frames = get_window_value(attack, 2, AG_WINDOW_ANIM_FRAMES);
        var anim_frame_start = get_window_value(attack, 2, AG_WINDOW_ANIM_FRAME_START);
        var frames = anim_frames + anim_frame_start;
        
        if (window == 2 && image_index < frames - 1) {

            if (special_pressed) {
                set_attack_value(attack, AG_NUM_WINDOWS, 8);
                window = 6;
                window_timer = 0;
                if (right_down - left_down != 0) {
                	spr_dir = right_down - left_down;
            	}
                // HSP doesn't get properly applied doing it this way, so it's done here
                hsp += get_window_value(attack, window, AG_WINDOW_HSPEED) * spr_dir;
            } else if (shield_pressed) {
                clear_button_buffer(PC_SHIELD_PRESSED);
                window = 9;
                window_timer = 0;
            }
        }
        
        if (window == 2) {
            soft_armor = knuckles_soft_armor;
            if (sound_playing == noone) {
                sound_playing = sound_play(asset_get("sfx_upbcharge"));
            }
        } else {
            soft_armor = 0;
        }
        
        if (window != 2 && sound_playing != noone) {
            sound_stop(sound_playing);
            sound_playing = noone;
        }
        
    break;
    case AT_FSPECIAL:
    	// Put here so it immediately gets grounded, rather than a frame after touching ground
    	switch (window) {
    		case 1:
    			if (window_timer == 0 && !free) {
    				var jump_dust = spawn_dust_fx(x, y, asset_get("fx_jump_bg"), 24);
		            jump_dust.dust_color = 0;
		            jump_dust.fg_index = asset_get("fx_jump_fg");
		            sound_play(jump_sound);
    			}
    		break;
    		case 2:
    		case 3:
    		case 6:
    			if (window != 6) {
    				if (has_walljump) {
    					if (position_meeting(x + (20 * spr_dir), y - 20, asset_get("par_block"))) {
    						spr_dir *= -1;
    						set_state(PS_WALL_JUMP);
    						sound_play(land_sound);
    					}
    				}
    			}
    			if (!free) {
		    		// For polished feeling landings
		            var land_dust = spawn_dust_fx(x, y, asset_get("fx_land_bg"), 24);
		            land_dust.dust_color = 0;
		            land_dust.fg_index = asset_get("fx_land_fg");
		            sound_play(landing_lag_sound);
	            	window = 5;
	            	window_timer = 0;
	            	destroy_hitboxes()
    			}
    		break;
    		case 4:
    			if (!free && free_time > 0) {
    				print(was_parried);
    				landing_lag_time = glide_landing_lag_time;
    				if (was_parried) {
    					var land_dust = spawn_dust_fx(x, y, asset_get("fx_land_bg"), 24);
			            land_dust.dust_color = 0;
			            land_dust.fg_index = asset_get("fx_land_fg");
			            sound_play(landing_lag_sound);
    				}
    				set_state(was_parried ? PS_PRATLAND : PS_LANDING_LAG);
    			}
    		break;
    		case 5:
    			if (free) {
    				set_state(PS_IDLE_AIR);
    			}
    		break;
    	}
    break;
	case AT_DSPECIAL:
		var landing = false;
		if (window == 1 && (free || !freemd)) {
			set_attack(AT_DSPECIAL_AIR);
		}
		if (window == 2 && dig_timer == 0) {
			var current_mound = instance_create(x,y,"obj_article1");
			if (instance_exists(orig_mound1)) {
				orig_mound1.state = 2;	
				orig_mound1.state_timer = 0;
			}
			mound_1 = current_mound;orig_mound1 = current_mound;
			if (instance_exists(orig_mound2)) {
				orig_mound2.state = 2;
				orig_mound2.state_timer = 0;
			}
		} else if (window == 3 && window_timer == 0) {
			if (state_timer != 0) {
				var current_mound = instance_create(x,y,"obj_article1");
				if (instance_exists(orig_mound2)) {
					orig_mound2.state = 2;
					orig_mound2.state_timer = 0;
				}
				mound_2 = current_mound;orig_mound2 = current_mound;
			}
		} else if (window == 4 && window_timer == 0) {
			if (instance_exists(mound_1)) {
				if (place_meeting(x, y, mound_1)) {
					mound_1.state = 1;
					mound_1.state_timer = 0;
				}
			}
			if (instance_exists(mound_2)) {
				if (place_meeting(x, y, mound_2)) {
					mound_2.state = 1;
					mound_2.state_timer = 0;
				}
			}
			
		} else if (window == 5) {
			if (!free) {
				if (was_parried) {
					var land_dust = spawn_dust_fx(x, y, asset_get("fx_land_bg"), 24);
		            land_dust.dust_color = 0;
		            land_dust.fg_index = asset_get("fx_land_fg");
		            sound_play(landing_lag_sound);
				}
				set_state(was_parried ? PS_PRATLAND : PS_LANDING_LAG);
	            landing = true;
			}
		}
		if (!landing) {
			hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		} else {
			hurtboxID.sprite_index = hurtbox_spr;
		}
	break;
	case AT_DSPECIAL_AIR:
		fall_through = true;
		if (window == 2 && !free && freemd) {
			window = 3;
			window_timer = 0;
		}
		hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		if window == 3 && window_timer == 1{
        		with pHitBox {
                    if player_id == other and attack == AT_DSPECIAL_AIR and type == 1 {
                        destroyed = true;
                        instance_destroy();
                    }
                }
    		}
	break;
	case AT_DSPECIAL_2:
		hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
		if window == 1 && window_timer == 1{
        		with pHitBox {
                    if player_id == other and attack == AT_DSPECIAL_AIR and type == 1 {
                        destroyed = true;
                        instance_destroy();
                    }
                }
    		}
	break;
    }
} else if (sound_playing != noone) {
	sound_stop(sound_playing);
    sound_playing = noone;
}

if (state != PS_IDLE_AIR && has_uppercutted && (!attacking || attack != AT_DSPECIAL)) {
	has_uppercutted = false;
}

if (state != PS_WALL_JUMP) {
	cling_timer = 0;
	wall_climbing = false;
	wall_climb_timer = 0;
	if (ledge_getup && (state == PS_LAND || state == PS_LANDING_LAG || state == PS_PRATLAND)) {
		hurtboxID.sprite_index = hurtbox_spr;
	}
	ledge_getup = false;
	ledge_snapped = false;
	ledge_getup_timer = 0;
}

if (wall_climbing != 0) {
	if (!position_meeting(x - (20 * spr_dir), y - max_climb_height, asset_get("par_block"))) {
		ledge_getup = true;
	}
	vsp = wall_climb_speed * wall_climbing;
	if (wall_climb_timer % climb_dust_frequency == 0) {
		var climb_dust = spawn_dust_fx(x, y, sprite_get("wallclimb_dust_bg"), 12);
	    climb_dust.dust_color = 0;
	    climb_dust.fg_index = sprite_get("wallclimb_dust_fg");
	    if (spr_dir == 1) {
	    	climb_dust.x += 1;
	    }
	}
	if (!hitpause) {
		wall_climb_timer++;
	}
}

if (state == PS_WALL_JUMP && (jump_down || (attack == AT_FSPECIAL && special_down)) && cling_timer >= 0 && !ledge_getup) {
	wall_jump_timer = 0;
	if (!hitpause) {
		cling_timer++;
	}
	if (up_down || down_down) {
		wall_climbing = up_down ? -1 : 1;
	} else {
		wall_climbing = 0;
		wall_climb_timer = 0;
	}
	if (cling_timer >= wall_cling_time) {
		wall_climbing = 0;
		cling_timer = -1;
	}
}

if ((!jump_down && cling_timer > 0 && (attack != AT_FSPECIAL || !special_down)) || ledge_getup) {
	cling_timer = -1;
	wall_climbing = 0;
	wall_climb_timer = 0;
}

if (state == PS_CROUCH || (attacking && ((attack == AT_DSPECIAL && window == 1 && window_timer == 0) || (attack == AT_DSPECIAL_AIR && window == 3 && window_timer == 0)))) {
	if (place_meeting(x, y, mound_1) && abs(x - mound_1.x) <= mound_closeness) {
		entered_mound = 1;
		set_attack(AT_DSPECIAL_2);
		x = mound_1.x;
		y = mound_1.y;
		hsp = 0;
		spr_dir = mound_1.spr_dir;
	} else if (place_meeting(x, y, mound_2) && abs(x - mound_2.x) <= mound_closeness) {
		entered_mound = 2;
		set_attack(AT_DSPECIAL_2);
		x = mound_2.x;
		y = mound_2.y;
		hsp = 0;
		spr_dir = mound_2.spr_dir;
	}
}

with (asset_get("obj_article1"))
if (player_id.url == other.url && place_meeting(x, y, other.id) && !other.free && !other.attacking){
	other.mound_1 = player_id.orig_mound1;
	other.mound_2 = player_id.orig_mound2;
}
    
if (state == PS_WALL_JUMP && ledge_getup) {
	var landed = false;
	wall_jump_timer = 0;
	if (ledge_snapped) {
		if (!hitpause) {
			ledge_getup_timer++;
		}
		if (ledge_getup_timer == ledge_getup_frames) {
			spr_dir *= -1;
			x += 30 * spr_dir;
			y -= max_climb_height - 6;
			set_state(was_parried ? PS_PRATLAND : PS_LAND);
			var landed = true;
		}
	} else {
		var y_point_of_block = max_climb_height;
		for (i = max_climb_height; i > 0; i--) {
			if (position_meeting(x - (20 * spr_dir), y - i, asset_get("par_block"))) {
				y_point_of_block = i + 4;
				break;
			}
		}
		y -= (y_point_of_block - max_climb_height);
		ledge_snapped = true;
	}
	if (!landed) {
		var percentage = ((ledge_getup_timer%ledge_getup_frames)/ledge_getup_frames);
		var cur_frame = floor(ledge_getup_anim_frames * percentage) + 1;
		hurtboxID.sprite_index = sprite_get("ledgegetup_" + string(cur_frame) + "_hurt");
	} else {
		hurtboxID.sprite_index = hurtbox_spr;
	}
}

if (!attacking || (attack != AT_DSPECIAL && attack != AT_DSPECIAL_2)) {
	if (instance_exists(mound_1) && instance_exists(mound_2)) {
		if (mound_1.y != mound_2.y) {
			mound_1.state = 1;
			mound_1.state_timer = 0;
			mound_2.state = 2;
			mound_2.state_timer = 0;
		}
	} else if (instance_exists(mound_2) && !instance_exists(mound_1)) {
		mound_2.state = 2;
		mound_2.state_timer = 0;
	} else if (instance_exists(mound_1) && !instance_exists(mound_2)) {
		mound_1.state = 2;
		mound_1.state_timer = 0;
	}
}

/* --- UNCOMMENT FOR PRATFALL AFTER FSPECIAL AERIAL CANCEL ---
if (fspecial_aerial) {
	if (!attacking && state_cat != SC_HITSTUN && state != PS_WALL_JUMP) {
		if (free) {
			set_state(PS_PRATFALL);
		} else {
			set_state(PS_PRATLAND);
		}
	}
}
*/

if(!free || free && (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN)){
    move_cooldown[AT_NSPECIAL] = 0;
}

// Resource restoration
if (!attacking && (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN)) {
	has_fspecialed = false;
    move_cooldown[AT_FSPECIAL] = 0;
    fspecial_aerial = false;
}

if (has_fspecialed) {
	move_cooldown[AT_FSPECIAL] = 2;
}

// Timers that show how long someone is free or not free
if (free) {
    free_time++;
    not_free_time = 0;
} else {
    not_free_time++;
    free_time = 0;
}

paused = false; // Assures the game is not paused, used in pre_draw