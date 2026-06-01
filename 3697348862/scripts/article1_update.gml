//article1_update

//Used for TI84 Graphing Calculator Operator Articles

Pocketable = false;

/*STATE LIST

- 0: Spawning and Moving
- 1: Minor Shockwave
- 2: Idle
- 3: Launch Startup
- 4: Launch 1 (Addition, Subtraction)
- 5: Launch 2 (Addition, Subtraction)
- 6: Launch Both (Multiplication, Divison)
- 7: leading to DEATH!!!


- 10: dead

*/

hud_color = get_player_hud_color(player);

if (grab_num_internal_delay != 0){
	grab_num_internal_delay--;
}

if ("is_a_ti84_operator" not in self){
	is_a_ti84_operator = true;
}


if (state == 0){

	// adjust horiz speed
	var speedVal = ceil(1.3 + (state_timer / 5));
	var maximumSpeed = clamp(speedVal, -16, 16);
	hsp = (1.5 + speedVal) * spr_dir;
	
	if ((spr_dir == 1 && player_id.left_down) || (spr_dir == -1 && player_id.right_down)){
		var slow_trav_spd = (1.2 + (speedVal*0.65)) * spr_dir;
		hsp = clamp(hsp, -slow_trav_spd, slow_trav_spd);
	}
	
	// adjust vert speed
	if (player_id.up_down){
		vsp -= 0.5;
	}
	if (player_id.down_down){
		vsp += 0.5;
	}
	vsp = clamp(vsp, -10, 10);
	
	if (state_timer mod 3 == 0){
		var travel_op_vfx = spawn_hit_fx(x, y, player_id.vfx_operator_travel);
		travel_op_vfx.depth += 1;
		travel_op_vfx.draw_angle = random_func( 0, 360, true );
	}
	if (state_timer mod 12 == 0){
		spawn_hit_fx(x, y, 305).depth += 1;
	}
	
	// if no longer guiding it, then release it
	if (player_id.window != 2 || spawned_by_down_b){
	
		//
		spawn_hit_fx(x, y, 305);
		if (curr_operator == 1){
			var spawned_operator_vfx = spawn_hit_fx(x, y, player_id.vfx_operator_spawn_add);
		} else if (curr_operator == 2){
			var spawned_operator_vfx = spawn_hit_fx(x, y, player_id.vfx_operator_spawn_sub);
		} else if (curr_operator == 3){
			var spawned_operator_vfx = spawn_hit_fx(x, y, player_id.vfx_operator_spawn_mlt);
		} else if (curr_operator == 4){
			var spawned_operator_vfx = spawn_hit_fx(x, y, player_id.vfx_operator_spawn_dvd);
		}
		spawned_operator_vfx.depth -= 1;
		
		// create hitbox
		create_hitbox(AT_FSPECIAL, 1+((spawned_by_down_b)?1:0), x, y);
		
		// sfx
		sound_play(asset_get("sfx_zap"), false, noone, 0.5, 1);
		sound_play(asset_get("sfx_absa_uair"), false, noone, 0.8, 1.2);
		sound_play(asset_get("sfx_ell_arc_small_missile_ground"), false, noone, 0.4, 1.5);
		sound_play(asset_get("sfx_may_arc_plant"), false, noone, 1, 1.5);
		sound_play(player_id.sfx_ssbu_megaman_fspec_1, false, noone, 1, 1);
		
		what_to_rot_by_value = 60*spr_dir;
		
		spawn_arrow_vfx(curr_operator);
		
		player_id.fspec_curr_operator++;
		hsp = 0;
		vsp = 0;
		setState(1);
	}
	
	// yeah
	if (outsideOfBlastzones){
		player_id.window++;
		player_id.window_timer = 0;
		setState(10);
	}
}

// shockwave after placing
if (state == 1){
	if (state_timer == 4){
		setState(2);
	}
}

