if state == PS_SPAWN && spawn_timer == 1 {
	if taunt_down {
		alt_outline_color = true;
	}
}

if (!created_spear_article) {
	instance_create(0, 0, "obj_article2");
	created_spear_article = true;
}

//Checking if you are in pod float state.
attacking = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND);

if (cur_attack != attack) {
	prev_attack = cur_attack;
	cur_attack = attack;
}

// USE ATTACK_UPDATE WHERE POSSIBLE. This is just if attack_update is too late in the load order
if (attacking) {
	switch (attack) {
		case AT_FSPECIAL_2:
			if (!rocket_started && window == 2) {
				rocket_particles = spawn_hit_fx(x + hsp, y + vsp, rocket_fx);
				rocket_started = true;
			}
			if (rocket_started) {
				if (instance_exists(rocket_particles)) {
		            rocket_particles.depth = depth - 1;
		            rocket_particles.x = x;
		            rocket_particles.y = y;
		            rocket_particles.spr_dir = spr_dir;
				}
			}
			// Rocket SFX code
			if (!free && window == 3) {
				var anim_frame = get_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH)/get_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES);
		    	if (window_timer > anim_frame && !rocket_land_sfx_played) {
		    		var dust = spawn_dust_fx(x + hsp, y + vsp, asset_get("dust_land_spr"), 24);
					if (instance_exists(dust)) {
						dust.spr_dir *= 0.5;
						dust.image_yscale = 0.5;
					}
					sound_play(landing_lag_sound);
		    		rocket_land_sfx_played = true;
		    	}
			}
			// Pod location
			with (pod) {
				spr_dir = other.spr_dir;
	            if window == 1 {
	                var lerp_spd = 0.3;
	                x = floor(lerp(x,other.x+50 * other.spr_dir + other.hsp,lerp_spd));
	                y = floor(lerp(y,other.y-40,lerp_spd));
	            } else if window == 2 {
	                x = other.x+36 * other.spr_dir + other.hsp;
	                y = other.y-40;
	            }
			}
			break;
		case AT_FSPECIAL:
			// FSPECIAL SFX code
			if (!free) {
				if (window == 1 && window_timer == 0 && !fspecial_launch_dust_played) {
					//var dust = spawn_dust_fx(x + hsp, y + vsp, asset_get("dust_dash_spr"), 22);
			    	//dust.spr_dir *= 0.5;
			    	//dust.image_yscale = 0.5;
			    	// put fspecial launch dust here
				} else if (window == 3) {
					var anim_frame = get_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH)/get_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES);
			    	if (window_timer > anim_frame && !fspecial_land_sfx_played) {
			    		var dust = spawn_dust_fx(x + hsp, y + vsp, asset_get("dust_land_spr"), 24);
						if (instance_exists(dust)) {
							dust.spr_dir *= 0.5;
							dust.image_yscale = 0.5;
						}
						sound_play(landing_lag_sound);
			    		fspecial_land_sfx_played = true;
			    	}
				}
			}
			max_jump_hsp = 8;
			break;
		case AT_EXTRA_1:
			with pod {
				var lerp_spd = state_timer > 4 ? 1 : 0.3;
				if state_timer <= 4 {
	        		x = floor(lerp(x, other.x+other.hsp, lerp_spd));
	        		y = floor(lerp(y, other.y-78, lerp_spd));
				} else {
					x = floor(other.x + other.hsp);
	        		y = floor(other.y - 78);
				}
			}
			break;
		case AT_DAIR:
			if (window == 4 && window_timer == 0 && !hitpause) {
				// Makes the sound play so it doesnt keep cancelling itself
				sound_play(asset_get("sfx_swipe_medium2"));
			}
			break;
		case AT_DATTACK:
            run_fade(3, 2, dattack_fade, katana, false)
            break;
        case AT_DSTRONG:
        	run_fade(5, 4, dstrong_fade, greatsword, true)
            break;
        case AT_FSTRONG:
            run_fade(5, 3, fstrong_fade, greatsword, true)
            break;
        case AT_UAIR:
            run_fade(3, 3, uair_fade, greatsword, true)
            break;
        case AT_USPECIAL:
        	var whiffed = has_hit ? 1 : 1.5
	    	var endlag = get_window_value(attack, 5, AG_WINDOW_LENGTH) * whiffed;
            run_fade(5, endlag, uspecial_fade, greatsword, true)
            break;
        case AT_NSPECIAL:
        	if (window == 1 && window_timer < 6 && taunt_down) {
				attack = AT_TAUNT_2;
				window = 1;
				window_timer = 0;
				if (pod.window == 1) {
					set_pod_state(PD_RETURN);
				}
				sd_text_image_index = 0;
				sd_boom_image_index = 0;
				suicide_loops = 0;
				suicide_timer = 119;
			}
			break;
		case AT_TAUNT:
			if (window == 1 && window_timer < 6 && special_down) {
				attack = AT_TAUNT_2;
				window = 1;
				window_timer = 0;
				set_pod_state(PD_RETURN);
				sd_text_image_index = 0;
				sd_boom_image_index = 0;
				suicide_loops = 0;
				suicide_timer = 119;
			}
			break;
	}
} else {
	fade_created = false;
	katana.vis = 1;
	greatsword.vis = 1;
	if (char_height != default_char_height) {
		char_height = default_char_height;
	}
}

