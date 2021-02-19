if (!balanced_fox && !falco) {
	if (state == PS_AIR_DODGE && state_timer = 3) {
	    sound_play(sound_get("fox_airdodge"));
	}

	if (state == PS_DOUBLE_JUMP && state_timer = 0) {
	    sound_play(sound_get("fox_jump"));
	} 
}

//Hitfall fix
if (!balanced_fox) {
	can_fast_fall = (vsp > 0 || old_vsp > 0);
}
/*
if wearing_hat == 1 {
	if state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE {
		wearing_hat = -1;
		var newfx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("santahat_toss"), 30));
		newfx.depth = depth-1;
	}
} else if wearing_hat == -1 {
	if state == PS_RESPAWN or state == PS_SPAWN {
		wearing_hat = 1;
	}
}*/ // Christmas stuff

if (state == PS_RESPAWN || state == PS_SPAWN && balanced_fox) {
	illusion_landed = true;
	move_cooldown[AT_FSPECIAL] = 0;
}

// Backwards jump
if (state == PS_JUMPSQUAT) {
	if (spr_dir == 1) {
		if (left_down) {
			if (!back_jump) {
				back_jump = true;
			}
		} else {
			if (back_jump) {
				back_jump = false;
			}
		}
	} else if (spr_dir == -1) {
		if (right_down) {
			if (!back_jump) {
				back_jump = true;
			}
		} else {
			if (back_jump) {
				back_jump = false;
			}
		}
	}
}

if (!balanced_fox) {
// Gets rid of whiff lag and adds l-cancelling
	if (shield_pressed && (state == PS_ATTACK_AIR) && attack != AT_FSPECIAL) {
		has_hit = true;
		lcancel_timer = get_gameplay_time();
		flashed = false;
	}
	// Extra safety if the button buffer isn't cleared for whatever reason
	if (state == PS_PARRY_START && (lcancel_timer > -8)) {
		set_state( PS_IDLE );
	}

	if (lcancel_timer <= (get_gameplay_time() - 7)) {
		has_hit = false;
		lcancel_timer = -8;
		flashed = true;
	}

	if (state == PS_LANDING_LAG && !flashed) {
		set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, hsp * spr_dir);
		set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_VSPEED, vsp);
		create_hitbox( AT_EXTRA_1, 1, x - 42 * spr_dir, y - 78 );
		flashed = true;
	}
	// Spotdodge
	if (state == PS_ATTACK_GROUND && attack == AT_TAUNT_2 && window == 2) {
    	invincible = true;
	}

}

if (balanced_fox) {
	if (attack != AT_DAIR || was_parried) {
		just_daired = 0;
		set_hitbox_value(AT_DAIR, 1, HG_SDI_MULTIPLIER, 1.0);
		set_hitbox_value(AT_DAIR, 2, HG_SDI_MULTIPLIER, 1.0);
		set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.65);
		set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 0.65);
	} else if (just_daired > 6) {
		set_hitbox_value(AT_DAIR, 1, HG_SDI_MULTIPLIER, 1 + (just_daired/10));
		set_hitbox_value(AT_DAIR, 2, HG_SDI_MULTIPLIER, 1 + (just_daired/10));
		set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.65 / (just_daired/6));
		set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 0.65 / (just_daired/6));
	}
	if (attack != AT_DSPECIAL || was_parried || state == PS_WAVELAND || state == PS_ATTACK_AIR) {
		just_shined = 0;
		set_hitbox_value(AT_DSPECIAL, 1, HG_SDI_MULTIPLIER, 1.0);
	} else if (just_shined > 1) {
		set_hitbox_value(AT_DSPECIAL, 1, HG_SDI_MULTIPLIER, 1 + (just_shined/3));
	}
}

if (state == PS_ATTACK_GROUND && attack == AT_DSTRONG) {
    if (window == 3 && window_timer == 0 && !hitpause) {
        var dstrong_dust = hit_fx_create(sprite_get("dstrong_dust"), 16);
        spawn_hit_fx( x - 88 * spr_dir + round(hsp) * spr_dir, y - 70, dstrong_dust );
    }
}

if (state == PS_ATTACK_GROUND && attack == AT_DTILT) {
	if (window == 1 && window_timer == 5 && !hitpause) {
		var dtilt_dust = hit_fx_create(sprite_get("dtilt_dust"), 5);
		spawn_hit_fx( x - 34 * spr_dir + round(hsp) * spr_dir, y - 52, dtilt_dust );
	}
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL) {
	if (((window == 1 && window_timer == 20) || window == 2 || window == 3) && !hitpause) {
		var illusion_effect = hit_fx_create(sprite_get("illusion_fx"), 4);
		if (window == 2 && window_timer == 0) {
			illusion_fx0 = spawn_hit_fx( x , y, illusion_effect );
		} else if (window == 2 && window_timer == 1) {
			illusion_fx1 = spawn_hit_fx( x , y, illusion_effect );
		} else if (window == 2 && window_timer == 2) {
			illusion_fx2 = spawn_hit_fx( x , y, illusion_effect );
		} else if (window == 3 && window_timer == 0) {
			illusion_fx3 = spawn_hit_fx( x , y, illusion_effect );
		}
	}
	if (window == 1) {
		reset_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X);
		reset_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X);
		reset_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X);
		reset_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X);
	}
}

if (hitpause) {
	if (variable_instance_exists(illusion_fx0, "pause")) {
		illusion_fx0.pause = hitstop_full;
	}
	if (variable_instance_exists(illusion_fx1, "pause")) {
		illusion_fx1.pause = hitstop_full;
	}
	if (variable_instance_exists(illusion_fx2, "pause")) {
		illusion_fx2.pause = hitstop_full;
	}
	if (variable_instance_exists(illusion_fx3, "pause")) {
		illusion_fx3.pause = hitstop_full;
	}
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL) {
	
	// Rune Code
	if (runeG) {
		if (window == 1) {
			if (special_down && window_timer <= 1 && shine_hold_timer < 60) {
				shine_hold_timer++;
				window_timer = 0;
				if (!runeJ) {
					if (free || ((get_stage_data(SD_X_POS) - x) > -36)) {
						if (runeL) {
							set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 270);
						}
						set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5 * (1 + shine_hold_timer/100));
						set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 5 * ((1 + shine_hold_timer/100) / 4));
		            	set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
					} else {
						if (runeL) {
							set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 0);
						}
						set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10 * (1 + shine_hold_timer/100));
						set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10 * ((1 + shine_hold_timer/100) / 4));
		            	set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
					}
				} else {
					if (runeL && free) {
						set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 270);
					} else if (runeL) {
						set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 84);
					}
					set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10 * (1 + shine_hold_timer/100));
					set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10 * ((1 + shine_hold_timer/100) / 4));
		            set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.25);
				}
				if (!runeJ) {
					set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, round(5 * (1 + shine_hold_timer/100)));
				} else {
					set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, round(8 * (1 + shine_hold_timer/100)));
				}
			}
		}
	}
	
	// Reflect FX
	if (window == 4 && window_timer == 1 && !hitpause) {
		if (!balanced_fox) {
			var reflect_effect = hit_fx_create(sprite_get("reflect"), 19);
			if (get_player_color(player) == 15) {
				reflect_effect = hit_fx_create(seasonal_reflect, 19);
			}
		} else {
			var reflect_effect = hit_fx_create(sprite_get("reflect"), 13);
			if (get_player_color(player) == 15) {
				reflect_effect = hit_fx_create(seasonal_reflect, 19);
			}
		}
		if (!free) {
			if (get_player_color(player) == 15) {
				reflect_fx = spawn_hit_fx( x - 48 * spr_dir + round(hsp) * spr_dir, y - 74, reflect_effect );
			} else {
				reflect_fx = spawn_hit_fx( x - 52 * spr_dir + round(hsp) * spr_dir, y - 74, reflect_effect );
			}
		} else {
			if (get_player_color(player) == 15) {
				reflect_fx = spawn_hit_fx( x - 48 * spr_dir + round(hsp) * spr_dir, y - 84, reflect_effect );
			} else {
				reflect_fx = spawn_hit_fx( x - 52 * spr_dir + round(hsp) * spr_dir, y - 84, reflect_effect );
			}
		}
		reflect_fx.depth = depth-1;
	} else if (window_timer > 1 && window == 4 && free && !hitpause && reflect_fx) {
		if (get_player_color(player) == 15) {
			reflect_fx.x = x - 48 * spr_dir + round(hsp) * spr_dir;
		} else {
			reflect_fx.x = x - 52 * spr_dir + round(hsp) * spr_dir;
		}
		reflect_fx.y = y - 84;
	} else if (window_timer > 1 && window == 4 && !hitpause && reflect_fx) {
		if (get_player_color(player) == 15) {
			reflect_fx.x = x - 48 * spr_dir + round(hsp) * spr_dir;
		} else {
			reflect_fx.x = x - 52 * spr_dir + round(hsp) * spr_dir;
		}
		reflect_fx.y = y - 74;
	}
}

