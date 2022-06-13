load_some_attack_data()
if hitpause{
	exit
}

with oPlayer {
	crash_tracing = false
	arc_height = get_peak_height(upward_velocity, gravity_speed)
	
	did_work = 0
}

ai_target_remaining_lag = get_ai_target_remaining_lag()

xdisp = ai_target.x - x
ydisp = ai_target.y - y
xdist = abs(xdisp);
ydist = abs(ydisp);
dist = point_distance(x, y, ai_target.x, ai_target.y)
var upward_velocity = min(0, vsp)

var is_above_ground = get_is_above_ground()

with oPlayer {
	proj_pos_cache = []
}

if not is_above_ground {
	hold_toward_center()
} else {
	// 	Keep the ai steady so we can move it intentionally.
	hold_neutral()
	hold_neutral_stick()
	unpress_jump()
	unpress_actions()

	var has_existing_plan = do_plan() // If already doing a plan, dont even think, just do the steps. Possibly a bad idea.
	if not has_existing_plan {
		var new_plan = get_plan()
		
		//Todo remove
		get_plan()
		get_plan()
		get_plan()
		
		set_plan(new_plan)
		do_plan()
	}
}


// Hitfall aerials
if contains([AT_FAIR, AT_NAIR, AT_BAIR, AT_UAIR, AT_DAIR], attack){
	if (hitpause && is_above_ground) {
        tap_down()
	}
}

// Hitstun drift by mawral
if state == PS_HITSTUN {
	if ( xdist < 60 // if in reach of their attacks. Todo, actually get their reach rather than guessing?
	and ((xdisp < 0 and 50 < x) or (0 < xdisp and x < room_width-50) )) { // and not near stage edge
		hold_away_from_target()
		ai_thoughts = "Drifting away"
	}
	else { 	//otherwise, drift in.
		hold_toward_center()
		ai_thoughts = "Drifting to center"  
	}
}


prints("Did work",get_gameplay_time(), player, did_work)


#region PLANNING
#define get_plan() 
	if currently_learning {
		return p_do_nothing
	}

	// can_shield = false
	// Parry/Dodge coming attack
	if can_shield and dist < 200 {
		var hit_info = undefined
		with(oPlayer) if(get_player_team(player) != get_player_team(other.player)) {
			if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) and knows_attack(other, player, attack)) {
				hit_info = find_contacting_hitbox(other.known_attacks[player][attack], id, other)
			}
		}

		if hit_info != undefined and hit_info.contacting_hitbox != noone {
			if crash_tracing print("start getting incoming hit")
			ai_thoughts = `INCOMING IN ${hit_info.frames_until_hit}!!!`;
			if hit_info.frames_until_hit <= 8 {
				if hit_info.contacting_hitbox.can_be_charged {
					return p_roll_away
				} else {
					if 2 >= hit_info.frames_until_hit {					
						// No time to parry. Try running. Could also crouch. Very little can be done in 1-2 frames.
						return [["hold_away_from_target", "tap_current_horizontal_direction"]] 
					} else {
						return p_parry	
					}
					
				}
			}
			if crash_tracing print("end getting incoming hit")
		}
	}

	// Attack if opponent will be in range
	if can_attack {
		if crash_tracing print("Start getting attack plan")
		best_attack = undefined
		best_score = -9999
		best_plan = undefined
		var options_checked = list()
		for (var attack_i=0; attack_i<array_length(known_attacks[player]); attack_i++) {
			var this_attack = known_attacks[player][attack_i]			
			if this_attack != undefined
				and array_length(this_attack.hitboxes_array) > 0
				and is_attack_usable_in_position(this_attack, self) 
			{	
				var plan = get_attack_plan(attack_i)
				if plan == undefined {
					continue // We don't know how to do this attack yet. TODO support everything
				}

				// Rough heuristic to throw away obviously unsafe attacks
				var interaction_frames = get_attack_interaction_frames(this_attack) 
				if interaction_frames > maximum_safe_reaction_frames {
					continue // Too slow, discard it.
				}

				// Rough heuristic to throw away obviously out of range attacks
				// if not my_attack_might_hit(this_attack) {
				// 	continue // No where near hitting
				// } // TODO READD

				if !free {
					continue
				} // TODO REMOVE

				var contacting_hitbox_info = find_contacting_hitbox(this_attack, id, ai_target)
				// if contacting_hitbox_info.closest_hitbox == noone {
				// 	continue // Nothing is remotely close
				// }

				// if contacting_hitbox_info.ydist {
				// 	continue // Too high for ground attack
				// }

				// var frames_to_walk = ceil(contacting_hitbox_info.xdist / walk_speed) // todo doesnt take walk startup + acceleration stuff into account if in idle
				// if frames_to_walk > maximum_setup_frames {
				// 	continue // Too far to walk
				// }
				// repeat(frames_to_walk) {
				// 	plan = array_push_start(plan, ["hold_towards_target"])
				// }
	
				// interaction_frames += frames_to_walk
				// if interaction_frames > maximum_safe_reaction_frames { // This is done a second time. First is to short circuit and avoid doing hit detection when possible.
				// 	continue // Too slow, discard it.
				// }

				var score = 0

				// if interaction_frames <= 0 {
				// 	var chance_of_interferance = 0
				// } else {
				// 	var chance_of_interferance = 0.1*ease_linear(3, 10, floor(interaction_frames), 15) // 1 frame -> 30% chance, 15 frames -> 100% chance
				// }
				
				// var start_lag = this_attack.first_active_frame
				// var drift_speed = 1 // guessing 1px per frame
				// var drift_required = sqrt(contacting_hitbox_info.overlap)
				// var drift_time_required = ceil(drift_required / drift_speed)
				// var drift_out_chance = max(0, ease_linear(0, 1, start_lag-drift_time_required, 15)) // If they have 0ish frames to drift out-> 0% chance of evastion, 15 frames -> 100% chance
				// var miss_chance = 1 - (1-chance_of_interferance) * (1-drift_out_chance)

				// // if get_player_damage(ai_target.player) < 100 {
				// 	var damage_raw = this_attack.hitboxes_array[array_length(this_attack.hitboxes_array)-1].damage * (1-miss_chance)
				// 	var damage_score = damage_raw * w_damage
				// 	score += damage_score
				// // }
				// // Todo, later will devalue damage while at high percent, and instead think about comboing into finishers
			
				
				// var pratfall_end_lag = this_attack.goes_into_pratfall * 30 // Todo should get from height instead of just guessing.
				// // Todo shouldnt just be *miss_chance. Even if you hit you want shorter end lag
				// var end_lag_raw = (max(0, this_attack.full_duration - this_attack.last_active_frame) + pratfall_end_lag)* miss_chance
				// var end_lag_score = -end_lag_raw * w_end_lag
				// score += end_lag_score

				// // Todo, for misses, prefer being further away. Should encourage spacing?

				// var hit_result_info = get_hit_result(contacting_hitbox_info.closest_hitbox, ai_target)
				// var dest_x = hit_result_info.final_position[0]
				// var dest_dist_past_side_blastzone = max(-dest_x, dest_x-room_width)
				// var chance_to_kill_off_side_raw = clamp(dest_dist_past_side_blastzone/8 + 42, 0, 1)  // This includes attacks that leave them near the blastzone but not past it

				// var dest_dist_above_top_blastzone = hit_result_info.peak_height-room_height
				// if dest_dist_above_top_blastzone > 0 {
				// 	var chance_to_kill_off_top_raw = 0.25+clamp(0, dest_dist_above_top_blastzone/400, 0.75) //Nothing if less than blastzone, jumps to 25% after for no-di case.
				// }
				// var chance_to_kill_score = (chance_to_kill_off_side_raw+chance_to_kill_off_top_raw) * (1-miss_chance) * w_chance_to_kill
				// score += chance_to_kill_score
				// // Todo add distance below stage level for spikes

				// // Todo add chance to follow up

				// prints(get_attack_name(attack_i), "dmg", damage_score, "end", end_lag_score, "walks", frames_to_walk, "miss", miss_chance,
				// 	"kill", chance_to_kill_score,
				// 	 "final", score)
				if score > 0 and score > best_score {
					best_attack = attack_i
					best_score = score
					best_plan = plan
				}
			}
		}
		if best_attack != undefined {
			ai_thoughts = `Using ${get_attack_name(best_attack)}`;		
			return best_plan
		}
		if crash_tracing print("End getting attack plan")
	}


	if !free {
		if state_cat != SC_GROUND_COMMITTED {
			// This is a weird sort of dash_glide that doesnt put into dash endlag but moves much faster than walking.
			if xdist > 100 {
				return [["hold_towards_target", "tap_current_horizontal_direction"], ["hold_towards_target"]]
			} else {
				if true {//random_func(0, 2, true) { // TODO make this weighted random
					return [["press_jump", "hold_towards_target"]]
				} else {
					
					return [["hold_towards_target"]]	
				}
			}
		}
	} else {
		return [["hold_towards_target"]]
		// TODO add fastfalling when appropriate return [["tap_down"]] 
	}

