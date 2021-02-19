if (!balanced_falco && !fox) {
	if (state == PS_AIR_DODGE && state_timer = 3) {
	    sound_play(sound_get("falco_airdodge"));
	}

	if (state == PS_DOUBLE_JUMP && state_timer = 0) {
	    sound_play(sound_get("falco_jump"));
	} 
}

//Hitfall fix
if (!balanced_falco) {
	can_fast_fall = (vsp > 0 || old_vsp > 0);
}

/*if wearing_hat == 1 {
	if state != PS_SPAWN && state != PS_RESPAWN && state != PS_IDLE {
		wearing_hat = -1;
		var newfx = spawn_hit_fx(x, y, hit_fx_create(sprite_get("santahat_toss"), 30));
		newfx.depth = depth-1;
	}
} else if wearing_hat == -1 {
	if state == PS_RESPAWN or state == PS_SPAWN {
		wearing_hat = 1;
	}
} Christmas */

if (state == PS_RESPAWN || state == PS_SPAWN && balanced_falco) {
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

if (!balanced_falco) {
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
	
	// Reflect FX
	if (window == 4 && window_timer == 1 && !hitpause) {
		if (!balanced_falco) {
			var reflect_effect = hit_fx_create(sprite_get("reflect"), 19);
			if (get_player_color(player) == 15) {
				reflect_effect = hit_fx_create(seasonal_reflect, 19);
			}
		} else {
			var reflect_effect = hit_fx_create(sprite_get("reflect"), 13);
			if (get_player_color(player) == 15) {
				reflect_effect = hit_fx_create(seasonal_reflect, 13);
			}
		}
		if (!free) {
			reflect_fx = spawn_hit_fx( x - 52 * spr_dir + round(hsp) * spr_dir, y - 74, reflect_effect );
		} else {
			reflect_fx = spawn_hit_fx( x - 52 * spr_dir + round(hsp) * spr_dir, y - 84, reflect_effect );
		}
		reflect_fx.depth = depth-1;
	} else if (window_timer > 1 && window == 4 && free && !hitpause && reflect_fx) {
		reflect_fx.x = x - 52 * spr_dir + round(hsp) * spr_dir;
		reflect_fx.y = y - 84;
	} else if (window_timer > 1 && window == 4 && !hitpause && reflect_fx) {
		reflect_fx.x = x - 52 * spr_dir + round(hsp) * spr_dir;
		reflect_fx.y = y - 74;
	}
}

if (shine_broke && was_parried && parried_timer + 120 <= get_gameplay_time()) {
	set_state(PS_IDLE);
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL) {
	if ((runeL && !runeC) || (runeB && runeL && runeC)) {
		if (window == 2 && window_timer == 6) {
			sound_play(sound_get("falco_shine"));
		}
	}
	if (hit_laser_air) {
		destroy_hitboxes();
	}
	if (free) {
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -35);
	} else {
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -30);
	}
	if (fox || (runeB && !runeC && !runeL) || (runeB && runeC && runeL) || (runeB && runeC)) {
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
	if (balanced_falco) {
		parry_spotdodge = true;
		dodge_recovery_frames = 2;
	} else {
		set_attack(AT_TAUNT_2);
	}
} else if (state == PS_PARRY_START) {
	if (balanced_falco) {
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

if (get_gameplay_time() <= attack_held + 1) {
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
	if (!balanced_falco) {
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
	if (!balanced_falco) {
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
	if (balanced_falco) {
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

if (balanced_falco) {
	if (state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN) {
		illusion_landed = true;
		move_cooldown[AT_FSPECIAL] = 0;
		if (runeK) {
			move_cooldown[AT_USPECIAL] = 0;
		}
	}
}


if (!balanced_falco && !was_parried) {
	if (state == PS_JUMPSQUAT) {
		iasa_script();
	}
}

if ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && attack == AT_NSPECIAL) || attack != AT_NSPECIAL) {
	aerial_laser = false;
}

if ((prev_state == PS_ATTACK_AIR || prev_state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL && state == PS_LANDING_LAG) {
	if (!balanced_falco) {
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

if (attack == AT_FAIR && state == PS_LANDING_LAG && fair_parry) {
	fair_parry = false;
	set_state(PS_PRATLAND);
	was_parried = true;
	parry_lag = 40;
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
	if (attack == AT_DSPECIAL) {
		if (free) {
			set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -42);
			set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -39);
			set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -42);
			set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -42);
		} else {
			reset_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y);
			reset_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y);
			reset_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y);
			reset_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y);
		}
		if (zetta_reflect == true) {
			window = 1;
			window_timer = 0;
			zetta_reflect = false;
		}
		if (!balanced_falco) {
			if ((window == 1 && window_timer < 1) && !hitpause) {
				create_hitbox( AT_DSPECIAL, 1, x, y );
			}  else if (window == 1) {
				destroy_hitboxes();
			}
		} else if (!runeN) {
			if ((window == 1 && window_timer == 1) && !hitpause) {
				create_hitbox( AT_DSPECIAL, 1, x, y );
				if (runeJ) {
					create_hitbox( AT_DSPECIAL, 9, x, y );
				}
			}  else if (window == 1) {
				destroy_hitboxes();
			}
		} else {
			if (!hitpause && window == 1) {
				create_hitbox( AT_DSPECIAL, 1, x, y );
				if (runeJ) {
					create_hitbox( AT_DSPECIAL, 9, x, y );
				}
				invincible = true;
			}  else if (window == 2) {
				destroy_hitboxes();
				invincible = false;
			}
		}
	}
	if (attack == AT_FSPECIAL && window == 1 && window_timer < 1 && !hitpause) {
    	sound_play(sound_get("falco_illusion_ding"));
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
    		if (fox) {
        		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, (10.5 * cos(degtorad(fiyaa_angle))) * spr_dir);
        		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, (-10.5 * sin(degtorad(fiyaa_angle))));
        	} else {
        		if (!runeF) {
	        		set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, (9 * cos(degtorad(fiyaa_angle))) * spr_dir);
	        		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, (-9 * sin(degtorad(fiyaa_angle))));
        		} else {
        			set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, (12 * cos(degtorad(fiyaa_angle))) * spr_dir);
	        		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, (-12 * sin(degtorad(fiyaa_angle))));
        		}
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

	if (balanced_falco) {

		// Fair landing hitbox
		if (!fair_landing_hitbox) {
			set_num_hitboxes(AT_FAIR, 5);
		} else {
			set_num_hitboxes(AT_FAIR, 6);
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

if (!balanced_falco && (!shovel_knight_exists || shovel_knight_exists != -4)) {
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
			if (balanced_falco) {
				dash_speed = 10.18;
				walk_speed = 8;
				if (runeH) {
					air_max_speed = 7;
				} else {
					air_max_speed = 6.20;
				}
			} else if (fox) {
				dash_speed = 16;
				walk_speed = 14;
				air_max_speed = 5.60;
			} else {
				dash_speed = 10.18;
				walk_speed = 12;
				air_max_speed = 5.60;
			}
			dash_turn_accel = 2.25;
			walk_accel = 1.0;
			if (random_func(11, 7, true) == 5) {
				if (((y - (random_func(21, 34, true) + 10)) > (slipstream_y - 50)) && ((y - (random_func(21, 34, true) + 10)) < (slipstream_y + 80))) {
				    create_hitbox(AT_DSPECIAL, 5, x - 16 * spr_dir + round(hsp) * spr_dir, y - (random_func(21, 34, true) + 10)).depth = -1;
				}
			}
			if (random_func(12, 7, true) == 5) {
			    if (((y - (random_func(22, 34, true) + 10)) > (slipstream_y - 50)) && ((y - (random_func(22, 34, true) + 10)) < (slipstream_y + 80))) {
				    create_hitbox(AT_DSPECIAL, 6, x - 16 * spr_dir + round(hsp) * spr_dir, y - (random_func(22, 34, true) + 10)).depth = -1;
				}
			}
			if (random_func(13, 7, true) == 5) {
			    if (((y - (random_func(23, 34, true) + 10)) > (slipstream_y - 50)) && ((y - (random_func(23, 34, true) + 10)) < (slipstream_y + 80))) {
				    create_hitbox(AT_DSPECIAL, 7, x - 16 * spr_dir + round(hsp) * spr_dir, y - (random_func(23, 34, true) + 10)).depth = -1;
				}
			}
			if (random_func(14, 7, true) == 5) {
			    if (((y - (random_func(24, 34, true) + 10)) > (slipstream_y - 50)) && ((y - (random_func(24, 34, true) + 10)) < (slipstream_y + 80))) {
				    create_hitbox(AT_DSPECIAL, 8, x - 16 * spr_dir + round(hsp) * spr_dir, y - (random_func(24, 34, true) + 10)).depth = -1;
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
	if (balanced_falco) {
		dash_speed = 7;
		walk_speed = 4;
	} else if (fox) {
		dash_speed = 11;
		walk_speed = 7;
	} else {
		dash_speed = 7;
		walk_speed = 6;
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

    trummelcodecline[page,1] = "That ain't Falco!";
    trummelcodecline[page,2] = "Actually, wait, no,";
    trummelcodecline[page,3] = "that is Falco. Member";
    trummelcodecline[page,4] = "of the Star Fox";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "team and semi-clone of";
    trummelcodecline[page,2] = "Fox. Don't be mistaken -";
    trummelcodecline[page,3] = "you will still get carpal";
    trummelcodecline[page,4] = "tunnel playing him.";
    page++; 

    //Page 2
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Right, well, he's";
    trummelcodecline[page,2] = "very light, similar to";
    trummelcodecline[page,3] = "Fox, but his shine sends";
    trummelcodecline[page,4] = "upwards instead of";
    page++; 

    //Page 3
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "downwards, leading to";
    trummelcodecline[page,2] = "him having completely";
    trummelcodecline[page,3] = "different combos. His";
    trummelcodecline[page,4] = "recovery's also worse.";
    page++; 

    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "This Falco can kick out";
    trummelcodecline[page,2] = "his reflector? Are you";
    trummelcodecline[page,3] = "kidding, is it fair";
    trummelcodecline[page,4] = "to have both!?";
    page++; 

    //Page 5
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 1;

    trummelcodecline[page,1] = "Sure, but he can't";
    trummelcodecline[page,2] = "jump-cancel it once he";
    trummelcodecline[page,3] = "kicks it out. Don't";
    trummelcodecline[page,4] = "be afraid to bait it out!";
}

// Kirby Stuff - Currently very buggy and barely works - but it works! Will go through at some point and fix all this, but for now, this is what we got.
if (enemykirby != -1) {
	
	var kirby_runeB = runeB;
	var kirby_runeC = runeC;
	var kirby_runeL = runeL;
	
	// Temp because its not working lolll whatever.
	if (oPlayer.attack == AT_EXTRA_3 && (oPlayer.state == PS_ATTACK_GROUND || oPlayer.state == PS_ATTACK_AIR) && oPlayer.special_pressed && oPlayer.window == 2) {
		if (oPlayer.free) {
            if (oPlayer.window_timer == 15) {
                temp_laser_repeat = false;
                temp_hit_laser_air = false;
                oPlayer.window_timer = 1;
            }
        } else {
            if (oPlayer.window_timer == 23) {
                temp_laser_repeat = false;
                temp_hit_laser_air = false;
                oPlayer.window_timer = 1;
            }
        }
	}
	
	if (oPlayer.attack == AT_EXTRA_3 && (oPlayer.state == PS_ATTACK_AIR || oPlayer.state == PS_ATTACK_GROUND)) {
		if ((!kirby_runeC && !kirby_runeL) || (kirby_runeL && kirby_runeC) || (kirby_runeL && kirby_runeB) || (kirby_runeB && kirby_runeC)) {
			if (oPlayer.window == 1 && oPlayer.window_timer >= 3) {
				if (oPlayer.special_pressed) {
					temp_laser_repeat = true;
				}
			}
			if (oPlayer.window == 2) {
				if (oPlayer.window_timer == 0 && oPlayer.special_pressed && !kirby_laser_repeat) {
					temp_buffered = true;
				} else {
					if (oPlayer.window_timer >= 2 && oPlayer.special_pressed) {
						temp_buffered = false;
					}
					if (oPlayer.special_pressed && !kirby_buffered) {
						temp_laser_repeat = true;
					}
					if (kirby_fox || (kirby_runeB && !kirby_runeC && !kirby_runeL) || (kirby_runeB && kirby_runeC && kirby_runeL) || (kirby_runeB && kirby_runeC)) {
		    			if (oPlayer.window_timer == 9 && kirby_laser_repeat) {
		    				temp_laser_repeat = false;
		                    temp_hit_laser_air = false;
		                    oPlayer.window_timer = 1;
		    			}
		            } else {
		            	if (oPlayer.free) {
		                    if (oPlayer.window_timer == 15 && kirby_laser_repeat) {
		                        temp_laser_repeat = false;
		                        temp_hit_laser_air = false;
		                        oPlayer.window_timer = 1;
		                    }
		                } else {
		                    if (oPlayer.window_timer == 23 && kirby_laser_repeat) {
		                        temp_laser_repeat = false;
		                        temp_hit_laser_air = false;
		                        oPlayer.window_timer = 1;
		                    }
		                }
		            }
				}
				if (oPlayer.window_timer == 9) {
					temp_buffered = false;
				}
			}
		}
		if (oPlayer.free) {
	        if (kirby_fox || (kirby_runeB && !kirby_runeC && !kirby_runeL) || (kirby_runeB && kirby_runeC && kirby_runeL) || (kirby_runeB && kirby_runeC)) {
	            temp_aerial_laser = true;
	        } else {
	            temp_aerial_laser = true;
	        }
	    }
	    if (!oPlayer.free && kirby_aerial_laser) {
		    oPlayer.window_timer = 0;
			oPlayer.landing_lag_time = 3;
	        temp_aerial_laser = false;
		}
	}
	
	if ((oPlayer.state != PS_ATTACK_AIR && oPlayer.state != PS_ATTACK_GROUND && oPlayer.attack == AT_EXTRA_3) || oPlayer.attack != AT_EXTRA_3) {
		temp_aerial_laser = false;
	}
	
	if ((oPlayer.state == PS_ATTACK_GROUND || oPlayer.state == PS_ATTACK_AIR) && oPlayer.attack == AT_EXTRA_3) {
		if ((kirby_runeL && !kirby_runeC) || (kirby_runeB && kirby_runeL && kirby_runeC)) {
			if (oPlayer.window == 2 && oPlayer.window_timer == 5) {
				sound_play(sound_get("falco_shine"));
			}
		}

		if (kirby_fox || (kirby_runeB && !kirby_runeC && !kirby_runeL) || (kirby_runeB && kirby_runeC && kirby_runeL) || (kirby_runeB && kirby_runeC)) {
			var kirby_laser_vfx = hit_fx_create(sprite_get("laser_vfx"), 9);
			var kirby_laser_vfx_air = hit_fx_create(sprite_get("laser_vfx_air"), 9);
			if (oPlayer.window == 2 && oPlayer.window_timer == 4 && !oPlayer.hitpause) {
				if (!oPlayer.free) {
			    	laser_fx = spawn_hit_fx( oPlayer.x + oPlayer.spr_dir * 6 + oPlayer.spr_dir * round(oPlayer.hsp), y - 46, kirby_laser_vfx );
			    } else {
			    	laser_fx = spawn_hit_fx( oPlayer.x + oPlayer.spr_dir * 6 + oPlayer.spr_dir * round(oPlayer.hsp), y - 52, kirby_laser_vfx_air );
			    	temp_laser_time = get_gameplay_time();
			    }
			}
			if (window == 2 && window_timer >= 4) {
				if (!free) {
					laser_fx.y = oPlayer.y - 46;
					laser_fx.x = oPlayer.x + oPlayer.spr_dir * 6 + oPlayer.spr_dir * round(oPlayer.hsp);
				} else {
					laser_fx.y = oPlayer.y - 52;
					laser_fx.x = oPlayer.x + oPlayer.spr_dir * 6 + oPlayer.spr_dir * round(oPlayer.hsp);
				}
				laser_fx.spr_dir = oPlayer.spr_dir
			}
		} else {
			if (free) {
				if (window == 2 && window_timer == 8 && !hitpause) {
				    laser_fx = spawn_hit_fx( oPlayer.x + oPlayer.spr_dir * 6 + oPlayer.spr_dir * round(hsp), y - 52, laser_vfx_air );
				    temp_laser_time = get_gameplay_time();
				}
				if (oPlayer.window == 2 && oPlayer.window_timer >= 8) {
					laser_fx.spr_dir = oPlayer.spr_dir
					laser_fx.y = oPlayer.y - 52;
					laser_fx.x = oPlayer.x + oPlayer.spr_dir * 6 + oPlayer.spr_dir * round(oPlayer.hsp);
				}
			} else {
				if (oPlayer.window == 2 && oPlayer.window_timer == 10 && !oPlayer.hitpause) {
			    	laser_fx = spawn_hit_fx( oPlayer.x + oPlayer.spr_dir * 6 + oPlayer.spr_dir * round(oPlayer.hsp), oPlayer.y - 46, laser_vfx );
			    	laser_fx.spr_dir = oPlayer.spr_dir;
				}
			}
		}
	}
	
	var kirby_laser_repeat = temp_laser_repeat;
	var kirby_buffered = temp_buffered;
	var kirby_hit_laser_air = temp_hit_laser_air;
	var kirby_aerial_laser = temp_aerial_laser;
	var kirby_laser_time = temp_laser_time;
	
	var kirby_fox = fox;
	with (oPlayer) {
		if (get_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES) = 36013 && attack == AT_EXTRA_3 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
			if (!free && kirby_aerial_laser) {
			    set_state(PS_LANDING_LAG);
			}
			if (free) {
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -15);
			} else {
				set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -10);
			}
			if (kirby_hit_laser_air) {
				destroy_hitboxes();
			}
			if (window == 2 && window_timer == 9 && !hitpause) {
				if (!free) {
			    } else {
			    	if (!kirby_hit_laser_air) {
			    		laser = create_hitbox( AT_EXTRA_3, 2, x + round(hsp) * spr_dir, y - 16 + round(vsp) );
			    	}
			    }
			}
			// ^ update.gml v attack_update.gml
			
			if ((!kirby_runeC && !kirby_runeL) || (kirby_runeL && kirby_runeC) || (kirby_runeL && kirby_runeB) || (kirby_runeB && kirby_runeC)) {
				if (window == 1) {
					clear_button_buffer( PC_SPECIAL_PRESSED );
					if (window_timer >= 3) {
			            set_num_hitboxes(AT_EXTRA_3, 2);
					}
				}
		
				if (window == 2) {
					if (window_timer == 0) {
						set_num_hitboxes(AT_EXTRA_3, 2);
					}
					if (window_timer == 0 && special_pressed && !kirby_laser_repeat) {
					} else {
			            if (kirby_fox || (kirby_runeB && !kirby_runeC && !kirby_runeL) || (kirby_runeB && kirby_runeC && kirby_runeL) || (kirby_runeB && kirby_runeC)) {
			    			if (window_timer == 9 && kirby_laser_repeat) {
			                    attack_end();
			    			}
			            } else {
			                if (free) {
			                    if (window_timer == 15 && kirby_laser_repeat) {
			                        attack_end();
			                    }
			                } else {
			                    if (window_timer == 23 && kirby_laser_repeat) {
			                        attack_end();
			                    }
			                }
			            }
					}
				}
			}
		
		    if (free) {
		        if (kirby_fox || (kirby_runeB && !kirby_runeC && !kirby_runeL) || (kirby_runeB && kirby_runeC && kirby_runeL) || (kirby_runeB && kirby_runeC)) {
		            kirby_aerial_laser = true;
		            set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
		            set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 0);
		            set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 22);
		        } else {
		            kirby_aerial_laser = true;
		            set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 1);
		            set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 0);
		            if ((!kirby_runeC && !kirby_runeL) || (kirby_runeL && kirby_runeC) || (kirby_runeL && kirby_runeB)) {
		            	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
		            } else {
		            	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 6);	
		            }
		            set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 9);
		            set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 16);
		            set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 22);
		            set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 9);
		            if ((!kirby_runeC && !kirby_runeL) || (kirby_runeL && kirby_runeC) || (kirby_runeL && kirby_runeB)) {
		            	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 8);
		            } else {
		            	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 9);
		            }
		        }
		    } else {
		        if (kirby_fox || (kirby_runeB && !kirby_runeC && !kirby_runeL) || (kirby_runeB && kirby_runeC && kirby_runeL) || (kirby_runeB && kirby_runeC)) {
		            set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 6);
		            set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
		            set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -10);
		            set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 24);
		        } else {
		            set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
		            set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 11);
		            set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 6);
		            set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 6);
		            set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -10);
		            set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 24);
		            set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 27);
		            set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 17);
		            set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 16);
		        }
		    }
		
		    if (window == 3 && window_timer == 24) {
		        if (!free) {
		            set_state(PS_IDLE);
		        } else {
		            set_state(PS_IDLE_AIR);
		        }
		    }
		}
	}
}

