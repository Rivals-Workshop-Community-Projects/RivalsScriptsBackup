// Check if the ai is fighting or running
if (get_training_cpu_action() == CPU_FIGHT && ai_target != self) {
	if (ai_target.initial_invince && temp_level > 5) {
		var ai_fighting = false;
		var ai_running = true;
	} else {
		var ai_fighting = true;
		var ai_running = false;
	}
} else {
	var ai_running = false;
	var ai_fighting = false;
}

// Check if the ai is in a attack state
var ai_atk_state = (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND);

// Check if the ai is facing its target
var ai_facing = (spr_dir == 1 && x < ai_target.x) || (spr_dir == -1 && x > ai_target.x);

// Get distance from target's point
var targ_distance = point_distance(x, y, ai_target.x, ai_target.y);

// Get distances from target's bounding box
if (x < ai_target.bbox_left) {
	var ai_xdist = abs(ai_target.bbox_left - x);
} else if (x > ai_target.bbox_right) {
	var ai_xdist = abs(ai_target.bbox_right - x);
} else {
	var ai_xdist = 0;
}
var ai_ydist = ai_target.y - y; // Negative = Above; Positive = Below

// Get Stage Information
var stage_center = room_width / 2;
var stage_left = get_stage_data(SD_X_POS);
var stage_right = room_width - get_stage_data(SD_X_POS);
var stage_top = get_stage_data(SD_Y_POS);
if (x < stage_center) {
	var edge_dist = (x - stage_left) * -1;
} else {
	var edge_dist = x - stage_right;
}

// Check if target is offstage
if (ai_target != self) {
	with (ai_target) {
		if (x > stage_right || x < stage_left) &&
		   (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 1500, asset_get("par_block"), false, true) == noone) &&
		   (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 1500, asset_get("par_jumpthrough"), false, true) == noone) {
			var target_offstage = true;
		} else {
			var target_offstage = false;
		}
	}
} else {
	var target_offstage = false;
}

// Determine Edgeguarding
if (ai_fighting && temp_level > 3 && target_offstage && !block_check(250, 40, 0, 120, "both")) {
	var ai_edgeguarding = true;
} else {
	var ai_edgeguarding = false;
}
ai_test_3 = ai_edgeguarding;

// Keep the ai from holding buttons when they're not supposed to
attack_down = false;
strong_down = false;
special_down = false;
shield_down = false
taunt_pressed = false;
taunt_down = false;

//-------------------------------------------------------------------------
// Toxic code
if (ai_target.state != PS_DEAD && ai_target.state != PS_RESPAWN && ai_target != self) {
	ai_taunt = 0;
} else if (!get_match_setting(SET_PRACTICE)) {
	if (ai_taunt == 0) {
		ai_taunt = 1;
	}
	if (!free) {
		ready_to_attack = false;
		if (ai_taunt == 1) {
			ai_taunt = 2 + random_func(0, 3, true);
		} else if (ai_taunt == 2) {
			taunt_pressed = true;
			if (attack == AT_TAUNT) {
				ai_taunt = -1;
			}
		} else if (ai_taunt == 3) {
			right_down = (spr_dir == 1);
			left_down = (spr_dir == -1);
			taunt_pressed = true;
			if (attack == AT_TAUNT_2) {
				ai_taunt = -1;
			}
		} else if (ai_taunt == 4) {
			left_down = true;
			right_down = true;
		}
	}
}

// Get ai to walljump when recovering
if (place_meeting(x+5*spr_dir,y,asset_get("par_block")) && can_wall_jump && has_walljump && ai_recovering) {
	jump_pressed = true;
}