if (shine_broke && was_parried && parried_timer + 120 <= get_gameplay_time()) {
	set_state(PS_IDLE);
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL) {
	if (hit_laser_air) {
		destroy_hitboxes();
	}
	if (free) {
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -35);
	} else {
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -30);
	}
	if (!falco && !runeB && !runeC) {
		if (window == 2 && window_timer == 5 && !hitpause) {
			if (!free) {
		    	laser_fx = spawn_hit_fx( x + spr_dir * 6 + spr_dir * round(hsp), y - 66, laser_vfx );
		    } else {
		    	laser_fx = spawn_hit_fx( x + spr_dir * 6 + spr_dir * round(hsp), y - 72, laser_vfx_air );
		    	if (!hit_laser_air) {
		    		laser = create_hitbox( AT_NSPECIAL, 2, 9999 * spr_dir + round(hsp) * spr_dir, 9999 + round(vsp) );
		    	}
		    	laser_time = get_gameplay_time();
		    }
		}
		if (window == 2 && window_timer >= 5) {
			if (!free) {
				laser_fx.y = y - 66;
				laser_fx.x = x + spr_dir * 6 + spr_dir * round(hsp);
			} else {
				laser_fx.y = y - 72;
				laser_fx.x = x + spr_dir * 6 + spr_dir * round(hsp);
			}
		}
	} else {
		if (free) {
			if (window == 2 && window_timer == 9 && !hitpause) {
			    laser_fx = spawn_hit_fx( x + spr_dir * 6 + spr_dir * round(hsp), y - 72, laser_vfx_air );
			    if (!hit_laser_air) {
			    	laser = create_hitbox( AT_NSPECIAL, 2, 9999 * spr_dir + round(hsp) * spr_dir, 9999 + round(vsp) );
			    }
			    laser_time = get_gameplay_time();
			}
			if (window == 2 && window_timer >= 9) {
				laser_fx.y = y - 72;
				laser_fx.x = x + spr_dir * 6 + spr_dir * round(hsp);
			}
		} else {
			if (window == 2 && window_timer == 11 && !hitpause) {
		    	laser_fx = spawn_hit_fx( x + spr_dir * 6 + spr_dir * round(hsp), y - 66, laser_vfx );
			}
		}
	}
}

if ((get_gameplay_time() == (laser_time + 3)) && !hit_laser_air) {
	laser.x = x + 52 * spr_dir + round(hsp) * spr_dir;
	laser.y = laser_fx.y + 36;
}

if (state == PS_PARRY_START && down_down) {
	if (balanced_fox) {
		parry_spotdodge = true;
		dodge_recovery_frames = 2;
	} else {
		set_attack(AT_TAUNT_2);
	}
} else if (state == PS_PARRY_START) {
	if (balanced_fox) {
		parry_spotdodge = false;
		dodge_recovery_frames = 4;
	} else {
		parry_spotdodge = true;
		dodge_recovery_frames = 2;
	}
}

if (!free && attack_down && !up_down && !left_down && !right_down && !down_down) {
	if (!jab_buffered) {
		attack_held = get_gameplay_time();
		jab_buffered = true;
	}
} else {
	if (jab_buffered) {
		jab_buffered = false;
	}
}

if (get_gameplay_time() <= attack_held) {
	move_cooldown[AT_JAB] = 0;
	jab_ready = true;
} else if (get_gameplay_time() <= attack_held + 6) {
	move_cooldown[AT_JAB] = 99;
	jab_ready = false;
} else {
	move_cooldown[AT_JAB] = 0;
}

if (attack == AT_JAB && (get_gameplay_time() <= attack_held + 6)) {
	move_cooldown[AT_JAB] = 99;
}

if (special_down && down_down) {
	if (!shine_buffered) {
    	special_held = get_gameplay_time();
    	shine_buffered = true;
	}
} else {
	if (shine_buffered) {
		shine_buffered = false;
	}
}

if (((get_gameplay_time() <= special_held + 2) && (!free || state == PS_FIRST_JUMP)) || ((get_gameplay_time() <= special_held) && state == PS_DOUBLE_JUMP)) {
	if (!balanced_fox) {
		clear_button_buffer( PC_JUMP_PRESSED );
	}
	move_cooldown[AT_DSPECIAL] = 0;
	move_cooldown[AT_USPECIAL] = 0;
	shine_ready = true;
} else if state == PS_LAND {
	move_cooldown[AT_DSPECIAL] = 0;
	move_cooldown[AT_USPECIAL] = 0;
	shine_ready = true;
} else if (get_gameplay_time() <= special_held + 6 && state != PS_LAND) {
	if (!balanced_fox) {
		clear_button_buffer( PC_JUMP_PRESSED );
	}
	clear_button_buffer( PC_SPECIAL_PRESSED );
	clear_button_buffer( PC_UP_STICK_PRESSED );
	move_cooldown[AT_DSPECIAL] = 99; 
	move_cooldown[AT_USPECIAL] = 99;
	shine_ready = false;
} else {
	move_cooldown[AT_DSPECIAL] = 0;
	if (!runeK) {
		move_cooldown[AT_USPECIAL] = 0;
	} else {
		if 	move_cooldown[AT_USPECIAL] < 9999 {
			move_cooldown[AT_USPECIAL] = 0;
		}
	}
}

if (attack == AT_DSPECIAL && (get_gameplay_time() <= special_held + 6)) {
	move_cooldown[AT_USPECIAL] = 99;
}

if (free) {
	free_time++;
} else {
	not_free_time++;
}

if (!free) {
	hit_player = false;
	free_time = 0;
	if (balanced_fox) {
		illusion_landed = true;
		move_cooldown[AT_FSPECIAL] = 0;
		if (runeK && (get_gameplay_time() > special_held + 6 || state == PS_LAND)) {
			move_cooldown[AT_USPECIAL] = 0;
		}
	}
} else {
	not_free_time = 0;
}

if (uspecial_cancellable && runeK && (state == PS_AIR_DODGE || state == PS_DOUBLE_JUMP)) {
	move_cooldown[AT_USPECIAL] = 0;
}

if (fspecial_cancellable && runeM && (state == PS_AIR_DODGE || state == PS_DOUBLE_JUMP)) {
	move_cooldown[AT_FSPECIAL] = 0;
}

if (balanced_fox) {
	if (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN) {
		illusion_landed = true;
		move_cooldown[AT_FSPECIAL] = 0;
		if (runeK) {
			move_cooldown[AT_USPECIAL] = 0;
		}
	}
}


if (!balanced_fox && !was_parried) {
	if (state == PS_JUMPSQUAT) {
		iasa_script();
	}
}

if ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && attack == AT_NSPECIAL) || attack != AT_NSPECIAL) {
	aerial_laser = false;
}

