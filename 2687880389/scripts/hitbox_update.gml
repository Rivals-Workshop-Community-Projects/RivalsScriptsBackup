enum BOOMERANG_STATE {
	BOOMERANG_OUT_CONSTANT,
	BOOMERANG_OUT_SLOWING,
	BOOMERANG_RETURN_RAMPING,
	BOOMERANG_RETURN_CONSTANT,
	BOOMERANG_FREEDOM
}

// Nspecial projectile
// Want to track current target, and adjust direction based on target position
if ((attack == AT_NSPECIAL_2) && (hbox_num == 1)) {

	// If we make contact with the owner, destroy the projectile
	 with (asset_get("oPlayer")) {
		if (other.player_id == id) {
			// If we overlap, destroy this projectile and reset the cooldown
			if ((other.curr_boomerang_state != BOOMERANG_STATE.BOOMERANG_OUT_CONSTANT)
				&& !other.was_parried
				&& place_meeting(x, y, other))
			{
				//sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
				move_cooldown[AT_NSPECIAL_2] = 0;
				other.destroyed = true;
				white_flash_timer = white_flash_duration;
				//current_recharge_twinkle = spawn_hit_fx(x, y, recharge_twinkle);
				if (crouching) {
					spawn_hit_fx(x + (spr_dir * 10), y + 20, recharge_twinkle);
				} else {
					spawn_hit_fx(x + (spr_dir * 6), y - 6, recharge_twinkle);
				}
				//current_recharge_twinkle.follow_id = current_recharge_twinkle.player_id;
				sound_play(asset_get("sfx_boss_shine"), false, noone, 0.8, 1.3);
			}
		}
	}
	
	print_debug("curr_angle = " + string(curr_angle) + ", spr_dir = " + string(spr_dir));
	// If we make contact with an opponent's attack, deflect the boomerang
	if (!deflected) {
		with (asset_get("pHitBox")) {
			if (other.player_id != player_id) {
				curr_angle = kb_angle;
				if (place_meeting(x, y, other)) {
					sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
					if (other.curr_boomerang_state != BOOMERANG_STATE.BOOMERANG_FREEDOM) {
						other.next_boomerang_state = BOOMERANG_STATE.BOOMERANG_FREEDOM;
						other.orig_hsp *= -1;
						other.orig_vsp *= -1;
						curr_angle = (curr_angle + 180) % 360
						deflected = true;
					}
					/*if (other.curr_boomerang_state == BOOMERANG_STATE.BOOMERANG_OUT_CONSTANT) {
						other.next_boomerang_state = BOOMERANG_STATE.BOOMERANG_RETURN_CONSTANT;
						other.state_timer = 0;
					} else if (other.curr_boomerang_state == BOOMERANG_STATE.BOOMERANG_OUT_SLOWING) {
						other.next_boomerang_state = BOOMERANG_STATE.BOOMERANG_RETURN_RAMPING;
						other.state_timer = other.state_time_return_ramping - other.state_timer;
					}*/
				}
			}
		}
	}

	/*if (was_parried) {
		curr_boomerang_state = BOOMERANG_STATE.BOOMERANG_FREEDOM;
	}*/

    transcendent = true; // Don't let it be broken, but reflect it if struck
    prev_boomerang_state = curr_boomerang_state;
    curr_boomerang_state = next_boomerang_state;
	/*corrected_curr_angle = ((spr_dir > 0) ? curr_angle
										  : (curr_angle <= 180) ? 180 - curr_angle
																: 360 - (curr_angle - 180)) % 360;*/
	switch (curr_boomerang_state) {
		case BOOMERANG_STATE.BOOMERANG_OUT_CONSTANT :
			walls = 2;
    		grounds = 2;
			//sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
			orig_hsp = lengthdir_x(current_magnitude, curr_angle);
			orig_vsp = lengthdir_y(current_magnitude, curr_angle);
			if (state_timer > 0) {
				state_timer--;
			} else {
				next_boomerang_state = BOOMERANG_STATE.BOOMERANG_OUT_SLOWING;
				state_timer = state_time_out_slowing;
			}
			break;
		case BOOMERANG_STATE.BOOMERANG_OUT_SLOWING :
			walls = 2;
    		grounds = 2;
			current_magnitude = intial_boomerang_throw_speed * (state_timer / state_time_out_slowing)
			orig_hsp = lengthdir_x(current_magnitude, curr_angle);
			orig_vsp = lengthdir_y(current_magnitude, curr_angle);
			if (state_timer > 0) {
				state_timer--;
			} else {
				next_boomerang_state = BOOMERANG_STATE.BOOMERANG_RETURN_RAMPING;
				state_timer = state_time_return_ramping;
			}
			break;
		case BOOMERANG_STATE.BOOMERANG_RETURN_RAMPING :
			walls = 1;
    		grounds = 1;
			// Find where the user is. If they don't exist, go to freedom mode
			var owner = noone;
			var target_x = 0;
			var target_y = 0;
			with (asset_get("oPlayer")) {
				// Is it our guy?
				if (other.player_id == id) {
					owner = id;
					target_x = x;
					target_y = y - boomerang_current_foot_offset;
				}
			}
			target_angle = 0;
			if (owner != noone) {
				//print_debug("x = " + string(x) + ", y = " + string(y));
				//sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
				target_angle = point_direction(x, y, target_x, target_y);
				var difference = angle_difference(target_angle, curr_angle);
				print_debug("target_angle = " + string(target_angle) + ", curr_angle = " + string(curr_angle) + ", spr_dir = " + string(spr_dir));
				var range = 1 - homing_strength;
				var modifier = difference * (homing_strength + range * (state_timer / state_time_return_ramping));
				//var modifier = difference * homing_strength;
				real_angle = curr_angle + modifier;// = target_angle + (difference * ((state_time_return_ramping - state_timer) / state_time_return_ramping));
				//real_angle = target_angle;
				print_debug("difference = " + string(difference) + ", modifier = " + string(modifier) + ", spr_dir = " + string(spr_dir));
				print_debug("real_angle = " + string(real_angle));
				current_magnitude = intial_boomerang_throw_speed * ((state_time_return_ramping - state_timer) / state_time_return_ramping);
				if (prev_boomerang_state == BOOMERANG_STATE.BOOMERANG_OUT_SLOWING) {
					print_debug("Reset boomerang to face player.");
					perfect_homing_countdown = perfect_homing_frames;
				}
				if (perfect_homing_countdown > 0) {
					print_debug("Homing perfectly.");
					perfect_homing_countdown--;
					orig_hsp = lengthdir_x(current_magnitude, target_angle);
					orig_vsp = lengthdir_y(current_magnitude, target_angle);
				} else {
					if (bounce_off_player) {
						bounce_off_player = false;
						// Don't set hsp/vsp at all, let the bounce dictate behaviour
					} else {
						orig_hsp = lengthdir_x(current_magnitude, real_angle);
						orig_vsp = lengthdir_y(current_magnitude, real_angle);
					}
				}
				print_debug("orig_hsp = " + string(orig_hsp) + ", orig_vsp = " + string(orig_vsp));
				if (state_timer > 0) {
					state_timer--;
				} else {
					next_boomerang_state = BOOMERANG_STATE.BOOMERANG_RETURN_CONSTANT;
				}
			} else {
				next_boomerang_state = BOOMERANG_STATE.BOOMERANG_FREEDOM;
			}
			break;
		case BOOMERANG_STATE.BOOMERANG_RETURN_CONSTANT :
			walls = 1;
    		grounds = 1;
			// Find where the user is. If they don't exist, go to freedom mode
			var owner = noone;
			var target_x = 0;
			var target_y = 0;
			with (asset_get("oPlayer")) {
				// Is it our guy?
				if (other.player_id == id) {
					owner = id;
					target_x = x;
					target_y = y - boomerang_current_foot_offset;
				}
			}
			target_angle = 0;
			if (owner != noone) {
				//print_debug("x = " + string(x) + ", y = " + string(y));
				//sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
				target_angle = point_direction(x, y, target_x, target_y);
				var difference = angle_difference(target_angle, curr_angle);
				print_debug("target_angle = " + string(target_angle) + ", curr_angle = " + string(curr_angle) + ", spr_dir = " + string(spr_dir));
				//var modifier = difference * (homing_strength - homing_strength * (state_timer / state_time_return_ramping));
				var modifier = difference * homing_strength;
				real_angle = curr_angle + modifier;// = target_angle + (difference * ((state_time_return_ramping - state_timer) / state_time_return_ramping));
				//real_angle = target_angle;
				print_debug("difference = " + string(difference) + ", modifier = " + string(modifier) + ", spr_dir = " + string(spr_dir));
				print_debug("real_angle = " + string(real_angle));
				current_magnitude = intial_boomerang_throw_speed;// * ((state_time_return_ramping - state_timer) / state_time_return_ramping);
				if (prev_boomerang_state == BOOMERANG_STATE.BOOMERANG_OUT_SLOWING) {
					print_debug("Reset boomerang to face player.");
					orig_hsp = lengthdir_x(current_magnitude, target_angle);
					orig_vsp = lengthdir_y(current_magnitude, target_angle);
				} else if (!bounce_off_player) {
					orig_hsp = lengthdir_x(current_magnitude, real_angle);
					orig_vsp = lengthdir_y(current_magnitude, real_angle);
				} else {
					bounce_off_player = false;
				}
				print_debug("orig_hsp = " + string(orig_hsp) + ", orig_vsp = " + string(orig_vsp));
				if (state_timer > 0) {
					state_timer--;
				} else {
					next_boomerang_state = BOOMERANG_STATE.BOOMERANG_RETURN_CONSTANT;
				}
			} else {
				next_boomerang_state = BOOMERANG_STATE.BOOMERANG_FREEDOM;
			}
			break;
		case BOOMERANG_STATE.BOOMERANG_FREEDOM : // Fly in a straight line
			// Intentional fall-through
		default : // Maintain course by default
			walls = 1;
    		grounds = 1;
			break;
	}



	
    // Do not edit below here
    
    // Account for redirection
    var current_hsp_sign = sign(hsp);
    if ((current_hsp_sign != hsp_sign)
        && (current_hsp_sign != 0)
        && (hsp_sign != 0))
    {
        //orig_vsp *= -1;
        //vsp_sign = current_vsp_sign;
        //whole_vsp *= -1;
        
        // We've changed horizontal direction.
        // Change state appropriately
        if (curr_boomerang_state == BOOMERANG_STATE.BOOMERANG_OUT_CONSTANT) {
			next_boomerang_state = BOOMERANG_STATE.BOOMERANG_RETURN_CONSTANT;
			state_timer = 0;
		} else if (curr_boomerang_state == BOOMERANG_STATE.BOOMERANG_OUT_SLOWING) {
			next_boomerang_state = BOOMERANG_STATE.BOOMERANG_RETURN_RAMPING;
			state_timer = state_time_return_ramping - state_timer;
		}
    }
    var current_vsp_sign = sign(vsp);
    if ((current_vsp_sign != vsp_sign)
        && (current_vsp_sign != 0)
        && (vsp_sign != 0))
    {
        orig_vsp *= -1;
        vsp_sign = current_vsp_sign;
        whole_vsp *= -1;
    }

    // Angle the projectile in the direction it's headed
    //proj_angle = point_direction(0, 0, spr_dir * orig_hsp, spr_dir * orig_vsp);
    curr_angle = point_direction(0, 0, orig_hsp, orig_vsp);
    print_debug("orig_hsp = " + string(orig_hsp) + ", orig_vsp = " + string(orig_vsp) + ", spr_dir = " + string(spr_dir));
	print_debug("proj_angle = " + string(target_angle) + ", curr_angle = " + string(curr_angle) + ", spr_dir = " + string(spr_dir));

	/*proj_angle = ((spr_dir > 0) ? curr_angle
								: (curr_angle <= 180) ? 180 - curr_angle
													  : 360 - (curr_angle - 180)) % 360;*/
	proj_angle = (spr_dir < 0) ? 180 + curr_angle : curr_angle;
    //(spr_dir < 0)?
    if (((spr_dir < 0) && (abs(orig_hsp) < 0.01))
    	|| ((abs(orig_hsp) >= 0.01)
    	    && ((curr_boomerang_state == BOOMERANG_STATE.BOOMERANG_RETURN_RAMPING)
    		    || (curr_boomerang_state == BOOMERANG_STATE.BOOMERANG_RETURN_CONSTANT))))
	{
		//print_debug("flipping!");
		proj_angle = (proj_angle + 180) % 360;;
	}
	
	// The following block accounts for fractional changes, please don't edit
    frac_hsp = frac(abs(orig_hsp));
    hsp_sign =  sign(orig_hsp);
    abs_whole_hsp = floor(abs(orig_hsp));
    whole_hsp = abs_whole_hsp * hsp_sign;
    hsp = whole_hsp;
    frac_vsp = abs(frac(orig_vsp));
    vsp_sign =  sign(orig_vsp);
    abs_whole_vsp = floor(abs(orig_vsp));
    whole_vsp = abs_whole_vsp * vsp_sign;
    vsp = whole_vsp;

    // Add 1 to hsp/vsp on cycles where it crosses a whole number boundary
    summed_hsp_remainder += frac_hsp;
    if (abs(hsp) != abs_whole_hsp) {
        hsp = whole_hsp;
    }
    while (summed_hsp_remainder >= 1) {
        summed_hsp_remainder--;
        if (hsp_sign > 0) {
            hsp++;
        } else if (hsp_sign < 0) {
            hsp--;
        }
    }
    summed_vsp_remainder += frac_vsp;
    if (abs(vsp) != abs_whole_vsp) {
        vsp = whole_vsp;
    }
    while (summed_vsp_remainder >= 1) {
        summed_vsp_remainder--;
        if (vsp_sign > 0) {
            vsp++;
        } else if (vsp_sign < 0) {
            vsp--;
        }
    }

	prev_hsp = orig_hsp;
	prev_vsp = orig_vsp;
}