// Increments how long 2B has either been free or not free
if (!free) {
	not_free_time++;
	free_time = 0;
} else {
	free_time++;
	not_free_time = 0;
}

// Resource restoration
if (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN) {
    pod_glided = false;
    move_cooldown[AT_FSPECIAL] = 0;
    uspecial_cancelled = false;
    dspecial_stalled = false;
}

// FSPECIAL jump cancel has lots of speed
if (state == PS_FIRST_JUMP) {
	if (prev_state == PS_ATTACK_GROUND && attack == AT_FSPECIAL) {
		max_jump_hsp = 8;
	} else {
		max_jump_hsp = orig_max_jump_hsp;
	}
}

if !free real_djumps = 0;
djumps = real_djumps;
if (taunt_down && state_cat == SC_AIR_NEUTRAL) {
	// Deletes double jumps until it has been held for longer than a few frames, where it then assumes you want to DAIR
	djumps = max_djumps;
}
if state == PS_DOUBLE_JUMP && state_timer == 1 {
	real_djumps++;
}

if (!free && attack == AT_FAIR && prev_state == PS_ATTACK_AIR && !was_parried) {
	if (window < 9) {
		katana.vis = 0; // Make sure Katana is still invisible
	}
	
	// Reset to JAB on landing
	attack = AT_JAB;
	set_state(PS_ATTACK_GROUND);
	window = fair_win;
	window_timer = window_timer;
}

// Applies the sword animations for the shortsword and the greatsword
if (swords_animating) {
	sword_anim(katana);
	sword_anim(greatsword);
}

if (attack == AT_FSPECIAL_2 && state == PS_DOUBLE_JUMP && prev_state == PS_ATTACK_AIR) { 
	// Clamps your speed to non-ridiculous levels
	hsp = 8 * spr_dir;
}

if instance_exists(pod) {
	
	// Pod contact detection
    with (pod) {
        if (point_distance(x,y,other.x,other.y) < 50 && !attached) {
            other.touching_deployed_pod = true;
        } else other.touching_deployed_pod = false;
    } 
    if (!pod.attached) {
		//Pod NSpecial
	    move_cooldown[AT_NSPECIAL] = 2;
	    if (is_special_pressed(DIR_NONE) && (!attacking || attack != AT_FSPECIAL || window > 1) && state_cat != SC_HITSTUN && !was_parried) {
	        set_pod_attack(PA_NSPECIAL);
	    }
	    if (((attacking && attack != AT_DSPECIAL && attack != AT_FSPECIAL) || ((state_cat == SC_GROUND_COMMITTED || state_cat == SC_AIR_COMMITTED) && !attacking)) && pod.state != PD_RETURN && is_special_pressed(DIR_DOWN) && state_cat != SC_HITSTUN && !was_parried) {
	    	set_pod_state(PD_RETURN);
	    }
	    //Contact Glide Code
	    if (jump_down && !jump_pressed)  && (state_cat == SC_AIR_NEUTRAL || state == PS_PRATFALL) && vsp > 2 && touching_deployed_pod && pod.can_glide  {
	    	djumps = real_djumps;
	    	initiate_glide((state == PS_PRATFALL), false);
	    }
	} else {
		//Glide Code
	    if (jump_down && !jump_pressed) && (state_cat == SC_AIR_NEUTRAL || state == PS_PRATFALL) && vsp > 2 && pod.can_glide && !pod_glided {
	    	djumps = real_djumps;
	    	initiate_glide((state == PS_PRATFALL), false);
	    }
	    if attack == AT_EXTRA_1 && state == PS_LANDING_LAG && pod_glided_from_pratfall {
	        set_state(PS_PRATLAND);
	    }
	    if (state == PS_PRATFALL && up_pressed) {
	    	clear_button_buffer(PC_DOWN_HARD_PRESSED);
			initiate_glide(true, true);
		}
		if (pod.move_cooldown[PA_NSPECIAL_AT] > 0) {
			move_cooldown[AT_NSPECIAL] = 2;
		} else {
			move_cooldown[AT_NSPECIAL] = 0;
		}
	}
	
} else pod = instance_create(x,y,"obj_article1");