// Unique Attack Knowledge
if (ai_atk_state) {
	switch (attack) {
		case AT_UTILT:
			if (window == 1) {
				if (temp_level >= 6) {
					if (ai_xdist <= 36 && ai_ydist <= -15) {
						attack_down = true;
					}
				} else if (temp_level > 2 && random_func(14, 4, true) > 1) {
					attack_down = true;
				}
			}
			break;
		case AT_DAIR:
			if (window == 3) {
				if (ai_recovering && has_airdodge) {
					shield_pressed = true;
				} else if (ai_ydist < -25 && temp_level > 3) {
					if (ai_ydist < -40) {
						ai_hold_dir("U", false);
					} else if (ai_xdist > 21 && ai_facing) {
						ai_hold_dir("F", false);
					} else if (ai_xdist > 32 && !ai_facing) {
						ai_hold_dir("B", false);
					} else {
						ai_hold_dir("N", false);
					}
					attack_pressed = true;
				}
			}
			break;
		case AT_NSPECIAL:
			if (window <= 2 && ai_fighting) {
				if (temp_level > 1) {
					var random_throw = random_func(8, 5, true);
					switch (random_throw) {
						case 0:
							ai_hold_dir("N", false);
							break;
						case 1:
							ai_hold_dir("F", false);
							break;
						case 2:
							ai_hold_dir("B", false);
							break;
						case 3:
							ai_hold_dir("U", false);
							break;
						case 4:
							ai_hold_dir("D", false);
							break;
					}
				} else if (temp_level >= 5) {
					if (ai_ydist <= -100 && ai_xdist <= 120) {
						ai_hold_dir("U", false);
					} else if (ai_xdist <= 100) {
						if (ai_ydist < -60) {
							ai_hold_dir("B", false);
						} else {
							ai_hold_dir("D", false);
						}
					} else if (ai_xdist <= 210) {
						ai_hold_dir("N", false);
					} else {
						ai_hold_dir("F", false);
					}
					if (random_func(13, 19, true) > 2 && targ_distance > 100 &&
					    !projectile_react(16)) {
						special_down = true;
					}
				}
			}
			break;
		case AT_FSPECIAL:
			if (window == 1 && instance_exists(my_barrel) && ai_fighting) {
				if (temp_level >= 5) {
					var tb_dist = (ai_target.x - my_barrel.x) * spr_dir;
					if (spr_dir == 1) {
						var targ_speed = min(round(ai_target.hsp), 0);
					} else {
						var targ_speed = max(round(ai_target.hsp), 0);
					}
					if (abs(tb_dist) > 60 + (abs(targ_speed) * 22)) {
						special_down = true;
						if (tb_dist < -40 || ai_xdist < 40 ||
						    projectile_react(15) || ai_recovering) {
							shield_pressed = true;
						}
					}
				} else if (temp_level > 1 && random_func(3, 30, true) > 0 && ai_xdist > 70) {
					special_down = true;
					if (projectile_react(15) || ai_recovering ||
					    random_func(6, 40, true) == 0) {
						shield_pressed = true;
					}
				}
			}
			break;
	}
}