#define set_plan(new_plan)
	if new_plan != undefined {
		plan = new_plan
		plan_timer = 0
	}
	
	
#endregion

#define is_attack_usable_in_position(this_attack, player_obj)
	if player_obj.free {
		return is_attack_usable_air(this_attack)
	} else {
		return is_attack_usable_ground(this_attack)
	}

#define is_attack_usable_ground(this_attack)
	return this_attack.category != 1

#define is_attack_usable_air(this_attack)
	return this_attack.category != 0

#define get_attack_interaction_frames(this_attack)
	return max(0, this_attack.first_active_frame - ai_target_remaining_lag)


#define my_attack_might_hit(this_attack)
	// This is a quick heuristic to see if its worth checking for collisions.
	// Assumes self is attacking ai_target.
	return my_attack_might_hit_vertically(this_attack) and my_attack_might_hit_horizontally(this_attack)

#define my_attack_might_hit_horizontally(this_attack)
	var distance_moved = abs(hsp) * this_attack.last_active_frame // Todo take into account if moving *toward* or away from opponent
	var target_distance_moved = abs(ai_target.hsp) * this_attack.last_active_frame
	var effective_x_reach = this_attack.max_x_reach + distance_moved + target_distance_moved + walk_speed*maximum_setup_frames
	return xdist < effective_x_reach

#define my_attack_might_hit_vertically(this_attack)
	if ydisp >= 0 {
		return true // Just assuming fastfalling will be enough.
	} else {
		var target_distance_moved = abs(ai_target.vsp) * this_attack.last_active_frame
		var effective_upward_reach = this_attack.max_upward_reach + arc_height + target_distance_moved // Todo add jumping upwards for it
		return effective_upward_reach > ydist
	}

#region LEARNING
#define load_some_attack_data
	if(currently_learning && learning_phase == "attacks") {
		if(learning_frame == 0) player_ids = [
			noone,
			find_player_instance(1),
			find_player_instance(2),
			find_player_instance(3),
			find_player_instance(4),
			noone
		];
		
		repeat(50) learn();
		
		learning_frame++; exit;
	} else {
		currently_learning = false
	}


