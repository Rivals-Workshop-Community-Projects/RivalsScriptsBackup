// find nearest player
var ai_target_dist = point_distance(x, y, ai_target.x, ai_target.y);

// some attack stuff
if state = PS_ATTACK_GROUND || state == PS_ATTACK_AIR {
	switch attack {
		case AT_USPECIAL:
             if cannon_charge < 80 {
			     special_down = 1;
				 if cannon_dir < -20 || cannon_dir > 20 {
				     left_down = 0;
					 right_down = 0;
				 }
			 }
	    break;
		
		case AT_JAB:
		   if (window = 3 || window = 6) && has_hit_player {
		       attack_pressed = 1;
		   } else {
		       attack_down = 0;
		   }
		break;
		
		case AT_NSPECIAL:
		    if has_hit_player { nspec_target = hit_player_obj; }
		break;
		
		case AT_DTILT:
		    jump_pressed = has_hit; 
		break;
		
		case AT_DATTACK:
		    if has_hit_player && window = 4 {
                tilt_number = random_func( 1, 2, true );
				if tilt_number = 0 {
				    if spr_dir = -1 {
					    left_pressed = 1;
						attack_pressed = 1;
					} else {
					    right_pressed = 1;
						attack_pressed = 1;
					}
				} else {
				    up_pressed = 1;
					attack_pressed = 1;
				}
            }			
		break;
	}
}

if state == PS_PRATFALL {
	left_down = x > stage_mid;
	right_down = x < stage_mid;
}

if nspecial_grabbed_player = noone { nspec_target = noone; }

// ========== FIGHTING AI ==========
// exit if not set to fight
if get_training_cpu_action() != CPU_FIGHT {
	exit;
}

if nspecial_grabbed_player = nspec_target && nspec_target != noone {
dist_top = point_distance(0, y, 0, sd_t);
dist_side = point_distance(x, 0, (x < stage_mid? sd_l : sd_r), 0);

    //target nearest blastzone
    if nspecial_grab_timer > 20 {
	
	attack_down = 0;
	special_down = 0;
	
	    if abs(dist_top) < abs(dist_side) {
		    if state_cat = SC_GROUND_NEUTRAL || state_cat = SC_GROUND_COMMITTED || state = PS_IDLE_AIR && djumps = 0 {
			    jump_pressed = 1;
			}
		} else {
		    if x < stage_mid {
			    left_down = 1;
			} else {
			    right_down = 1;
			}
		}
	} else {
	    if abs(dist_top) < abs(dist_side) {
		    up_pressed = 1;
			attack_pressed = 1;
			left_pressed = 0;
			right_pressed = 0;
		} else {
		    if x < stage_mid {
			    left_pressed = 1;
			} else {
		        right_pressed = 1;
			}
			attack_pressed = 1;
		}
	}
}

#define do_special
///#args dir?
// 0=neutral, 1=forward, 2=up, 3=down
var dir = (argument_count > 0) ? argument[0] : 0;

special_pressed = 1;
left_down = 0;
right_down = 0;
up_down = 0;
down_down = 0;

switch dir {
	case 1:
		right_down = spr_dir > 0;
		left_down = !right_down;
		break;
	case 2:
		up_down = 1;
		break;
	case 3:
		down_down = 1;
		break;
}