if (ai_running) { // Run from respawning targets
	if (!ai_recovering) {
		attack_pressed = false;
		special_pressed = false;
		left_strong_pressed = false;
		right_strong_pressed = false;
		up_strong_pressed = false;
		down_strong_pressed = false;
		if (!free) {
			ai_commit_dir = 0;
		}
		if (ai_commit_dir != 0) { // Move in one direction towards the stage
			jump_down = true;
			if (ai_commit_dir == 1) { // Move towards stage
				right_down = true;
				left_down = false;
			} else {
				left_down = true;
				right_down = false;
			}
			// Airdodge away
			if (vsp <= 2 && vsp >= -2 && has_airdodge && random_func(20, 28 - (temp_level * 2), true) == 0) {
				if (ai_dodge_dir == -1) {
					var rng_dir = random_func(24, 3, true);
					if (ai_commit_dir == 1) { // Dodge towards the right
						if (rng_dir == 0) {
							ai_dodge_dir = 0;
						} else if (rng_dir == 1) {
							ai_dodge_dir = 45;
						} else if (rng_dir == 2) {
							ai_dodge_dir = 315;
						}
					} else { // Dodge towards the left
						if (rng_dir == 0) {
							ai_dodge_dir = 180;
						} else if (rng_dir == 1) {
							ai_dodge_dir = 135;
						} else if (rng_dir == 2) {
							ai_dodge_dir = 225;
						}
					}
				}
				shield_pressed = true;
			}
			// Double Jump
			if (vsp >= -2 && !fast_falling && djumps < max_djumps && random_func(15, 28 - (temp_level * 2), true) == 0) {
				shield_pressed = false;
				jump_pressed = true;
			}
			// Fast Fall to run sooner
			if (vsp >= 1 && !fast_falling && can_fast_fall && random_func(10, 13 - temp_level, true) == 0) {
				shield_pressed = false;
				down_down = true;
				down_hard_pressed = true;
			}
			// Use attacks to evade (if target is on the same side of the stage)
			if (vsp >= -3 && !fast_falling && state_cat == SC_AIR_NEUTRAL && random_func(5, 36 - (temp_level * 2), true) == 0 &&
			    sign(stage_center - x) == sign(stage_center - ai_target.x)) {
				if (move_cooldown[AT_USPECIAL] == 0) {
					left_down = false;
					right_down = false;
					up_down = true;
					down_down = false;
					special_pressed = true;
				}
			}
		} else if (edge_dist <= -50 && (state_cat == SC_AIR_NEUTRAL || !free)) { // Run from target
			if (ai_target.x > x) {
				left_down = true;
				right_down = false;
				left_hard_pressed = true;
			} else {
				left_down = false;
				right_down = true;
				right_hard_pressed = true;
			}
			// Roll if target is at least as fast as me
			if (abs(ai_target.hsp) >= abs(hsp) && ai_target.spr_dir == spr_dir &&
			    ai_target.hsp != 0 && targ_distance <= 120 &&
			   (random_func(9, 11 - temp_level, true) == 0 || temp_level == 9)) ||
			   (state == PS_PARRY_START) {
				if (ai_target.x < x) {
					left_down = true;
					right_down = false;
				} else {
					left_down = false;
					right_down = true;
				}
				shield_pressed = true;
			}
		} else if (targ_distance <= 180) { // If cornered, do something else
			if (!free) {
				var evade_act = random_func(22, 7, true);
				if (evade_act == 0) { // Roll to the other side
					if (x < stage_center) {
						right_down = true;
						left_down = false;
					} else {
						left_down = true;
						right_down = false;
					}
					shield_pressed = true;
				} else if (evade_act == 1) { // Jump over target
					jump_pressed = true;
				} else if (evade_act == 2) { // Use attack
					if (x < stage_center) {
						right_down = true;
						left_down = false;
					} else {
						left_down = true;
						right_down = false;
					}
					special_pressed = true;
				}
			}
			if (jump_pressed || free) { // Part of the jumping process
				if (x < stage_center) {
					right_down = true;
					left_down = false;
				} else {
					left_down = true;
					right_down = false;
				}
				jump_down = true;
			}
			if (free) { // Keep the ai from going in one direction after jumping
				if (x < stage_center) {
					ai_commit_dir = 1;
				} else {
					ai_commit_dir = -1;
				}
			}
		}
		// Airdodge direction control
		if (prev_state == PS_AIR_DODGE) {
			ai_dodge_dir = -1;
		} else if (state == PS_AIR_DODGE && ai_dodge_dir > -1) {
			joy_pad_idle = false;
			joy_dir = ai_dodge_dir;
		}
	}
} else if (ai_fighting) { // AI Fight Improvement Code
	// Increase aggression if ai level is 9 & opponent is in hitstun or close
	if (temp_level == 9 && (ai_target.state == PS_HITSTUN || ai_target.state == PS_HITSTUN_LAND
	    || ai_target.state == PS_PRATFALL || ai_target.state == PS_PRATLAND || targ_distance < 100)) {
		ai_attack_time = 0;
	}
	
	// Keep the ai from randomly not looking at their target
	if (temp_level >= 6 && state_cat == SC_GROUND_NEUTRAL && !ai_facing) {
		if (x > ai_target.x) {
			left_down = true;
			right_down = false;
		} else if (x < ai_target.x) {
			left_down = false;
			right_down = true;
		}
	}
	
	// Drop through platforms if the target is under you (ai does not do this if the target is still close)
	if (temp_level >= 4 && ground_type == 2 && ai_xdist <= 50 && ai_ydist > 50) {
		attack_pressed = false;
		special_pressed = false;
		left_strong_pressed = false;
		right_strong_pressed = false;
		up_strong_pressed = false;
		down_strong_pressed = false;
		if (state_cat == SC_GROUND_NEUTRAL || state == PS_DASH ||
		     state == PS_DASH_START || state == PS_DASH_STOP) {
			down_hard_pressed = true;
		}
	}
	
	// Rush after target at level 9 if they're far away
	if (temp_level == 9 && ai_xdist > 140 && !ai_going_into_attack &&
	    !ai_atk_state && !ai_edgeguarding && !ai_recovering) {
		right_pressed = false;
		left_pressed = false;
		right_down = false;
		left_down = false;
		if (ai_target.x < x) {
			left_down = true;
		} else {
			right_down = true;
		}
		if (state != PS_DASH && state != PS_DASH_START) || (!ai_facing) {
			left_hard_pressed = left_down;
			right_hard_pressed = right_down;
		}
	}
	
	// Avoid getting trapped under your own barrel
	if ((!ai_atk_state || can_shield) &&
	    temp_level > 5 && instance_exists(my_barrel)) {
		if (my_barrel.state == 1 && my_barrel.free) {
			if (place_meeting(x + (20 * spr_dir), y - 180, my_barrel) && y > my_barrel.y) {
				if (my_barrel.x < x) {
					right_pressed = true;
					left_pressed = false;
					right_down = true;
					left_down = false;
					joy_pad_idle = false;
					joy_dir = 0;
				} else {
					right_pressed = false;
					left_pressed = true;
					right_down = false;
					left_down = true;
					joy_pad_idle = false;
					joy_dir = 180;
				}
				shield_pressed = true;
			}
		}
	}
	
	// Get ai to use full jabs
	if (temp_level > 1 && get_window_value(attack, window, AG_WINDOW_CANCEL_TYPE) == 1 && ai_atk_state) {
		ai_hold_dir("N", false);
		if (has_hit_player) { // Get the distance from the hit player
			var hit_dist = point_distance(x, y, hit_player_obj.x, hit_player_obj.y);
		} else {
			var hit_dist = 0;
		}
		if (temp_level >= 5) { // Continue Jab if hit player is in front and close
			if ((has_hit_player && hit_dist <= 150 && (hit_player_obj.x - x) * spr_dir >= 0) ||
			   (!has_hit_player && has_hit)) && (!was_parried) {
				attack_pressed = true;
			}
		} else if (random_func(2, 7, true) == 0) {
			attack_pressed = true;
		}
	}
	
	// Charge Smash attacks
	if (ai_atk_state && instance_exists(ai_target) &&
	    get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) > 0) {
		if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW)) {
			if (ai_facing && !projectile_react(10)) {
				if (strong_charge == 0 && random_func(0, 2, true) != 0) ||
				   (strong_charge > 0 && random_func(10, 40, true) != 0) ||
				   (ai_edgeguarding) {
					strong_down = true;
					if (targ_distance < 140) && (ai_edgeguarding || ai_target.state == PS_PARRY ||
					    ai_target.state == PS_ATTACK_GROUND || ai_target.state == PS_ATTACK_AIR) {
						strong_down = false;
					}
				}
			}
		}
	}
	
	// Edgeguard
	if (ai_edgeguarding && !ai_atk_state) {
		if (targ_distance > 120 && targ_distance <= 280 && random_func(7, 50 - (temp_level * 5), true) == 0) {
			if (!free) {
				var my_attack = random_func(10, 6, true);
				if (my_attack == 0) {
					if (ai_target.x > x) {
						right_strong_pressed = true;
					} else {
						left_strong_pressed = true;
					}
				} else if (my_attack == 1) {
					down_strong_pressed = true;
				} else if (my_attack == 2 || my_attack == 3) {
					ai_hold_dir("N", false);
					special_pressed = true;
				} else if (my_attack >= 4) {
					ai_hold_dir("F", false);
					special_pressed = true;
				}
			} else {
				ai_hold_dir("N", false);
				special_pressed = true;
			}
		}
	}
	
	// If possible, be defensive while recovering
	if (ai_recovering && temp_level > 3) {
		var bottom_blastzone = stage_top + get_stage_data(SD_BOTTOM_BLASTZONE);
		if (edge_dist > 0 && edge_dist <= 360 && targ_distance <= 100 && y < bottom_blastzone - 300 &&
		   (djumps < max_djumps || has_walljump || has_airdodge) && random_func(3, 39 - (temp_level * 4), true) == 0) {
			var defend_atk = random_func(7, 2, true); // Use neutral air or not
			if (can_attack) {
				joy_dir = point_direction(x, y, ai_target.x, ai_target.y);
				right_down = (defend_atk == 1 && (joy_dir <= 45 || joy_dir >= 315));
				up_down = (defend_atk == 1 && joy_dir >= 45 && joy_dir <= 135);
				left_down = (defend_atk == 1 && joy_dir >= 135 && joy_dir <= 225);
				down_down = (defend_atk == 1 && joy_dir >= 225 && joy_dir <= 315);
				attack_pressed = true;
			}
		}
	}
	
	// Get ai to jump a bit more when target is close
	if (temp_level >= 5) {
		if (targ_distance < 125) {
       		       	if (random_func(5, 10, true) == 0 && !free && can_attack && can_jump) {
				jump_pressed = true;
       		       	}
		}
	}
}

// Parry projectiles or airdodge from them
if (get_training_cpu_action() == CPU_FIGHT || get_training_cpu_action() == CPU_EVADE) {
	if (projectile_react(7)) {
		if (free && has_airdodge && can_shield) {
			shield_pressed = true;
		} else if (!free) && (state_cat == SC_GROUND_NEUTRAL || can_shield ||
		           state == PS_DASH || state == PS_DASH_START || state == PS_DASH_STOP) {
			ai_hold_dir("N", false);
			jump_pressed = false;
			shield_pressed = true;
		}
	}
}

// ----- Custom AI Functions ----- 
// --- Checks for incoming projectiles (returns true or false) --- 
#define projectile_react(proj_distance)
// The customizable distance required to check for projectiles coming
var proj_distance = argument[0];

var incoming_proj = noone;
with (asset_get("pHitBox")) {
	if (type == 2 && (player != other.player || can_hit_self)) {
		if (hit_priority > 0 && can_hit[other.player] && (damage > 0 || hitstun_factor >= 0 || kb_value > 0 || kb_scale > 0)) {
			if (instance_place(x + (proj_distance * hsp), y + (proj_distance * vsp), other)) {
				var incoming_proj = self;
			}
		}
	}
}
if (instance_exists(incoming_proj) && temp_level > 1) {
	var proj_speed = max(abs(incoming_proj.hsp), abs(incoming_proj.vsp));
	var reaction = 1 + random_func(8, 40 - (4 * temp_level) + round(proj_speed), true);
	if (reaction <= 10) {
		return true;
	}
}
return false;

// --- Checks for blocks in regions in front of the player (returns true or false) --- 
#define block_check(far_dist, near_dist, top_dist, bot_dist, block_type)

// Distances to check for blocks
var far_dist = argument[0];
var near_dist = argument[1];
var top_dist = argument[2]; // (Both top and bottom distances start at bbox_bottom)
var bot_dist = argument[3];

// The type of block to check for (0 = solid, 1 = jumpthrough, 2 = both)
var block_type = argument[4];

switch (block_type) {
	case "solid":
		var find_bs = true;
		var find_ps = false;
		break;
	case "jumpthrough":
		var find_bs = false;
		var find_ps = true;
		break;
	case "both":
		var find_bs = true;
		var find_ps = true;
		break;
	default:
		var find_bs = false;
		var find_ps = false;
		print_debug("Block type unavailable.");
		break;
}

// Check for blocks or platforms (returns true if one is found)
if (spr_dir == -1) { // When facing left
	if (collision_rectangle(bbox_left - far_dist, bbox_bottom + top_dist, bbox_left - near_dist, bbox_bottom + bot_dist,
	    asset_get("par_block"), true, true) != noone && find_bs) ||
	   (collision_rectangle(bbox_left - far_dist, bbox_bottom + top_dist, bbox_left - near_dist, bbox_bottom + bot_dist,
	    asset_get("par_jumpthrough"), true, true) != noone && find_ps) {
		return true;
	} else {
		return false;
	}
} else if (spr_dir == 1) { // When facing right
	if (collision_rectangle(bbox_right + near_dist, bbox_bottom + top_dist, bbox_right + far_dist, bbox_bottom + bot_dist,
	    asset_get("par_block"), true, true) != noone && find_bs) ||
	   (collision_rectangle(bbox_right + near_dist, bbox_bottom + top_dist, bbox_right + far_dist, bbox_bottom + bot_dist,
	    asset_get("par_jumpthrough"), true, true) != noone && find_ps) {
		return true;
	} else {
		return false;
	}
} else {
	return false;
}

// --- Tells which direction the AI should hold. Must be called on every frame when used --- 
#define ai_hold_dir(hold_dir, do_hard_press)

// Which direction should the ai hold? Options are below.
var hold_dir = argument[0];

// Should the hold include a hard press? Must be true or false.
var do_hard_press = argument[1];

left_pressed = false;
left_down = false;
right_pressed = false;
right_down = false;
up_pressed = false;
up_down = false;
down_pressed = false;
down_down = false;

switch (hold_dir) {
	case "N": // Hold Nothing
		joy_pad_idle = true;
		break;
	case "F": // Hold Forward
		left_down = (spr_dir == -1);
		right_down = (spr_dir == 1);
		joy_pad_idle = false;
		joy_dir = 90 - (90 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == -1);
			right_hard_pressed = (spr_dir == 1);
		}
		break;
	case "B": // Hold Backward
		left_down = (spr_dir == 1);
		right_down = (spr_dir == -1);
		joy_pad_idle = false;
		joy_dir = 90 + (90 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == 1);
			right_hard_pressed = (spr_dir == -1);
		}
		break;
	case "U": // Hold Upward
		up_down = true;
		joy_pad_idle = false;
		joy_dir = 90;
		if (do_hard_press) {
			up_hard_pressed = true;
		}
		break;
	case "D": // Hold Downward
		down_down = true;
		joy_pad_idle = false;
		joy_dir = 270;
		if (do_hard_press) {
			down_hard_pressed = true;
		}
		break;
	case "UF": // Hold Up-Forward
		left_down = (spr_dir == -1);
		right_down = (spr_dir == 1);
		up_down = true;
		joy_pad_idle = false;
		joy_dir = 90 - (45 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == -1);
			right_hard_pressed = (spr_dir == 1);
		}
		break;
	case "UB": // Hold Up-Backward
		left_down = (spr_dir == 1);
		right_down = (spr_dir == -1);
		up_down = true;
		joy_pad_idle = false;
		joy_dir = 90 + (45 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == 1);
			right_hard_pressed = (spr_dir == -1);
		}
		break;
	case "DF": // Hold Down-Forward
		left_down = (spr_dir == -1);
		right_down = (spr_dir == 1);
		down_down = true;
		joy_pad_idle = false;
		joy_dir = 270 - (45 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == -1);
			right_hard_pressed = (spr_dir == 1);
		}
		break;
	case "DB": // Hold Down-Backward
		left_down = (spr_dir == 1);
		right_down = (spr_dir == -1);
		down_down = true;
		joy_pad_idle = false;
		joy_dir = 270 + (45 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == 1);
			right_hard_pressed = (spr_dir == -1);
		}
		break;
}