#define find_contacting_hitbox(this_attack, attacker, _target)
	if crash_tracing print("start find_contacting_hitbox")
	var target_player = _target
	if(_target.object_index == oPlayer || _target.object_index == oTestPlayer) {
		var target_hurtbox = _target.hurtboxID
	} else {
		var target_hurtbox = _target
	}

	var highest_priority = -1;

	if attacker.state == PS_ATTACK_AIR or attacker.state == PS_ATTACK_GROUND {
		var frames_into_attack = attacker.state_timer
	} else {
		var frames_into_attack = 0
	}

	var hit_info = {
		hit_frame: 9999,
		frames_until_hit: 9999,
		contacting_hitbox: noone,
		closest_hitbox: noone,
		overlap: 0, // The number of overlapping pixels when precise=false. Else just 1 for hits.
		hit_scanning_frame: 0, // The frame of the hitbox when it will hit
		xdist: 9999, // The closest a hitbox gets to contacting
		ydist: 9999
	}

	for(var hitbox_i = 0; hitbox_i < this_attack.hitboxes_count; hitbox_i++) {
		if crash_tracing prints("start hitbox", hitbox_i)
		var this_hitbox = this_attack.hitboxes_array[hitbox_i];

		var is_contacting = false
		var scanning_frame = 0 // The frame of the hitbox to check collision
		var duration = this_hitbox.end_frame - this_hitbox.frame
		var combined_speeds = abs(hsp) + abs(vsp) + abs(_target.hsp) + abs(_target.vsp)
		
		return hit_info
		
		while not is_contacting and scanning_frame < duration {
			var hit_frame = this_hitbox.frame + scanning_frame
			var frames_until_hit = hit_frame-frames_into_attack
			if frames_until_hit >= 0 { // If this point hasn't already happened
				if highest_priority >= this_hitbox.priority && hit_info.hit_frame <= hit_frame{
					break // currently recorded hit has higher priority and equal or greater speed, overruling this one
				} 
				if hit_frame > this_hitbox.end_frame {
					break // hitbox has ended
				}
				if scanning_frame > 30 {
					break // Too long...
				}
				if frames_into_attack > hit_frame {
					continue // already past this point in the attack
				}
	
				var attacker_projected_pos = [0,0] //get_my_projected_pos(frames_until_hit);
				var hit_x = attacker_projected_pos[0] + this_hitbox.xpos * spr_dir;
				var hit_y = attacker_projected_pos[1] + this_hitbox.ypos;
				var radius_x = this_hitbox.radius_x * this_attack.paranoia;
				var radius_y = this_hitbox.radius_y * this_attack.paranoia;
	
				var target_projected_pos = undefined
				with oPlayer if self == target_player {
					target_projected_pos = [0,0]//get_my_projected_pos(frames_until_hit)
				}
				var target_radius_x = (target_hurtbox.bbox_right - target_hurtbox.bbox_left)/2
				var target_radius_y = (target_hurtbox.bbox_bottom - target_hurtbox.bbox_top)/2
	
				overlap_info = amount_of_rectangle_overlap(hit_x - radius_x, hit_y - radius_y, hit_x + radius_x, hit_y + radius_y,
				target_projected_pos[0]-target_radius_x, target_projected_pos[1]-2*target_radius_y, target_projected_pos[0]+target_radius_x, target_projected_pos[1])
				
				did_work ++
				
				if overlap_info.overlap {
					is_contacting = true
					highest_priority = this_hitbox.priority;
					
					hit_info.hit_frame = hit_frame
					hit_info.frames_until_hit = hit_frame - frames_into_attack
					hit_info.contacting_hitbox = this_hitbox
					hit_info.closest_hitbox = this_hitbox
					hit_info.hit_scanning_frame = scanning_frame
					hit_info.overlap = overlap_info.overlap
					hit_info.xdist = 0
					hit_info.ydist = 0
				} else {
					if (overlap_info.xdist + overlap_info.ydist) < (hit_info.xdist + hit_info.ydist) {
						hit_info.closest_hitbox = this_hitbox
					}
					hit_info.xdist = min(hit_info.xdist, overlap_info.xdist)
					hit_info.ydist = min(hit_info.ydist, overlap_info.ydist)
				}
			}
			
			scanning_frame += max(5, 15/combined_speeds) //max(3, 15/combined_speeds) 
			//	Possible optimization, could check last frame of hitbox and see if it either contacts or has moved past the opponent on either exis.
			//		If not, no point in checking other times.
		}
		if crash_tracing prints("end hitbox", hitbox_i)
	}
	if crash_tracing print("end find_contacting_hitbox")
	return hit_info


#define get_hit_result(hitbox, target)
	var global_kb_scale = 0.12
	var opponent_damage_after_hit = get_player_damage(target.player) + hitbox.damage
	
	var hitstun = 4 * (hitbox.kb_value * (((target.knockback_adj - 1) * 0.6) + 1))
				 + (opponent_damage_after_hit * 0.12 * hitbox.kb_scale * 0.65 * target.knockback_adj)

	var knockback = hitbox.kb_value + (hitbox.kb_scale * target.knockback_adj * opponent_damage_after_hit * global_kb_scale)

	var kb_x = lengthdir_x(knockback, hitbox.kb_angle)
	var kb_y = lengthdir_y(knockback, hitbox.kb_angle)
	
	if !target.free and kb_y > 0 { // They're hit down while on the ground, so they bounce up.
		kb_y = -kb_y / 2
	}

	if kb_y < 0 {
		var peak_height = get_peak_height(kb_y, target.hitstun_grav)
	} else {
		var peak_height = 0
	}
	var dest_x = target.x + kb_x*hitstun
	var dest_y = target.y + kb_y*hitstun - 0.5*target.hitstun_grav*power(hitstun, 2)

	// Todo handle stage height



	// TODO REMOVE
	// return {
	// 	hitstun: 0,
	// 	peak_height: 0,
	// 	final_position: [0, 0]
	// }


	var upward_knockback = max(0, lengthdir_y(1, hitbox.kb_angle)) * knockback

	var hit_result_info = {
		hitstun: hitstun,
		peak_height: peak_height,
		final_position: [dest_x, dest_y]
	}
	return hit_result_info