if ((prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL && state == PS_LANDING_LAG) {
	if (!balanced_fox) {
		landing_lag_time = 20;
	} else {
		has_hit = false;
		if (!hit_fspecial) {
			landing_lag_time = 14;
		} else {
			landing_lag_time = 9;
		}
	}
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	if (attack == AT_DSPECIAL) {
        if (zetta_reflect == true) {
            window = 1;
            window_timer = 0;
            zetta_reflect = false;
        }
		if (!balanced_fox) {
			if ((window == 1 && window_timer < 1) && !hitpause) {
				create_hitbox( AT_DSPECIAL, 1, x, y );
			}  else if (window == 1) {
				destroy_hitboxes();
			}
		} else if (!runeN) {
			if ((window == 1 && window_timer == 1) && !hitpause) {
				create_hitbox( AT_DSPECIAL, 1, x, y );
			}  else if (window == 1) {
					destroy_hitboxes();
			}
		} else {
			if (!hitpause && (window == 1 && !runeG) || (window == 1 && window_timer >= 1 && runeG)) {
				create_hitbox( AT_DSPECIAL, 1, x, y );
				invincible = true;
			}  else if (window == 2) {
				destroy_hitboxes();
				invincible = false;
			}
		}
	}
	if (attack == AT_FSPECIAL && window == 1 && window_timer < 1 && !hitpause) {
    	sound_play(sound_get("fox_illusion_ding"));
	}
	if (attack == AT_USPECIAL) {
		if (window == 1 && !hitpause) {
			if ((free && (place_meeting(x, y + 30, asset_get("par_block"))))) {
				no_more_aiming = true;
	        	if (joy_dir > 196 && joy_dir < 254) {
                	fiyaa_angle = 180;
           		 } else if (joy_dir >= 254 && joy_dir < 344) {
                	fiyaa_angle = 0;
            	}
	    	}
		}
    	if (window == 2 && !hitpause) {
    		if (!falco) {
        		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, (10.5 * cos(degtorad(fiyaa_angle))) * spr_dir);
        		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, (-10.5 * sin(degtorad(fiyaa_angle))));
        	} else {
        		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, (9 * cos(degtorad(fiyaa_angle))) * spr_dir);
        		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, (-9 * sin(degtorad(fiyaa_angle))));
        	}
        	// shhh... dont tell anyone but this doesn't actually work
        	sunglasses_x_offset = (-58 * spr_dir) * sin(degtorad(fiyaa_angle)) + 78 * cos(degtorad(fiyaa_angle));
        	if (fiyaa_angle != 90 && fiyaa_angle != 270) {
        		if (spr_dir == -1) {
        			sunglasses_y_offset = (78 * sin(degtorad(fiyaa_angle) - pi/2) + 58 * cos(degtorad(fiyaa_angle) - pi/2));
        		} else {
        			sunglasses_y_offset = 78 * sin(degtorad(fiyaa_angle)) + 58 * cos(degtorad(fiyaa_angle));
        		}
        	} else {
        		sunglasses_y_offset = 78 * sin(degtorad(fiyaa_angle)) + 58 * cos(degtorad(fiyaa_angle));
        	}
        	set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, (3 * cos(degtorad(fiyaa_angle))) * spr_dir);
        	spr_angle = fiyaa_angle - 90;

        	if (window_timer == 0 && (!free || (free && (place_meeting(x, y + 30, asset_get("par_block")))))) {
        		if (fiyaa_angle == 180 || fiyaa_angle == 0) {
        			set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 15);
        			y -= 30;
        		}
        	}
        	/* if (window_timer % 8 == 0) {
        		var flame_effect = hit_fx_create(sprite_get("reflect"), 4);
        		var puff_random_number = random_func(3, 360, true);
        		if (fiyaa_angle == 270 || fiyaa_angle == 90) {
        			flame_fx = spawn_hit_fx( x - round(60 * cos(degtorad(puff_random_number)) * spr_dir), y - 30 * (1 + round(sin(degtorad(fiyaa_angle))) * sin(degtorad(puff_random_number))), flame_effect );
        		}
        		else if (spr_dir == 1 && fiyaa_angle < 270 && fiyaa_angle > 90) {
        			flame_fx = spawn_hit_fx( x + round(90 * cos(degtorad(fiyaa_angle)) * cos(degtorad(puff_random_number))), y - 30 * (1 + round(sin(degtorad(puff_random_number))) * sin(degtorad(puff_random_number))), flame_effect );
        		} else if (spr_dir == -1 && (fiyaa_angle < 90 || fiyaa_angle > 270)) {
        			flame_fx = spawn_hit_fx( x + round(90 * cos(degtorad(fiyaa_angle)) * cos(degtorad(puff_random_number))), y - 30 * (1 + round(sin(degtorad(puff_random_number))) * sin(degtorad(puff_random_number))), flame_effect );
        		} else {
					flame_fx = spawn_hit_fx( x - round(15 * cos(degtorad(fiyaa_angle)) * cos(degtorad(puff_random_number))), y - 30 * (1 + round(sin(degtorad(puff_random_number))) * sin(degtorad(puff_random_number))), flame_effect );
				}
				flame_fx.draw_angle = puff_random_number;
        	} */ // do later
    		if (window_timer > 1) {
	    		if (fiyaa_angle > 196 && fiyaa_angle < 344) {
	    			fall_through = true;
					if ((free && (place_meeting(x, y - 60 * sin(degtorad(fiyaa_angle)), asset_get("par_block")) || place_meeting(x, y - 15 * sin(degtorad(fiyaa_angle)), asset_get("par_block")))) || place_meeting(x, y - 5 * sin(degtorad(fiyaa_angle)), asset_get("par_block"))) {
	        			vsp = 0;
	        			spr_angle = 0;
	        			for (i=0; i<60; i++) {
	        				if (place_meeting(x, y + i, asset_get("par_block"))) {
	        					y += i - 20;
	        					break;
	        				}
	        			}
	        			destroy_hitboxes();
	        			free_timer = get_gameplay_time();
	        			window_timer = 0;
	        			window = 3;
	        			set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.9);
	        			fallingfromupb = true;
	        			sound_play(asset_get("sfx_land"));  
	    			}

	    		}
	    	} else {
	    		starting_vsp = vsp;
	    	}
    	}
    	if (window == 3) {
    		spr_angle = 0;
    		if (fiyaa_angle < 90 || (fiyaa_angle > 270 && fiyaa_angle <= 360)) {
    			spr_dir = 1;
    		} else if (fiyaa_angle != 90 && fiyaa_angle != 270) {
    			spr_dir = -1;
    		}
    	}
	}

	if (attack == AT_FSPECIAL) {
		
		if (!free && illusion_air && (window == 5 && window_timer >= 10)) {
			if (!was_parried) {
                set_state(PS_LANDING_LAG);
            } else {
                window_timer = 999;
                sound_play(asset_get("sfx_land"));
            }
			illusion_set = true;
		}
		// Adds landing sound effect for illusion
		if (window != 4 || (window == 4 && window_timer == 0)) {
			illusion_landed = false;
		}
        if (!free && window == 4 && !illusion_landed && !illusion_air && !hitpause) {
            sound_play(asset_get("sfx_land"));
        }

		if (window == 4 && window_timer == 0 && !shortened && abs(hsp) >= 1) {
			create_hitbox( AT_FSPECIAL, 4, x, y);
		}
	}

	if (balanced_fox) {

		if (!runeG) {
			if (free || (((get_stage_data(SD_X_POS) - x) > -36) || (room_width - get_stage_data(SD_X_POS) - x) < 36)) {
				if (!runeJ) {
					set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
		            set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
				}
		        if (runeL) {
		            set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 270);
				}
			} else {
				if (!runeJ) {
					set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
		            set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
		            set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 0);
				} else {
					set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 84);
				}
			}
		}

		if (attack == AT_FAIR) {
			if (window == 1) {
				hit_player = false;
			}
			if (hit_player && !hitpause) {
				if (faired < 5) {
					new_scaling += 0.55/4;
					set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, new_scaling);
					set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, new_scaling);
					if (fair_speed < 3) {
						if (!runeA) {
							fair_speed += (1/6 * faired) * sqrt(sqrt(sqrt(get_player_damage(hit_player_obj.player))));
						} else {
							fair_speed += (1/8 * faired) * sqrt(sqrt(sqrt(get_player_damage(hit_player_obj.player))));
						}
					} 
				} else {
					fair_speed = 0;
				}
				hit_player = false;
			}
		}
	} else {
		if (attack == AT_JAB) {
			if (window == 1 && !hitpause) {
				sound_play(asset_get("sfx_swipe_weak1"));
			}
		}
	}

}

// Summer
if (state != PS_IDLE && summer && state != PS_SPAWN && state != PS_RESPAWN) {
	summer = false;
}

if (state == PS_PARRY_START) {
	if (attack != AT_DSPECIAL && prev_state != PS_ATTACK_AIR && prev_state != PS_ATTACK_GROUND) {
		reflect_parry = false;
	}
}

if (state == PS_PARRY && reflect_parry == true && window_timer > 7) {
	if (free) {
		set_state(PS_ATTACK_AIR);
	} else {
		set_state(PS_ATTACK_GROUND);
	}
	reflect_parry = false;
	window = 4;
	attack = AT_DSPECIAL;
	invincible = false;
}

if (!balanced_fox && (!shovel_knight_exists || shovel_knight_exists != -4)) {
	var shovel_knight = false;
	with (oPlayer) {
		if (url == CH_SHOVEL_KNIGHT) {
			shovel_knight = true;
		} else {
			shovel_knight = -4;
		}
	}
	shovel_knight_exists = shovel_knight;
}

if (absa_cloud_reflected == undefined) {
    absa_cloud_reflected = 9999999;
}

if (absa_cloud_reflected != 9999999) {
    if ((((get_stage_data(SD_X_POS) - absa_cloud_reflected.x) < 0) && (room_width - get_stage_data(SD_X_POS) - absa_cloud_reflected.y) > 0)) {
        if (down_down) {
            if (absa_down_length < 20) {
                absa_down_length++;
            }
            if (absa_cloud_reflected.y > get_stage_data(SD_Y_POS) - 26) {
                absa_cloud_reflected.vsp = 0;
            } else {
                absa_cloud_reflected.vsp = ease_circIn(0, 9, absa_down_length, 20);
            }
        } else {
            absa_down_length = 0;
        }
    } else {
        if (down_down) {
            if (absa_down_length < 20) {
                absa_down_length++;
            }
            absa_cloud_reflected.vsp = ease_circIn(0, 9, absa_down_length, 20);
        } else {
            absa_down_length = 0;
        }
    }
    if (up_down) {
        if (absa_up_length < 20) {
            absa_up_length++;
        }
        absa_cloud_reflected.vsp = ease_circIn(0, 9, absa_up_length, 20) * -1;
    } else {
        absa_up_length = 0;
    }
    if (special_down) {
        absa_cloud_reflected.hsp = 10 * absa_cloud_reflected.spr_dir;
    } else {
        absa_cloud_reflected = 9999999;
    }
}

// Slipstream Reflect
if (slipstream_timer != 0) {
    for (i=-50; i<80; i++) {
        if (y == slipstream_y + i) {
            if (balanced_fox) {
                dash_speed = 11.63;
                walk_speed = 9;
            } else if (falco) {
                dash_speed = 10.18;
                walk_speed = 12;
            } else {
                dash_speed = 16;
                walk_speed = 14;
            }
            air_max_speed = 5.60;
            dash_turn_accel = 2.25;
            walk_accel = 1.0;
            if (random_func(11, 7, true) == 5) {
                if (((y - (random_func(21, 34, true) + 10)) > (slipstream_y - 50)) && ((y - (random_func(21, 34, true) + 10)) < (slipstream_y + 80))) {
                    create_hitbox(AT_DSPECIAL, 2, x - 16 * spr_dir + round(hsp) * spr_dir, y - (random_func(21, 34, true) + 10)).depth = -1;
                }
            }
            if (random_func(12, 7, true) == 5) {
                if (((y - (random_func(22, 34, true) + 10)) > (slipstream_y - 50)) && ((y - (random_func(22, 34, true) + 10)) < (slipstream_y + 80))) {
                    create_hitbox(AT_DSPECIAL, 3, x - 16 * spr_dir + round(hsp) * spr_dir, y - (random_func(22, 34, true) + 10)).depth = -1;
                }
            }
            if (random_func(13, 7, true) == 5) {
                if (((y - (random_func(23, 34, true) + 10)) > (slipstream_y - 50)) && ((y - (random_func(23, 34, true) + 10)) < (slipstream_y + 80))) {
                    create_hitbox(AT_DSPECIAL, 4, x - 16 * spr_dir + round(hsp) * spr_dir, y - (random_func(23, 34, true) + 10)).depth = -1;
                }
            }
            if (random_func(14, 7, true) == 5) {
                if (((y - (random_func(24, 34, true) + 10)) > (slipstream_y - 50)) && ((y - (random_func(24, 34, true) + 10)) < (slipstream_y + 80))) {
                    create_hitbox(AT_DSPECIAL, 5, x - 16 * spr_dir + round(hsp) * spr_dir, y - (random_func(24, 34, true) + 10)).depth = -1;
                }
            }
            not_in_slipstream_timer = 0;
        } else {
            if (not_in_slipstream_timer <= 110) {
                not_in_slipstream_timer++;
            }
        }
    }
}