// Idle
if (state == 2){
	
	// Stuff
	with (asset_get("pHitBox")){
		if (		
		collision_rectangle(x - 24,
		y - 24,
		x + 24,
		y + 24,
		other,
		false,
		true)
		
		
		
		){//>
			
			// uspecial detection
			if (type == 1
				&& player_id == other.player_id
				&& attack == AT_USPECIAL
				&& (hbox_num <= 6 /*>*/ && hbox_num >= 2)
				&& player_id.uspec_told_grabbed_which_opp == -1){
				
				with (other){
					// print("I AM TOUCHING A USPECIAL GRAB HITBOX!!! DO SOMETHING!!!");
					player_id.uspec_told_grabbed_which_opp = (curr_operator - 1);
				}
			}
		
			// detecting nearby numbers
			if (type == 2
				&& player_id == other.player_id
				&& attack == AT_NSPECIAL
				&& hbox_num <= /*>*/ 10){
				// print("test " + string(other.state_timer));
				
				// check if operator is available
				with (other){	 // back in scope of article
				
					var what_is_this_var_lol = other.hbox_num;
					if (what_is_this_var_lol == 10){
						what_is_this_var_lol = 0;
					}
				
					if (held_num_1 == -1 && grab_num_internal_delay == 0){
						held_num_1 = what_is_this_var_lol;
						grab_num_internal_delay = grab_num_internal_delay_max;
						if (other.sd_card_unable_to_recatch){
							held_num_1_was_recaught = true;
						}
						other.sd_card_should_kill_self = true;
						sound_play(player_id.sfx_ssbu_megaman_fspec_2, false, noone, 0.7, 1.2);
					}
					
					if (held_num_2 == -1 && grab_num_internal_delay == 0){
						held_num_2 = what_is_this_var_lol;
						grab_num_internal_delay = grab_num_internal_delay_max;
						if (other.sd_card_unable_to_recatch){
							held_num_2_was_recaught = true;
						}
						other.sd_card_should_kill_self = true;
						sound_play(player_id.sfx_ssbu_megaman_fspec_2, false, noone, 0.7, 1.2);
					}

					player_id.move_cooldown[AT_NSPECIAL] = 0;

				}
			}
		}
	}
	
	// if both number slots are full, then go to throw
	if (held_num_1 != -1 && held_num_2 != -1){
		spawn_hit_fx(x, y, 144);
		sound_play(asset_get("sfx_ori_stomp_spin"), false, noone, 1, 1);
		pref_spr_dir = spr_dir;
		setState(3);
	}
	
}

// moving away from other operators
if (state >= 2){
	with (asset_get("obj_article1")){
		if ("is_a_ti84_operator" not in self){
			is_a_ti84_operator = false;
		}
		if (instance_exists(is_a_ti84_operator)){
			if (is_a_ti84_operator && collision_rectangle(x-60, y-60, x+60, y+60, other, 0, 1) && other.state >= 2 && state >= 2){
				// print("hi this should work btw im op " + string(curr_operator));
				
				// deal with vertical stuff				
				if ( abs(other.y - y) < 50){
					if (other.y < y){
						y += 10;
					} else if (other.y > y){
						y -= 10;
					}
				} else {
					if ( abs(other.y - y) == 0 ){
						y -= 10;
					}
				}
				
				// deal with horizontal stuff
				if (x == other.x){
					x -= 4;
					other.x += 4;
				}
				
				if ( abs(other.x - x) < 50){
					if (other.x < x){
						x += 10;
					} else if (other.x > x){
						x -= 10;
					}
				} else {
					if ( abs(other.x - x) == 0 ){
						x -= 10;
					}
				}
			}
		}
	}
	
	// spawn arrow vfx
	if ((state_timer + 10) mod 100 == 0){
		spawn_arrow_vfx(curr_operator)
	}
}

move_throw_startup_point_num1 = x - 70;
move_throw_startup_point_num2 = x + 70;

move_throw_startup_point_add_1 = x - (70*spr_dir);
move_throw_startup_point_add_2 = x + (70*spr_dir);

move_throw_startup_point_sub_1 = x + (70*spr_dir);
move_throw_startup_point_sub_2 = x - (70*spr_dir);