// Spear hit FX logic
if ((attack == AT_USTRONG && attacking) || state_cat == SC_HITSTUN || was_parried) {
	for (i = 0; i < array_length(spears); i++) {
		if (instance_exists(spears[i])) {
			with (spears[i]) {
				if (other.hitpause) {
					pause_timer = 0;
					pause = other.hitstop_full/2;
				}
				if (other.spears_hit[other.i][0] != 0 || other.state_cat == SC_HITSTUN || other.was_parried) {
					spr_dir = 0;
					if ((other.was_parried || other.state_cat == SC_HITSTUN) && pause_timer >= 18) {
						other.spears_destroyed[other.i] = [x, y, other.spear_fade, other.pod.spr_dir];	
					}
				}
			}
		}
	}
}

if (state_cat == SC_HITSTUN || was_parried == true) {
	if (ds_list_size(spear_ids) != 0) {
		for (i = 0; i < ds_list_size(spear_ids); i++) {
			with (ds_list_find_value(spear_ids, i)) {
				hitstun = 30;
				set_state(PS_HITSTUN);
			}
		}
    }
    ds_list_clear(spear_grabbed);
    ds_list_clear(spear_ids);
    if (spears_hit != [[0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0]]) {
	    for (i = 0; i < 4; i++) {
	    	if (spears_hit[@i][@0] > 0) {
	    		spears_destroyed[@i] = [spears_hit[@i][@1], spears_hit[@i][@2], spear_fade, spears_hit[@i][@3]];
	    	}
	    }
    }
    spears_hit = [[0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0], [0, noone, noone, 0]];
    spears = [noone, noone, noone, noone];
}

// Spear grab logic
if (ds_list_size(spear_grabbed) != 0) {
	for (i = 0; i < ds_list_size(spear_grabbed); i++) {
		var grabbed = ds_list_find_value(spear_grabbed, i);
		with (grabbed.player_id) {
			if (grabbed.timer > 0) {
				x = grabbed.x;
				old_hsp = 0;
				hsp = 0;
				y = grabbed.y;
				old_vsp = 0;
				vsp = 0;
				grabbed.timer--;
			} else {
				for (j = 0; j < 4; j++) {
					if (grabbed.spears[@j]) {
						other.spears_destroyed[@j] = [other.spears_hit[@j][@1], other.spears_hit[@j][@2], other.spear_fade, other.spears_hit[@j][@3]];
						other.spears_hit[@j][@0]--;
					}
				}
				with (other) {
					ds_list_delete(spear_ids, ds_list_find_index(spear_ids, grabbed.player_id));
					ds_list_delete(spear_grabbed, ds_list_find_index(spear_grabbed, grabbed));
				}
			}
		}
	}
}

// Compatibilities

// Kirby
if (enemykirby != noone) {
	var volt_win_frames = [7, 1, 8];
	var volt_win_total_frames = [0, 7, 8];
	
	with (enemykirby) {
		other.kirby_pos = [x, y];
		other.kirby_hitpause = hitpause;
		
		var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
		
		var kirby = self;
		var cur_attacking = state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND
		
		if (cur_attacking && attack == AT_EXTRA_3) {
			// Master kirby update statement
			if (window == 1 && window_timer == 0) {
				hit_with_volt = false;
			}
			depth = other.depth+1;
			other.kirby_attacking = true;
			other.kirby_window = window;
			other.kirby_window_timer = window_timer;
			other.kirby_volt_image_index = (volt_win_frames[window - 1]/((window_length) + 1) * window_timer) + volt_win_total_frames[window - 1];
		} else {
			other.kirby_attacking = false;
			other.kirby_volt_image_index = 0;
		}
		
		if (cur_attacking && has_hit && !hit_with_volt && attack == AT_EXTRA_3) {
			var x_value = hit_player_obj.x;
			var y_value = hit_player_obj.y - (hit_player_obj.sprite_height/4);
			with (hit_fx_obj) if (hit_fx == 303 && player_id == kirby) {
				draw_angle = 0;
				x = x_value;
				y = y_value;
			}
			hit_with_volt = true;
		}
	}
}