if (slipstream_timer == 0 || not_in_slipstream_timer > 110) {
    if (balanced_fox) {
        dash_speed = 8;
        walk_speed = 4.5;
    } else if (falco) {
        dash_speed = 7;
        walk_speed = 6;
    } else {
        dash_speed = 11;
        walk_speed = 7;
    }
    dash_turn_accel = 1.5;
    walk_accel = 0.5;
    air_max_speed = 4;
}

if (slipstream_timer > 0 && slipstream_timer < 301) {
    slipstream_timer++
} else if (slipstream_timer == 301) {
    slipstream_timer = 0;
}

// Trummel Codec 
if (trummelcodecneeded) {
    trummelcodec = 17;
    trummelcodecmax = 5;
    trummelcodecsprite1 = sprite_get("X");
    trummelcodecsprite2 = sprite_get("X");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "That's Fox McCloud! He's";
    trummelcodecline[page,2] = "the leader of the Star";
    trummelcodecline[page,3] = "Fox Team! Secondarily,";
    trummelcodecline[page,4] = "he's also known for";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "being ridiculously broken";
    trummelcodecline[page,2] = "in Super Smash Bros.";
    trummelcodecline[page,3] = "Melee, literally having";
    trummelcodecline[page,4] = "a frame one move -";
    page++; 

    //Page 2
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "I feel like you're";
    trummelcodecline[page,2] = "getting a bit off topic.";
    trummelcodecline[page,3] = "He has shine, or actually";
    trummelcodecline[page,4] = "'reflector' here too,";
    page++; 

    //Page 3
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "but it's not quite";
    trummelcodecline[page,2] = "as broken, though still a";
    trummelcodecline[page,3] = "powerful tool.";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "Right, and watch out!";
    trummelcodecline[page,2] = "The shine can reflect";
    trummelcodecline[page,3] = "any projectile,";
    trummelcodecline[page,4] = "including our own!";
    page++; 

    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "He's incredibly quick,";
    trummelcodecline[page,2] = "but keep in mind, you can";
    trummelcodecline[page,3] = "kill him early. Don't";
    trummelcodecline[page,4] = "let your guard down!";
}

