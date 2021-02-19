//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
	trigger_b_reverse();
}

window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);

switch (attack) {
	case AT_UAIR:
		// Holding attack makes UAIR float
		if (window == 2 && attack_down) {
			grav = uair_grav;
		} else {
			grav = gravity_speed;
		}
		if (window == 2 && window_timer == get_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME) - 1) {
			sound_play(asset_get("sfx_swipe_medium2"));
		} else if (window == 2 && window_timer == get_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME) - 1) {
			sound_play(asset_get("sfx_swipe_medium1"));
		}
		break;
	case AT_UTILT:
		if (vsp <= 0) {
			can_fast_fall = false; // No hitfalling
		}
		break;
	case AT_JAB:
	case AT_FAIR:
		// Gives this variables to change it to JAB on landing
		fair_win = window;
		far_win_timer = window_timer;
		if (!was_parried && ((window == 3 || window == 6) && window_timer >= get_window_value(AT_FAIR, 3, AG_WINDOW_CANCEL_FRAME) && right_strong_pressed)) {
			window++;
			window_timer = 0;
		}
		if (window == 7 && window_timer == window_length && !sword_created) {
			sound_play(asset_get("sfx_spin"));
			create_hitbox(AT_JAB, 3, round(x + hsp), round(y));
			sword_created = true;
		}
		if (!free) {
			old_vsp = 0;
		}
		if (window == 8 &&  window_timer == window_length) {
			katana.vis = 1;
		}
		break;
	case AT_DAIR:
		hsp = clamp(hsp, -2, 2);
		if (window == 1 and window_timer == 1)
			{
			clear_button_buffer(PC_DOWN_STICK_PRESSED);
			}
		if ((window >= 2 && window <= 4 || (window == 5 && window_timer <= 1)) && down_down) {
			fall_through = true;
		}
		if (window >= 4 && touching_deployed_pod && jump_down) { 
			initiate_glide(false, true);
		}
		break;
	case AT_DSPECIAL:
		// Set/Crash
		if state_timer == 1 {
        	set_pod_attack(pod.attached ? PA_DSPECIAL : PA_DSPECIAL_CR );
	    }
	    can_fast_fall = false;
	    can_move = false;
	    if (window == 2 && window_timer == window_length && free) {
	    	dspecial_stalled = true;
	    }
	    break;
	case AT_DATTACK:
		// Allows dampening of DATTACK
		if (down_down || (spr_dir ? left_down : right_down)) {
			hsp *= 0.97;
		}
		break;
	case AT_EXTRA_1:
		// Glide
		// shift the player indicator above the pod robot. i personally think it's prettier :)
		// -supersonic
		hud_offset = floor( ease_quartOut(0,70,min(state_timer,14),14) );
		
		if window == 2 {
			pod_glided = true;

	    	vsp = clamp(vsp,-2,pod_glide_maxfall);
	    	if down_hard_pressed {
	        	set_state(pod_glided_from_pratfall || uspecial_cancelled ? PS_PRATFALL : PS_IDLE_AIR);
	    	}
		}
		
	    if (!pod_glided_from_pratfall) {
	    	if (!uspecial_cancelled) {
		        can_attack = true;
		        can_special = true;
		        can_jump = true;
		        can_djump = true;
	    	}
	        can_shield = true;
	    }
	    can_wall_jump = true;
	    break;
	case AT_NSPECIAL:
		// Volt
		if (state_timer == 1) {
    		set_pod_attack(PA_NSPECIAL_AT);
		}
    	break;
    case AT_FSPECIAL_2:
		// Rocket
	    if window == 1 {
	        if (!joy_pad_idle) {
	            pod_fspec_dir = joy_dir;
	            if pod_fspec_dir < 90 && pod_fspec_dir > 30 pod_fspec_dir = 30;
	            else if pod_fspec_dir > 90 && pod_fspec_dir < 150 pod_fspec_dir = 150;
	            else if pod_fspec_dir < 270 && pod_fspec_dir > 210 pod_fspec_dir = 210;
	            else if pod_fspec_dir > 270 && pod_fspec_dir < 330 pod_fspec_dir = 330;
	            else if pod_fspec_dir == 90 pod_fspec_dir = spr_dir == -1 ? 150 : 30;
	            else if pod_fspec_dir == 270 pod_fspec_dir = spr_dir == -1 ? 210 : 330;
	        }
	        if (hsp != 0) {
	        	rocket_speed_init = abs(hsp);
	        }
	    } else if (window == 2 && !hitpause) {
	        if (pod_fspec_dir != 90 && pod_fspec_dir != 270) {
	        	spr_dir = pod_fspec_dir > 90 && pod_fspec_dir < 270 ? -1 : 1;
	        }
	        var win_length = get_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH);
	        // * 1000 then / 1000 is to negate having to round for ease functions
	        // This basically just makes it exponentially get faster
	        var x_init_speed = round(lengthdir_x(rocket_speed_init, pod_fspec_dir) * 1000);
	        var y_init_speed = round(lengthdir_y(rocket_speed_init, pod_fspec_dir) * 1000);
	        var x_full_speed = round(lengthdir_x(rocket_speed, pod_fspec_dir) * 1000);
	        var y_full_speed = round(lengthdir_y(rocket_speed, pod_fspec_dir) * 1000);
	        hsp = ease_expoInOut(x_init_speed, x_full_speed, window_timer, win_length) / 1000;
	        vsp = ease_expoInOut(y_init_speed, y_full_speed, window_timer, win_length) / 1000;
	    }
	    if (has_hit && !was_parried && !hitpause) {
	    	can_jump = true;
	    }
    case AT_FSPECIAL:
    	// Dash
    	move_cooldown[AT_FSPECIAL] = 99999;
	    if (window >= 2) {
	        if (touching_deployed_pod && special_down && attack == AT_FSPECIAL && window == 2) {
	            if set_pod_attack(PA_FSPECIAL) {
	            	// Reset the pod direction to be neutral on rocket use
    				pod_fspec_dir = spr_dir == 1 ? 0 : 180;
	                set_attack(AT_FSPECIAL_2);
	                pod.attached = true;
	            }
	        } else {
	        	if (attack == AT_FSPECIAL) {
		            can_jump = true;
		            can_attack = true;
		        	if free can_shield = true;
	        	}
	            can_wall_jump = true;
	            can_fast_fall = false;
	        }
	        // Move up at ledge
	        if (!moved_up) {
	            if (free && place_meeting(x + 5 * spr_dir, y, asset_get("par_block"))){
	                for (var i = 0; i < 35; i++){
	                    if (!place_meeting(x + 5 * spr_dir, y - (i + 1), asset_get("par_block"))){
	                        y -= i;
	                        x += 20 * spr_dir;
	                        moved_up = true;
	                        break;
	                    }
	                }
	            }
	        }
	    } else {
	    	can_fast_fall = false;
	    }
		break;
	case AT_USPECIAL:
		can_wall_jump = true;
		if (window == 1) {
			// Make it not play at the last frame of window 1 bc attack_update happens the next frame instead of the current one
			
			// Clamp the vsp in the startup, then determine if USPECIAL is horizontal
			vsp = clamp(vsp, -1, 1);
			uspec_horizontal = right_down - left_down;
			if (window_timer >= get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)) {
				// Makes the rotation happen just before window 2 comes out
				if (uspec_horizontal != 0) {
					spr_dir = uspec_horizontal;
				}
			}
		} else if (window == 2 && !hitpause) {
			// Make the hsp angle slightly if horizontal, and otherwise make it slash up fast
			can_move = false;
			vsp = ease_expoOut(uspec_up_speed, uspec_hover_speed, window_timer, get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH));

			if (uspec_horizontal != 0) {
				hsp = ease_cubeInOut(8, 2, window_timer, get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)) * spr_dir;
			}
		} else if (window == 3) {
			vsp = 0; // Hover
			can_move = false;
			if (jump_down) && (touching_deployed_pod || pod.attached) && vsp >= 0 {
				// Grabbing the pod while hovering cancels it
				initiate_glide(has_hit && !uspecial_cancelled ? false : true, true);
				uspecial_cancelled = true; // Makes it so you can only USPECIAL cancel once
			}
		} else if (window == 4) {
			// Makes the USPECIAL fall down
			vsp = uspec_down_speed;
			if (down_down && ((window_timer < 3) || (window_timer < 4 && place_meeting(x, y, asset_get("par_jumpthrough"))))) {
				fall_through = true;
			}
		}
		if (uspecial_looping) {
			set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 0);
		}
		break;
	case AT_DSTRONG:
		if (window == 3 && strong_charge >= 30) {
			if (strong_charge >= 30) {
				// If charged enough to double spin, it moves horizontally
				hsp = 4 * spr_dir;
			}
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && repeat_times < floor((strong_charge)/30)) {
				// Spins again if enough charge has been given
				sound_play(asset_get("sfx_swipe_heavy1"));
				window_timer = 0;
				repeat_times++;
				attack_end();
			} else if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
				sound_play(asset_get("sfx_swipe_heavy2"));
			}
		} else if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
			sound_play(asset_get("sfx_swipe_heavy2"));
		}
		if (window == 1 && (strong_charge % 30 == 0 && strong_charge != 0)) {
			// Does this effect every 30 charge frames
			// Medium strong charge sfx
			sound_play(asset_get("sfx_absa_singlezap1"));
			spawn_hit_fx(x, y-20, 302);
		}
		break;
	case AT_USTRONG:
		if (window == 2 && window_timer == 1) {
			grab_time = round(starting_grab_time + (strong_charge/2));
		}
		break;
	case AT_TAUNT_2:
		can_move = false;
		can_fast_fall = false;
		if (window == 1) {
			vsp = clamp(vsp, -1, 1);
		}
		if (window == 2 && window_timer == 1) {
			char_height = 999;
		}
		if (window == 2 && window_timer == window_length && suicide_loops != suicide_max_loops) {
			suicide_loops++;
			window_timer = 0;
		}
		if (window == 3 && window_timer == window_length - 1) {
			create_deathbox(x, y, 2, 2, player, true, 1, 1, 2);
		}
		break;
}