#define get_ai_target_remaining_lag()
	if ai_target.state != PS_HITSTUN {
		var hitstun = 0
	} else {
		var hitstun = ai_target.hitstun_full - ai_target.state_timer
	}

	if ai_target.state == PS_PRATLAND or ai_target.state == PS_PRATFALL {
		var prat_lag = 30 // Todo, would like to get real amount of remaining parry lag
	} else {
		var prat_lag = 0
	}

	return max(0, hitstun, prat_lag)



#define learn()
	if(learning_frame < 1) return(false);
	//First, check if we need to move on and study something else
	switch(learning_phase) {
		case "attacks":
			//Study whatever has been assigned to us this lesson
			ai_thoughts = `Learning all about player ${study_player_num}s ${get_attack_name(study_attack_index)}`;
			comprehend_attack(player_ids[study_player_num], study_attack_index);
			
			//Figure out what we'll study next lesson
			study_attack_index++;
			if(study_attack_index >= 50 || player_ids[study_player_num] == noone) {
				//We're studying the next player's attacks
				study_player_num++;
				study_attack_index = 0;
			}
			if(study_player_num >= 5) {
				//We're studying the first player's options now
				learning_phase = "options"; study_option_type = "jump";
				study_player_num = 1;
			}
		break;
		case "options":
			//Study whatever has been assigned to us this lesson
			ai_thoughts = `Learning all about player ${study_player_num}s ${study_option_type}`
			switch(study_option_type) {
				case "jump":
					known_options[study_player_num].jump = {
						frame_heights: [],
						peak_height: 0,
						peak_time: 0
					}
					var sim_frame = 0, sim_vsp = -1 * player_ids[study_player_num].jump_speed, sim_y = 0;
					while(sim_vsp < 0 && sim_frame < 60) {
						sim_frame++; sim_vsp += player_ids[study_player_num].gravity;
						sim_y += sim_vsp;
						array_push(known_options[study_player_num].jump.frame_heights, sim_y);
					}
				break;
				case "shorthop":
					known_options[study_player_num].shorthop = {
						frame_heights: [],
						peak_height: 0,
						peak_time: 0
					}
				break;
				case "double_jump":
					known_options[study_player_num].double_jump = {
						frame_heights: [],
						peak_height: 0,
						peak_time: 0
					}
				break;
				case "wavedash":
					known_options[study_player_num].wavedash = {
						frame_distances: array_create(8, 0),
						initial_hsp: 0,
						duration: 0
					}
					
					//Figure out what we'll study the next lesson
					study_player_num++; study_option_type = "jump";
					if(study_player_num >= 5 || player_ids[study_player_num] == noone) {
						currently_learning = false; //We're done!
					}
				break;
			}
		break;
		default:
			print(`Invalid learning phase: ${learning_phase}. Something is wrong :(`);
			currently_learning = false;
		break;
	}