move_throw_startup_point_mlt_x_1 = x + (45*spr_dir);
move_throw_startup_point_mlt_y_1 = y - 45;
move_throw_startup_point_mlt_x_2 = x + (45*spr_dir);
move_throw_startup_point_mlt_y_2 = y + 45;

move_throw_startup_point_dvd_x_1 = x + (0*spr_dir);
move_throw_startup_point_dvd_y_1 = y - 70;
move_throw_startup_point_dvd_x_2 = x + (0*spr_dir);
move_throw_startup_point_dvd_y_2 = y + 70;

// throw Startup
if (state == 3){

	if (curr_operator == 1){
		move_throw_num1_pos = lerp(move_throw_num1_pos, move_throw_startup_point_add_1, 0.1);
		move_throw_num2_pos = lerp(move_throw_num2_pos, move_throw_startup_point_add_2, 0.1);
		move_throw_num1_pos_y = y;
		move_throw_num2_pos_y = y;
	} else if (curr_operator == 2){
		move_throw_num1_pos = lerp(move_throw_num1_pos, move_throw_startup_point_sub_1, 0.1);
		move_throw_num2_pos = lerp(move_throw_num2_pos, move_throw_startup_point_sub_2, 0.1);
		move_throw_num1_pos_y = y;
		move_throw_num2_pos_y = y;
	} else if (curr_operator == 3){
		move_throw_num1_pos = lerp(move_throw_num1_pos, move_throw_startup_point_mlt_x_1, 0.1);
		move_throw_num2_pos = lerp(move_throw_num2_pos, move_throw_startup_point_mlt_x_2, 0.1);
		move_throw_num1_pos_y = lerp(move_throw_num1_pos_y, move_throw_startup_point_mlt_y_1, 0.1);
		move_throw_num2_pos_y = lerp(move_throw_num2_pos_y, move_throw_startup_point_mlt_y_2, 0.1);
	} else if (curr_operator == 4){
		move_throw_num1_pos = lerp(move_throw_num1_pos, move_throw_startup_point_dvd_x_1, 0.1);
		move_throw_num2_pos = lerp(move_throw_num2_pos, move_throw_startup_point_dvd_x_2, 0.1);
		move_throw_num1_pos_y = lerp(move_throw_num1_pos_y, move_throw_startup_point_dvd_y_1, 0.1);
		move_throw_num2_pos_y = lerp(move_throw_num2_pos_y, move_throw_startup_point_dvd_y_2, 0.1);
	}

	if (state_timer >= floor(throw_startup / 1.5) && state_timer != throw_startup){
		if (state_timer mod 8 == 0){
			spawn_hit_fx(x, y, 305);
			sound_play(asset_get("mfx_star"), false, noone, 1, 1.5);
		}
	}

	if (state_timer == throw_startup){
	
		if (curr_operator == 1 || curr_operator == 2){
			setState(4);
		} else if (curr_operator == 3 || curr_operator == 4){
			setState(6);
		}
	}
}

// throw (add/sub) 1 and 2
if (state == 4 || state == 5){
	if (state_timer == 1){
	
		sound_play(player_id.sfx_ssbu_item_toss, false, noone, 1, 1.15);
		sound_play(player_id.sfx_ssbu_megaman_fspec_1, false, noone, 1, 1.15);
	
		if (curr_operator == 1){
			var determined_throw_dir = pref_spr_dir;
			var x_proj_spawn = x + (40 * spr_dir);
		} else if (curr_operator == 2){
			var determined_throw_dir = pref_spr_dir * -1;
			var x_proj_spawn = x - (40 * spr_dir);
		}
		
		if (state == 4){
			throw_number_str_forward(held_num_1, x_proj_spawn, determined_throw_dir, held_num_1_was_recaught);
		}
		
		if (state == 5){
			throw_number_str_forward(held_num_2, x_proj_spawn, determined_throw_dir, held_num_2_was_recaught);
		
			/*
			var sd_card_proj = create_hitbox( AT_NSPECIAL, ((held_num_2==0)?10:held_num_2), x_proj_spawn, y );

			sd_card_proj.uses_shader = false;
			sd_card_proj.draw_xscale = 1;
			sd_card_proj.stupid_dumb_direction_variable = determined_throw_dir;

			sd_card_proj.image_index = held_num_2;

			sd_card_proj.sd_card_thrown_up = false;
			sd_card_proj.sd_card_thrown_down = false;
			
			sd_card_proj.spawned_from_operator = true;
			
			if (held_num_2_was_recaught && !disable_recatching_on_rethrown_numbers){
				sd_card_proj.sd_card_unable_to_recatch = true;
			}
			
			sd_card_sfx(held_num_2)
			*/
		}
		
		what_to_rot_by_value = 60*spr_dir;
	}
	
	if (state_timer == 60){
	
		if (state == 4){
			setState(5);
		} else {
			setState(7);
		}
	}
}

