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

// Space saving position checks
var x_sp = x + ((hsp) * 2); var y_sp = y + (round(vsp) * 2);
var targ_x_sp = ai_target.x + ((ai_target.hsp) * 2);
var targ_y_sp = ai_target.y + (round(ai_target.vsp) * 2);

// Get distance from target's point
var targ_dist = point_distance(x_sp, y_sp, targ_x_sp, targ_y_sp);

// Get distances from target's bounding box
if ("hurtboxID" in ai_target && instance_exists(ai_target.hurtboxID)) {
	var targ_hurtid = ai_target.hurtboxID; } else { var targ_hurtid = ai_target;
}
if (x < targ_hurtid.bbox_left) {
	var ai_xdist = abs(targ_hurtid.bbox_left - x);
} else if (x > targ_hurtid.bbox_right) {
	var ai_xdist = abs(targ_hurtid.bbox_right - x);
} else {
	var ai_xdist = 0;
}
var ai_ydist = ai_target.y - y; // Negative = Targ Above; Positive = Targ Below

// Get Blastzone Information
var left_bz = get_stage_data(SD_LEFT_BLASTZONE_X);
var right_bz = get_stage_data(SD_RIGHT_BLASTZONE_X);
var side_bz_dist = min(abs(x - left_bz), abs(x - right_bz));
var bottom_bz = get_stage_data(SD_BOTTOM_BLASTZONE_Y);

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
		   (collision_rectangle(bbox_left, y, bbox_right, bottom_bz, asset_get("par_block"), false, true) == noone) &&
		   (collision_rectangle(bbox_left, y, bbox_right, bottom_bz, asset_get("par_jumpthrough"), false, true) == noone) {
			var target_offstage = true;
		} else {
			var target_offstage = false;
		}
	}
} else {
	var target_offstage = false;
}