if (swallowed != noone && swallowed) {
	swallowed = 0;
	var ability_spr = sprite_get("kirby2b");
	var ability_hurt_spr = sprite_get("kirby2b_hurt");
	var myicon = sprite_get("kirbyicon");
	
	with (enemykirby) {
		newicon = myicon;
		hit_with_volt = false;
		// Volt
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt_spr);
		
		// Startup
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 30);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip3"));
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 29);
		
		// Attack
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 5);
		
		// Endlag
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 28);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 6);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 6);
		
		// Verify
		set_window_value(AT_EXTRA_3, 8, AG_WINDOW_ANIM_FRAMES, 2828);
		
		set_num_hitboxes(AT_EXTRA_3, 1);
		
		// Volt
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 140);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 140);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 0.7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 14);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.7);
		set_hitbox_value(AT_EXTRA_3, 1, HG_EXTENDED_PARRY_STUN, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_absa_new_whip2"));
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 8);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_PARTICLE_NUM, 1);
		
	}
}

// Runes
if (abyssEnabled) {
	if runeB {
		move_cooldown[AT_NSPECIAL] = 2; //permanently disable nspecial.
		if is_special_pressed(DIR_NONE) && pod.attached {
			set_pod_attack(PA_NSPECIAL_AT);
		}
	}	
}

// Script ends here
pre_paused = false; // Assures the game is not paused, used in pre_draw
post_paused = false; // Assures the game is not paused, used in post_draw

#define set_pod_state(_state)
with (pod) {
    prev_state = state;
    state = _state;
    state_timer = 0;
}
#define set_pod_attack(_attack)
with (pod) {
    if can_attack && !move_cooldown[_attack] {
        prev_state = state;
        state = PD_ATTACK;
        state_timer = 0;
        attack = _attack;
        window = 1;
        window_timer = 0;
    }
}

#define sword_anim(sword)
	
	for (i = 0; i < 2; i++) {
		if (sword.time[@i] < sword.duration[@i]) {
			// Makes the x/y pos smooth forward and back
			sword.calc_pos[@i] = ease_sineInOut(sword.start[@i], sword.dest[@i], sword.time[@i], sword.duration[@i]);
			if (sword.anim) {
				sword.pos[@i] = ease_sineInOut(sword.start[@i], sword.dest[@i], sword.time[@i], sword.duration[@i]);
			}
			sword.time[@i]++;
		} else {
			// Resets the start position and goes backwards
			var temp_start = sword.start[@i];
			sword.start[@i] = sword.dest[@i];
			sword.dest[@i] = temp_start;
			sword.time[@i] = 0;
		}
	}
	if (sword.fr != 0) {
		sword.image += fr;
	}
#define initiate_glide(should_pratglide, instaglide)
///activates glide.
attack_end();
destroy_hitboxes();
pod_glided_from_pratfall = should_pratglide;
set_attack(AT_EXTRA_1);
state_timer = 0; //WHY DOESNT set_attack(attack) RESET THE STATE_TIMER;
//setting the glide to window 2 stops it from doing the 3 frame startup in which you're not
//actually gliding, which also means you won't get it back from quickly cancelling it.
if instaglide window = 2;
set_pod_state(PD_GLIDE);

#define run_fade(window_check, anim_frame, hit_fx, sword, whiffable)

    if (window == 1) {
        fade_created = false;
    }
	if (whiffable) {
	    var whiffed = has_hit ? 1 : 1.5
	    var endlag = get_window_value(attack, window_check, AG_WINDOW_LENGTH) * whiffed;
	} else {
		var endlag = get_window_value(attack, window_check, AG_WINDOW_LENGTH)
	}
    if (window == window_check && window_timer == round(endlag/anim_frame) && !fade_created) {
        fade_fx = spawn_hit_fx(x - sprite_get_xoffset(sprite_index) * spr_dir + hsp, y - sprite_get_yoffset(sprite_index) + vsp, hit_fx);
        fade_fx.depth = depth - 1;
        fade_created = true;
    }
    if (fade_created) {
    	if (!instance_exists(fade_fx)) {
    		sword.vis = 1;
    		fade_created = false;
    	}
    }