// 
if (state == 6){
	if (state_timer == 1){
	
		sound_play(player_id.sfx_ssbu_item_toss, false, noone, 1, 1.15);
		sound_play(player_id.sfx_ssbu_megaman_fspec_1, false, noone, 1, 1.15);
	
		// multiplication
		if (curr_operator == 3){
		
			throw_number_dia_upwards(held_num_1, x_proj_spawn, determined_throw_dir, held_num_1_was_recaught);
			throw_number_dia_dwnward(held_num_2, x_proj_spawn, determined_throw_dir, held_num_2_was_recaught);
		
			
			/*
			var sd_card_proj_2 = create_hitbox( AT_NSPECIAL, held_num_2, x + (0 * spr_dir), y + 30 );

			sd_card_proj_2.uses_shader = false;
			sd_card_proj_2.draw_xscale = 1;
			sd_card_proj_2.stupid_dumb_direction_variable = pref_spr_dir;

			sd_card_proj_2.image_index = held_num_2;

			sd_card_proj_2.sd_card_thrown_up = false;
			sd_card_proj_2.sd_card_thrown_down = false;
			sd_card_proj_2.sd_card_thrown_diag_up = false;
			sd_card_proj_2.sd_card_thrown_diag_down = true;
			
			sd_card_proj_2.spawned_from_operator = true;
			
			if (held_num_2_was_recaught && !disable_recatching_on_rethrown_numbers){
				sd_card_proj_2.sd_card_unable_to_recatch = true;
			}
			
			if (sd_card_proj_2.image_index != 4){
				sd_card_proj_2.vsp = abs(sd_card_proj_2.hsp) * 0.75 * 1;
			}
			*/
			
			/*
			// prevents the same sound from playing twice lol
			if (held_num_1 != held_num_2){
				sd_card_sfx(held_num_2)
			}
			*/
		}
	
		// division
		if (curr_operator == 4){
						
			throw_number_str_upwards(held_num_1, x_proj_spawn, determined_throw_dir, held_num_1_was_recaught);
			throw_number_str_dwnward(held_num_2, x_proj_spawn, determined_throw_dir, held_num_2_was_recaught);
						
			/*
			var sd_card_proj_2 = create_hitbox( AT_NSPECIAL, ((held_num_2==0)?10:held_num_2), x + (0 * spr_dir), y + 40 );

			sd_card_proj_2.uses_shader = false;
			sd_card_proj_2.draw_xscale = 1;
			sd_card_proj_2.stupid_dumb_direction_variable = pref_spr_dir;

			sd_card_proj_2.image_index = held_num_2;

			sd_card_proj_2.sd_card_thrown_up = false;
			sd_card_proj_2.sd_card_thrown_down = true;
			
			sd_card_proj_2.spawned_from_operator = true;
			
			if (held_num_2_was_recaught && !disable_recatching_on_rethrown_numbers){
				sd_card_proj_2.sd_card_unable_to_recatch = true;
			}
			
			if (sd_card_proj_2.image_index != 4){
				sd_card_proj_2.vsp = abs(sd_card_proj_2.hsp) * 1.35 * 1;
				sd_card_proj_2.hsp = 0;
			}
			*/
			
			/*
			// prevents the same sound from playing twice lol
			if (held_num_1 != held_num_2){
				sd_card_sfx(held_num_2)
			}
			*/
		}

		what_to_rot_by_value = 60*spr_dir;

	}
	
	if (state_timer == 20){
		setState(7);
	}
}


