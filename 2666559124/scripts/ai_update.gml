// Get ai to use full jabs
aiplaceholder = random_func( 0, 4, true)

if (attack == AT_JAB && state == PS_ATTACK_GROUND && get_training_cpu_action() == CPU_FIGHT) {
	right_down = false;
	left_down = false;
	up_down = false;
	down_down = false;
	if (window == 3) && ((window_timer == 7 && aiplaceholder > 0 && !was_parried) || (has_hit_player && !was_parried)) {
		attack_pressed = true;
	}
	if (window == 6) && ((window_timer == 5 && aiplaceholder > 1 && !was_parried) || (has_hit_player && !was_parried)) {
		attack_pressed = true;
	}
}

// Check if the ai is facing its target
if (spr_dir == 1 && x < ai_target.x) || (spr_dir == -1 && x > ai_target.x) {
	ai_facing = true;
} else {
	ai_facing = false;
}

// Keep the ai from randomly not looking at their target
if (temp_level >= 6 && state_cat == SC_GROUND_NEUTRAL && get_training_cpu_action() == CPU_FIGHT) {
	if (x > ai_target.x) {
		if (!ai_facing) {
			left_down = true;
		}
		right_down = false;
	} else if (x < ai_target.x) {
		left_down = false;
		if (!ai_facing) {
			right_down = true;
		}
	}
}

// Get x & y distances from ai and its target
myTargetX = abs(ai_target.x - x);
myTargetY = abs(ai_target.y - y);

// Aim hammer throws
if (attack == AT_NSPECIAL) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
	if (window < 3) {
		if (ai_target.y <= y) {
			if (myTargetY >= 140) {
				left_down = false;
				right_down = false;
				up_down = true;
			} else {
				if (myTargetX >= 220) {
					hold_forward();
				} else if (myTargetX <= 80) {
					if (myTargetY >= 60) {
						hold_backward();
					} else {
						left_down = false;
						right_down = false;
						down_down = true;
					}
				}
			}
		} else {
			if (myTargetX <= 80) {
				left_down = false;
				right_down = false;
				up_down = false;
				down_down = true;
			} else if (myTargetX >= 200) {
				hold_forward();
			} else {
				left_down = false;
				right_down = false;
				up_down = false;
				down_down = false;
			}
		}
	}
}

// Proper Mafia punch usage
if (attack == AT_FSPECIAL && state == PS_ATTACK_GROUND) {
	if (window == 2 && window_timer < 32) {
		if (myTargetX <= 70 && myTargetY <= 45) {
			attack_pressed = true;
		}
	}
}

#define hold_forward
if (spr_dir == -1) {
	left_down = true;
	right_down = false;
} else {
	left_down = false;
	right_down = true;
}

#define hold_backward
if (spr_dir == -1) {
	left_down = false;
	right_down = true;
} else {
	left_down = true;
	right_down = false;
}