if (swallowed && swallowed != -1) {
	swallowed = 0;
	var is_balanced = balanced_falco;
	var is_fox = fox;
	var ability_spr = sprite_get("kirby_laser");
	var ability_hurt_spr = sprite_get("kirby_laser_hurt");
	var ability_sfx1 = sound_get("falco_laser");
	var ability_sfx2 = sound_get("falco_laser_put_away");
	var ability_sfx3 = sound_get("falco_laser_take_out");
	var ability_empty_spr = sprite_get("empty");
	var ability_laser_spr = sprite_get("laser_proj");
	var myicon = sprite_get("kirbyicon");
	
	with (enemykirby) {
		newicon = myicon;
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt_spr);
		
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 6);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sfx3);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);
		
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, ability_sfx1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 5);
		
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX, ability_sfx2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_SFX_FRAME, 18);
		
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES, 36013);
		
		set_num_hitboxes(AT_EXTRA_3, 2);
		
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 5);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 51);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 40);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 15);
		set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 0.1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_FORCE_FLINCH, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_HITPAUSE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_X_OFFSET, 15);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 20);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_empty_spr);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, false);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
		
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 8);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 99);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 52);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 108);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 10);
		set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 0.1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_FORCE_FLINCH, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_EXTRA_HITPAUSE, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITSTUN_MULTIPLIER, 8);
		set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_X_OFFSET, 15);
		set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
		set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 20);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, ability_laser_spr);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, 0.6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, 28);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_PARRY_STUN, false);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_DOES_NOT_REFLECT, false);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
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
		balanced_falco = true;
		fox = false;
		easter_egg_timer = 91;
	} else if (shield_down) {
		balanced_falco = false;
		fox = false;
	} else if (special_down) {		
		balanced_falco = false;
		fox = true;
	} else if (attack_down) {
		balanced_falco = true;
		fox = false;
	}
	var falco_player = self;
	with (oPlayer) {
		if (attack_down) {
			falco_player.cancelled_melee = true;
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
	var falco = self;
	if ("is_ai" in self) {
		with (oPlayer) if (self != falco) {
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

// Fox - First, it activates Melee mode, then only changes things unchanged from Melee mode. This means I do not have to write out the entirety of every attack file,
// because nothing that I change in the actual attack files will change Fox, due to it switching to Melee mode before switching to Fox.
if (fox) {

	if (!fox_activated && melee_activated) {
		//init
		//laser_vfx = hit_fx_create(sprite_get("laser_vfx"), 14);
		jump_start_time = 2;
		short_hop_speed = 9.37;
		djump_speed = 17.49;
		jump_speed = 15.3;
		walk_speed = 7;
		initial_dash_speed = 9.2;
		dash_speed = 11;
		max_fall = 11.7;
		fast_fall = 14.21;
		gravity_speed = 0.90;
		hitstun_grav = 0.6;
		knockback_adj = 100/75;

		//dair
		set_num_hitboxes(AT_DAIR, 28);
		set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 3.7);
		set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 0.1);
		set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 0);
		set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 3.7);
		set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 3.7);
		set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1.2);
		set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 0);
		set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 3);
		set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 3.3);
		set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 3.3);
		set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_DAIR, 3, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 0);
		set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 2);
		set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 3.7);
		set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 3.7);
		set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_DAIR, 4, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 0);
		set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 3);
		set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 5, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 3.3);
		set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 3.3);
		set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 2);
		set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 6, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 3.7);
		set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 3.7);
		set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_DAIR, 6, HG_HITSTUN_MULTIPLIER, 1.2);
		set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 7, HG_DAMAGE, 3);
		set_hitbox_value(AT_DAIR, 7, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 7, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_DAIR, 7, HG_BASE_KNOCKBACK, 3.3);
		set_hitbox_value(AT_DAIR, 7, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DAIR, 7, HG_BASE_HITPAUSE, 3.3);
		set_hitbox_value(AT_DAIR, 7, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_DAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_DAIR, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 8, HG_DAMAGE, 2);
		set_hitbox_value(AT_DAIR, 8, HG_ANGLE, 290);
		set_hitbox_value(AT_DAIR, 8, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_DAIR, 8, HG_BASE_KNOCKBACK, 3.7);
		set_hitbox_value(AT_DAIR, 8, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DAIR, 8, HG_BASE_HITPAUSE, 3.7);
		set_hitbox_value(AT_DAIR, 8, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_DAIR, 8, HG_HITSTUN_MULTIPLIER, 1.2);
		set_hitbox_value(AT_DAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, 3);
		set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_DAIR, 9, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DAIR, 9, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 9, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 9, HG_WINDOW_CREATION_FRAME, 6);
		set_hitbox_value(AT_DAIR, 9, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 9, HG_HITBOX_X, 2);
		set_hitbox_value(AT_DAIR, 9, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_DAIR, 9, HG_HITBOX_GROUP, 2);
		set_hitbox_value(AT_DAIR, 10, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_DAIR, 10, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 10, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 10, HG_WINDOW_CREATION_FRAME, 6);
		set_hitbox_value(AT_DAIR, 10, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 10, HG_HITBOX_X, 6);
		set_hitbox_value(AT_DAIR, 10, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_DAIR, 10, HG_HITBOX_GROUP, 2);
		set_hitbox_value(AT_DAIR, 11, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_DAIR, 11, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 11, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 11, HG_WINDOW_CREATION_FRAME, 7);
		set_hitbox_value(AT_DAIR, 11, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 11, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 11, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DAIR, 11, HG_HITBOX_GROUP, 2);
		set_hitbox_value(AT_DAIR, 12, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_DAIR, 12, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 12, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 12, HG_WINDOW_CREATION_FRAME, 7);
		set_hitbox_value(AT_DAIR, 12, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 12, HG_HITBOX_X, 3);
		set_hitbox_value(AT_DAIR, 12, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DAIR, 12, HG_HITBOX_GROUP, 2);
		set_hitbox_value(AT_DAIR, 13, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DAIR, 13, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 13, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 13, HG_WINDOW_CREATION_FRAME, 9);
		set_hitbox_value(AT_DAIR, 13, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 13, HG_HITBOX_X, 2);
		set_hitbox_value(AT_DAIR, 13, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_DAIR, 13, HG_HITBOX_GROUP, 3);
		set_hitbox_value(AT_DAIR, 14, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_DAIR, 14, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 14, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 14, HG_WINDOW_CREATION_FRAME, 9);
		set_hitbox_value(AT_DAIR, 14, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 14, HG_HITBOX_X, 6);
		set_hitbox_value(AT_DAIR, 14, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_DAIR, 14, HG_HITBOX_GROUP, 3);
		set_hitbox_value(AT_DAIR, 15, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_DAIR, 15, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 15, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 15, HG_WINDOW_CREATION_FRAME, 10);
		set_hitbox_value(AT_DAIR, 15, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 15, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 15, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DAIR, 15, HG_HITBOX_GROUP, 3);
		set_hitbox_value(AT_DAIR, 16, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_DAIR, 16, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 16, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 16, HG_WINDOW_CREATION_FRAME, 10);
		set_hitbox_value(AT_DAIR, 16, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 16, HG_HITBOX_X, 3);
		set_hitbox_value(AT_DAIR, 16, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DAIR, 16, HG_HITBOX_GROUP, 3);
		set_hitbox_value(AT_DAIR, 17, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DAIR, 17, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 17, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 17, HG_WINDOW_CREATION_FRAME, 12);
		set_hitbox_value(AT_DAIR, 17, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 17, HG_HITBOX_X, 2);
		set_hitbox_value(AT_DAIR, 17, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_DAIR, 17, HG_HITBOX_GROUP, 4);
		set_hitbox_value(AT_DAIR, 18, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_DAIR, 18, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 18, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 18, HG_WINDOW_CREATION_FRAME, 12);
		set_hitbox_value(AT_DAIR, 18, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 18, HG_HITBOX_X, 6);
		set_hitbox_value(AT_DAIR, 18, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_DAIR, 18, HG_HITBOX_GROUP, 4);
		set_hitbox_value(AT_DAIR, 19, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_DAIR, 19, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 19, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 19, HG_WINDOW_CREATION_FRAME, 13);
		set_hitbox_value(AT_DAIR, 19, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 19, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 19, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DAIR, 19, HG_HITBOX_GROUP, 4);
		set_hitbox_value(AT_DAIR, 20, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_DAIR, 20, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 20, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 20, HG_WINDOW_CREATION_FRAME, 13);
		set_hitbox_value(AT_DAIR, 20, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 20, HG_HITBOX_X, 3);
		set_hitbox_value(AT_DAIR, 20, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DAIR, 20, HG_HITBOX_GROUP, 4);
		set_hitbox_value(AT_DAIR, 21, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DAIR, 21, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 21, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 21, HG_WINDOW_CREATION_FRAME, 15);
		set_hitbox_value(AT_DAIR, 21, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 21, HG_HITBOX_X, 2);
		set_hitbox_value(AT_DAIR, 21, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_DAIR, 21, HG_HITBOX_GROUP, 5);
		set_hitbox_value(AT_DAIR, 22, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_DAIR, 22, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 22, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 22, HG_WINDOW_CREATION_FRAME, 15);
		set_hitbox_value(AT_DAIR, 22, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 22, HG_HITBOX_X, 6);
		set_hitbox_value(AT_DAIR, 22, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_DAIR, 22, HG_HITBOX_GROUP, 5);
		set_hitbox_value(AT_DAIR, 23, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_DAIR, 23, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 23, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 23, HG_WINDOW_CREATION_FRAME, 16);
		set_hitbox_value(AT_DAIR, 23, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 23, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 23, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DAIR, 23, HG_HITBOX_GROUP, 5);
		set_hitbox_value(AT_DAIR, 24, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_DAIR, 24, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 24, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 24, HG_WINDOW_CREATION_FRAME, 16);
		set_hitbox_value(AT_DAIR, 24, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 24, HG_HITBOX_X, 3);
		set_hitbox_value(AT_DAIR, 24, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DAIR, 24, HG_HITBOX_GROUP, 5);
		set_hitbox_value(AT_DAIR, 25, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_DAIR, 25, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 25, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 25, HG_WINDOW_CREATION_FRAME, 18);
		set_hitbox_value(AT_DAIR, 25, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 25, HG_HITBOX_X, 2);
		set_hitbox_value(AT_DAIR, 25, HG_HITBOX_Y, -25);
		set_hitbox_value(AT_DAIR, 25, HG_HITBOX_GROUP, 6);
		set_hitbox_value(AT_DAIR, 26, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_DAIR, 26, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 26, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 26, HG_WINDOW_CREATION_FRAME, 18);
		set_hitbox_value(AT_DAIR, 26, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 26, HG_HITBOX_X, 6);
		set_hitbox_value(AT_DAIR, 26, HG_HITBOX_Y, -15);
		set_hitbox_value(AT_DAIR, 26, HG_HITBOX_GROUP, 6);
		set_hitbox_value(AT_DAIR, 27, HG_PARENT_HITBOX, 3);
		set_hitbox_value(AT_DAIR, 27, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 27, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 27, HG_WINDOW_CREATION_FRAME, 19);
		set_hitbox_value(AT_DAIR, 27, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 27, HG_HITBOX_X, 0);
		set_hitbox_value(AT_DAIR, 27, HG_HITBOX_Y, -40);
		set_hitbox_value(AT_DAIR, 27, HG_HITBOX_GROUP, 6);
		set_hitbox_value(AT_DAIR, 28, HG_PARENT_HITBOX, 4);
		set_hitbox_value(AT_DAIR, 28, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DAIR, 28, HG_WINDOW, 2);
		set_hitbox_value(AT_DAIR, 28, HG_WINDOW_CREATION_FRAME, 19);
		set_hitbox_value(AT_DAIR, 28, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 28, HG_HITBOX_X, 3);
		set_hitbox_value(AT_DAIR, 28, HG_HITBOX_Y, -30);
		set_hitbox_value(AT_DAIR, 28, HG_HITBOX_GROUP, 6);
		set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 2);
		set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 1);
		set_hitbox_value(AT_DAIR, 8, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 1);

		//dattack
		set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);

		//dspecial
		set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 70);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 70);
		set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 0);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.8);
		
		//dstrong
		set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_fox_hurt"));
		set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 12);
		set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 15);
		set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 12);
		set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 15);
		set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 361);
		set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 7, HG_HITPAUSE_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 8, HG_KNOCKBACK_SCALING, 0.325);
		set_hitbox_value(AT_DSTRONG, 8, HG_HITPAUSE_SCALING, 0.325);

		//dtilt
		set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 10);
		set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 10);
		set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 10);
		set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 10);
		set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 10);
		set_hitbox_value(AT_DTILT, 6, HG_DAMAGE, 10);
		set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
		set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 80);
		set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 90);
		set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 70);
		set_hitbox_value(AT_DTILT, 5, HG_ANGLE, 80);
		set_hitbox_value(AT_DTILT, 6, HG_ANGLE, 90);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 11.2);
		set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 11.2);
		set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 10.7);
		set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 10.7);
		set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 10.5);
		set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 10.5);
		set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 11.2);
		set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 11.2);
		set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 10.7);
		set_hitbox_value(AT_DTILT, 5, HG_BASE_HITPAUSE, 10.7);
		set_hitbox_value(AT_DTILT, 6, HG_BASE_KNOCKBACK, 10.5);
		set_hitbox_value(AT_DTILT, 6, HG_BASE_HITPAUSE, 10.5);
		set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 0);
		set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 0);
		set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, 0);
		set_hitbox_value(AT_DTILT, 4, HG_VISUAL_EFFECT, 0);
		set_hitbox_value(AT_DTILT, 5, HG_VISUAL_EFFECT, 0);
		set_hitbox_value(AT_DTILT, 6, HG_VISUAL_EFFECT, 0);

		//fair
		set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 6);
		set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 4);
		set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 5);

		//fspecial
		var foxspeed = 85;
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 18);
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, foxspeed);
		set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, (foxspeed*(2.1/18.72)));
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, ((foxspeed*(2.1/18.72))/22));
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, ((foxspeed*(1.93/18.72))/29));
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, ((foxspeed*(2.1/18.72))/22));
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, ((foxspeed*(1.93/18.72))/29));
		set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -170);
		set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 120);
		set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, -210);
		set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, -135);
		set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, -60);

		//fstrong
		set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 0);
		set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 15);
		set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 15);
		set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 15);
		set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 15);
		set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 15);
		set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 15);
		set_hitbox_value(AT_FSTRONG, 7, HG_DAMAGE, 15);
		set_hitbox_value(AT_FSTRONG, 8, HG_DAMAGE, 15);
		set_hitbox_value(AT_FSTRONG, 9, HG_DAMAGE, 15);
		set_hitbox_value(AT_FSTRONG, 10, HG_DAMAGE, 12);
		set_hitbox_value(AT_FSTRONG, 11, HG_DAMAGE, 12);
		set_hitbox_value(AT_FSTRONG, 12, HG_DAMAGE, 12);
		set_hitbox_value(AT_FSTRONG, 13, HG_DAMAGE, 12);
		set_hitbox_value(AT_FSTRONG, 14, HG_DAMAGE, 12);
		set_hitbox_value(AT_FSTRONG, 15, HG_DAMAGE, 12);
		set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7.5);
		set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 7.5);
		set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7.5);
		set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 7.5);
		set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 7.5);
		set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 7.5);
		set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 7.5);
		set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 7.5);
		set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 7.5);
		set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 7.5);
		set_hitbox_value(AT_FSTRONG, 6, HG_BASE_KNOCKBACK, 7.5);
		set_hitbox_value(AT_FSTRONG, 6, HG_BASE_HITPAUSE, 7.5);
		set_hitbox_value(AT_FSTRONG, 7, HG_BASE_KNOCKBACK, 7.5);
		set_hitbox_value(AT_FSTRONG, 7, HG_BASE_HITPAUSE, 7.5);
		set_hitbox_value(AT_FSTRONG, 8, HG_BASE_KNOCKBACK, 7.5);
		set_hitbox_value(AT_FSTRONG, 8, HG_BASE_HITPAUSE, 7.5);
		set_hitbox_value(AT_FSTRONG, 9, HG_BASE_KNOCKBACK, 7.3);
		set_hitbox_value(AT_FSTRONG, 9, HG_BASE_HITPAUSE, 7.3);
		set_hitbox_value(AT_FSTRONG, 10, HG_BASE_KNOCKBACK, 7.3);
		set_hitbox_value(AT_FSTRONG, 10, HG_BASE_HITPAUSE, 7.3);
		set_hitbox_value(AT_FSTRONG, 11, HG_BASE_KNOCKBACK, 7.3);
		set_hitbox_value(AT_FSTRONG, 11, HG_BASE_HITPAUSE, 7.3);
		set_hitbox_value(AT_FSTRONG, 12, HG_BASE_KNOCKBACK, 7.3);
		set_hitbox_value(AT_FSTRONG, 12, HG_BASE_HITPAUSE, 7.3);
		set_hitbox_value(AT_FSTRONG, 13, HG_BASE_KNOCKBACK, 7.3);
		set_hitbox_value(AT_FSTRONG, 13, HG_BASE_HITPAUSE, 7.3);
		set_hitbox_value(AT_FSTRONG, 14, HG_BASE_KNOCKBACK, 7.3);
		set_hitbox_value(AT_FSTRONG, 14, HG_BASE_HITPAUSE, 7.3);
		set_hitbox_value(AT_FSTRONG, 15, HG_BASE_KNOCKBACK, 7.3);
		set_hitbox_value(AT_FSTRONG, 15, HG_BASE_HITPAUSE, 7.3);
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
		set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);

		//ftilt_up
		set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 4);

		//ftilt_down
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);

		//jab
		set_hitbox_value(AT_JAB, 4, HG_ANGLE, 78);

		//nspecial
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 0); 
		set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 0); 
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 0);
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 0); 
		set_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH, 0); 
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 0);
		set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 37);

		//spotdodge
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 0);

		//uair
		set_num_hitboxes(AT_UAIR, 9);
		set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 8, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 9, HG_PRIORITY, 1);
		set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 305);
		set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 5);
		set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 5);
		set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 5);
		set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 13);
		set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 13);
		set_hitbox_value(AT_UAIR, 8, HG_DAMAGE, 13);
		set_hitbox_value(AT_UAIR, 9, HG_DAMAGE, 13);
		set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 92);
		set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 92);
		set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 92);
		set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 92);
		set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 92);
		set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 85);
		set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 14.6);
		set_hitbox_value(AT_UAIR, 7, HG_KNOCKBACK_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 14.6);
		set_hitbox_value(AT_UAIR, 7, HG_HITPAUSE_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 8, HG_BASE_KNOCKBACK, 14.6);
		set_hitbox_value(AT_UAIR, 8, HG_KNOCKBACK_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 8, HG_BASE_HITPAUSE, 14.6);
		set_hitbox_value(AT_UAIR, 8, HG_HITPAUSE_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 9, HG_BASE_KNOCKBACK, 14.6);
		set_hitbox_value(AT_UAIR, 9, HG_KNOCKBACK_SCALING, 0.58);
		set_hitbox_value(AT_UAIR, 9, HG_BASE_HITPAUSE, 14.6);
		set_hitbox_value(AT_UAIR, 9, HG_HITPAUSE_SCALING, 0.58);

		//uspecial
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_burnapplied"));
		set_num_hitboxes(AT_USPECIAL, 8);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 31);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 21);
		set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 65);
		set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 65);
		set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
		set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 70);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 0.1);
		set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 5);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.2);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 2);
		set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 3);
		set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 23);
		set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 25);
		set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);
		set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 27);
		set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 3);
		set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 29);
		set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 4);
		set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 31);
		set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 5);
		set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 33);
		set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 6);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 30);
		set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH,  74);
		set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 74);
		set_hitbox_value(AT_USPECIAL, 8, HG_SHAPE, 0);
		set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 1);
		set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 14);
		set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 80);
		set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 16);
		set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, 0.3);
		set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 16);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITPAUSE_SCALING, 0.3);
		set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, 148);
		set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 7);

		//ustrong
		set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
		set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
		set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 80);
		set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 80);
		set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 80);
		set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 80);
		set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 18);
		set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 18);
		set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 18);
		set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 18);
		set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 18);
		set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 18);
		set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 9, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 10, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 11, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 12, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 13, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 14, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 15, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 16, HG_DAMAGE, 13);
		set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 0.56);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 17.3);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 17.3);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 17.3);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 17.3);
		set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 17.3);
		set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 17.3);
		set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 17.3);
		set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 17.3);
		set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 17.3);
		set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 17.3);
		set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 17.3);
		set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 17.3);
		set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 9, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 9, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 10, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 10, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 11, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 11, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 12, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 12, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 13, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 13, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 14, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 14, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 15, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 15, HG_BASE_HITPAUSE, 4.8);
		set_hitbox_value(AT_USTRONG, 16, HG_BASE_KNOCKBACK, 4.8);
		set_hitbox_value(AT_USTRONG, 16, HG_BASE_HITPAUSE, 4.8);

		//utilt
		set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 12);
		set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 12);
		set_hitbox_value(AT_UTILT, 8, HG_DAMAGE, 12);
		set_hitbox_value(AT_UTILT, 11, HG_DAMAGE, 12);
		set_hitbox_value(AT_UTILT, 14, HG_DAMAGE, 12);
		set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
		set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8.8);
		set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8.8);
		set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -20);
		set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -20);
		set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 110);
		set_hitbox_value(AT_UTILT, 2, HG_GROUNDEDNESS, 2);
		set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 13.4);
		set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 13.4);
		set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -20);
		set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -20);
		set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 3, HG_GROUNDEDNESS, 1);
		set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 84);
		set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8.7);
		set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 8.7);
		set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -20);
		set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -20);
		set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 35);
		set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 30);
		set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 3);
		set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 80);
		set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 8.8);
		set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 8.8);
		set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, -30);
		set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -45);
		set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 110);
		set_hitbox_value(AT_UTILT, 5, HG_GROUNDEDNESS, 2);
		set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 13.4);
		set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 13.4);
		set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, -30);
		set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -45);
		set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 6, HG_GROUNDEDNESS, 1);
		set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 84);
		set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 8.7);
		set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 8.7);
		set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 7, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, -30);
		set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, -45);
		set_hitbox_value(AT_UTILT, 7, HG_WIDTH, 35);
		set_hitbox_value(AT_UTILT, 7, HG_HEIGHT, 30);
		set_hitbox_value(AT_UTILT, 7, HG_PRIORITY, 3);
		set_hitbox_value(AT_UTILT, 7, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 7, HG_ANGLE, 80);
		set_hitbox_value(AT_UTILT, 7, HG_BASE_KNOCKBACK, 8.8);
		set_hitbox_value(AT_UTILT, 7, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 7, HG_BASE_HITPAUSE, 8.8);
		set_hitbox_value(AT_UTILT, 7, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 7, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_UTILT, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 8, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 8, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 8, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_UTILT, 8, HG_HITBOX_X, -10);
		set_hitbox_value(AT_UTILT, 8, HG_HITBOX_Y, -67);
		set_hitbox_value(AT_UTILT, 8, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 8, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 8, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 8, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 8, HG_ANGLE, 110);
		set_hitbox_value(AT_UTILT, 8, HG_GROUNDEDNESS, 2);
		set_hitbox_value(AT_UTILT, 8, HG_BASE_KNOCKBACK, 13.4);
		set_hitbox_value(AT_UTILT, 8, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 8, HG_BASE_HITPAUSE, 13.4);
		set_hitbox_value(AT_UTILT, 8, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 8, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_UTILT, 8, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_UTILT, 9, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 9, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 9, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 9, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_UTILT, 9, HG_HITBOX_X, -10);
		set_hitbox_value(AT_UTILT, 9, HG_HITBOX_Y, -67);
		set_hitbox_value(AT_UTILT, 9, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 9, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 9, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 9, HG_GROUNDEDNESS, 1);
		set_hitbox_value(AT_UTILT, 9, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 9, HG_ANGLE, 84);
		set_hitbox_value(AT_UTILT, 9, HG_BASE_KNOCKBACK, 8.7);
		set_hitbox_value(AT_UTILT, 9, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 9, HG_BASE_HITPAUSE, 8.7);
		set_hitbox_value(AT_UTILT, 9, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 9, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_UTILT, 10, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 10, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 10, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 10, HG_WINDOW_CREATION_FRAME, 2);
		set_hitbox_value(AT_UTILT, 10, HG_HITBOX_X, -10);
		set_hitbox_value(AT_UTILT, 10, HG_HITBOX_Y, -67);
		set_hitbox_value(AT_UTILT, 10, HG_WIDTH, 35);
		set_hitbox_value(AT_UTILT, 10, HG_HEIGHT, 30);
		set_hitbox_value(AT_UTILT, 10, HG_PRIORITY, 3);
		set_hitbox_value(AT_UTILT, 10, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 10, HG_ANGLE, 80);
		set_hitbox_value(AT_UTILT, 10, HG_BASE_KNOCKBACK, 8.8);
		set_hitbox_value(AT_UTILT, 10, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 10, HG_BASE_HITPAUSE, 8.8);
		set_hitbox_value(AT_UTILT, 10, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 10, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_UTILT, 11, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 11, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 11, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 11, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_UTILT, 11, HG_HITBOX_X, 7);
		set_hitbox_value(AT_UTILT, 11, HG_HITBOX_Y, -66);
		set_hitbox_value(AT_UTILT, 11, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 11, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 11, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 11, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 11, HG_ANGLE, 110);
		set_hitbox_value(AT_UTILT, 11, HG_GROUNDEDNESS, 2);
		set_hitbox_value(AT_UTILT, 11, HG_BASE_KNOCKBACK, 13.4);
		set_hitbox_value(AT_UTILT, 11, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 11, HG_BASE_HITPAUSE, 13.4);
		set_hitbox_value(AT_UTILT, 11, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 11, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_UTILT, 11, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_UTILT, 12, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 12, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 12, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 12, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_UTILT, 12, HG_HITBOX_X, 7);
		set_hitbox_value(AT_UTILT, 12, HG_HITBOX_Y, -66);
		set_hitbox_value(AT_UTILT, 12, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 12, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 12, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 12, HG_GROUNDEDNESS, 1);
		set_hitbox_value(AT_UTILT, 12, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 12, HG_ANGLE, 84);
		set_hitbox_value(AT_UTILT, 12, HG_BASE_KNOCKBACK, 8.7);
		set_hitbox_value(AT_UTILT, 12, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 12, HG_BASE_HITPAUSE, 8.7);
		set_hitbox_value(AT_UTILT, 12, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 12, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_UTILT, 13, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 13, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 13, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 13, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_UTILT, 13, HG_HITBOX_X, 7);
		set_hitbox_value(AT_UTILT, 13, HG_HITBOX_Y, -66);
		set_hitbox_value(AT_UTILT, 13, HG_WIDTH, 35);
		set_hitbox_value(AT_UTILT, 13, HG_HEIGHT, 30);
		set_hitbox_value(AT_UTILT, 13, HG_PRIORITY, 3);
		set_hitbox_value(AT_UTILT, 13, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 13, HG_ANGLE, 80);
		set_hitbox_value(AT_UTILT, 13, HG_BASE_KNOCKBACK, 8.8);
		set_hitbox_value(AT_UTILT, 13, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 13, HG_BASE_HITPAUSE, 8.8);
		set_hitbox_value(AT_UTILT, 13, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 13, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		set_hitbox_value(AT_UTILT, 14, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 14, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 14, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 14, HG_WINDOW_CREATION_FRAME, 5);
		set_hitbox_value(AT_UTILT, 14, HG_HITBOX_X, 4);
		set_hitbox_value(AT_UTILT, 14, HG_HITBOX_Y, -62);
		set_hitbox_value(AT_UTILT, 14, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 14, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 14, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 14, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 14, HG_ANGLE, 110);
		set_hitbox_value(AT_UTILT, 14, HG_GROUNDEDNESS, 2);
		set_hitbox_value(AT_UTILT, 14, HG_BASE_KNOCKBACK, 13.4);
		set_hitbox_value(AT_UTILT, 14, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 14, HG_BASE_HITPAUSE, 13.4);
		set_hitbox_value(AT_UTILT, 14, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 14, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_UTILT, 14, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

		set_hitbox_value(AT_UTILT, 15, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 15, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 15, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 15, HG_WINDOW_CREATION_FRAME, 5);
		set_hitbox_value(AT_UTILT, 15, HG_HITBOX_X, 4);
		set_hitbox_value(AT_UTILT, 15, HG_HITBOX_Y, -62);
		set_hitbox_value(AT_UTILT, 15, HG_WIDTH, 50);
		set_hitbox_value(AT_UTILT, 15, HG_HEIGHT, 45);
		set_hitbox_value(AT_UTILT, 15, HG_PRIORITY, 2);
		set_hitbox_value(AT_UTILT, 15, HG_GROUNDEDNESS, 1);
		set_hitbox_value(AT_UTILT, 15, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 15, HG_ANGLE, 84);
		set_hitbox_value(AT_UTILT, 15, HG_BASE_KNOCKBACK, 8.7);
		set_hitbox_value(AT_UTILT, 15, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 15, HG_BASE_HITPAUSE, 8.7);
		set_hitbox_value(AT_UTILT, 15, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 15, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

		set_hitbox_value(AT_UTILT, 16, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_UTILT, 16, HG_WINDOW, 2);
		set_hitbox_value(AT_UTILT, 16, HG_LIFETIME, 2);
		set_hitbox_value(AT_UTILT, 16, HG_WINDOW_CREATION_FRAME, 5);
		set_hitbox_value(AT_UTILT, 16, HG_HITBOX_X, 4);
		set_hitbox_value(AT_UTILT, 16, HG_HITBOX_Y, -62);
		set_hitbox_value(AT_UTILT, 16, HG_WIDTH, 35);
		set_hitbox_value(AT_UTILT, 16, HG_HEIGHT, 30);
		set_hitbox_value(AT_UTILT, 16, HG_PRIORITY, 3);
		set_hitbox_value(AT_UTILT, 16, HG_DAMAGE, 9);
		set_hitbox_value(AT_UTILT, 16, HG_ANGLE, 80);
		set_hitbox_value(AT_UTILT, 16, HG_BASE_KNOCKBACK, 8.8);
		set_hitbox_value(AT_UTILT, 16, HG_KNOCKBACK_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 16, HG_BASE_HITPAUSE, 8.8);
		set_hitbox_value(AT_UTILT, 16, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_UTILT, 16, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

		// taunt
		set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 0);
		
		sound_play(sound_get("falco_shine"));
		fox_activated = true;
		easter_egg_set = true;
	}
}

// Rune Support
if (runesUpdated) {
	// Attribute runes
	if (runeA) {
		set_num_hitboxes(AT_DAIR, 2);
		set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 20);
		set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 20);
	} else if (abyssEnabled) {
		set_num_hitboxes(AT_DAIR, 4);
		reset_hitbox_value(AT_DAIR, 1, HG_LIFETIME);
		reset_hitbox_value(AT_DAIR, 2, HG_LIFETIME);
	}
	if (runeB && !runeC && !runeL) {
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 0); 
		set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 0); 
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 0); 
		set_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH, 0); 
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 0);
		set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 37);
		set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, 0);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
	} else if (abyssEnabled) {
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK); 
		reset_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH); 
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK); 
		reset_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH); 
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER);
	}
	if (runeC && !runeB) {
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 3);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
		set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5); 
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 3);
		set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 188);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 14);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
		set_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, 0);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
	} else if (abyssEnabled) {
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK); 
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK); 
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER);
	}
	if (runeE) {
		set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
		set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 6);
		set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
		set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 6);
		set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 4);
		set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 1);
		set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 6);
		set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 14);
	} else if (abyssEnabled) {
		reset_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER);
		reset_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_DAIR, 1, HG_LIFETIME);
		reset_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP);
		reset_hitbox_value(AT_DAIR, 2, HG_LIFETIME);
		reset_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME);
		reset_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER);
		reset_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_DAIR, 3, HG_LIFETIME);
		reset_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP);
		reset_hitbox_value(AT_DAIR, 4, HG_LIFETIME);
		reset_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME);
	}
	if (runeF) {
		set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 30);
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 18);

		set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
		set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 9);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 3);
		set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.25);
		set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 3);
		set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 64);
		set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 64);
		set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 8);
		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 65);
		set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 9);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 3);
		set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 4);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.25);
		set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 3);
		set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
		
		set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 5);
		set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);
		
		set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 7);
		set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 3);
		
		set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 9);
		set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 4);
		
		set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 11);
		set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 5);
		
		set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 13);
		set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 6);
		
		set_hitbox_value(AT_USPECIAL, 8, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 15);
		set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 7);
		
		set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 9, HG_WINDOW_CREATION_FRAME, 17);
		set_hitbox_value(AT_USPECIAL, 9, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 9, HG_WIDTH, 94);
		set_hitbox_value(AT_USPECIAL, 9, HG_HEIGHT, 94);
		set_hitbox_value(AT_USPECIAL, 9, HG_SHAPE, 0);
		set_hitbox_value(AT_USPECIAL, 9, HG_PRIORITY, 8);
		set_hitbox_value(AT_USPECIAL, 9, HG_DAMAGE, 3);
		set_hitbox_value(AT_USPECIAL, 9, HG_ANGLE, 361);
		set_hitbox_value(AT_USPECIAL, 9, HG_BASE_KNOCKBACK, 6);
		set_hitbox_value(AT_USPECIAL, 9, HG_KNOCKBACK_SCALING, 0.8);
		set_hitbox_value(AT_USPECIAL, 9, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_USPECIAL, 9, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_USPECIAL, 9, HG_VISUAL_EFFECT, 148);
		set_hitbox_value(AT_USPECIAL, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
		set_hitbox_value(AT_USPECIAL, 9, HG_HITBOX_GROUP, 8);
	} else if (abyssEnabled) {
		reset_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
		reset_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH);
		
		reset_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME);
		reset_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME);
		reset_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE);
		reset_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER);
		reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT);
		reset_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX);
	}
	if (runeF && !runeK) {
		set_num_hitboxes(AT_USPECIAL, 9);
	} else if (!runeF && !runeK) {
		set_num_hitboxes(AT_USPECIAL, 1);
	}
	if (runeG) {
		set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 12);
		set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
		set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 2);
		set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 5);
		set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 1);
		set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 6);
		set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 5);
		set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX_FRAME, 1);
	} else if (abyssEnabled) {
		reset_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH);
		reset_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME);
		reset_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME);
		reset_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME);
		reset_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME);
		reset_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME);
		reset_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME);
	}
	if (runeH) {
		air_max_speed = 5;
	} else if (abyssEnabled) {
		air_max_speed = 4;
	}
	if (runeJ) {
		set_num_hitboxes(AT_DSPECIAL, 12);
		
		set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 45);
		set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -47);
		set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 31);
		set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -39);
		set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 45);
		set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -47);
		set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 45);
		set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -47);
		
		set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 1);
		set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, -3);
		set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_Y, -36);
		set_hitbox_value(AT_DSPECIAL, 9, HG_WIDTH, 70);
		set_hitbox_value(AT_DSPECIAL, 9, HG_HEIGHT, 70);
		set_hitbox_value(AT_DSPECIAL, 9, HG_PRIORITY, 5);
		set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, 3);
		set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE, 0);
		set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_DSPECIAL, 9, HG_KNOCKBACK_SCALING, 0.25);
		set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_HITPAUSE, 4);
		set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT, 20);
		
		set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW, 5);
		if (runeG) {
			set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 3);
			set_hitbox_value(AT_DSPECIAL, 10, HG_LIFETIME, 2);
		} else {
			set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 5);
			set_hitbox_value(AT_DSPECIAL, 10, HG_LIFETIME, 3);
		}
		set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_X, 80);
		set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_Y, -31);
		set_hitbox_value(AT_DSPECIAL, 10, HG_WIDTH, 80);
		set_hitbox_value(AT_DSPECIAL, 10, HG_HEIGHT, 62);
		set_hitbox_value(AT_DSPECIAL, 10, HG_PRIORITY, 5);
		set_hitbox_value(AT_DSPECIAL, 10, HG_DAMAGE, 2);
		set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_DSPECIAL, 10, HG_KNOCKBACK_SCALING, 0.25);
		set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_HITPAUSE, 4);
		set_hitbox_value(AT_DSPECIAL, 10, HG_HITSTUN_MULTIPLIER, 0.8);
		set_hitbox_value(AT_DSPECIAL, 10, HG_ANGLE, 0);
		set_hitbox_value(AT_DSPECIAL, 10, HG_ANGLE_FLIPPER, 7);
		set_hitbox_value(AT_DSPECIAL, 10, HG_IGNORES_PROJECTILES, 1);
		set_hitbox_value(AT_DSPECIAL, 10, HG_VISUAL_EFFECT, 20);
		
		set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSPECIAL, 11, HG_WINDOW, 5);
		if (runeG) {
			set_hitbox_value(AT_DSPECIAL, 11, HG_WINDOW_CREATION_FRAME, 5);
			set_hitbox_value(AT_DSPECIAL, 11, HG_LIFETIME, 1);
		} else {
			set_hitbox_value(AT_DSPECIAL, 11, HG_WINDOW_CREATION_FRAME, 8);
			set_hitbox_value(AT_DSPECIAL, 11, HG_LIFETIME, 2);
		}
		set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_X, 132);
		set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_Y, -36);
		set_hitbox_value(AT_DSPECIAL, 11, HG_WIDTH, 70);
		set_hitbox_value(AT_DSPECIAL, 11, HG_HEIGHT, 70);
		set_hitbox_value(AT_DSPECIAL, 11, HG_PRIORITY, 5);
		set_hitbox_value(AT_DSPECIAL, 11, HG_DAMAGE, 2);
		set_hitbox_value(AT_DSPECIAL, 11, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_DSPECIAL, 11, HG_KNOCKBACK_SCALING, 0.25);
		set_hitbox_value(AT_DSPECIAL, 11, HG_BASE_HITPAUSE, 4);
		set_hitbox_value(AT_DSPECIAL, 11, HG_HITSTUN_MULTIPLIER, 0.8);
		set_hitbox_value(AT_DSPECIAL, 11, HG_ANGLE, 0);
		set_hitbox_value(AT_DSPECIAL, 11, HG_ANGLE_FLIPPER, 7);
		set_hitbox_value(AT_DSPECIAL, 11, HG_IGNORES_PROJECTILES, 1);
		set_hitbox_value(AT_DSPECIAL, 11, HG_VISUAL_EFFECT, 20);
		
		set_hitbox_value(AT_DSPECIAL, 12, HG_PARENT_HITBOX, 11);
		set_hitbox_value(AT_DSPECIAL, 12, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_DSPECIAL, 12, HG_WINDOW, 5);
		if (runeG) {
			set_hitbox_value(AT_DSPECIAL, 12, HG_WINDOW_CREATION_FRAME, 6);
			set_hitbox_value(AT_DSPECIAL, 12, HG_LIFETIME, 5);
		} else {
			set_hitbox_value(AT_DSPECIAL, 12, HG_WINDOW_CREATION_FRAME, 10);
			set_hitbox_value(AT_DSPECIAL, 12, HG_LIFETIME, 8);
		}
		set_hitbox_value(AT_DSPECIAL, 12, HG_HITBOX_X, 154);
		set_hitbox_value(AT_DSPECIAL, 12, HG_HITBOX_Y, -36);
	} else if (abyssEnabled) {
		set_num_hitboxes(AT_DSPECIAL, 4);
	}
	if (runeK && !runeF) {
	
		set_num_hitboxes(AT_USPECIAL, 8);
		
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 21);
		set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 65);
		set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 65);
		set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 3);
		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 70);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 3);
		set_hitbox_value(AT_USPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 3);
		set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
		
		set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 23);
		set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);
		
		set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 25);
		set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 3);
		
		set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 27);
		set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 4);
		
		set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 29);
		set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 5);
		
		set_hitbox_value(AT_USPECIAL, 7, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 31);
		set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 6);
		
		set_hitbox_value(AT_USPECIAL, 8, HG_PARENT_HITBOX, 2);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW_CREATION_FRAME, 33);
		set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, 7);
	} else if (!runeK && !runeF) {
		set_num_hitboxes(AT_USPECIAL, 1);
	}
	if (runeK && runeF) {
		set_num_hitboxes(AT_USPECIAL, 17);
		
		set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 10, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 10, HG_WINDOW_CREATION_FRAME, 15);
		set_hitbox_value(AT_USPECIAL, 10, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 10, HG_WIDTH, 65);
		set_hitbox_value(AT_USPECIAL, 10, HG_HEIGHT, 65);
		set_hitbox_value(AT_USPECIAL, 10, HG_PRIORITY, 3);
		set_hitbox_value(AT_USPECIAL, 10, HG_DAMAGE, 1);
		set_hitbox_value(AT_USPECIAL, 10, HG_ANGLE, 70);
		set_hitbox_value(AT_USPECIAL, 10, HG_BASE_KNOCKBACK, 1);
		set_hitbox_value(AT_USPECIAL, 10, HG_BASE_HITPAUSE, 3);
		set_hitbox_value(AT_USPECIAL, 10, HG_IGNORES_PROJECTILES, 1);
		set_hitbox_value(AT_USPECIAL, 10, HG_VISUAL_EFFECT, 3);
		set_hitbox_value(AT_USPECIAL, 10, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
		set_hitbox_value(AT_USPECIAL, 10, HG_HITBOX_GROUP, -1);
		
		set_hitbox_value(AT_USPECIAL, 11, HG_PARENT_HITBOX, 10);
		set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 11, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 11, HG_WINDOW_CREATION_FRAME, 17);
		set_hitbox_value(AT_USPECIAL, 11, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 11, HG_HITBOX_GROUP, -1);
		
		set_hitbox_value(AT_USPECIAL, 12, HG_PARENT_HITBOX, 10);
		set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 12, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 12, HG_WINDOW_CREATION_FRAME, 19);
		set_hitbox_value(AT_USPECIAL, 12, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_Y, -32);
		set_hitbox_value(AT_USPECIAL, 12, HG_HITBOX_GROUP, -1);
		
		set_hitbox_value(AT_USPECIAL, 13, HG_PARENT_HITBOX, 10);
		set_hitbox_value(AT_USPECIAL, 13, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 13, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 13, HG_WINDOW_CREATION_FRAME, 21);
		set_hitbox_value(AT_USPECIAL, 13, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 13, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 13, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 13, HG_HITBOX_GROUP, -1);
		
		set_hitbox_value(AT_USPECIAL, 14, HG_PARENT_HITBOX, 10);
		set_hitbox_value(AT_USPECIAL, 14, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 14, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 14, HG_WINDOW_CREATION_FRAME, 23);
		set_hitbox_value(AT_USPECIAL, 14, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 14, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 14, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 14, HG_HITBOX_GROUP, -1);
		
		set_hitbox_value(AT_USPECIAL, 15, HG_PARENT_HITBOX, 10);
		set_hitbox_value(AT_USPECIAL, 15, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 15, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 15, HG_WINDOW_CREATION_FRAME, 25);
		set_hitbox_value(AT_USPECIAL, 15, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 15, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 15, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 15, HG_HITBOX_GROUP, -1);
		
		set_hitbox_value(AT_USPECIAL, 16, HG_PARENT_HITBOX, 10);
		set_hitbox_value(AT_USPECIAL, 16, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 16, HG_WINDOW, 1);
		set_hitbox_value(AT_USPECIAL, 16, HG_WINDOW_CREATION_FRAME, 27);
		set_hitbox_value(AT_USPECIAL, 16, HG_LIFETIME, 1);
		set_hitbox_value(AT_USPECIAL, 16, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 16, HG_HITBOX_Y, -27);
		set_hitbox_value(AT_USPECIAL, 16, HG_HITBOX_GROUP, -1);
	}
	if ((runeL && !runeC) || (runeB && runeL && runeC)) {
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.25);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
		set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 84);
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
		set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9); 
		set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.25);
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 4);
		set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 84);
		set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 99);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
		set_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH, 0);
		set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, 0);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("shine_proj"));
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 18);
		set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, 0);
	} else if (abyssEnabled) {
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK); 
		reset_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED);
		reset_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK);
	}
	if (runeM) {
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);
	} else if (abyssEnabled) {
		reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH);
		reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME);
	}
	if (runeO) {
		max_djumps = 4;
	} else if (abyssEnabled) {
		max_djumps = 1;
	}
	runesUpdated = false;
}