#define comprehend_attack(attacker, study_index)
	if(attacker == noone) exit;
	
	// var attack_knowledge = ;
	with(attacker) {
		if(get_attack_value(study_index, AG_NUM_WINDOWS) == 0) {
			//this attack doesn't exist
			exit;
		}
		
		var paranoia = undefined
		if attacker == self {
			paranoia = 1//0.85
		} else {
			paranoia = 1.15
		}

		//Prepare basic stuff
		other.known_attacks[@attacker.player][@study_index] = {
			name: get_attack_name(study_index),
			category: get_attack_value(study_index, AG_CATEGORY),
			paranoia: paranoia, //multiplier to the size of predicted hitboxes; doesn't change naturally yet
			parry_reward_mult: 1.0,
			hitboxes_array: [],
			hitboxes_count: 0,
			max_damage: 0,
			first_active_frame: undefined,
			last_active_frame: undefined,
			full_duration: 0,
			max_x_reach: 0,
			max_upward_reach: 0,
			goes_into_pratfall: false
		};
		
		var windows_count = get_attack_value(study_index, AG_NUM_WINDOWS);
		for (var window_i=1; window_i<windows_count+1; window_i++) {
			other.known_attacks[@attacker.player][@study_index].full_duration += get_window_value(study_index, window_i, AG_WINDOW_LENGTH)
			if get_window_value(study_index, window_i, AG_WINDOW_TYPE) == 7 {
				other.known_attacks[@attacker.player][study_index].goes_into_pratfall = true
			}
		}
		
		//Prepare hitboxes array
		var saved_count = 0, valid_count = 0, analyze_hit_index = 1, goal_hit_index = 1 + get_num_hitboxes(study_index);
		while(valid_count < goal_hit_index - 1 && analyze_hit_index <= goal_hit_index + 3) {
			//We assume that if we hit 4 nonexistent hitboxes in a row, the programmer is just a goof who lied about how many hitboxes they have
			if(get_hitbox_value(study_index, analyze_hit_index, HG_HITBOX_TYPE) == 0) {
				//This hitbox doesn't exist
				analyze_hit_index++; continue;
			}
			
			//Hitboxes that have negative window values aren't included
			if(get_hitbox_value(study_index, analyze_hit_index, HG_WINDOW) < 0
			|| get_hitbox_value(study_index, analyze_hit_index, HG_WINDOW) > windows_count) {
				//This hitbox doesn't spawn normally
				analyze_hit_index++; valid_count++; continue;
			}
			
			//Determine the starting frame
			var start_frame = get_hitbox_value(study_index, analyze_hit_index, HG_WINDOW_CREATION_FRAME);
			var process_window = get_hitbox_value(study_index, analyze_hit_index, HG_WINDOW) - 1;
			while(process_window > 0) {
				start_frame += get_window_value(study_index, process_window, AG_WINDOW_LENGTH);
				process_window--;
			}
			if other.known_attacks[@attacker.player][@study_index].first_active_frame == undefined {
				other.known_attacks[@attacker.player][@study_index].first_active_frame = start_frame
			} else {
				other.known_attacks[@attacker.player][@study_index].first_active_frame = min(start_frame, other.known_attacks[@attacker.player][@study_index].first_active_frame)
			}

			var end_frame = start_frame + get_hitbox_value(study_index, analyze_hit_index, HG_LIFETIME)
			if other.known_attacks[@attacker.player][@study_index].last_active_frame == undefined {
				other.known_attacks[@attacker.player][@study_index].last_active_frame = end_frame
			} else {
				other.known_attacks[@attacker.player][@study_index].last_active_frame = max(end_frame, other.known_attacks[@attacker.player][@study_index].last_active_frame)
			}

			//Check if it can be charged
			var charge_window = get_attack_value(study_index, AG_STRONG_CHARGE_WINDOW);
			var charge_window_prior = charge_window != 0 && charge_window < get_hitbox_value(study_index, analyze_hit_index, HG_WINDOW);
			
			var xpos = get_hitbox_value(study_index, analyze_hit_index, HG_HITBOX_X)
			var ypos = get_hitbox_value(study_index, analyze_hit_index, HG_HITBOX_Y)
			var radius_x = 0.5 * get_hitbox_value(study_index, analyze_hit_index, HG_WIDTH)
			var radius_y = 0.5 * get_hitbox_value(study_index, analyze_hit_index, HG_HEIGHT)

			array_push(other.known_attacks[@attacker.player][@study_index].hitboxes_array, {
				damage: get_hitbox_value(study_index, analyze_hit_index, HG_DAMAGE),

				priority: get_hitbox_value(study_index, analyze_hit_index, HG_PRIORITY),
				is_rectangle: get_hitbox_value(study_index, analyze_hit_index, HG_SHAPE) != 0,
				kb_angle: get_hitbox_value(study_index, analyze_hit_index, HG_ANGLE),
				kb_value: get_hitbox_value(study_index, analyze_hit_index, HG_BASE_KNOCKBACK),
				kb_scale: get_hitbox_value(study_index, analyze_hit_index, HG_KNOCKBACK_SCALING),
				hitstun_factor: get_hitbox_value(study_index, analyze_hit_index, HG_HITSTUN_MULTIPLIER),

				radius_x: radius_x,
				radius_y: radius_y,
				xpos: xpos,
				ypos: ypos,
				frame: start_frame,
				end_frame: end_frame,
				can_be_charged: charge_window_prior
			});

			var x_reach = xpos + radius_x
			other.known_attacks[@attacker.player][@study_index].max_x_reach = max(x_reach, other.known_attacks[@attacker.player][@study_index].max_x_reach)

			var upward_reach = -ypos + radius_y
			other.known_attacks[@attacker.player][@study_index].max_upward_reach = max(upward_reach, other.known_attacks[@attacker.player][@study_index].max_upward_reach)
			
			saved_count++; valid_count++; analyze_hit_index++;
		}
		
		//Prepare hitbox-derived details
		other.known_attacks[@attacker.player][@study_index].hitboxes_count = saved_count;
		
	}

#define get_peak_height(upward_velocity, _gravity)
	return power(upward_velocity,2) / (2*_gravity)


#define knows_attack(ai, _player, _attack)
	return ai.known_attacks[_player][_attack] != undefined

#define update_projected_pos_cache
	proj_pos_cache = []
	//Assign friction and gravity
	switch(state) {
		case PS_ATTACK_AIR:
			var frict = "attacking";
			var _grav = "attacking";
			
		break;
		case PS_ATTACK_GROUND:
			var frict = "attacking";
			var _grav = 0;
		break;
		case PS_HITSTUN:
			var frict = air_friction;
			var _grav = hitstun_grav;
		break;
		case PS_WAVELAND:
			var frict = wave_friction;
			var _grav = 0;
			var remaining_waveland = wave_land_time - state_timer;
		break;
		case PS_WALK: case PS_DASH: case PS_DASH_START:
			var frict = 0
			var _grav = 0;
		break;
		case PS_JUMPSQUAT:
			var frict = ground_friction;
			var _grav = 0;
		break;
		default:
			var frict = free?air_friction:ground_friction;
			var _grav = free?gravity_speed:0;
		break;
	}
	
	//Complex friction and gravity
	if(frict == "attacking") {
		if(free) {
			if(get_window_value(attack, window, AG_WINDOW_HSPEED_TYPE) == 1)
				frict = 0;
			else if(get_attack_value(attack, AG_WINDOW_CUSTOM_AIR_FRICTION) != 0)
				frict = get_attack_value(attack, AG_WINDOW_CUSTOM_AIR_FRICTION);
			else
				frict = air_friction;
		}
		else {
			if(get_window_value(attack, window, AG_WINDOW_HSPEED_TYPE) == 1)
				frict = 0;
			else if(get_attack_value(attack, AG_WINDOW_CUSTOM_GROUND_FRICTION) != 0)
				frict = get_attack_value(attack, AG_WINDOW_CUSTOM_GROUND_FRICTION);
			else
				frict = ground_friction;
		}
	}
	if(_grav == "attacking") {
		if(get_window_value(attack, window, AG_WINDOW_VSPEED_TYPE) == 1)
			_grav = 0;
		else if(get_attack_value(attack, AG_USES_CUSTOM_GRAVITY))
			_grav = get_window_value(attack, window, AG_WINDOW_CUSTOM_GRAVITY);
		else
			_grav = gravity_speed;
	}
	
	//Simulate movement
	var last_projected_pos = [x, y]
	var projected_hsp = hsp
	var projected_vsp = vsp
	for (var time_i=0; time_i<maximum_projected_movement_frames; time_i++) {
		if(state == PS_WAVELAND) {
			remaining_waveland--;
			if(remaining_waveland <= 0){
				projected_vsp = 0
				projected_hsp = 0
			} 
		} else if(place_meeting(last_projected_pos[0], last_projected_pos[1], asset_get("par_block"))) {
			projected_vsp = 0
		}
		
		var projected_pos = [last_projected_pos[0] + projected_hsp, last_projected_pos[1] + projected_vsp]
		array_push(proj_pos_cache, projected_pos)

		projected_hsp -= sign(projected_hsp) * frict;
		projected_vsp = min(max_fall, projected_vsp+_grav)
		last_projected_pos = projected_pos
	}
	
