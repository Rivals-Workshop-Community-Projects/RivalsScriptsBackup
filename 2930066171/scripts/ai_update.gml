// ai_update.gml 
// EDITED FROM MENACE13's AI CODE
if (get_training_cpu_action() != CPU_STAND) {

nspecialCool += 1

checkpoint = -1;
test_var = ai_target;

var stage_x = get_stage_data( SD_X_POS )
var blastzone = get_stage_data( SD_SIDE_BLASTZONE )
offstage = true;
if (x > stage_x - 30 and x < (room_width - stage_x) + 30){
    offstage = false;
}


if (state == PS_PRATFALL) {
	if (x > stage_x && x < (room_width - stage_x)) down_hard_pressed = true;
	if (x < stage_x + 10) {
		jump_pressed = true;
		right_down = true;
		left_down = false;
		down_hard_pressed = false;
	}
	if (x > (room_width - stage_x) - 10) {
		jump_pressed = true;
		left_down = true;
		right_down = false;
		down_hard_pressed = false;
	}
}

var nearest_id = noone;
var nearest_distance = 99999;
with (asset_get("oPlayer")) {
	if (id != other.id) {
		var curr_distance = point_distance(x, y, other.x, other.y);
		if (curr_distance < nearest_distance) {
			nearest_id = id;
			nearest_distance = curr_distance;
		}
	}
}

if (!free && nearest_distance >= 400) || (attack = AT_DTILT && (state == PS_ATTACK_AIR ||state == PS_ATTACK_GROUND) && nearest_distance <= 100) {
	if sickGains < maxRepCount {
		left_down = (x < ai_target.x);
		right_down = (x > ai_target.x);
		up_down = false;
		down_down = true;
		attack_pressed = true;
	} else {
		left_down = false;
		right_down = false;
		up_down = false;
		down_down = false;
		special_pressed = true;
	}
}

if attack == AT_NSPECIAL && (state == PS_ATTACK_AIR ||state == PS_ATTACK_GROUND) {
	if window == 1 {
		if window_timer = 1 {
			if get_gameplay_time() % 3 = 0 {
				nspecialMixUp = 1
			} else {
				nspecialMixUp = 0
			}
		}
		
		if nspecialMixUp = 1 {
			if nearest_distance >= 160 {
				special_down = true;
			} else {
				special_down = false;
			}
		}
		
		if nearest_distance <= 200 {
			if !(ai_recovering) {
				left_down = (x < ai_target.x);
				right_down = (x > ai_target.x);
			}
		}
		if vsp < 1 {
			down_hard_pressed = true
		}
	}
	if window = 2 {
		special_pressed = false;
		shield_pressed = true;
	}
}

if state == PS_WALL_JUMP || state = PS_WALL_TECH {
	if get_gameplay_time() % 4 = 0 {
		walljumpMixUp = 1
	} else {
		walljumpMixUp = 0
		special_pressed = true;
		up_down = false;
		left_down = false;
		right_down = false;
	}
}

if state == PS_DASH_START {
	attack_pressed = true;
}

if attack == AT_DATTACK && (state == PS_ATTACK_AIR ||state == PS_ATTACK_GROUND) {
	move_cooldown[AT_UAIR] = 6;
	if !free && window == 3 && !has_hit {
		jump_pressed = true;
	}
}



/*
if wobbleTest = 1 {
	jump_pressed = true;
	if state == PS_WAVELAND {
		joy_pad_idle = true
		right_pressed = true;
		shield_pressed = true;
		shield_down = true;
		wobbleTest = 0
	}
}

if attack == AT_UTILT {
	wobbleTest = 1
}
*/


/*
switch(state) {
	
	case PS_WALLJUMP:
		left_down = false;
		right_down = false;
		up_down = false;
		down_down = false;
		special_pressed = true;
	break;
	default:
	break;
	
}

switch(attack) {
	case AT_NSPECIAL: 
		if window = 1 {
			nspecialCool = 1
		}
	
	break;
	default:
	break;
	
}
*/













if (ai_recovering) {
	if (nearest_id != noone && nearest_distance < 80) {
		if (djumps == 0 && abs(nearest_id.x - x) < 80 && ((y - nearest_id.y < 20) || (y - nearest_id.y < 50 && nearest_id.vsp > -2))) {
			jump_pressed = true;
		}
	}
	if (has_walljump && state_cat != SC_AIR_COMMITTED) {
		left_down = false;
		right_down = false;
		up_down = true;
		down_down = false;
		special_pressed = true;
	}
}

}