// Determine Edgeguarding
var ai_edgeguarding = (ai_fighting && temp_level > 3 && target_offstage && abs(edge_dist) <= 64 &&
		       !block_check(250, 40 + (round(abs(hsp)) * 4), 0, 1500, "both") &&
		       block_check(0, bbox_left - bbox_right, 0, 1500, "both", "left"));

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
neutral_attacks = [AT_FSTRONG, AT_USTRONG, AT_DSTRONG];
if (!free) {
	if (ai_xdist <= 20 && ai_ydist <= -56) {
		close_up_attacks = [AT_UTILT];
		neutral_attacks = [AT_USTRONG];
	} else if (ai_xdist <= 20) {
		close_up_attacks = [AT_JAB, AT_FTILT, AT_UTILT, AT_DTILT];
	} else {
		close_up_attacks = [AT_JAB, AT_DATTACK, AT_FTILT, AT_DTILT];
	}
} else {
	if (ai_ydist <= -56 && ai_xdist <= 20) {
		close_up_attacks = [AT_UTILT];
		neutral_attacks = [AT_USTRONG];
	} else if (ai_ydist >= 56 && ai_xdist <= 20) {
		close_up_attacks = [AT_JAB, AT_DTILT];
		neutral_attacks = [AT_DSTRONG];
	} else {
		close_up_attacks = [AT_JAB, AT_FTILT];
		neutral_attacks = [AT_FSTRONG];
	}
}
// Only use USpecial if target is close
if (targ_dist <= 32) {
	array_insert(neutral_attacks, -1, AT_USPECIAL);
}
close_down_attacks = close_up_attacks;

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
		} else {
			cancel_actions(1);
			ai_hold_dir("N");
			left_down = (spr_dir == 1 && !ai_facing);
			right_down = (spr_dir == -1 && !ai_facing);
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
	if (temp_level >= 6 && (state_cat == SC_GROUND_NEUTRAL || ai_going_into_attack)) {
		if (!ai_facing) {
			ai_hold_dir("B");
		}
		if (x > ai_target.x) {
			right_pressed = false; right_down = false;
		} else if (x < ai_target.x) {
			left_pressed = false; left_down = false;
		}
	}
	
	// Don't be defensive when target is at a disatvantage
	if (temp_level >= 7 && !ai_recovering && targ_disadv) {
		shield_pressed = false;
	}
	
	// Drop through platforms if the target is under you (ai does not do this if the target is still close)
	if (temp_level >= 4 && ground_type == 2 && ai_xdist <= 128 && ai_ydist > 32) {
		cancel_actions(1);
		if (state_cat == SC_GROUND_NEUTRAL || state == PS_DASH ||
		     state == PS_DASH_START || state == PS_DASH_STOP) {
			down_hard_pressed = true;
		}
	}
	
	// Rush after target at level 8 or 9 if they're far away
	if (temp_level >= 8 && ai_xdist > 140 && !ai_going_into_attack && !ai_edgeguarding && !ai_recovering &&
	    (state_cat == SC_GROUND_NEUTRAL || state == PS_DASH || state == PS_DASH_START ||
	     state_cat == SC_AIR_NEUTRAL || state == PS_WALL_JUMP)) {
		// Not using the ai_hold_dir function cause that cancels every other directions
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
	
	// On walk-off stages, stay away from the side blastzones
	if (!ai_recovering && temp_level >= 5) {
		if (side_bz_dist <= 200 && !ai_atk_state) {
			if (x < stage_center) {
				ai_hold_dir("R", true);
			} else {
				ai_hold_dir("L", true);
			}
		}
	}
	
	// Get ai to jump a bit more when target is close
	if (temp_level > 1 && targ_dist < 125 &&
	    !free && can_attack && can_jump &&
	    random_func(5, 164 - (16 * temp_level), true) == 0) {
		jump_pressed = true;
	}
	
	// Avoid getting trapped under your own barrel
	if ((!ai_atk_state || can_shield) &&
	    temp_level > 5 && instance_exists(my_barrel)) {
		if (my_barrel.state == 1 && my_barrel.free) {
			if (place_meeting(x + (20 * spr_dir), y - 180, my_barrel) && y > my_barrel.y) {
				if (my_barrel.x < x) {
					ai_hold_dir("R");
				} else {
					ai_hold_dir("L");
				}
				shield_pressed = true;
			}
		}
	}
	
	// Edgeguard
	if (ai_edgeguarding) {
		// Waiting
		if (ai_xdist > 128 && !ai_atk_state) {
			cancel_actions(0);
			if (!free) {
				if (!ai_facing) {
					ai_hold_dir("B");
				} else {
					ai_hold_dir("N");
				}
			} else {
				ai_hold_dir("N");
				if (hsp < -1) {
					right_down = true;
				} else if (hsp > 1) {
					left_down = true;
				}
				if (ai_xdist > 128 && !fast_falling) {
					down_down = true;
					down_hard_pressed = true;
				}
			}
		}
		
		// Doing stuff
		if (!free) {
			if (ai_xdist <= 224 && ai_ydist < -160) {
				jump_pressed = true;
				jump_down = true;
			} else if (targ_dist > 128 && targ_dist <= 192 &&
				   ai_target.state_cat != SC_HITSTUN &&
				   random_func(7, 62 - (6 * temp_level), true) == 0) {
				var my_attack = (ai_ydist >= -64) ? random_func(10, 2, true) : 2;
				if (my_attack == 0) {
					if (ai_target.x > x) {
						right_strong_pressed = true;
					} else {
						left_strong_pressed = true;
					}
				} else if (my_attack == 1) {
					down_strong_pressed = true;
				} else if (my_attack == 2) {
					up_strong_pressed = true;
				}
			}
		} else if (ai_xdist <= 128 && ai_target.state_cat != SC_HITSTUN) ||
			  (ai_xdist <= 160 && sign(ai_target.hsp) == sign(x - ai_target.x)) {
			jump_pressed = (ai_ydist < -32 && vsp >= 0 && djumps < max_djumps);
			jump_down = true;
			shield_pressed = false;
		}
		
		// Camp with NSpecial & Fspecial
		if (ai_facing && !ai_recovering && ai_xdist > 128 &&
		    random_func(7, 74 - (7 * temp_level), true) == 0) {
			if (move_cooldown[AT_FSPECIAL] == 0) {
				ai_hold_dir("F");
				special_pressed = true;
			} else if (ai_xdist <= 224) {
				ai_hold_dir("N");
				special_pressed = true;
			}
		}
	}
	
	// Attack Knowledge
	if (ai_atk_state) { switch (attack) {
		case AT_JAB:
			if (temp_level > 1) && ((has_hit && !was_parried) || temp_level < 6) {
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
							ai_hold_dir("F");
						} else {
							ai_hold_dir("B");
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
						ai_hold_dir("N");
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
						ai_hold_dir("U");
					} else if (ai_xdist > 21 && ai_facing) {
						ai_hold_dir("F");
					} else if (ai_xdist > 32 && !ai_facing) {
						ai_hold_dir("B");
					} else {
						ai_hold_dir("N");
					}
					attack_pressed = true;
				}
			}
		break;
		case AT_FSTRONG:
		case AT_USTRONG:
		case AT_DSTRONG:
			if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && temp_level > 2) {
				if (ai_facing && !projectile_react(10) && targ_dist <= 240) {
					if (strong_charge == 0 && random_func(0, 2, true) != 0) ||
					   (strong_charge > 0 && random_func(10, 40, true) != 0) ||
					   (ai_edgeguarding && (ai_ydist > 96 + ai_target.vsp || attack == AT_USTRONG)) {
						strong_down = (targ_dist > 100 || get_targ_invince() || temp_level <= 5);
					}
				}
			}
		break;
		case AT_NSPECIAL:
			if (window <= 2) {
				if (temp_level > 1) {
					var random_throw = random_func(8, 5, true);
					switch (random_throw) {
						case 0:
							ai_hold_dir("N");
							break;
						case 1:
							ai_hold_dir("F");
							break;
						case 2:
							ai_hold_dir("B");
							break;
						case 3:
							ai_hold_dir("U");
							break;
						case 4:
							ai_hold_dir("D");
							break;
					}
				} else if (temp_level >= 5) {
					if (ai_ydist <= -100 && ai_xdist <= 120) {
						ai_hold_dir("U", false);
					} else if (ai_xdist <= 100) {
						if (ai_ydist < -60) {
							ai_hold_dir("B");
						} else {
							ai_hold_dir("D");
						}
					} else if (ai_xdist <= 210) {
						ai_hold_dir("N");
					} else {
						ai_hold_dir("F");
					}
					if (random_func(13, 19, true) > 2 && targ_dist > 100 &&
					    !projectile_react(16)) {
						special_down = true;
					}
				}
			}
		break;
		case AT_FSPECIAL:
			if (window == 1 && instance_exists(my_barrel)) {
				if (temp_level >= 5) {
					if (my_barrel.x > ai_target.x) {
						ai_hold_dir("L");
					} else {
						ai_hold_dir("R");
					}
					var tb_dist = abs(ai_target.x - my_barrel.x);
					if (right_down) {
						var targ_speed = min(round(ai_target.hsp), 0);
					} else {
						var targ_speed = max(round(ai_target.hsp), 0);
					}
					if (abs(tb_dist) > 60 + (abs(targ_speed) * 22)) {
						special_down = true;
						if (ai_xdist < 96 || projectile_react(15) || ai_recovering) {
							shield_pressed = true;
						}
					}
				} else if (temp_level > 1 && random_func(3, 30, true) > 0 && ai_xdist > 70) {
					if (spr_dir == -1) {
						ai_hold_dir("L");
					} else {
						ai_hold_dir("R");
					}
					special_down = true;
					if (projectile_react(15) || ai_recovering ||
					    random_func(6, 40, true) == 0) {
						shield_pressed = true;
					}
				}
			}
		break;
	}}
	
	// If you're attacking or in pratfall, don't fall off the stage!
	if (((state == PS_ATTACK_AIR && can_move) || state == PS_PRATFALL) && vsp >= 5 && !ai_recovering) {
		var r_hsp = round(abs(hsp) * 8);
		if (hsp > 0 && !block_check(96 + r_hsp, r_hsp, 0, 3200, "both", "right")) {
			ai_hold_dir("L");
		} else if (hsp < 0 && !block_check(96 + r_hsp, r_hsp, 0, 3200, "both", "left")) {
			ai_hold_dir("R");
		}
	}
	
	// If possible & safe, be defensive while recovering
	if (ai_recovering && temp_level > 3 && !ai_atk_state) {
		var grav_mod = round(gravity_speed * 5);
		if (edge_dist > 0 && targ_dist <= 110 && vsp <= -1 - grav_mod && has_walljump &&
		    y < bottom_bz - 224 && random_func(3, 39 - (temp_level * 4), true) == 0) {
			var defend_atk = random_func(7, 2, true); // Use neutral air or not
			if (can_attack) {
				if (defend_atk == 1) {
					ai_hold_dir("TARG");
				}
				attack_pressed = true;
			}
		}
	}
		
	// Don't attack target if they're hit be a fatal attack
	if (ai_target.state_cat == SC_HITSTUN && "should_make_shockwave" in ai_target &&
	    ai_target.should_make_shockwave && !ai_atk_state && temp_level >= 7) {
		if (!ai_recovering) {
			cancel_actions(1);
		} else {
			attack_pressed = false;
		}
	}
	
	// Move around solid platforms to reach target
	if ((!ai_recovering || ai_v_reach_dir > 0) && !target_offstage && temp_level >= 5 &&
	    state != PS_RESPAWN && state != PS_DEAD && state_cat != SC_HITSTUN) {
		var solids = asset_get("par_block");
		
		var the_l = min(x, ai_target.x);
		var the_r = max(x, ai_target.x);
		var the_u = min(y - 2, ai_target.y - 2);
		var the_d = max(y - 2, ai_target.y - 2);
		
		var vert_check_me = (collision_rectangle(bbox_left, the_u, bbox_right, the_d, solids, false, true) != noone);
		var vert_check_them = (collision_rectangle(ai_target.bbox_left, the_u, ai_target.bbox_right, the_d, solids, false, true) != noone);
		
		// Found Blocks
		if (vert_check_me && vert_check_them) {
			cancel_actions(0);
			if (ai_h_reach_dir == 0) {
				// Get the edges of the solid platform your on
				var bottom_bz = get_stage_data(SD_BOTTOM_BLASTZONE_Y);
				for (var i = y; i <= bottom_bz; i++) {
					if (block_check(0, -32, 0, abs(y - i), "solid")) {
						for (var e = x; e >= left_bz; e--) { // Left Side
							if (!place_meeting(e, i + 8, asset_get("par_block")) &&
							    !place_meeting(e, i + 8, asset_get("par_jumpthrough"))) {
								ai_block_lx = e;
								break;
							}
						}
						for (var e = x; e <= right_bz; e++) { // Right Side
							if (!place_meeting(e, i + 8, asset_get("par_block")) &&
							    !place_meeting(e, i + 8, asset_get("par_jumpthrough"))) {
								ai_block_rx = e;
								break;
							}
						}
						
						break;
					}
				}
				
				// Get the direction you should be going in
				var horz_rng = random_func(17, 2, true) * 2;
				if (ai_block_lx > left_bz + 160 && abs(ai_block_lx - x) <= 192) ||
				   (ai_target.x < ai_block_lx) {
					ai_h_reach_dir = -1;
				} else if (ai_block_rx < right_bz - 160 && abs(ai_block_rx - x) <= 192) ||
				   (ai_target.x > ai_block_rx) {
					ai_h_reach_dir = 1;
				} else {
					ai_h_reach_dir = -1 + horz_rng;
				}
				ai_v_reach_dir = sign(ai_ydist);
			} else if (abs(ai_h_reach_dir) == 1) { // Dashing
				if (ai_h_reach_dir == 1) {
					ai_hold_dir("R", true);
				} else {
					ai_hold_dir("L", true);
				}
			}
		} else {
			ai_h_reach_dir = 0;
		}
		
		if (ai_v_reach_dir != 0) { // Vertical Direction Actions
			if (ai_v_reach_dir == 1) {
				cancel_actions(2); special_pressed = false;
				if (ai_ydist <= 48) {
					shield_pressed = true;
				}
				if (!free && !freemd) {
					ai_hold_dir("D", true);
				}
			} else if (!block_check(48, 16, (y - ai_target.y) * -1, -2, "solid") || free) {
				jump_pressed = ((!free || vsp >= 0) && djumps < max_djumps);
				jump_down = true;
				shield_pressed = false;
			}
			if ((ai_ydist >= 0 && ai_v_reach_dir == -1) ||
			    (ai_ydist <= 32 && ai_v_reach_dir == 1)) && (ai_xdist <= 96 ||
			     !block_check(128, 0, bbox_top - bbox_bottom, -2, "solid", "targ_to")) {
				if (ai_v_reach_dir != 1 || !ai_recovering) {
					ai_v_reach_dir = 0;
				} else if (vsp >= 0) {
					jump_pressed = true;
				}
			}
		}
	} else {
		ai_h_reach_dir = 0;
	}
	
	// Check if there are solids blocking your path
	if (ai_wall_pass < 1) {
		if (free && ai_wall_pass == 0) || (ai_atk_state) ||
		   (ai_recovering) || (temp_level <= 4) {
			ai_wall_pass = -1; // -1 means, "Don't bother with check"
		} else if (!free) {
			ai_wall_pass = 0; // 0 means, "Can bother with check"
		}
		if (ai_wall_pass == 0) {
			if (block_check(160, 0, -48, -16, "solid", "left", true) && left_down) {
				ai_wall_pass = 1; // Going around wall on left
			} else if (block_check(160, 0, -48, -16, "solid", "right", true) && right_down) {
				ai_wall_pass = 2; // Going around wall on right
			}
		}
	} else { // If solids are found, jump over them
		jump_pressed = ((!free || vsp >= 0) && djumps < max_djumps);
		jump_down = true;
		if (ai_wall_pass == 1) {
			ai_hold_dir("L");
		} else {
			ai_hold_dir("R");
		}
		if (!block_check(192, 48, -34, -2, "solid", "targ_to", true)) ||
		   (ai_v_reach_dir == 0 && ((ai_target.x > x && ai_wall_pass == 1) ||
		    (ai_target.x < x && ai_wall_pass == 2))) ||
		   (!free && state == PS_LAND) || (ai_atk_state) {
			ai_wall_pass = -1;
		}
	}
} else {
	ai_h_reach_dir = 0;
	ai_v_reach_dir = 0;
}