if (what_to_rot_by_value != 0){

	rotate_angle_thing += what_to_rot_by_value;
	what_to_rot_by_value *= 0.9;

}

// leading to DEATH!!!
if (state == 7){
	if (state_timer == 10){
		setState(10);
	}
}

if (launched_by_uspec && state < 8){//>
	launched_by_uspec = false;
	
	setState(8);
	
	sound_play(asset_get("sfx_may_arc_cointoss"));
	
	if (curr_operator == 1){
		var determined_throw_dir = pref_spr_dir;
		var x_proj_spawn = x + (40 * spr_dir);
	} else if (curr_operator == 2){
		var determined_throw_dir = pref_spr_dir * -1;
		var x_proj_spawn = x - (40 * spr_dir);
	}
	
	// if holding a number, throw it
	if (curr_operator == 1){
		if (held_num_1 != -1){
			throw_number_str_forward(held_num_1, x_proj_spawn, determined_throw_dir, held_num_1_was_recaught);
		}
		if (held_num_2 != -1){
			throw_number_str_forward(held_num_2, x_proj_spawn, determined_throw_dir, held_num_2_was_recaught);
		}
	} else if (curr_operator == 2){
		if (held_num_1 != -1){
			throw_number_str_forward(held_num_1, x_proj_spawn, determined_throw_dir, held_num_1_was_recaught);
		}
		if (held_num_2 != -1){
			throw_number_str_forward(held_num_2, x_proj_spawn, determined_throw_dir, held_num_2_was_recaught);
		}
	} else if (curr_operator == 3){
		if (held_num_1 != -1){
			throw_number_dia_upwards(held_num_1, x_proj_spawn, determined_throw_dir, held_num_1_was_recaught);
		}
		if (held_num_2 != -1){
			throw_number_dia_dwnward(held_num_2, x_proj_spawn, determined_throw_dir, held_num_2_was_recaught);
		}
	} else if (curr_operator == 4){
		if (held_num_1 != -1){
			throw_number_str_upwards(held_num_1, x_proj_spawn, determined_throw_dir, held_num_1_was_recaught);
		}
		if (held_num_2 != -1){
			throw_number_str_dwnward(held_num_2, x_proj_spawn, determined_throw_dir, held_num_2_was_recaught);
		}
	}
	
	hsp = 1.8*spr_dir;
	vsp = 22;
}

// launched downward by up b
if (state == 8){
	can_be_grounded = true;
	ignores_walls = false;
	
	what_to_rot_by_value += abs(vsp)*spr_dir;
	
	if (launched_down_travel_hb == noone){
		launched_down_travel_hb = create_hitbox( AT_FSPECIAL, 3, x, y );
	}
	
	if (instance_exists(launched_down_travel_hb)){
		launched_down_travel_hb.x = x;
		launched_down_travel_hb.y = y;
		launched_down_travel_hb.hsp = hsp;
		launched_down_travel_hb.vsp = vsp;
		
		launched_down_travel_hb.hitbox_timer = 2;
		
		if (vsp == 0 || hsp == 0 || launched_down_travel_hb.has_hit || outsideOfBlastzones || state_timer == 60){	// the state_timer == 60 is just a fail-safe lol
			launched_down_travel_hb.destroyed = true;
			
			// create hitbox
			create_hitbox(AT_FSPECIAL, 4, x, y);
			
			// sfx
			sound_play(asset_get("sfx_zap"), false, noone, 0.5, 0.8);
			sound_play(asset_get("sfx_absa_uair"), false, noone, 0.8, 0.8);
			sound_play(asset_get("sfx_ell_arc_small_missile_ground"), false, noone, 0.4, 1.75);
			sound_play(asset_get("sfx_may_arc_plant"), false, noone, 1, 1.8);
			sound_play(player_id.sfx_ssbu_megaman_fspec_1, false, noone, 0.5, 0.8);
			
			spawn_hit_fx(x, y, 305);
			if (curr_operator == 1){
				var spawned_operator_vfx = spawn_hit_fx(x, y, player_id.vfx_operator_spawn_add);
			} else if (curr_operator == 2){
				var spawned_operator_vfx = spawn_hit_fx(x, y, player_id.vfx_operator_spawn_sub);
			} else if (curr_operator == 3){
				var spawned_operator_vfx = spawn_hit_fx(x, y, player_id.vfx_operator_spawn_mlt);
			} else if (curr_operator == 4){
				var spawned_operator_vfx = spawn_hit_fx(x, y, player_id.vfx_operator_spawn_dvd);
			}
			spawned_operator_vfx.depth -= 1;
			
			should_die = true;
		}
	}
	

}