#define get_my_projected_pos(time)
	if array_length(proj_pos_cache) == 0 {
		update_projected_pos_cache()
	}
	time = floor(clamp(time, 0, maximum_projected_movement_frames-1))
	return proj_pos_cache[time]
	

#endregion

#region EXECUTION
#define do_plan()
	if plan_timer < array_length(plan){
		var actions_for_turn = plan[plan_timer]
		for (var action_i=0; action_i<array_length(actions_for_turn); action_i++) {
		    var action = actions_for_turn[action_i]
		    do_action(action)
		}
		plan_timer++
		return true
	} else {
		return false
	}
	
	

#define do_action(action_name)
	run_if_exists(action_name)

#endregion



#macro AT_NO_ATTACK 0

#define contains(list, value)
    for (var item_i=0; item_i<array_length(list); item_i++) {
        var item = list[item_i]
        if item == value{
            return true
        }
    }
    return false
    
#define get_is_above_ground() 
	return collision_line(x, y, x, room_height, asset_get("par_block"), 0, 1) > 0;

#region inputs
#define hold_toward_direction(dir)
	if dir < 0 {
		press_left()
	} else {
		press_right()
	}

#define hold_towards_target
	hold_toward_direction(xdisp)

#define hold_away_from_target
	hold_toward_direction(-xdisp)

#define hold_forwards
	hold_toward_direction(spr_dir)

#define hold_backwards
	hold_toward_direction(-spr_dir)

#define hold_neutral
	unpress_left()
	unpress_right()
	unpress_up()
	unpress_down()

#define hold_neutral_stick
	unpress_stick_left()
	unpress_stick_right()
	unpress_stick_up()
	unpress_stick_down()

#define hold_toward_center
	var center_dir = -sign(x - room_width / 2);
	hold_toward_direction(center_dir)

#define tap_current_horizontal_direction
	if left_down {
		tap_left()
	} else if right_down {
		tap_right()
	}

#define unpress_left()
	left_down = false
	left_pressed = false
	left_hard_down = false
	left_hard_pressed = false
	left_strong_down = false
	left_strong_pressed = false

#define unpress_right()
	right_down = false
	right_pressed = false
	right_hard_down = false
	right_hard_pressed = false
	right_strong_down = false
	right_strong_pressed = false

#define unpress_up()
	up_down = false
	up_pressed = false
	up_hard_down = false
	up_hard_pressed = false
	up_strong_down = false
	up_strong_pressed = false

#define unpress_down()
	down_down = false
	down_pressed = false
	down_hard_down = false
	down_hard_pressed = false
	down_strong_down = false
	down_strong_pressed = false
	
#define unpress_stick_left()
	left_stick_down = false
	left_stick_pressed = false

#define unpress_stick_right()
	right_stick_down = false
	right_stick_pressed = false

#define unpress_stick_up()
	up_stick_down = false
	up_stick_pressed = false

#define unpress_stick_down()
	down_stick_down = false
	down_stick_pressed = false

#define press_left()
	left_down = true
	left_pressed = true
	unpress_right()	

#define tap_left()
	press_left()
	left_hard_down = true
	left_hard_pressed = true

#define tap_stick_left()
	left_stick_down = true
	left_stick_pressed = true
	unpress_stick_right()

#define press_right()
	right_down = true
	right_pressed = true
	unpress_left()

#define tap_right()
	press_right()
	right_hard_down = true
	right_hard_pressed = true

#define tap_stick_right()
	right_stick_down = true
	right_stick_pressed = true
	unpress_stick_left()
	
#define press_up()
	up_down = true
	up_pressed = true
	unpress_down()
	
#define tap_up()
	press_up()
	up_hard_down = true
	up_hard_pressed = true

#define tap_stick_up()
	up_stick_down = true
	up_stick_pressed = true
	unpress_stick_down()

#define press_down()
  	down_down = true
  	down_pressed = true
	unpress_up()

#define tap_down
	press_down()
	down_hard_down = true
	down_hard_pressed = true

#define tap_stick_down()
	down_stick_down = true
	down_stick_pressed = true
	unpress_stick_up()

#define unpress_actions
	attack_down = false
	attack_pressed = false
	special_down = false
	special_pressed = false
	
	strong_down_pressed = false
	strong_down_down = false
	up_strong_pressed = false
	up_strong_down = false
	left_strong_pressed = false
	left_strong_down = false
	right_strong_pressed = false
	right_strong_down = false
	down_strong_pressed = false
	down_strong_down = false

	parry_pressed = false
	parry_down = false
	shield_pressed = false
	shield_down = false

#define press_attack()
	unpress_actions()
	attack_down = true
	attack_pressed = true
	
#define press_special()
	unpress_actions()
	special_pressed = true
	special_down = true
	
#define press_strong()
	unpress_actions()
	if up_pressed{
		up_strong_pressed = true
		up_strong_down = true
	}
	if left_pressed {
		left_strong_pressed = true
		left_strong_down = true
	}
	if right_pressed {
		right_strong_pressed = true
		right_strong_down = true
	}
	if down_pressed {
		down_strong_pressed = true
		down_strong_down = true
	}


#define press_jump()
	jump_pressed = true
	jump_down = true