// When recovering, get the x positions of each ledge
if (ai_recovering && !block_check(0, -32, 0, 1500, "both") && !ai_ledge_checked) {
	// Get the block distances
	ai_l_ledge = left_bz;
	ai_r_ledge = right_bz;
	for (var i = x - 48; i >= left_bz; i -= 16) {
		if (collision_rectangle(i, y, i + 8, bottom_bz, asset_get("solid_32_obj"), false, true) != noone) {
			ai_l_ledge = i;
			break;
		}
	}
	for (var i = x + 48; i <= right_bz; i += 16) {
		if (collision_rectangle(i - 8, y, i, bottom_bz, asset_get("solid_32_obj"), false, true) != noone) {
			ai_r_ledge = i;
			break;
		}
	}
	ai_ledge_checked = true;
}
if (!ai_recovering) {
	ai_ledge_checked = false; ai_recover_dir = 0;
}

// Better Recovery
if (ai_recovering) {
	// Get the direction you're supposed to go in
	if (ai_l_ledge <= left_bz + 96 && ai_r_ledge >= right_bz - 96) {
		ai_recover_dir = 0;
	} else {
		var l_ed = abs(ai_l_ledge - x);
		var r_ed = abs(ai_r_ledge - x);
		if (ai_l_ledge <= left_bz + 96 || (r_ed <= l_ed && ai_r_ledge < right_bz - 96)) {
			ai_recover_dir = sign(ai_r_ledge - x);
		} else {
			ai_recover_dir = sign(ai_l_ledge - x);
		}
	} // Move towards target if they are on stage
	if (instance_exists(ai_target) && ai_target != self &&
	    get_training_cpu_action() == CPU_FIGHT) {
		if (ai_target.x > stage_left && ai_target.x < stage_right) ||
		   (x > stage_left && x < stage_right) {
			ai_recover_dir = sign(ai_target.x - x);
		}
	}
	
	// Force available walljump
	if (place_meeting(x + 5 * ai_recover_dir, y, asset_get("par_block")) &&
	    vsp >= 0 && can_wall_jump && has_walljump) {
		jump_pressed = true;
	}
	
	// If you're trying to reach your target around solids
	if (ai_v_reach_dir == -1) {
		jump_pressed = (vsp >= 0 && djumps < max_djumps);
		if (!block_check(0, bbox_left - bbox_right, -1, 8, "both")) {
			shield_pressed = false;
			special_pressed = false;
		}
		if (edge_dist >= 45 + (air_max_speed * 2)) {
			ai_v_reach_dir = 0;
		}
	}
	
	// Better sense of direction
	if (ai_recover_dir == 1 && ai_v_reach_dir == -1) ||
	   (ai_recover_dir == -1 && ai_v_reach_dir != -1) {
		ai_hold_dir("UL");
	} else {
		ai_hold_dir("UR");
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
} else if (edge_dist > 0) {
	// Don't attack if you're offstage and ai_recovering is false.
	var left_side = (x - hurtboxID.bbox_left) * -1;
	var right_side = (hurtboxID.bbox_right - x);
	if ((state_cat == SC_HITSTUN || state == PS_TUMBLE) &&
	    !block_check(left_side, right_side, 0, 3200, "both", "x", true)) {
		cancel_actions(1);
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

// ----- Custom AI Functions By Editor Man ----- 
// --- Cancels all actions the AI normally calls beforehand, aside from movement --- 
#define cancel_actions()
// arg0 = Determines what actions that are not movement to forbid pressing
//        0 = All | 1 = Attacks Only | 2 = Jumping and Shielding only

if (argument[0] == 0 || argument[0] == 1) {
	attack_pressed = false;
	special_pressed = false;
	left_strong_pressed = false;
	right_strong_pressed = false;
	up_strong_pressed = false;
	down_strong_pressed = false;
}
if (argument[0] == 0 || argument[0] == 2) {
	jump_pressed = false;
	shield_pressed = false;
}

// --- Checks for ai target's invincibility, mostly through means that I have no idea how else you'd get them --- 
#define get_targ_invince()

with (ai_target) {
	return ((state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) && state_timer < 17) ||
	       ((state == PS_TECH_GROUND || state == PS_AIR_DODGE) && state_timer < 14) ||
	       ((state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD) && state_timer < 20) ||
	       (state == PS_WALL_TECH && state_timer < 16) || (state == PS_PARRY_START) ||
	       (state == PS_PARRY && state_timer < 9);
}

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
// arg0 = Farthest distance. (starts at the side bounding box in the desired direction)
// arg1 = Nearest distance. (starts at the side bounding box in the desired direction)
// arg2 = Highest distance. (starts at bottom bounding box)
// arg3 = Lowest distance. (starts at bottom bounding box)
// arg4 = The type of block to check for. (0 = solid, 1 = platform, 2 = both)
//	  Can use strings.
// arg5 = The direction type to follow. Has these options:
//        0 = Front (Default) | 1 = Back | 2 = Left | 3 = Right
//        4 = Toward Target | 5 = Away From Target
//        6 = Toward Stage Center | 7 = Away from Stage Center
//        8 = Character X (Args 0 & 1 become left & right sides respectively)
//	  Can also use strings. -Optional.-
// arg6 = Boolean. Include articles in check if true. -Optional-

// Set Arguments
var far_dist = argument[0];
var near_dist = argument[1];
var top_dist = argument[2];
var bot_dist = argument[3];
var block_type = argument[4];
if (argument_count <= 5) {
	var dir_opt = 0;
} else {
	var dir_arg = argument[5];
	switch (dir_arg) {
		case 0: case "front":
			var dir_opt = 0;
		break;
		case 1: case "back":
			var dir_opt = 1;
		break;
		case 2: case "left":
			var dir_opt = 2;
		break;
		case 3: case "right":
			var dir_opt = 3;
		break;
		case 4: case "targ_to":
			var dir_opt = 4;
		break;
		case 5: case "targ_aw":
			var dir_opt = 5;
		break;
		case 6: case "stage_to":
			var dir_opt = 6;
		break;
		case 7: case "stage_aw":
			var dir_opt = 7;
		break;
		case 8: case "x": case "center":
			var dir_opt = 8;
		break;
		default:
			var dir_opt = 0;
			print_debug("Check direction invalid");
		break;
	}
}
// Should I include articles?
if (argument_count >= 7) {
	if (argument[6]) {
		var sol_obj = "par_block";
		var plt_obj = "par_jumpthrough";
	} else {
		var sol_obj = "solid_32_obj";
		var plt_obj = "jumpthrough_32_obj";
	}
} else {
	var sol_obj = "solid_32_obj";
	var plt_obj = "jumpthrough_32_obj";
}
// The types of blocks to check for
switch (block_type) {
	case 0: case "0": case "solid": case "block":
		var find_bs = true;
		var find_ps = false;
	break;
	case 1: case "1": case "jumpthrough": case "platform":
		var find_bs = false;
		var find_ps = true;
	break;
	case 2: case "2": case "both": case "all":
		var find_bs = true;
		var find_ps = true;
	break;
	default:
		var find_bs = false;
		var find_ps = false;
		print_debug("Block type invalid");
	break;
}
var stage_center = room_width / 2;

// Check for blocks or platforms determined by the options above
if (dir_opt == 8) {
	var l_chk = (x + far_dist);
	var r_chk = (x + near_dist);
} else if (spr_dir == -1 && dir_opt == 0) || (spr_dir == 1 && dir_opt == 1) || (dir_opt == 2) ||
	  (dir_opt == 4 && x > ai_target.x) || (dir_opt == 5 && x < ai_target.x) ||
	  (dir_opt == 6 && x > stage_center) || (dir_opt == 7 && x < stage_center) { // Left
	var l_chk = (bbox_left - far_dist);
	var r_chk = (bbox_left - near_dist);
} else if (spr_dir == 1 && dir_opt == 0) || (spr_dir == -1 && dir_opt == 1) || (dir_opt == 3) ||
	  (dir_opt == 4 && x < ai_target.x) || (dir_opt == 5 && x > ai_target.x) ||
	  (dir_opt == 6 && x < stage_center) || (dir_opt == 7 && x > stage_center) { // Right
	var l_chk = (bbox_right + near_dist);
	var r_chk = (bbox_right + far_dist);
} else {
	return false;
}
if (collision_rectangle(l_chk, bbox_bottom + top_dist, r_chk, bbox_bottom + bot_dist,
    asset_get(sol_obj), false, true) != noone && find_bs) ||
   (collision_rectangle(l_chk, bbox_bottom + top_dist, r_chk, bbox_bottom + bot_dist,
    asset_get(plt_obj), false, true) != noone && find_ps) {
	return true;
} else {
	return false;
}

// --- Sets the direction the AI should hold --- 
// --- Must be called on every frame when used --- 
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

left_pressed = false; right_pressed = false; up_pressed = false; down_pressed = false;
left_hard_pressed = false; right_hard_pressed = false; up_hard_pressed = false; down_hard_pressed = false;
left_down = false; right_down = false; up_down = false; down_down = false;
joy_pad_idle = false;

// Holding this direction
switch (hold_dir) {
	case "N": // Hold Nothing
		joy_pad_idle = true;
	break;
	case "F": // Hold Forward
		left_down = (spr_dir == -1);
		right_down = (spr_dir == 1);
		joy_dir = 90 - (90 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == -1);
			right_hard_pressed = (spr_dir == 1);
		}
	break;
	case "B": // Hold Backward
		left_down = (spr_dir == 1);
		right_down = (spr_dir == -1);
		joy_dir = 90 + (90 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == 1);
			right_hard_pressed = (spr_dir == -1);
		}
	break;
	case "L": // Hold Left
		left_down = true;
		joy_dir = 180;
		if (do_hard_press) {
			left_hard_pressed = true;
		}
	break;
	case "R": // Hold Right
		right_down = true;
		joy_dir = 0;
		if (do_hard_press) {
			right_hard_pressed = true;
		}
	break;
	case "U": // Hold Upward
		up_down = true;
		joy_dir = 90;
		if (do_hard_press) {
			up_hard_pressed = true;
		}
	break;
	case "D": // Hold Downward
		down_down = true;
		joy_dir = 270;
		if (do_hard_press) {
			down_hard_pressed = true;
		}
	break;
	case "UF": // Hold Up-Forward
		left_down = (spr_dir == -1);
		right_down = (spr_dir == 1);
		up_down = true;
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
		joy_dir = 90 + (45 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == 1);
			right_hard_pressed = (spr_dir == -1);
			up_hard_pressed = true;
		}
	break;
	case "UL": // Hold Up-Left
		left_down = true;
		up_down = true;
		joy_dir = 135;
		if (do_hard_press) {
			left_hard_pressed = true;
			up_hard_pressed = true;
		}
	break;
	case "UR": // Hold Up-Right
		right_down = true;
		up_down = true;
		joy_dir = 45;
		if (do_hard_press) {
			right_hard_pressed = true;
			up_hard_pressed = true;
		}
	break;
	case "DF": // Hold Down-Forward
		left_down = (spr_dir == -1);
		right_down = (spr_dir == 1);
		down_down = true;
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
		down_down = true;
		joy_dir = 270 + (45 * spr_dir);
		if (do_hard_press) {
			left_hard_pressed = (spr_dir == 1);
			right_hard_pressed = (spr_dir == -1);
			down_hard_pressed = true;
		}
	break;
	case "DL": // Hold Down-Left
		left_down = true;
		down_down = true;
		joy_dir = 225;
		if (do_hard_press) {
			left_hard_pressed = true;
			down_hard_pressed = true;
		}
	break;
	case "DR": // Hold Down-Right
		right_down = true;
		down_down = true;
		joy_dir = 315;
		if (do_hard_press) {
			right_hard_pressed = true;
			down_hard_pressed = true;
		}
	break;
	case "TARG": // Toward Target
		if (ai_target != self) {
			joy_pad_idle = false;
			joy_dir = point_direction(x + (hsp * 2), y + (vsp * 2),
				  ai_target.x + (ai_target.hsp * 2),
				  ai_target.y + (ai_target.vsp * 2));
			left_down = (joy_dir >= 108 && joy_dir <= 252);
			right_down = (joy_dir <= 73 || joy_dir >= 287);
			up_down = (joy_dir >= 25 && joy_dir <= 155);
			down_down = (joy_dir >= 206 && joy_dir <= 335);
			if (do_hard_press) {
				left_hard_pressed = left_down;
				right_hard_pressed = right_down;
				up_hard_pressed = up_down;
				down_hard_pressed = down_down;
			}
		} else {
			joy_pad_idle = true;
		}
	break;
}