// Kirby Stuff
if (enemykirby != -1) {
	if (runeG) {
		if (oPlayer.attack == AT_EXTRA_3 && oPlayer.window == 1 && oPlayer.window_timer <= 1) {
			kirby_shine_hold_timer++;
		}
		if (oPlayer.attack == AT_EXTRA_3 && oPlayer.window == 2) {
			kirby_shine_hold_timer = 0;
		}
	}
	if (oPlayer.special_down && !oPlayer.down_down && !oPlayer.left_down && !oPlayer.right_down && !oPlayer.up_down) {
		if (!temp_kirby_shine_buffered) {
		    temp_kirby_special_held = get_gameplay_time();
		    temp_kirby_shine_buffered = true;
		}
	} else {
		if (temp_kirby_shine_buffered) {
			temp_kirby_shine_buffered = false;
		}
	}
	var kirby_runeG = runeG;
	var kirby_runeH = runeH;
	var kirby_runeJ = runeJ;
	var kirby_runeL = runeL;
	var kirby_runeN = runeN;
	
	var kirby_falco = falco;
	var kirby_balanced = balanced_fox;
	var kirby_reflect_fx = 0;
	var real_kirby_shine_hold_timer = kirby_shine_hold_timer;
	var kirby_shine_buffered = temp_kirby_shine_buffered;
	var kirby_special_held = temp_kirby_special_held;
	
	var kirby_shine_reflect_effect_spr = sprite_get("reflect");
	var shine_break_sfx = sound_get("shine_break");
	var shine_reflect_sfx = sound_get("shine_reflect");
	with (oPlayer) {
		if (get_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES) = 36012) {
			if (kirby_balanced) {
				if (!kirby_runeG) {
					if (free || ((get_stage_data(SD_X_POS) - x) > -36)) {
						if (!kirby_runeJ) {
							set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 5);
				            set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.3);
				            set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 2);
				            set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 0);
						} else {
							set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
							set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 9);
							set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.25);
							set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 84);
						}
				        if (kirby_runeL) {
				            set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 270);
						}
					} else {
						if (kirby_runeL && kirby_runeJ) {
							set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 84);
						}
						if (!kirby_runeJ) {
							set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
				            set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0);
				            set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 0);
				            set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 2);
						} else {
							set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
							set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
							set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.25);
							set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 84);
						}
					}
				}
			}

			if (attack == AT_EXTRA_3 && was_parried && parried_timer + 120 <= get_gameplay_time()) {
				set_state(PS_IDLE);
			}

			if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
				if (attack == AT_EXTRA_3) {
					// Rune Code
					if (kirby_runeG) {
						if (window == 1) {
							if (special_down && window_timer <= 1 && real_kirby_shine_hold_timer < 60) {
								window_timer = -1;
								if (!kirby_runeJ) {
									if (free || ((get_stage_data(SD_X_POS) - x) > -36)) {
										if (kirby_runeL) {
											set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 270);
										}
										set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8 * (1 + real_kirby_shine_hold_timer/100));
										set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8 * ((1 + real_kirby_shine_hold_timer/100) / 4));
						            	set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.2);
									} else {
										if (kirby_runeL) {
											set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 0);
										}
										set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 9 * (1 + real_kirby_shine_hold_timer/100));
										set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 9 * ((1 + real_kirby_shine_hold_timer/100) / 4));
						            	set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0);
									}
								} else {
									if (free && kirby_runeL) {
										set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 270);
									} else if (runeL) {
										set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 84);
									}
									set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 9 * (1 + real_kirby_shine_hold_timer/100));
									set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 9 * ((1 + real_kirby_shine_hold_timer/100) / 4));
						            set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.25);
								}
								if (!kirby_runeJ) {
									set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, round(5 * (1 + real_kirby_shine_hold_timer/100)));
								} else {
									set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, round(8 * (1 + real_kirby_shine_hold_timer/100)));
								}
							}
						}
					}
					
					if (!kirby_balanced) {
						if ((window == 1 && window_timer < 1) && !hitpause) {
							create_hitbox( AT_EXTRA_3, 1, x, y );
						}  else if (window == 1) {
							destroy_hitboxes();
						}
					} else if (!kirby_runeN) {
						if ((window == 1 && window_timer == 1) && !hitpause) {
							create_hitbox( AT_EXTRA_3, 1, x, y);
						}  else if (window == 1) {
							destroy_hitboxes();
						}
					}  else {
						if (!hitpause && (window == 1 && !kirby_runeG) || (window == 1 && window_timer >= 1 && kirby_runeG)) {
							create_hitbox( AT_EXTRA_3, 1, x, y );
							invincible = true;
						}  else if (window == 2) {
							destroy_hitboxes();
							invincible = false;
						}
					}

					//attack_update.gml V update.gml ^
					
					if (kirby_runeH && window > 1) {
			    		if (kirby_shine_buffered && (kirby_special_held == get_gameplay_time()) && special_pressed) {
			    			clear_button_buffer(PC_SPECIAL_PRESSED);
			    			attack_end();
			    			window_timer = 0;
			    			window = 1;
			    		}
			    	}
					
				    can_fast_fall = false;

				    // Multishining code.
				    if (prev_state == PS_JUMPSQUAT && state_timer < 4) {
				        y += 3;
				    }

				    if (window == 1) {
				        if (window_timer == 1) {
				            can_jump = false;
				        } else if (window_timer == 3 && !was_parried) {
				        	if (!free) {
					        	if (jump_pressed) {
									set_state(PS_JUMPSQUAT);
								}
							} else {
								if (jump_pressed && (djumps < max_djumps)) {
									set_state(PS_DOUBLE_JUMP);
									vsp = -djump_speed;
									djumps += 1;
								}
							}
				            can_jump = true;
				        }
				    }

				    if (window == 2) {
				    	if (!was_parried) {
					        if (!free) {
						        if (jump_pressed) {
									set_state(PS_JUMPSQUAT);
								}
							} else {
								if (jump_pressed && (djumps < max_djumps)) {
									set_state(PS_DOUBLE_JUMP);
									vsp = -djump_speed;
									djumps += 1;
								}
							}
				        can_jump = true;
				    	}

				        // Hold Shine Code
				        if (window_timer >= 17 && special_down && !was_parried) {
				            window_timer = 0;
				            attack_end();
				        }

				        // Turning Code
				        if (left_down && spr_dir == 1 && !was_parried) {
				            spr_dir *= -1;
				        }

				        if (right_down && spr_dir == -1 && !was_parried) {
				            spr_dir *= -1;
				        }
				    }

				    if (window == 4) {
				        can_jump = false;

				        if (!kirby_balanced) {
                            if (window_timer == 19) {
                                if (special_down) {
                                    window = 2;
                                    window_timer = 0;
                                } else {
                                    window = 3;
                                    window_timer = 0;
                                }
                            }
                        } else {
                            if (window_timer == 13) {
                                if (special_down) {
                                    window = 2;
                                    window_timer = 0;
                                } else {
                                    window = 3;
                                    window_timer = 0;
                                } 
                            }
                        }
				    }
				}
			}
			
			if (((get_gameplay_time() <= kirby_special_held + 2) && (!free || state == PS_FIRST_JUMP)) || ((get_gameplay_time() <= kirby_special_held) && state == PS_DOUBLE_JUMP)) {
				move_cooldown[AT_EXTRA_3] = 0;
				move_cooldown[AT_USPECIAL] = 0;
			} else if state == PS_LAND {
				move_cooldown[AT_EXTRA_3] = 0;
				move_cooldown[AT_USPECIAL] = 0;
			} else if (get_gameplay_time() <= kirby_special_held + 6 && state != PS_LAND) {
				clear_button_buffer( PC_SPECIAL_PRESSED );
				clear_button_buffer( PC_UP_STICK_PRESSED );
				move_cooldown[AT_EXTRA_3] = 99; 
				move_cooldown[AT_USPECIAL] = 99;
			} else {
				move_cooldown[AT_EXTRA_3] = 0;
				move_cooldown[AT_USPECIAL] = 0;
			}

			if (attack == AT_EXTRA_3 && (get_gameplay_time() <= kirby_special_held + 6)) {
				move_cooldown[AT_USPECIAL] = 99;
			}

			if (attack == AT_EXTRA_3 && (window == 2 || window == 4) ) {
		        reflect = false;

		        if (!reflect) {
		            for(k=-5; k<95; k += 20) {
		                for (j=-80; j<80; j += 40) {
		                    if (k >= 65 && j <= 25 && j >= -25) {
		                        reflect = instance_place(x + j * spr_dir, y + 78 - k, obj_article1);
		                        reflect = instance_place(x + j * spr_dir, y + 78 - k, obj_article2);
		                        reflect = instance_place(x + j * spr_dir, y + 78 - k, obj_article3);
		                        reflect = instance_place(x + j * spr_dir, y + 78 - k, obj_article_solid);
		                        reflect = instance_place(x + j * spr_dir, y + 78 - k, obj_article_platform);
		                        reflect = instance_place(x + j * spr_dir, y + 78 - k, pHitBox);
		                    }
		                }
		            }
		        }

		        // Reflect
		        if (!reflect) {
		            reflect_distance = distance_to_object(reflect);
		        }
		        
		        if (reflect && (reflect.object_index != pHitBox || (reflect.object_index == pHitBox && reflect.type == 2)) && reflected != reflect && ((reflect.player != player) || reflect_timer < get_gameplay_time() - 5)) {
		            if (reflect.player != player) {
		                last_player_reflected = [reflect.player, reflect.player_id];
		            }
		            spawn_hit_fx( reflect.x - reflect.width * spr_dir * 2, reflect.y, 14 );
		            reflected = reflect;
		            if (variable_instance_exists(reflect, "damage")) {
		                if (kirby_balanced) {
		                    reflect.damage *= 1.4;
		                } else {
		                    reflect.damage *= 1.5;
		                }
		                if (reflect.damage >= 50) {
		                    reflect.player = last_player_reflected[0];
		                    reflect.player_id = last_player_reflected[1];
		                    reflect.damage = 50;
		                    reflect.hsp *= 0.1;
		                    reflect.vsp *= 0.1;
		                    reflect_timer = get_gameplay_time();
		                    sound_play(shine_break_sfx);
		                } else {
		                    sound_play(shine_reflect_sfx);
		                    if (reflect.object_index == pHitBox) {
                    			reflect.image_angle = (180 * (sign(reflect.hsp) + 1));
                    		}
		                    switch (reflect.player_id.url) {
		                    	case CH_WRASTOR:
			                    	// Wrastor Slipstream
			                        reflect.player = player;
			                        slipstream_y = reflect.y;
			                        slipstream_timer = 1;
			                         reflect.hitbox_timer = 0;
			                        break;
		                    	case CH_KRAGG:
		                    		if (reflect.attack == AT_USPECIAL) {
		                    			// Kragg Pillar Reflect
				                        x = reflect.player_id.x;
				                        y = reflect.player_id.y;
				                        take_damage(reflect.player, player, round(reflect.damage));
				                        sound_play(reflect.sound_effect);
				                        reflect.player_id.window = 1;
				                        reflect.player_id.hitpause = true;
				                        reflect.player_id.hitstop = 14;
				                        reflect.player_id.old_hsp = 0;
				                        reflect.player_id.old_vsp = 0;
				                        reflect.hitbox_timer = 0;
		                    		} else {
		                    			reflect.can_hit_self = true;
		                    			reflect.was_parried = was_parried;
		                    			reflect.hitbox_timer = 0;
		                    		}
		                    		break;
		                    	case CH_ABSA:
		                			// Absa
		                			switch (reflect.attack) {
		                				case 16:
		                					// Absa Cloud Control
					                        reflect.player = player;
					                        absa_cloud_reflected = reflect;
					                        break;
					                	case 17:
					                		// Absa Cloud Lightning
					                		reflect.destroyed = true;
					                		break;
					                	case 34:
					                		// Absa Cloud Pop
					                        set_state(PS_PARRY_START);
					                        reflect_parry = true;
					                        break;
										default:
											reflect.player = player;
		                					reflect.was_parried = was_parried;
		                					break;
		                			}
		                			reflect.hitbox_timer = 0;
		                			break;
		                		case CH_ELLIANA:
		                			// Elliana Missile
			                        reflect.can_hit_self = true;
			                        if (reflect.attack == 16) {
			                        	set_state(PS_PARRY_START);
			                        	reflect_parry = true;
			                        	reflect.x += 20 * spr_dir;
			                        }
			                        reflect.hitbox_timer = 0;
		                    		break;
		                    	case CH_SHOVEL_KNIGHT:
		                    		// Shovel Knight
		                    		if (reflect.attack == 22) {
		                    			// Shovel Knight Gear
				                        set_state(PS_PARRY_START);
				                        reflect_parry = true;
		                    		} else {
		                    			reflect.can_hit_self = true;
		                    			reflect.was_parried = true;
		                    		}
		                    		break;
		                    	case "1869351026":
			                    case "1921693985":
			                    case "1906043536":
			                		// Kid Goku/Krillin - the kamehameha only does damage to goku... for some reason he can just tank it.
			                        if (reflect.attack == AT_NSPECIAL) {
			                            reflect.x = x;
			                            take_damage(reflect.player, player, round(reflect.damage));
			                        	reflect.can_hit_self = true;
			                        } else {
			                        	reflect.can_hit_self = true;
			                        	reflect.was_parried = true;
			                        	reflect.hitbox_timer = 0;
			                        }
			                        break;
		                    	case "1913869515":
		                    	case "1958041592":
		                    		// Zetta
		                    		if (reflect.attack == AT_FSPECIAL) {
			                            reflect.destroyed = true;
			                            reflect.player_id.x = x;
			                            reflect.player_id.y = y;
			                            zetta_reflect = true;
		                        	}
		                        	break;
		                        case "1968648848":
		                        	// Abyss Hime
			                        reflect.can_hit_self = true;
			                        if (reflect.attack == AT_FSPECIAL) {
			                            reflect.hitbox_timer = 25;
			                            reflect.fspec_parried = true;
			                            reflect.hitbox_timer = 0;
			                        }
			                        break;
								default:
									// All Other Cases
		                        	reflect.can_hit_self = true;
		                        	reflect.was_parried = true;
		                        	reflect.hitbox_timer = 0;
		                        	break;
		                    }
		                    
		                    reflect.hitbox_timer = 0;
		                    if (variable_instance_exists(reflect, "kb_value")) {
		                        if (kirby_balanced) {
		                            reflect.kb_value *= 1.25;
		                        } else {
		                            reflect.kb_value *= 1.05;
		                        }
		                    }
		                    if (reflect.hsp = 0) {
		                        reflect.hsp = 1 * reflect.spr_dir * -1;
		                    } else { 
		                        if (kirby_balanced) {
		                            if (reflect.hsp < 40 && reflect.hsp > -40) {
		                                reflect.hsp *= -1.4;
		                            } else {
		                                reflect.hsp *= -1;
		                            }
		                        } else {
		                            reflect.hsp *= -1;
		                        }
		                    }
		                    if (kirby_balanced) {
		                        if (reflect.vsp < 40 && reflect.vsp > -40) {
		                            reflect.vsp *= -1.4;
		                        } else {
		                            reflect.bsp *= -1;
		                        }
		                    } else {
		                        reflect.vsp *= -1;
		                    }
		                    reflect.spr_dir = sign(reflect.hsp);
		                }
		            }
		            window_timer = 0;
		            if (reflect.damage < 50) {
		                window = 4;
		            } else {
		                window = 3;
		                was_parried = true;
		                parried_timer = get_gameplay_time();
		            }
		        }

		        if (!reflect) {
		            reflected = 0;
		        }
		    
		    }
		}	
	}
}

if (swallowed && swallowed != -1) {
	swallowed = 0;
	var has_runeJ = runeJ;
	var has_runeG = runeG;
	var is_balanced = balanced_fox;
	var is_falco = falco;
	var ability_spr = sprite_get("kirby_shine");
	var ability_hurt_spr = sprite_get("kirby_shine_hurt");
	var ability_balanced_hurt_spr = sprite_get("kirby_shine_balanced_hurt");
	var ability_sfx = sound_get("fox_shine");
	var myicon = sprite_get("kirbyicon");
	
	with (enemykirby) {
		newicon = myicon;
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);
		if (!is_balanced) {
			set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt_spr);
			set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 5);
		} else {
			set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_balanced_hurt_spr);
		}

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
		if (has_runeG) {
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 2);
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);
		} else {
			set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
		}
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sfx);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HITPAUSE_FRAME, 1);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 18);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_INVINCIBILITY, 2);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 19);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 9);

        if (is_balanced) {
            set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 14);
        } else {
            set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 20);
        }
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_INVINCIBILITY, 2);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 11);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 20);

		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES, 36012);

		set_num_hitboxes(AT_EXTRA_3, 1);
		if (is_falco || has_runeJ) {
			if (is_falco) {
				set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 60);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 8);
			} else {
				set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 76);
				set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 76);
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
			}
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.25);
			set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 84);
		} else {
			set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 76);
			set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 76);
			set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 0);
			if (!is_balanced) {
				set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 4);
			}
			set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 2);
		}
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 0.8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 20);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
	}
}