//RUN;ES
if (abyssEnabled) {
	switch (attack) {
		case AT_FAIR:
			//tilt cancel???????
			//to be honest i'm genuinely surprised this rune just... works like this lol
			if runeA {
				var cstick_in_use = left_stick_down || right_stick_down || up_stick_down || down_stick_down;
				var horizontal = cstick_in_use ? right_stick_down - left_stick_down : right_down - left_down;
				var vertical = cstick_in_use ? down_stick_down - up_stick_down : down_down - up_down;

				if ( (window == 3 || window == 6) && (attack_pressed || cstick_in_use) && window_timer >= get_window_value( attack,window,AG_WINDOW_CANCEL_FRAME )) {
					if (horizontal != spr_dir || joy_pad_idle) { //prioritize fair
						if (vertical == 0) {
							set_attack(horizontal != 0 ? AT_BAIR : AT_NAIR);
						} else {
							set_attack(vertical == -1 ? AT_UAIR : AT_DAIR);
						}
					}
				}
			}
			break;
		case AT_UAIR:
			if runeC {
				if window == 2 && attack_down {
					vsp = clamp(vsp-0.35,-3,0);
					if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)-4 && state_timer < 100 {
						window_timer = 0;
						attack_end(); //let the hitboxes hit again
					}
				}
			}
			break;
		case AT_USPECIAL:
			//uspecial hit cancelling
			if runeC {
				if has_hit {
					can_attack = true;
					can_special = true;
					move_cooldown[AT_USPECIAL] = 2;
				}
			}
	}
}

#define set_pod_state(_state)
with (pod) {
    prev_state = state;
    state = _state;
    state_timer = 0;
}
#define set_pod_attack(_attack)
with (pod) {
    if (can_attack && !move_cooldown[_attack]) {
        prev_state = state;
        state = PD_ATTACK;
        state_timer = 0;
        attack = _attack;
        window = 1;
        window_timer = 0;
        return true;
    }
}
return false;
#define initiate_glide(should_pratglide, instaglide)

attack_end();
destroy_hitboxes();
pod_glided_from_pratfall = should_pratglide;
set_attack(AT_EXTRA_1);
state_timer = 0; //WHY DOESNT set_attack(attack) RESET THE STATE_TIMER;
//setting the glide to window 2 stops it from doing the 3 frame startup in which you're not
//actually gliding, which also means you won't get it back from quickly cancelling it.
if instaglide window = 2;
set_pod_state(PD_GLIDE);