//blastzone stuff
if (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b || y < blastzone_t){//>
	outsideOfBlastzones = true;
} else {
	outsideOfBlastzones = false;
}

if (state == 10 || should_die){

	spawn_hit_fx(x, y, 144);
	sound_play(asset_get("sfx_blow_weak1"));

	instance_destroy();
	exit;
}

//Make time progress
state_timer++;

exist_timer++;

//--------------------------------------------

// ----------

// def for throwing a number forward
#define throw_number_str_forward(thrown_num, x_spawn_coord, det_throw_dir, was_num_recaught)

var sd_card_proj = create_hitbox( AT_NSPECIAL, ((thrown_num==0)?10:thrown_num), x_spawn_coord, y );

sd_card_proj.uses_shader = false;
sd_card_proj.draw_xscale = 1;
sd_card_proj.stupid_dumb_direction_variable = det_throw_dir;

sd_card_proj.image_index = thrown_num;

sd_card_proj.sd_card_thrown_up = false;
sd_card_proj.sd_card_thrown_down = false;

sd_card_proj.spawned_from_operator = true;

if (was_num_recaught && !disable_recatching_on_rethrown_numbers){
	sd_card_proj.sd_card_unable_to_recatch = true;
}

sd_card_sfx(thrown_num)


// ----------

// def for throwing a number straight up
#define throw_number_str_upwards(thrown_num, x_spawn_coord, det_throw_dir, was_num_recaught)

var sd_card_proj = create_hitbox( AT_NSPECIAL, ((thrown_num==0)?10:thrown_num), x + (0 * spr_dir), y - 40 );

sd_card_proj.uses_shader = false;
sd_card_proj.draw_xscale = 1;
sd_card_proj.stupid_dumb_direction_variable = det_throw_dir;

sd_card_proj.image_index = thrown_num;

sd_card_proj.sd_card_thrown_up = true;
sd_card_proj.sd_card_thrown_down = false;

sd_card_proj.spawned_from_operator = true;

if (was_num_recaught && !disable_recatching_on_rethrown_numbers){
	sd_card_proj.sd_card_unable_to_recatch = true;
}

if (sd_card_proj.image_index != 4){
	sd_card_proj.vsp = abs(sd_card_proj.hsp) * 1.35 * -1;
	sd_card_proj.hsp = 0;
}

sd_card_sfx(thrown_num)

// ----------

// def for throwing a number straight down
#define throw_number_str_dwnward(thrown_num, x_spawn_coord, det_throw_dir, was_num_recaught)

var sd_card_proj_2 = create_hitbox( AT_NSPECIAL, ((thrown_num==0)?10:thrown_num), x + (0 * spr_dir), y + 40 );

sd_card_proj_2.uses_shader = false;
sd_card_proj_2.draw_xscale = 1;
sd_card_proj_2.stupid_dumb_direction_variable = det_throw_dir;

sd_card_proj_2.image_index = thrown_num;

sd_card_proj_2.sd_card_thrown_up = false;
sd_card_proj_2.sd_card_thrown_down = true;

sd_card_proj_2.spawned_from_operator = true;