// Fixes a weird buddy glitch.
if (!buddy_fix) {
	with (pet_obj) {
		if (type == 0) {
			if (owner.id == other.id) {
				y = get_stage_data(SD_Y_POS);
			}
		}
	}
	if (not_free_time > 2) {
		buddy_fix = true;
	}
}
	
if (free && fallingfromupb) {
	if (free_timer != 0 && get_gameplay_time() <= free_timer + 4) {
		vsp = 0;
		y = y - (-2 * (free_timer - get_gameplay_time()));
	}
} else if (!free && fallingfromupb) {
	free_timer = 0;
	fallingfromupb = false;
}

// Easter Egg Timer
if (easter_egg_timer <= 90) {
	easter_egg_timer++;
	if (cancelled_melee) {
		balanced_fox = true;
		falco = false;
		easter_egg_timer = 91;
	} else if (shield_down) {
		balanced_fox = false;
		falco = false;
	} else if (special_down) {		
		balanced_fox = false;
		falco = true;
	} else if (attack_down) {
		balanced_fox = true;
		falco = false;
	}
	if (taunt_pressed) {
		sunglasses = !sunglasses;
	}
	var fox_player = self;
	with (oPlayer) {
		if (attack_down) {
			fox_player.cancelled_melee = true;
		}
	}
}
if (btt && music_timer <= 90) {
	music_timer++;
	if (jump_down) {
		if (!music_changed && !music_changed_alt) {
			experimental_music = !experimental_music;
			music_changed = true;
		}
	} else if (!music_changed_alt) {
		music_changed = false;
	}
	var fox = self;
	if ("is_ai" in self) {
		with (oPlayer) if (self != fox) {
			if (jump_down) {
				if (!other.music_changed_alt && !other.music_changed) {
					other.experimental_music = !other.experimental_music;
					other.music_changed_alt = true;
				}
			} else if (!other.music_changed) {
				other.music_changed_alt = false;
			}
		}
	}
	music_text = true;
} else {
	music_text = false;
}

// This is where the Melee stats would be set, but the filesize was too large if I put it here. post_draw.gml is where it's actually done.