#define unpress_jump()
	jump_pressed = false
	jump_down = false

#define press_parry()
	shield_pressed = true
	shield_down = true
	parry_pressed = true
	parry_down = true

#define debug_keyboard_pressed(index)
	if(keyboard_lastkey == ord(string(index))) {
		keyboard_lastkey = 0;
		return(true);
	}
	else return(false);

#define direction_to_target()		
	var direction_to_target = sign(xdisp)
	if direction_to_target == 0 {
		return spr_dir
	} else {
		return direction_to_target
	}
#endregion


// #define perform_attack(_attack)
// 	switch _attack {
// 		case AT_JAB:	
// 			press_attack()
// 		break
// 		case AT_DATTACK:
// 			hold_neutral()
// 			hold_towards_target()
// 			tap_current_horizontal_direction()
// 			press_attack()
// 		break
// 		case AT_NSPECIAL:
// 			hold_neutral()
// 			press_special()
// 		break
// 		case AT_FSPECIAL:
// 		case AT_FSPECIAL_2:
// 		case AT_FSPECIAL_AIR:
// 			hold_neutral()
// 			hold_towards_target();
// 			press_special()
// 		break
// 		case AT_USPECIAL:
// 			hold_neutral()
// 			hold_towards_target()
// 		break
// 		case AT_DSPECIAL:
// 		case AT_DSPECIAL_2:
// 		case AT_DSPECIAL_AIR:
// 			tap_down()
// 			hold_towards_target()
// 			press_special()
// 		break
// 		case AT_FSTRONG:
// 			hold_neutral()
// 			hold_towards_target()
// 			press_strong()
// 		case AT_USTRONG:
// 			press_up()
// 			hold_towards_target()
// 			press_strong()
// 		break
// 		case AT_DSTRONG:
// 			press_down()
// 			hold_towards_target()
// 			press_strong()
// 		break
// 		case AT_FTILT:
// 			hold_neutral()
// 			hold_towards_target()
// 			press_attack()
// 		break
// 		case AT_UTILT:
// 			press_up()
// 			hold_towards_target()
// 			press_attack()
// 		break
// 		case AT_DTILT:
// 			press_down()
// 			hold_towards_target()
// 			press_attack()
// 		break
// 		case AT_NAIR:
// 			hold_neutral()
// 			press_attack()
// 			if !free { 
// 				// Todo, if hitbox too low, jump
// 				jump_down = (y <= ai_target.y - ai_target.char_height); 
// 				jump_pressed = jump_down
// 				down_hard_pressed = (y > ai_target.y)
// 			} 
// 			break
// 		case AT_FAIR:
// 			hold_neutral()
// 			hold_forwards()
// 			press_attack()
// 			if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } 
// 		break
// 		case AT_DAIR:
// 			press_down()
// 			hold_towards_target()
// 			press_attack()
// 			if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } 
// 		break
// 		case AT_UAIR:
// 			press_up()
// 			hold_towards_target()
// 			press_attack()
// 			if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } 
// 		break
// 		case AT_BAIR:
// 			hold_neutral()
// 			hold_backwards()
// 			if (!free) { jump_down = (y <= ai_target.y - ai_target.char_height); jump_pressed = jump_down; down_hard_pressed = (y > ai_target.y); } 
// 			// if (!free) { 
// 			// 	press_jump() 
// 			// 	hold_away_from_target()
// 			// 	epinel_ai_buffer_hold_jump = max(epinel_ai_buffer_hold_jump, 2); 
// 			// } else {  
// 			// 	press_attack()
// 			// 	jump_down = (!free || (y <= ai_target.y - ai_target.char_height)); 
// 			// 	jump_pressed = jump_down; 
// 			// 	down_hard_pressed = (y > ai_target.y); 
// 			// } 
// 		break
// 		case AT_TAUNT:
// 			taunt_down = true;
// 		break
// 	}
	
	
	
	
#define get_attack_name(attack)
	switch(attack) {
		case AT_JAB: return("AT_JAB"); break;
		case AT_FTILT: return("AT_FTILT"); break;
		case AT_DTILT: return("AT_DTILT"); break;
		case AT_UTILT: return("AT_UTILT"); break;
		case AT_FSTRONG: return("AT_FSTRONG"); break;
		case AT_DSTRONG: return("AT_DSTRONG"); break;
		case AT_USTRONG: return("AT_USTRONG"); break;
		case AT_DATTACK: return("AT_DATTACK"); break;
		case AT_FAIR: return("AT_FAIR"); break;
		case AT_BAIR: return("AT_BAIR"); break;
		case AT_DAIR: return("AT_DAIR"); break;
		case AT_UAIR: return("AT_UAIR"); break;
		case AT_NAIR: return("AT_NAIR"); break;
		case AT_FSPECIAL: return("AT_FSPECIAL"); break;
		case AT_DSPECIAL: return("AT_DSPECIAL"); break;
		case AT_USPECIAL: return("AT_USPECIAL"); break;
		case AT_NSPECIAL: return("AT_NSPECIAL"); break;
		case AT_TAUNT: return("AT_TAUNT"); break;
		case AT_FSTRONG_2: return("AT_FSTRONG_2"); break;
		case AT_DSTRONG_2: return("AT_DSTRONG_2"); break;
		case AT_USTRONG_2: return("AT_USTRONG_2"); break;
		case AT_FTHROW: return("AT_FTHROW"); break;
		case AT_UTHROW: return("AT_UTHROW"); break;
		case AT_DTHROW: return("AT_DTHROW"); break;
		case AT_NTHROW: return("AT_NTHROW"); break;
		case AT_NSPECIAL_AIR: return("AT_NSPECIAL_AIR"); break;
		case AT_NSPECIAL_2: return("AT_NSPECIAL_2"); break;
		case AT_FSPECIAL_AIR: return("AT_FSPECIAL_AIR"); break;
		case AT_FSPECIAL_2: return("AT_FSPECIAL_2"); break;
		case AT_USPECIAL_GROUND: return("AT_USPECIAL_GROUND"); break;
		case AT_USPECIAL_2: return("AT_USPECIAL_2"); break;
		case AT_DSPECIAL_AIR: return("AT_DSPECIAL_AIR"); break;
		case AT_DSPECIAL_2: return("AT_DSPECIAL_2"); break;
		case AT_TAUNT_2: return("AT_TAUNT_2"); break;
		case AT_EXTRA_1: return("AT_EXTRA_1"); break;
		case AT_EXTRA_2: return("AT_EXTRA_2"); break;
		case AT_EXTRA_3: return("AT_EXTRA_3"); break;
		default:
			if("AT_PHONE" in self && attack == AT_PHONE) return("AT_PHONE");
			return(string(attack));
		break;
	}
	