if (was_num_recaught && !disable_recatching_on_rethrown_numbers){
	sd_card_proj_2.sd_card_unable_to_recatch = true;
}

if (sd_card_proj_2.image_index != 4){
	sd_card_proj_2.vsp = abs(sd_card_proj_2.hsp) * 1.35 * 1;
	sd_card_proj_2.hsp = 0;
}

// ----------

// def for throwing a number diagonally up and forward
#define throw_number_dia_upwards(thrown_num, x_spawn_coord, det_throw_dir, was_num_recaught)

var sd_card_proj = create_hitbox( AT_NSPECIAL, ((thrown_num==0)?10:thrown_num), x + (0 * spr_dir), y - 30 );

sd_card_proj.uses_shader = false;
sd_card_proj.draw_xscale = 1;
sd_card_proj.stupid_dumb_direction_variable = det_throw_dir;

sd_card_proj.image_index = thrown_num;

sd_card_proj.sd_card_thrown_up = false;
sd_card_proj.sd_card_thrown_down = false;
sd_card_proj.sd_card_thrown_diag_up = true;
sd_card_proj.sd_card_thrown_diag_down = false;

sd_card_proj.spawned_from_operator = true;

if (was_num_recaught && !disable_recatching_on_rethrown_numbers){
	sd_card_proj.sd_card_unable_to_recatch = true;
}


if (sd_card_proj.image_index != 4){			
	sd_card_proj.vsp = abs(sd_card_proj.hsp) * 0.75 * -1;
}

sd_card_sfx(thrown_num)

// ----------

// def for throwing a number diagonally down and forward
#define throw_number_dia_dwnward(thrown_num, x_spawn_coord, det_throw_dir, was_num_recaught)

var sd_card_proj_2 = create_hitbox( AT_NSPECIAL, ((thrown_num==0)?10:thrown_num), x + (0 * spr_dir), y + 30 );

sd_card_proj_2.uses_shader = false;
sd_card_proj_2.draw_xscale = 1;
sd_card_proj_2.stupid_dumb_direction_variable = det_throw_dir;

sd_card_proj_2.image_index = thrown_num;

sd_card_proj_2.sd_card_thrown_up = false;
sd_card_proj_2.sd_card_thrown_down = false;
sd_card_proj_2.sd_card_thrown_diag_up = false;
sd_card_proj_2.sd_card_thrown_diag_down = true;

sd_card_proj_2.spawned_from_operator = true;

if (was_num_recaught && !disable_recatching_on_rethrown_numbers){
	sd_card_proj_2.sd_card_unable_to_recatch = true;
}

if (sd_card_proj_2.image_index != 4){
	sd_card_proj_2.vsp = abs(sd_card_proj_2.hsp) * 0.75 * 1;
}

sd_card_sfx(thrown_num)

// ----------

//--------------------------------------------

//
#define spawn_arrow_vfx(inp_opp_num)

if (inp_opp_num == 1){
	var arrow_vfx_1 = spawn_hit_fx(x, y, player_id.vfx_operator_arrow);
	arrow_vfx_1.spr_dir = spr_dir;
	arrow_vfx_1.draw_angle -= 0;
	arrow_vfx_1.uses_shader = false;
}

if (inp_opp_num == 2){
	var arrow_vfx_1 = spawn_hit_fx(x, y, player_id.vfx_operator_arrow);
	arrow_vfx_1.spr_dir = spr_dir;
	arrow_vfx_1.draw_angle -= 180;
	arrow_vfx_1.uses_shader = false;
}

if (inp_opp_num == 3){
	var arrow_vfx_1 = spawn_hit_fx(x + (30*spr_dir), y - 30, player_id.vfx_operator_arrow);
	var arrow_vfx_2 = spawn_hit_fx(x + (30*spr_dir), y + 30, player_id.vfx_operator_arrow);
	arrow_vfx_1.spr_dir = spr_dir;
	arrow_vfx_1.draw_angle += 45*spr_dir;
	arrow_vfx_1.uses_shader = false;
	arrow_vfx_2.spr_dir = spr_dir;
	arrow_vfx_2.draw_angle -= 45*spr_dir;
	arrow_vfx_2.uses_shader = false;
}