// Falco - First, it activates Melee mode, then only changes things unchanged from Melee mode. This means I do not have to write out the entirety of every attack file,
// because nothing that I change in the actual attack files will change Falco, due to it switching to Melee mode before switching to Falco.
if (falco) {

	if (!falco_activated && melee_activated) {
		//init
		laser_vfx = hit_fx_create(sprite_get("laser_vfx"), 14);
		jump_start_time = 4;
		short_hop_speed = 7.31;
		djump_speed = 13.60;
		jump_speed = 15.07;
		walk_speed = 6;
		dash_speed = 7;
		initial_dash_speed = 6;
		max_fall = 10.94;
		fast_fall = 12.35;
		gravity_speed = 0.6;
		hitstun_grav = 0.55;
		knockback_adj = 100/80;

		//dair
		set_num_hitboxes(AT_DAIR, 8);
		set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 12);
		set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 650);
		set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5.8);
		set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 5.8);
		set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 305);
		set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 12);
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 650);
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5.8);
		set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 5.8);
		set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 305);
		set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 12);
		set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 650);
		set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 5.8);
		set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 5.8);
		set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 3, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 305);
		set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 12);
		set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 650);
		set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 5.8);
		set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 5.8);
		set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 4, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 305);
		set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 2);
		set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 40);
		set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 40);
		set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 1);
		set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 9);
		set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 650);
		set_hitbox_value(AT_DAIR, 5, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 5.4);
		set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 5.4);
		set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, 305);
		set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 6);
		set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 53);
		set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 50);
		set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 2);
		set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 9);
		set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 650);
		set_hitbox_value(AT_DAIR, 6, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 5.4);
		set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 5.4);
		set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));	
		set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DAIR, 7, HG_WIDTH, 53);
		set_hitbox_value(AT_DAIR, 7, HG_HEIGHT, 50);
		set_hitbox_value(AT_DAIR, 7, HG_PRIORITY, 2);
		set_hitbox_value(AT_DAIR, 7, HG_DAMAGE, 9);
		set_hitbox_value(AT_DAIR, 7, HG_ANGLE, 650);
		set_hitbox_value(AT_DAIR, 7, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DAIR, 7, HG_BASE_KNOCKBACK, 5.4);
		set_hitbox_value(AT_DAIR, 7, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 7, HG_BASE_HITPAUSE, 5.4);
		set_hitbox_value(AT_DAIR, 7, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_DAIR, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, 3);
		set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DAIR, 8, HG_WIDTH, 53);
		set_hitbox_value(AT_DAIR, 8, HG_HEIGHT, 50);
		set_hitbox_value(AT_DAIR, 8, HG_PRIORITY, 2);
		set_hitbox_value(AT_DAIR, 8, HG_DAMAGE, 9);
		set_hitbox_value(AT_DAIR, 8, HG_ANGLE, 650);
		set_hitbox_value(AT_DAIR, 8, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DAIR, 8, HG_BASE_KNOCKBACK, 5.4);
		set_hitbox_value(AT_DAIR, 8, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 8, HG_BASE_HITPAUSE, 5.4);
		set_hitbox_value(AT_DAIR, 8, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_medium2"));	
		set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 10);
		set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 10);
		set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 8);
		set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 8);
		set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 10);
		set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 10);
		set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 10);
		set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 10);
		set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 10);
		set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 10);
		set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 10);
		set_hitbox_value(AT_DAIR, 8, HG_WINDOW_CREATION_FRAME, 10);
		set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 0);
		set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 0);
		set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 0);
		set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 0);
		set_hitbox_value(AT_DAIR, 1, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_DAIR, 3, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_DAIR, 4, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_DAIR, 5, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_DAIR, 6, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_DAIR, 7, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_DAIR, 8, HG_FORCE_FLINCH, 0);

		//dattack
		set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 9);
		set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 6);

		//dspecial
		set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 60);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
		set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.25);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 84);
		
		//dstrong
		set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_falco_hurt"));
		set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 16);
		set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 13);
		set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 16);
		set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 13);
		set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 80);
		set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 25);
		set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 80);
		set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 25);
		set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 7, HG_HITPAUSE_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 8, HG_KNOCKBACK_SCALING, 0.35);
		set_hitbox_value(AT_DSTRONG, 8, HG_HITPAUSE_SCALING, 0.35);

		//dtilt
		set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 13);
		set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 13);
		set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 13);
		set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 13);
		set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 13);
		set_hitbox_value(AT_DTILT, 6, HG_DAMAGE, 13);
		set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 75);
		set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 75);
		set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 75);
		set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 75);
		set_hitbox_value(AT_DTILT, 5, HG_ANGLE, 75);
		set_hitbox_value(AT_DTILT, 6, HG_ANGLE, 75);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 14.2);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 14.2);
		set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 14.2);
		set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 14.2);
		set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 14.2);
		set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 14.2);
		set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 14.2);
		set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 14.2);
		set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 14.2);
		set_hitbox_value(AT_DTILT, 5, HG_BASE_HITPAUSE, 14.2);
		set_hitbox_value(AT_DTILT, 6, HG_BASE_KNOCKBACK, 14.2);
		set_hitbox_value(AT_DTILT, 6, HG_BASE_HITPAUSE, 14.2);
		set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_DTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_DTILT, 5, HG_VISUAL_EFFECT, 304);

		//fair
		set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);
		set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 8);
		set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 7);
		set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 5);
		set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 3);
		set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 6);

		//fspecial
		var falcospeed = 67;
        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 16);
        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 14);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, falcospeed);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, (falcospeed*(2.1/18.72)));
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, ((falcospeed*(2.1/18.72))/22));
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, ((falcospeed*(1.93/18.72))/29));
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, ((falcospeed*(2.1/18.72))/22));
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, ((falcospeed*(1.93/18.72))/29));
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.36);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -135);
		set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 105);
		set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, -167);
		set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, -109);
		set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, -50);

		//fstrong
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 0);
		set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 17);
		set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 17);
		set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 17);
		set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 17);
		set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 17);
		set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 17);
		set_hitbox_value(AT_FSTRONG, 7, HG_DAMAGE, 17);
		set_hitbox_value(AT_FSTRONG, 8, HG_DAMAGE, 17);
		set_hitbox_value(AT_FSTRONG, 9, HG_DAMAGE, 17);
		set_hitbox_value(AT_FSTRONG, 10, HG_DAMAGE, 14);
		set_hitbox_value(AT_FSTRONG, 11, HG_DAMAGE, 14);
		set_hitbox_value(AT_FSTRONG, 12, HG_DAMAGE, 14);
		set_hitbox_value(AT_FSTRONG, 13, HG_DAMAGE, 14);
		set_hitbox_value(AT_FSTRONG, 14, HG_DAMAGE, 14);
		set_hitbox_value(AT_FSTRONG, 15, HG_DAMAGE, 14);
		set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 110);
		set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9.6);
		set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 9.6);
		set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9.6);
		set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 9.6);
		set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 9.6);
		set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 9.6);
		set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 9.6);
		set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 9.6);
		set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 9.6);
		set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 9.6);
		set_hitbox_value(AT_FSTRONG, 6, HG_BASE_KNOCKBACK, 9.6);
		set_hitbox_value(AT_FSTRONG, 6, HG_BASE_HITPAUSE, 9.6);
		set_hitbox_value(AT_FSTRONG, 7, HG_BASE_KNOCKBACK, 9.6);
		set_hitbox_value(AT_FSTRONG, 7, HG_BASE_HITPAUSE, 9.6);
		set_hitbox_value(AT_FSTRONG, 8, HG_BASE_KNOCKBACK, 9.6);
		set_hitbox_value(AT_FSTRONG, 8, HG_BASE_HITPAUSE, 9.6);
		set_hitbox_value(AT_FSTRONG, 9, HG_BASE_KNOCKBACK, 7.1);
		set_hitbox_value(AT_FSTRONG, 9, HG_BASE_HITPAUSE, 7.1);
		set_hitbox_value(AT_FSTRONG, 10, HG_BASE_KNOCKBACK, 7.1);
		set_hitbox_value(AT_FSTRONG, 10, HG_BASE_HITPAUSE, 7.1);
		set_hitbox_value(AT_FSTRONG, 11, HG_BASE_KNOCKBACK, 7.1);
		set_hitbox_value(AT_FSTRONG, 11, HG_BASE_HITPAUSE, 7.1);
		set_hitbox_value(AT_FSTRONG, 12, HG_BASE_KNOCKBACK, 7.1);
		set_hitbox_value(AT_FSTRONG, 12, HG_BASE_HITPAUSE, 7.1);
		set_hitbox_value(AT_FSTRONG, 13, HG_BASE_KNOCKBACK, 7.1);
		set_hitbox_value(AT_FSTRONG, 13, HG_BASE_HITPAUSE, 7.1);
		set_hitbox_value(AT_FSTRONG, 14, HG_BASE_KNOCKBACK, 7.1);
		set_hitbox_value(AT_FSTRONG, 14, HG_BASE_HITPAUSE, 7.1);
		set_hitbox_value(AT_FSTRONG, 15, HG_BASE_KNOCKBACK, 7.1);
		set_hitbox_value(AT_FSTRONG, 15, HG_BASE_HITPAUSE, 7.1);
		set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 6, HG_KNOCKBACK_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 6, HG_HITPAUSE_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 7, HG_KNOCKBACK_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 7, HG_HITPAUSE_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 8, HG_KNOCKBACK_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 8, HG_HITPAUSE_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 9, HG_KNOCKBACK_SCALING, 0.45);
		set_hitbox_value(AT_FSTRONG, 9, HG_HITPAUSE_SCALING, 0.45);

		//ftilt
		set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 5);

		//ftilt_up
		set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 5);

		//ftilt_down
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 5);

		//jab
		set_hitbox_value(AT_JAB, 4, HG_ANGLE, 50);

		//nspecial
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 1); 
		set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 1); 
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 1);
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 1); 
		set_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH, 1); 
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 1);
		set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 99);

		//spotdodge
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 0);

		//uair
		set_num_hitboxes(AT_UAIR, 11);
		set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
		set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 2);
		set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 2);
		set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 2);
		set_hitbox_value(AT_UAIR, 8, HG_PRIORITY, 2);
		set_hitbox_value(AT_UAIR, 9, HG_PRIORITY, 2);
		set_hitbox_value(AT_UAIR, 10, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UAIR, 10, HG_WINDOW, 2);
		set_hitbox_value(AT_UAIR, 10, HG_LIFETIME, 1);
		set_hitbox_value(AT_UAIR, 10, HG_HITBOX_X, -6);
		set_hitbox_value(AT_UAIR, 10, HG_HITBOX_Y, -66);
		set_hitbox_value(AT_UAIR, 10, HG_WIDTH, 35);
		set_hitbox_value(AT_UAIR, 10, HG_HEIGHT, 35);
		set_hitbox_value(AT_UAIR, 10, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 10, HG_DAMAGE, 6);
		set_hitbox_value(AT_UAIR, 10, HG_ANGLE, 90);
		set_hitbox_value(AT_UAIR, 10, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_UAIR, 10, HG_KNOCKBACK_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 10, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_UAIR, 10, HG_HITPAUSE_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 10, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 0);
		set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6);
		set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 6);
		set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 6);
		set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 6);
		set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 6);
		set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 10);
		set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 10);
		set_hitbox_value(AT_UAIR, 8, HG_DAMAGE, 10);
		set_hitbox_value(AT_UAIR, 9, HG_DAMAGE, 10);
		set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
		set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
		set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
		set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
		set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 90);
		set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 90);
		set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 10);
		set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 11, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UAIR, 11, HG_WINDOW, 3);
		set_hitbox_value(AT_UAIR, 11, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_UAIR, 11, HG_LIFETIME, 2);
		set_hitbox_value(AT_UAIR, 11, HG_HITBOX_X, 0);
		set_hitbox_value(AT_UAIR, 11, HG_HITBOX_Y, -56);
		set_hitbox_value(AT_UAIR, 11, HG_WIDTH, 51);
		set_hitbox_value(AT_UAIR, 11, HG_HEIGHT, 47);
		set_hitbox_value(AT_UAIR, 11, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 11, HG_DAMAGE, 13);
		set_hitbox_value(AT_UAIR, 11, HG_ANGLE, 90);
		set_hitbox_value(AT_UAIR, 11, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 11, HG_KNOCKBACK_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 11, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 11, HG_HITPAUSE_SCALING, 0.1);
		set_hitbox_value(AT_UAIR, 11, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_UAIR, 11, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 9.3);
		set_hitbox_value(AT_UAIR, 7, HG_KNOCKBACK_SCALING, 0.6);
		set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 9.3);
		set_hitbox_value(AT_UAIR, 7, HG_HITPAUSE_SCALING, 0.6);
		set_hitbox_value(AT_UAIR, 8, HG_BASE_KNOCKBACK, 9.3);
		set_hitbox_value(AT_UAIR, 8, HG_KNOCKBACK_SCALING, 0.6);
		set_hitbox_value(AT_UAIR, 8, HG_BASE_HITPAUSE, 9.3);
		set_hitbox_value(AT_UAIR, 8, HG_HITPAUSE_SCALING, 0.6);
		set_hitbox_value(AT_UAIR, 9, HG_BASE_KNOCKBACK, 9.3);
		set_hitbox_value(AT_UAIR, 9, HG_KNOCKBACK_SCALING, 0.6);
		set_hitbox_value(AT_UAIR, 9, HG_BASE_HITPAUSE, 9.3);
		set_hitbox_value(AT_UAIR, 9, HG_HITPAUSE_SCALING, 0.6);

		//uspecial
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_burnapplied"));
		set_num_hitboxes(AT_USPECIAL, 1);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 23);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 22);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH,  120);
		set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 120);
		set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 16);
		set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 18.5);
		set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 18.5);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.3);
		set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 148);
		set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

		//ustrong
		set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 95);
		set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 95);
		set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 95);
		set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 95);
		set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 95);
		set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 95);
		set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 14);
		set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 14);
		set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 14);
		set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 14);
		set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 14);
		set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 14);
		set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 12);
		set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 12);
		set_hitbox_value(AT_USTRONG, 9, HG_DAMAGE, 12);
		set_hitbox_value(AT_USTRONG, 10, HG_DAMAGE, 12);
		set_hitbox_value(AT_USTRONG, 11, HG_DAMAGE, 12);
		set_hitbox_value(AT_USTRONG, 12, HG_DAMAGE, 12);
		set_hitbox_value(AT_USTRONG, 13, HG_DAMAGE, 12);
		set_hitbox_value(AT_USTRONG, 14, HG_DAMAGE, 12);
		set_hitbox_value(AT_USTRONG, 15, HG_DAMAGE, 12);
		set_hitbox_value(AT_USTRONG, 16, HG_DAMAGE, 12);
		set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 14.2);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 14.2);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 14.2);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 14.2);
		set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 14.2);
		set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 14.2);
		set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 14.2);
		set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 14.2);
		set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 14.2);
		set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 14.2);
		set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 14.2);
		set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 14.2);
		set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 5.9);
		set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 5.9);
		set_hitbox_value(AT_USTRONG, 9, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_USTRONG, 9, HG_BASE_HITPAUSE, 5.9);
		set_hitbox_value(AT_USTRONG, 10, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_USTRONG, 10, HG_BASE_HITPAUSE, 5.9);
		set_hitbox_value(AT_USTRONG, 11, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_USTRONG, 11, HG_BASE_HITPAUSE, 5.9);
		set_hitbox_value(AT_USTRONG, 12, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_USTRONG, 12, HG_BASE_HITPAUSE, 5.9);
		set_hitbox_value(AT_USTRONG, 13, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_USTRONG, 13, HG_BASE_HITPAUSE, 5.9);
		set_hitbox_value(AT_USTRONG, 14, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_USTRONG, 14, HG_BASE_HITPAUSE, 5.9);
		set_hitbox_value(AT_USTRONG, 15, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_USTRONG, 15, HG_BASE_HITPAUSE, 5.9);
		set_hitbox_value(AT_USTRONG, 16, HG_BASE_KNOCKBACK, 5.9);
		set_hitbox_value(AT_USTRONG, 16, HG_BASE_HITPAUSE, 5.9);

		//utilt
		set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 8, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 11, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 14, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 97);
		set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9.5);
		set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.6);
		set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 9.5);
		set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.6);
		for (var i = 2; i <= 16; i++) {
			set_hitbox_value(AT_UTILT, i, HG_ANGLE, 90);
			set_hitbox_value(AT_UTILT, i, HG_BASE_KNOCKBACK, 7.4);
			set_hitbox_value(AT_UTILT, i, HG_KNOCKBACK_SCALING, 0.6);
			set_hitbox_value(AT_UTILT, i, HG_BASE_HITPAUSE, 7.4);
			set_hitbox_value(AT_UTILT, i, HG_HITPAUSE_SCALING, 0.6);
			set_hitbox_value(AT_UTILT, i, HG_VISUAL_EFFECT, 304);
			set_hitbox_value(AT_UTILT, i, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		}

		//taunt
		set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 0);
		
		sound_play(sound_get("fox_shine"));
		falco_activated = true;
		easter_egg_set = true;
	}
}