// BtT

if get_btt_data { //Get data for Break The Targets
	btt = true;
	course_name = "Falco Course";
	//Set the spawn properties
	respawn_point = [[59.5, 80],[0, 0], 1];
	//Set the collision of the solid sprites to precise
	sprite_change_collision_mask("btt_solid", true, 1, 0, 0, 0, 0, 0 );  
	sprite_change_collision_mask("btt_hazard1", true, 1, 0, 0, 0, 0, 0 );
	room_add(1, [
	    [ // Each Cell
	        [0,0], // Cell Coordinates
	        [
	        	// Targets
	        	[10, 21.5, 54.375, 0, -5, [0, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
	        	[10, 32.5, 95.125, 0, -5, [1, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
	        	[10, 45, 88.5, 0, -5, [2, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        [10, 58.625, 63.875, 0, -5, [3, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        [10, 83.375, 101.125, 0, -5, [4, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        [10, 62, 79.125, 0, 1, [5, 0, 28.8, [[62, 79.125], [68.25, 85.375], [68.25, 103.125], [62, 109.375], [55.25, 109.375], [51.75, 105.875], [51.75, 85.75], [55.125, 79.125]], sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        [10, 76.5, 102.5, 0, 1, [6, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        [10, 44.125, 71.5, 0, 1, [7, 0, 0, 0, sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        [10, 73.75, 58.5, 0, -5, [8, 0, 100, [[73.75, 58.5], [28.25, 108], [73.75, 81.875], [49, 88.5], [58.625, 110.75], [88.875, 79.125]], sprite_get("btt_target"), sprite_get("btt_target_destroyed"), 0, 0], [0]],
		        // Solid Ground
		    	[1, 2, 2, 2, 0, [sprite_get("btt_solid"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	// Hazards
		    	[1, 72, 68.125, 2, 0, [sprite_get("btt_hazard1"), 100, 0, 0, 0, 0, 0, 0], [0]],
		    	[1, 43, 82.75, 2, 0, [sprite_get("btt_hazard2"), 100, 0, 0, 0, 0, 0, 0], [0]],
		    	[1, 43, 93.25, 2, 0, [sprite_get("btt_hazard2"), 100, 0, 0, 0, 0, 0, 0], [0]],
		    	// Plats
		    	[1, 82.875, 93.625, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	[1, 82.875, 109.75, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	// Foreground
				[1, 77.375, 96.125, 0, -10, [sprite_get("btt_fg"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	// Background
		    	[1, 52, 25.375, 0, 10, [sprite_get("btt_bg"), 0, 0, 1, 0, 0, 0, 0], [0]]
	            ]
	        ],
	    //Blastzones
	    [ //Each Cell
	        [0,1], //Cell Coordinates
	        [
	            [4, 0, 48, 0, 0, [4, 0, 0, 0, 0, 163*32, 20, 0], [0,0]]
	            ]
	        ],
	    [
	        [1,1],
	        [
	        	[4, 0, 48, 0, 0, [4, 0, 0, 0, 0, 163*32, 20, 0], [0,0]]
	            ]
	        ],
	    [ //Each Cell
	        [-1,1], //Cell Coordinates
	        [
	        	[4, 0, 48, 0, 0, [4, 0, 0, 0, 0, 163*32, 20, 0], [0,0]]
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
		ud_targ_timer = 0;
		ud_targ_movement = 1;
		targ_timer = 0;
	}
	
	// All Targets
	var targets = sprite_get("btt_target")
	with (obj_stage_article) if (num == 10 && state == 0) {
		sprite_index = targets;
	}
	
	// Up/down target
	ud_targ_timer++;
	if (ud_targ_timer > 50) {
		ud_targ_movement *= -1;
		ud_targ_timer = 0;
	}
	var ud_targ_timer_article = ud_targ_timer;
	var ud_targ_movement_article = ud_targ_movement;
	with (obj_stage_article) if (num == 10 && targ_id == 6) {
		vsp = round(ease_sineIn(8 * ud_targ_movement_article, -8 * ud_targ_movement_article, ud_targ_timer_article, 50));
	}
	
	targ_timer++;
	if (targ_timer == targ_win_length[targ_window]) {
		targ_timer = 0;
		if (targ_window < array_length_1d(targ_win_length) - 1) {
			targ_window++;
		} else {
			targ_window = 0;
		}
	}
	var target_timer = targ_timer;
	var target_window = targ_window;
	var win_len = targ_win_length[targ_window];
	with (obj_stage_article) if (num == 10 && targ_id == 7) {
		switch (target_window) {
			case 0:
				vsp = 0;
				hsp = 1.5;
				break;
			case 1:
				hsp = 0;
				vsp = ease_linear(-8, 8, target_timer, win_len);
				break;
			case 2:
				hsp = 0;
				vsp = ease_linear(8, -8, target_timer, win_len);
				break;
			case 3:
				vsp = 0;
				hsp = -6;
				break;
		}
	}
	
	// Target that teleports around
	with (obj_stage_article) if (num == 10 && targ_id == 8) {
		if (other.targ_frozen_timer > 0) {
			other.targ_frozen_timer--;
		}
		
		if (other.targ_prev_value != path_index_) {
			// checks if the stored value isnt the current value
			if (other.targ_frozen_timer == 0) {
				other.targ_frozen_timer = 100;
				other.targ_frozen = !other.targ_frozen;
			}
		} else {
			other.targ_frozen_timer = 0;
		}
		
		if (other.targ_frozen) {
			move_vel = 0;
		} else {
			// updates the stored value to make it not reset the check again
			other.targ_prev_value = path_index_;
			move_vel = 100;
		}
	}
	
	var hazard1 = sprite_get("btt_hazard1");
	with (obj_stage_article_solid) if (hazard1 == sprite_index) {
		with (other) {
			create_hitbox(AT_EXTRA_1, 2, other.x - 4, other.y - 4);
		}
	}
	
	var hazard1_hitbox = sprite_get("btt_hazard1_hitbox");
	sprite_change_collision_mask("btt_hazard1_hitbox", true, 1, 0, 0, 0, 0, 0 );
	with (pHitBox) if (player_id == other && attack == AT_EXTRA_1 && hbox_num == 2) {
		mask_index = hazard1_hitbox;
		image_xscale = 2;
		image_yscale = 2;
	}
	
	var hazard2 = sprite_get("btt_hazard2");
	with (obj_stage_article_solid) if (hazard2 == sprite_index) {
		with (other) {
			create_hitbox(AT_EXTRA_1, 3, other.x - 4, other.y - 4);
		}
	}
	
	var hazard2_hitbox = sprite_get("btt_hazard2_hitbox");
	sprite_change_collision_mask("btt_hazard2_hitbox", true, 1, 0, 0, 0, 0, 0 );
	with (pHitBox) if (player_id == other && attack == AT_EXTRA_1 && hbox_num == 3) {
		mask_index = hazard2_hitbox;
		image_xscale = 2;
		image_yscale = 2;
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