if (inp_opp_num == 4){
	var arrow_vfx_1 = spawn_hit_fx(x + (0*spr_dir), y - 50, player_id.vfx_operator_arrow);
	var arrow_vfx_2 = spawn_hit_fx(x + (0*spr_dir), y + 50, player_id.vfx_operator_arrow);
	arrow_vfx_1.spr_dir = spr_dir;
	arrow_vfx_1.draw_angle += 90*spr_dir;
	arrow_vfx_1.uses_shader = false;
	arrow_vfx_2.spr_dir = spr_dir;
	arrow_vfx_2.draw_angle -= 90*spr_dir;
	arrow_vfx_2.uses_shader = false;
}

//--------------------------------------------

//
#define sd_card_sfx(inp_num)

switch (inp_num){
	case 1:
		sound_stop(player_id.sfx_ssbu_pacman_fruit_charge_1);
		sound_play(player_id.sfx_ssbu_pacman_fruit_charge_1);
		break;
	case 2:
		sound_stop(player_id.sfx_ssbu_pacman_fruit_charge_2);
		sound_play(player_id.sfx_ssbu_pacman_fruit_charge_2);
		break;
	case 3:
		sound_stop(player_id.sfx_ssbu_pacman_fruit_charge_3);
		sound_play(player_id.sfx_ssbu_pacman_fruit_charge_3);
		break;
	case 4:
		sound_stop(player_id.sfx_ssbu_pacman_fruit_charge_1);
		sound_stop(player_id.sfx_ssbu_megaman_dair);
		
		sound_play(player_id.sfx_ssbu_pacman_fruit_charge_1, false, noone, 0.8, 0.8);
		sound_play(player_id.sfx_ssbu_megaman_dair, false, noone, 0.75, 1.35);
		break;
	case 5:
		sound_stop(player_id.sfx_ssbu_pacman_fruit_charge_4);
		sound_stop(player_id.sfx_ssbu_megaman_uair);
	
		sound_play(player_id.sfx_ssbu_pacman_fruit_charge_4, false, noone, 0.7, 1.2);
		sound_play(player_id.sfx_ssbu_megaman_uair, false, noone, 0.7, 1.35);
		break;
	case 6:
		sound_stop(player_id.sfx_ssbu_pacman_fruit_charge_5);
		sound_play(player_id.sfx_ssbu_pacman_fruit_charge_5);
		break;
	case 7:
		sound_stop(player_id.sfx_ssbu_pacman_fruit_charge_6);
		sound_play(player_id.sfx_ssbu_pacman_fruit_charge_6);
		break;
	case 8:
		sound_stop(player_id.sfx_ssbu_pacman_fruit_charge_7);
		sound_play(player_id.sfx_ssbu_pacman_fruit_charge_7);
		break;
	case 9:
		sound_stop(player_id.sfx_ssbu_pacman_fruit_charge_8);
		sound_stop(asset_get("sfx_coin_collect"));
		
		sound_play(player_id.sfx_ssbu_pacman_fruit_charge_8);
		sound_play(asset_get("sfx_coin_collect"), false, noone, 0.7, 1.5);
		break;
	case 0:
		sound_stop(asset_get("sfx_ell_arc_taunt_collide"));
		sound_stop(sound_get("intentional_error"));
		sound_stop(player_id.sfx_ssbu_pacman_fruit_charge_8);
		
		sound_play(asset_get("sfx_ell_arc_taunt_collide"), false, noone, 1, 1.4);
		sound_play(sound_get("intentional_error"), false, noone, 0.7, 1.1);
		sound_play(player_id.sfx_ssbu_pacman_fruit_charge_8, false, noone, 0.4, 1.64);
		break;
	default:
		sound_stop(player_id.sfx_ssbu_pacman_fruit_charge_5);
		sound_play(player_id.sfx_ssbu_pacman_fruit_charge_5);
		break;
}

// -----------------------------------

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;