// Rune Support
if (runesUpdated) {
	// Attribute runes
	if (runeA) {
		set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 26);
		set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
		set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 12);
		set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 17);
		set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 23);
		set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
		set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
		set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 1);
		set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 2);
		set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 3);
	} else if (abyssEnabled) {
		reset_hitbox_value(AT_FAIR, 1, HG_LIFETIME);
		reset_hitbox_value(AT_FAIR, 2, HG_LIFETIME);
		reset_hitbox_value(AT_FAIR, 3, HG_LIFETIME);
		reset_hitbox_value(AT_FAIR, 4, HG_LIFETIME);
		reset_hitbox_value(AT_FAIR, 5, HG_LIFETIME);
		reset_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME);
		reset_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME);
		reset_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME);
		reset_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME);
		reset_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH);
	}
	if (runeB && !runeC) {
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 1); 
		set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 1); 
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 1);
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 1); 
		set_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH, 1); 
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 1);
		set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 99);
	} else if (abyssEnabled) {
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK); 
		reset_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH); 
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK); 
		reset_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH); 
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME);
	}
	if (runeC && !runeB) {
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 3);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5); 
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 3);
		set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 188);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 14);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
	} else if (abyssEnabled) {
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK); 
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK); 
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN);
	}
	if (runeB && runeC) {
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 3);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5); 
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 3);
		set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 99);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
	} else if (abyssEnabled) {
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK); 
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK); 
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN);
	}
	if (runeD) {
		set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 270);
		set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 270);
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.4);
		set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.4);
		set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 0);
		set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 120);
		set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 38);
		set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 2);
		set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 2);
		set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 8);
		set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 630);
		set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	} else if (abyssEnabled) {
		reset_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE);
		reset_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE);
		reset_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER);
		reset_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER);
		reset_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX);
		reset_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH);
		reset_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT);
		reset_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE);
		reset_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY);
		reset_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE);
		reset_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE);
		reset_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX);
	}
	if (runeE) {
		short_hop_speed = 7.31;
		djump_speed = 13.60;
		jump_speed = 15.07;
		max_fall = 10.94;
		fast_fall = 12.35;
		gravity_speed = 0.6;
		hitstun_grav = 0.55;
		knockback_adj = 100/80;
	} else if (abyssEnabled) {
		short_hop_speed = 9.37;
		djump_speed = 17.49;
		jump_speed = 15.3;
		max_fall = 11.7;
		fast_fall = 14.21;
		gravity_speed = 0.90;
		hitstun_grav = 0.6;
		knockback_adj = 100/75;
	}
	if (runeF) {
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 30);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 25);
	} else if (abyssEnabled) {
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 41);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 31);
	}
	if (runeG) {
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 4);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
	} else if (abyssEnabled) {
		reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX);
		reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION);
		reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION);
		reset_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION);
		reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE);
	}
	if (runeI) {
		set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 9);
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 650);
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 7);
		set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.4);
		set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH, 0);
	} else if (abyssEnabled) {
		reset_hitbox_value(AT_DAIR, 2, HG_DAMAGE);
		reset_hitbox_value(AT_DAIR, 2, HG_ANGLE);
		reset_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER);
		reset_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER);
		reset_hitbox_value(AT_DAIR, 2, HG_HIT_SFX);
		reset_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH);
		reset_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH);
	}
	if (runeJ) {
		set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.25);
		set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 84);
	} else if (abyssEnabled) {
		reset_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE);
		reset_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE);
	}
	if (runeM) {
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);
	} else if (abyssEnabled) {
		reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH);
		reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME);
	}
	if (runeO) {
		jump_start_time = 2;
	} else if (abyssEnabled) {
		jump_start_time = 5;
	}
}

// BtT

if get_btt_data { //Get data for Break The Targets
	btt = true;
	course_name = "Fox Course (N64)";
	//Set the spawn properties
	respawn_point = [[70.675, 90],[0, 0], 1];
	//Set the collision of the solid sprites to precise
	sprite_change_collision_mask("btt_solid", true, 1, 0, 0, 0, 0, 0 );  
	sprite_change_collision_mask("btt_slider", true, 1, 0, 0, 0, 0, 0 );
	room_add(1, [
	    [ // Each Cell
	        [0,0], // Cell Coordinates
	        [
	        	// Targets
	        	[10, 21.875, 83, 0, -5, [0, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
	        	[10, 39.75, 30.625, 0, -5, [1, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
	        	[10, 39.75, 49.875, 0, -5, [2, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        [10, 68.5, 7.75, 0, -5, [3, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        [10, 68.5, 48.625, 0, -5, [4, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        [10, 68.5, 68.75, 0, -5, [5, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        [10, 76.75, 82.875, 0, -5, [6, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        [10, 83, 92.5, 0, -5, [7, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        [10, 98.75, 64.25, 0, -5, [8, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        [10, 0, 46, 0, -5, [9, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        // Solid Ground
		    	[1, 2, 2, 2, 0, [sprite_get("btt_solid"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	[1, 2, 2, 2, 0, [sprite_get("btt_slider"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	// Plats
		    	[1, 87, 35.5, 1, 0, [sprite_get("btt_plat1_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	[1, 106, 53.5, 1, 0, [sprite_get("btt_plat2_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	// Arrows
		    	[1, 2, 2, 0, 0	, [sprite_get("btt_arrows"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	// White Layers
		    	[1, 2, 2, 0, 3, [sprite_get("btt_whitelayer1"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	[1, 2, 2, 0, 2, [sprite_get("btt_whitelayer2"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	[1, 2, 2, 0, 1, [sprite_get("btt_whitelayer3"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	// Background
		    	[1, 52, 25.375, 0, 10, [sprite_get("btt_bg"), 0, 0, 1, 0, 0, 0, 0], [0]]
	            ]
	        ],
	    //Blastzones
	    [ //Each Cell
	        [0,1], //Cell Coordinates
	        [
	            [4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*32, 20, 0], [0,0]]
	            ]
	        ],
	    [
	        [1,1],
	        [
	        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*32, 20, 0], [0,0]]
	            ]
	        ],
	    [ //Each Cell
	        [-1,1], //Cell Coordinates
	        [
	        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 163*32, 20, 0], [0,0]]
	            ]
	        ]
	    ]);
}

if (btt) {
	// Reset on reload
	with (obj_stage_article) if (num == 5) {
		var reloading = force_reload;
	}
	if (reloading) {
		slider_movement = -1;
		slider_timer = 0;
		platform_movement = -1;
		platform_timer = 0;
		target_movement = -1;
		target_timer = 0;
	}

	// Slider
	slider_timer++;
	if (slider_timer > 50) {
		slider_movement *= -1;
		slider_timer = 0;
	}
	var slider = sprite_get("btt_slider");
	var slider_timer_article = slider_timer;
	var slider_movement_article = slider_movement;
	with (obj_stage_article_solid) if (slider == sprite_index) {
		vsp = round(ease_sineIn(5 * slider_movement_article, -5 * slider_movement_article, slider_timer_article, 50));
		var moving_slider = self;
	}
	
	// Target with Slider
	with (obj_stage_article) if (num == 10 && targ_id == 0) {
		if (moving_slider != 0) {
			vsp = -moving_slider.vsp;
		}
	}
	
	// Platform
	platform_timer++;
	if (platform_timer > 60) {
		platform_movement *= -1;
		platform_timer = 0;
	}
	var platform = sprite_get("btt_plat2_64");
	var platform_timer_article = platform_timer;
	var platform_movement_article = platform_movement;
	with (obj_stage_article_platform) if (platform == sprite_index) {
		hsp = round(ease_sineIn(5 * platform_movement_article, -5 * platform_movement_article, platform_timer_article, 60));
		var moving_plat = self;
	}
	
	// Target with Plat
	with (obj_stage_article) if (num == 10 && targ_id == 9) {
		if (moving_plat != 0) {
			x = moving_plat.x + moving_plat.hsp + 51;
		}
	}
	
	// Bottom Moving Target
	target_timer++;
	if (target_timer > 60) {
		target_movement *= -1;
		target_timer = 0;
	}
	var target_timer_article = target_timer;
	var target_movement_article = target_movement;
	with (obj_stage_article) if (num == 10 && targ_id == 7) {
		hsp = round(ease_sineIn(7 * target_movement_article, -7 * target_movement_article, target_timer_article, 60));
	}
	
	// All Targets
	var targets = sprite_get("btt_target")
	with (obj_stage_article) if (num == 10 && state == 0) {
		sprite_index = targets;
	}
	
	// Experimental Music Function
	if (experimental_music) {
		suppress_stage_music(0, 1);
		if (!song_played) {
			target_song = sound_play(sound_get("targets"), true, 0);
			song_played = true;
		} 
	} else {
		sound_stop(target_song);
		song_played = false;
	}

}

#define room_add(_room_id,room_data) //Adds a new room to the scene
with obj_stage_article if num == 5 {
	var _room_id_ind = array_find_index(array_room_ID,_room_id);
	if _room_id_ind == - 1 {
	    if debug print_debug("[RM] Adding... "+string(_room_id));
	    array_push(array_room_data,room_data);
	    array_push(array_room_ID,_room_id);
	} else {
	    array_room_data[_room_id_ind] = room_data;
	    array_room_ID[_room_id_ind] = _room_id;
	}
}