#define get_attack_plan(_attack)
	switch _attack {
		case AT_JAB:	
			return [["press_attack"]]
		break
		case AT_DATTACK:
			return [["hold_neutral", "hold_towards_target", "tap_current_horizontal_direction",
			"press_attack"]]
		break
		case AT_NSPECIAL:
			return[["hold_neutral", "press_special"]]
		break
		case AT_FSPECIAL:
		case AT_FSPECIAL_2:
		case AT_FSPECIAL_AIR:
			return[["hold_neutral",	"hold_towards_target", "press_special"]]
		break
		case AT_USPECIAL:
			return[["press_up",	"hold_towards_target", "press_special"]]
		break
		case AT_DSPECIAL:
		case AT_DSPECIAL_2:
		case AT_DSPECIAL_AIR:
			return[["press_down", "hold_towards_target", "press_special"]]
		break
		case AT_FSTRONG:
			return[["hold_neutral",	"hold_towards_target", "press_strong"]]
		case AT_USTRONG:
			return[["press_up", "press_strong"]]
		break
		case AT_DSTRONG:
			return[["press_down", "press_strong"]]
		break
		case AT_FTILT:
			return[["hold_neutral", "hold_towards_target", "press_attack"]]
		break
		case AT_UTILT:
			return[["press_up", "hold_towards_target", "press_attack"]]
		break
		case AT_DTILT:
			return[["press_down", "hold_towards_target", "press_attack"]]
		break
		case AT_NAIR:
			return[["hold_neutral", "press_attack"]]
		break
		case AT_UAIR:
			return[["hold_towards_target", "tap_stick_up"]]
		break
		case AT_DAIR:
			return[["hold_towards_target", "tap_stick_down"]]
		break
		case AT_FAIR:
			return[["hold_towards_target", "tap_stick_forwards"]]
		break
		case AT_BAIR:
			return[["hold_towards_target", "tap_stick_backwards"]]
		break
		
		default:
			// print(`rejecting currently unsupported attack ${get_attack_name(_attack)}`)
			return undefined
	}

#define find_player_instance(number)
	with(oPlayer) if(player == number) return(id);
	return(noone);
	
#define run_if_exists 
    // script_name, ...args
    var script_name = argument[0]
    var num_args = argument_count - 1;
    var args = array_create(num_args);
    for (var i = 0; i < num_args; i++) args[i] = argument[i+1];
    run_if_exists_with_args(script_name, args)

#define run_if_exists_with_args(script_name, args)
    var script_index = script_get_index(script_name)
    if script_index >= 0 {       
        var num_args_to_pass = array_length(args);
        switch(num_args_to_pass) {
            case 0: script_execute(script_index); break;
            case 1: script_execute(script_index, args[0]); break;
            case 2: script_execute(script_index, args[0], args[1]); break;
            case 3: script_execute(script_index, args[0], args[1], args[2]); break;
            default: var crash_var = 1/0 break; // Crash. Add more support for the number of arguments you need.
        }
    }

//TODO put back
#define amount_of_rectangle_overlap(left1, top1, right1, bottom1, left2, top2, right2, bottom2)
	// var intersect_left = max(left1, left2)
	// var intersect_right = min(right1, right2)

	// var intersect_top = max(top1, top2)
	// var intersect_bottom = min(bottom1, bottom2)
	// if intersect_right < intersect_left or intersect_bottom < intersect_top {
	// 	return {
	// 		overlap: 0,
	// 		xdist: max(0, intersect_left - intersect_right),
	// 		ydist: max(0, intersect_top - intersect_bottom),
	// 	}
	// }

	// var overlap = (intersect_left-intersect_right) * (intersect_top-intersect_bottom)
	return {
		overlap: 0,//overlap,
		xdist: 0,
		ydist: 0,
	}

#define array_push_start(arr, val)
	var new_arr = [val]
	for (var i=0; i<array_length(arr); i++) {
        array_push(new_arr, arr[i])
    }
    return new_arr;

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define prints // Version 0
    // Prints each parameter to console, separated by spaces.
    var _out_string = string(argument[0])
    for (var i=1; i<argument_count; i++) {
        _out_string += " "
        _out_string += string(argument[i])
    }
    print(_out_string)

#define list // Version 0
    // / list(?array = undefined)
    var array = argument_count > 0 ? argument[0] : undefined;
    // Convert the array to a list
        if array == undefined {
            array = []
        }
        var size = array_length(array)
        var array = _list_reallocate_array(array, size)
        return {
            size:size,
            a:array
        }

#define _list_reallocate_array(array, size) // Version 0
    // Allocates space for the array with some extra padding
    if size < 9 {
        var padding = 3
    } else {
        var padding = 6
    }
    var alloc_size = size + (size >> 3) + padding
    var new_array = array_create(alloc_size, undefined)
    array_copy(new_array, 0, array, 0, alloc_size)
    return new_array
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion