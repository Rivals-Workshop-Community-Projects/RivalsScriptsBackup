// Check if the ai is fighting or running
if (get_training_cpu_action() == CPU_FIGHT && ai_target != self) {
	if (ai_target.initial_invince && temp_level >= 5) {
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

// Check if the target is in a attack state
var targ_atk_state = (ai_target.state == PS_ATTACK_AIR || ai_target.state == PS_ATTACK_GROUND);

// Check if the ai is facing its target
var ai_facing = (spr_dir == 1 && x < ai_target.x) || (spr_dir == -1 && x > ai_target.x);

// Check if target is in an disvantage
var targ_disadv = (ai_target.state == PS_PRATLAND || ai_target.state == PS_PRATFALL ||
		   ai_target.state_cat == SC_HITSTUN || ai_target.was_parried);

// Get distance from target's point
var targ_dist = point_distance(x, y, ai_target.x, ai_target.y);

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

// Get the side blastzone xs in case of walk-offs
var left_bz = get_stage_data(SD_LEFT_BLASTZONE_X);
var right_bz = get_stage_data(SD_RIGHT_BLASTZONE_X);
var side_bz_dist = min(abs(x - left_bz), abs(x - right_bz));

// Determine Edgeguarding
var ai_edgeguarding = (ai_fighting && temp_level > 3 && target_offstage && !block_check(250, 40, 0, 1500, "both"));

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

// Update close attack selection
if (ai_ydist <= -90) {
	close_up_attacks[0] = AT_USTRONG;
	close_up_attacks[1] = AT_USTRONG;
	close_up_attacks[2] = AT_USTRONG;
	close_up_attacks[3] = AT_USTRONG;
	close_up_attacks[4] = 0;
	close_down_attacks[0] = AT_USTRONG;
	close_down_attacks[1] = AT_USTRONG;
	close_down_attacks[2] = AT_USTRONG;
	close_down_attacks[3] = AT_USTRONG;
	neutral_attacks[0] = AT_USTRONG;
	neutral_attacks[1] = AT_USTRONG;
	neutral_attacks[2] = AT_USTRONG;
} else if (ai_ydist >= 90) {
	close_up_attacks[0] = AT_DTILT;
	close_up_attacks[1] = AT_DTILT;
	close_up_attacks[2] = AT_DTILT;
	close_up_attacks[3] = AT_DTILT;
	close_up_attacks[4] = 0;
	close_down_attacks[0] = AT_JAB;
	close_down_attacks[1] = AT_JAB;
	close_down_attacks[2] = AT_DTILT;
	close_down_attacks[3] = AT_DTILT;
	neutral_attacks[0] = AT_DSTRONG;
	neutral_attacks[1] = AT_DSTRONG;
	neutral_attacks[2] = AT_DSTRONG;
} else {
	close_up_attacks[0] = AT_JAB;
	close_up_attacks[1] = AT_DATTACK;
	close_up_attacks[2] = AT_FTILT;
	close_up_attacks[3] = AT_UTILT;
	close_up_attacks[4] = 0;
	close_down_attacks[0] = AT_JAB;
	close_down_attacks[1] = AT_DATTACK;
	close_down_attacks[2] = AT_FTILT;
	close_down_attacks[3] = AT_DTILT;
	neutral_attacks[0] = AT_FSTRONG;
	neutral_attacks[1] = AT_USTRONG;
	neutral_attacks[2] = AT_DSTRONG;
}

// Better Recovery
if (ai_recovering) {
	// Force available walljump
	if (place_meeting(x + 5 * spr_dir, y, asset_get("par_block")) &&
	    vsp >= 0 && can_wall_jump && has_walljump) {
		jump_pressed = true;
	}
	// Stay away from the bottom of the stage when recovering
	if (collision_rectangle(x - 60, y - 700, x + 60, y,
	    asset_get("par_block"), false, true) != noone &&
	   !block_check(100, 0, 0, 1000, "both") && !block_check(0, -160, 0, 1000, "both")) {
		var under_stage = true;
	} else {
		var under_stage = false;
	}
	if (under_stage) {
		if (x < stage_center) {
			ai_hold_dir("UL");
		} else {
			ai_hold_dir("UR");
		}
		if (has_airdodge || djumps < max_djumps) {
			special_pressed = false;
		}
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
					ai_hold_dir("U", false);
					special_pressed = true;
				}
			}
		} else if (edge_dist <= -50 && side_bz_dist > 270 && (state_cat == SC_AIR_NEUTRAL || !free)) { // Run from target
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
			    ai_target.hsp != 0 && targ_dist <= 120 &&
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
		} else if (targ_dist <= 180) { // If cornered, do something else
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
	if (temp_level == 9 && (targ_disadv || targ_dist < 100)) {
		ai_attack_time = 0;
	}
	
	// Keep the ai from randomly not looking at their target
	if (temp_level >= 5 && state_cat == SC_GROUND_NEUTRAL) {
		if (x > ai_target.x) {
			if (!ai_facing) {
				left_down = true;
			}
			right_pressed = false;
			right_down = false;
		} else if (x < ai_target.x) {
			if (!ai_facing) {
				right_down = true;
			}
			left_pressed = false;
			left_down = false;
		}
	}
	
	// Don't be defensive when target is at a disatvantage
	if (temp_level >= 7 && !ai_recovering && targ_disadv) {
		shield_pressed = false;
	}
	
	// Drop through platforms if the target is under you (ai does not do this if the target is still close)
	if (temp_level >= 4 && ground_type == 2 && ai_xdist <= 80 && ai_ydist > 48) {
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
	
	// Rush after target at level 8 or 9 if they're far away
	if (temp_level >= 8 && ai_xdist > 140 && !ai_going_into_attack &&
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
	
	// Attack Knowledge
	if (ai_atk_state) { switch (attack) {
		case AT_JAB:
			if (temp_level > 1 && has_hit && !was_parried) {
				ai_hold_dir("N");
				if (random_func(2, 7, true) == 0 || temp_level >= 5) &&
				   (window < get_attack_value(attack, AG_NUM_WINDOWS)) {
					attack_pressed = true;
				}
				if (get_window_value(attack, window - 1, AG_WINDOW_CANCEL_TYPE) == 1) {
					has_hit = false;
				}
			}
		break;
		case AT_DATTACK:
			if (window == 3) {
				if (temp_level >= 5) {
					if (ai_facing && targ_dist <= 58) {
						ai_hold_dir("N", false);
						attack_pressed = true;
					} else if (ai_ydist < -100) {
						jump_pressed = true;
					} else if (ai_ydist >= 80) {
						var pick_attack = random_func(0, 3, true);
						if (ai_facing) {
							ai_hold_dir("F", false);
						} else {
							ai_hold_dir("B", false);
						}
						if (pick_attack = 1) {
							up_down = true;
							down_down = false;
						} else {
							up_down = false;
							down_down = true;
						} 
						attack_pressed = true;
					}
				} else {
					var random_flick = random_func(2, 55 - (5 * temp_level), true);
					if (random_flick == 0) {
						ai_hold_dir("N", false);
						attack_pressed = true;
					}
				}
			}
		break;
		case AT_DAIR:
			if (window == 3) {
				var bottom_bz = get_stage_data(SD_BOTTOM_BLASTZONE_Y);
				shield_pressed = false;
				if (ai_recovering && has_airdodge &&
				   (!has_hit_player || y < bottom_bz - 150)) {
					shield_pressed = true;
				} else if (ai_ydist < -25 && temp_level > 4) {
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
		case AT_FSTRONG:
		case AT_USTRONG:
		case AT_DSTRONG:
			if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && temp_level > 2) {
				if (ai_facing && !projectile_react(10)) {
					if (ai_edgeguarding) {
						var targ_angle = point_direction(x, y, ai_target.x, ai_target.y);
						var edge_charge = (targ_angle > 120 || targ_angle < 50);
						if (edge_charge) {
							strong_down = (targ_dist >= 130);
						}
					} else if (strong_charge == 0 && random_func(0, 2, true) != 0) ||
						  (strong_charge > 0 && random_func(10, 40, true) != 0) {
						strong_down = true;
						if (targ_dist < 130) && (ai_target.state == PS_PARRY ||
						    targ_atk_state || targ_disadv) {
							strong_down = false;
						}
					}
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
					if (random_func(13, 19, true) > 2 && targ_dist > 100 &&
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
	}}
	
	// Edgeguard
	if (ai_edgeguarding && !ai_atk_state && !ai_recovering) {
		var targ_angle = point_direction(x, y, ai_target.x, ai_target.y);
		if (!free) {
			if (targ_angle > 120 || targ_angle < 50) {
				if (targ_dist > 150 && targ_dist <= 250 &&
				    ai_target.state_cat != SC_HITSTUN &&
				    random_func(7, 50 - (temp_level * 5), true) == 0) {
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
				}
			} else if (ai_xdist <= 150) {
				jump_pressed = true;
				jump_down = true;
			}
		} else {
			jump_pressed = (ai_ydist < -80 && vsp >= -1 && djumps < max_djumps);
			jump_down = true;
			shield_pressed = false;
			ai_hold_dir("N", false);
			special_pressed = true;
		}
	}
	
	// If possible & safe, be defensive while recovering
	if (ai_recovering && temp_level > 3 && !ai_atk_state) {
		var bottom_blastzone = get_stage_data(SD_BOTTOM_BLASTZONE_Y);
		if (edge_dist > 0 && targ_dist <= 90 && vsp <= 0 &&
		    random_func(3, 39 - (temp_level * 4), true) == 0) {
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
	
	// On walk-off stages, stay away from the side blastzones
	if (!ai_recovering && temp_level >= 6) {
		var left_bz = get_stage_data(SD_LEFT_BLASTZONE_X);
		var right_bz = get_stage_data(SD_RIGHT_BLASTZONE_X);
		var side_bz_dist = min(abs(x - left_bz), abs(x - right_bz));
		if (side_bz_dist <= 200 && !ai_atk_state) {
			if (x < stage_center) {
				ai_hold_dir("R", true);
			} else {
				ai_hold_dir("L", true);
			}
		}
	}
	
	// Get ai to jump a bit more when target is close
	if (temp_level >= 5) {
		if (targ_dist < 125) {
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
			ai_hold_dir("N");
			jump_pressed = false;
			shield_pressed = true;
		}
	}
}

// ----- Custom AI Functions ----- 
// --- Checks for incoming projectiles at random (returns true or false) --- 
#define projectile_react()
// arg1 = The multiplier to add to distance related to the projectile's speed
// arg2 = The cpu level required for a 100% chance to react (Optional)
//        (0 and lower is the same as 10 or higher, whereas the 100% react
//         is not applied)

// Set Arguments
var proj_distance = argument[0];
if (argument_count > 1) {
	var always_react_lvl = argument[1];
} else {
	var always_react_lvl = 0;
}

// Check for projectiles
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
// React Logic
if (instance_exists(incoming_proj) && temp_level > 1) {
	var proj_speed = max(abs(incoming_proj.hsp), abs(incoming_proj.vsp));
	var reaction = 1 + random_func(8, 40 - (4 * temp_level) + round(proj_speed), true);
	if (reaction <= 10 || (temp_level >= always_react_lvl && always_react_lvl > 0)) {
		return true;
	}
}
return false;

// --- Checks for blocks in regions in front of the player (returns true if block is found) --- 
#define block_check()
// arg1 = farthest distance (starts at the side bounding box in the direction of the player)
// arg2 = nearest distance (starts at the side bounding box in the direction of the player)
// arg3 = highest distance (starts at bottom bounding box)
// arg4 = lowest distance (starts at bottom bounding box)
// arg5 = The type of block to check for (0 = solid, 1 = platform, 2 = both)

// Set Arguments
var far_dist = argument[0];
var near_dist = argument[1];
var top_dist = argument[2];
var bot_dist = argument[3];
var block_type = argument[4];

// The types of blocks to check for
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

// Check for blocks or platforms determined by direction faced
if (spr_dir == -1) { // When facing left
	if (collision_rectangle(bbox_left - far_dist, bbox_bottom + top_dist, bbox_left - near_dist, bbox_bottom + bot_dist,
	    asset_get("par_block"), false, true) != noone && find_bs) ||
	   (collision_rectangle(bbox_left - far_dist, bbox_bottom + top_dist, bbox_left - near_dist, bbox_bottom + bot_dist,
	    asset_get("par_jumpthrough"), false, true) != noone && find_ps) {
		return true;
	} else {
		return false;
	}
} else if (spr_dir == 1) { // When facing right
	if (collision_rectangle(bbox_right + near_dist, bbox_bottom + top_dist, bbox_right + far_dist, bbox_bottom + bot_dist,
	    asset_get("par_block"), false, true) != noone && find_bs) ||
	   (collision_rectangle(bbox_right + far_dist, bbox_bottom + top_dist, bbox_right + near_dist, bbox_bottom + bot_dist,
	    asset_get("par_jumpthrough"), false, true) != noone && find_ps) {
		return true;
	} else {
		return false;
	}
} else {
	return false;
}

// --- Tells which direction the AI should hold, forbidding them from using any other. --- 
// --- Must be called on every frame when used. --- 
#define ai_hold_dir()
// arg1 = Ai hold direction. See switch cases below
// arg2 = Do hard press. Optional

// Set Arguments
var hold_dir = argument[0];
if (argument_count > 1) {
	var do_hard_press = argument[1];
} else {
	var do_hard_press = false;
}

left_pressed = false;
right_pressed = false;
up_pressed = false;
down_pressed = false;

// Holding this direction
switch (hold_dir) {
	case "N": // Hold Nothing
		left_down = false;
		right_down = false;
		up_down = false;
		down_down = false;
		joy_pad_idle = true;
		break;
	case "F": // Hold Forward
		left_down = (spr_dir == -1);
		right_down = (spr_dir == 1);
		up_down = false;
		down_down = false;
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
		up_down = false;
		down_down = false;
		joy_pad_idle = false;
		joy_dir = 90 + (90 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == 1);
			right_hard_pressed = (spr_dir == -1);
		}
		break;
	case "L": // Hold Left
		left_down = true;
		right_down = false;
		up_down = false;
		down_down = false;
		joy_pad_idle = false;
		joy_dir = 180;
		if (do_hard_press) {
			left_hard_pressed = true;
		}
		break;
	case "R": // Hold Right
		left_down = false;
		right_down = true;
		up_down = false;
		down_down = false;
		joy_pad_idle = false;
		joy_dir = 0;
		if (do_hard_press) {
			right_hard_pressed = true;
		}
		break;
	case "U": // Hold Upward
		left_down = false;
		right_down = false;
		up_down = true;
		down_down = false;
		joy_pad_idle = false;
		joy_dir = 90;
		if (do_hard_press) {
			up_hard_pressed = true;
		}
		break;
	case "D": // Hold Downward
		left_down = false;
		right_down = false;
		up_down = false;
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
		down_down = false;
		joy_pad_idle = false;
		joy_dir = 90 - (45 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == -1);
			right_hard_pressed = (spr_dir == 1);
			up_hard_pressed = true;
		}
		break;
	case "UB": // Hold Up-Backward
		left_down = (spr_dir == 1);
		right_down = (spr_dir == -1);
		up_down = true;
		down_down = false;
		joy_pad_idle = false;
		joy_dir = 90 + (45 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == 1);
			right_hard_pressed = (spr_dir == -1);
			up_hard_pressed = true;
		}
		break;
	case "UL": // Hold Up-Left
		left_down = true;
		right_down = false;
		up_down = true;
		down_down = false;
		joy_pad_idle = false;
		joy_dir = 135;
		if (do_hard_press) {
			left_hard_pressed = true;
			up_hard_pressed = true;
		}
		break;
	case "UR": // Hold Up-Right
		left_down = false;
		right_down = true;
		up_down = true;
		down_down = false;
		joy_pad_idle = false;
		joy_dir = 45;
		if (do_hard_press) {
			right_hard_pressed = true;
			up_hard_pressed = true;
		}
		break;
	case "DF": // Hold Down-Forward
		left_down = (spr_dir == -1);
		right_down = (spr_dir == 1);
		up_down = false;
		down_down = true;
		joy_pad_idle = false;
		joy_dir = 270 - (45 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == -1);
			right_hard_pressed = (spr_dir == 1);
			down_hard_pressed = true;
		}
		break;
	case "DB": // Hold Down-Backward
		left_down = (spr_dir == 1);
		right_down = (spr_dir == -1);
		up_down = false;
		down_down = true;
		joy_pad_idle = false;
		joy_dir = 270 + (45 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == 1);
			right_hard_pressed = (spr_dir == -1);
			down_hard_pressed = true;
		}
		break;
	case "DL": // Hold Down-Left
		left_down = true;
		right_down = false;
		up_down = false;
		down_down = true;
		joy_pad_idle = false;
		joy_dir = 225;
		if (do_hard_press) {
			left_hard_pressed = true;
			down_hard_pressed = true;
		}
		break;
	case "DR": // Hold Down-Right
		left_down = false;
		right_down = true;
		up_down = false;
		down_down = true;
		joy_pad_idle = false;
		joy_dir = 315;
		if (do_hard_press) {
			right_hard_pressed = true;
			down_hard_pressed = true;
		}
		break;
}
