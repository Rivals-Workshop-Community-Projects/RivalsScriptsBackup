//ai_update

is_ai = true;

targetDistX = abs(ai_target.x - x);
targetDistY = abs(ai_target.y - y);
facing = (x > ai_target.x && spr_dir = -1) || (ai_target.x > x && spr_dir = 1);
//if 60 > targetDistX and 60 > targetDistY { AIwait -= 1 }
var orb_id = undefined
var orb_dist = 0
with obj_article1 if player_id == other.id {
	orb_id = id
	orb_dist = distance_to_point(other.ai_target.x,other.ai_target.y)
}

if ai_recovering {
	var recover_dir = -sign(x - room_width/2) //1 = recover to the right, -1 = recover to the left
	/*
	if has_walljump && djumps != 0 && state != PS_DOUBLE_JUMP && can_special && y > 600 {
		clear_inputs()
        if recover_dir == 1 {
	        right_down = true;
        } else {
            left_down = true;
        }
        special_pressed = true;
	}
	*/
} else if (get_training_cpu_action() == CPU_FIGHT) {
    //follow target
    if (targetDistX > 100) && (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL) {
        if (x < ai_target.x) {
            right_hard_pressed = true;
            if (state == PS_DASH) {
                right_down = true;
            }
        } else {
            left_hard_pressed = true;
            if (state = PS_DASH) {
                left_down = true;
            }
        }
    }
    
    //jump for aerial if target on platform
    if state_cat == SC_GROUND_NEUTRAL && !ai_target.free && (ai_target.y < y - 60) {
        jump_pressed = true;
    }
    
    //jump to follow up an attack
    if state == PS_ATTACK_GROUND && (attack == AT_UTILT || attack == AT_DTILT) && has_hit {
        jump_pressed = true;
    }
    
    //aerial followups
    if (state == PS_ATTACK_AIR && (attack == AT_UAIR) && has_hit) {
        if (ai_target.y < y - 60) {
            jump_pressed = true;
        }
    }
    
    //shorthop vs fullhop
    if (state == PS_JUMPSQUAT) || (state == PS_FIRST_JUMP) {
        if (ai_target.y < y - 60) {
            jump_down = true;
        }
    }
    
    //follow target during aerials for followups
    if (state == PS_ATTACK_AIR) || (free && (state != PS_HITSTUN || hitpause)) {
        if (x < ai_target.x) {
            right_down = true;
        } else {
            left_down = true;
        }
    }
    
    if state_cat = SC_HITSTUN {
		randDI = 0;
		if (aiHitboxAngle < 45) && (aiHitboxKB < 10) { //DI full out
			randDI = 1
		}
		if (aiHitboxAngle < 45) && (aiHitboxKB >= 10) { //DI full in
			randDI = 2
		}
		if (aiHitboxAngle > 45) && (aiHitboxKB >= 10) { //DI full down
			randDI = 3
		}
		if (aiHitboxAngle > 45) && (aiHitboxKB < 10) { //DI full up
			randDI = 4
		}
		if 3 > hitstop{
			if randDI = 1 {
				if x > ai_target.x{
					left_down = false;
					right_down = true;
				} else {
					left_down = true;
					right_down = false;
				}
			}
			if randDI = 2 {
				if x > ai_target.x{
					left_down = true;
					right_down = false;
				} else {
					left_down = false;
					right_down = true;
				}
			}
			if randDI = 3 {
				down_down = true
			}
			if randDI = 4 {
				up_down = true
			}
		}
	}
    
    //hitfalling if close to ground
    var floorDist = 0;
    var offstage = false;
    while !(position_meeting(x, y + floorDist, asset_get("par_block"))) && !(position_meeting(x, y + floorDist, asset_get("par_jumpthrough"))) && floorDist < 800 {
    	floorDist += 15;
    }
    if (floorDist < 85) && (can_fast_fall) && (has_hit_player) && (free) && !(attack == AT_DAIR && window < 6) {
    	down_hard_pressed = true;
    }
    if (floorDist > 600) {
    	offstage = true;
    }
    
    //grounded normals
    if can_attack && !free {
        //ftilt
        if targetDistX < 80 && targetDistY < 30 && facing {
            clear_inputs()
            if (x < ai_target.x) {
    	        right_down = true;
            } else {
                left_down = true;
            }
	        attack_pressed = true;
        }
        //jab
        else if targetDistX < 50 && targetDistY < 30 && facing {
            //clear_button_buffer( PC_ATTACK_PRESSED );
            clear_inputs()
	        attack_pressed = true;
        }
        // Dattack
        else if timer mod 60 > 30 && (targetDistY < 40) && (targetDistX > 60) && (targetDistX < 140) { 
	        clear_inputs()
			if ai_target.x > x {
				right_hard_pressed = true;
			} else {
				left_hard_pressed = true;
			}
	        attack_pressed = true;
		}
        //utilt
        else if (targetDistX < 40 && facing || targetDistX < 30 && !facing) && targetDistY < 70 {
            clear_inputs()
            up_down = true
            attack_pressed = true
        }
        //dtilt
        else if targetDistX < 100 && targetDistY < 20 && facing {
            clear_inputs()
            down_down = true
            attack_pressed = true
        }
    }
    
    //aerials
    if can_attack && free && get_stage_data( SD_Y_POS ) > y+24 {
        //fair
        if (facing) && (targetDistX < 40) && (targetDistX > 10) && (targetDistY < 20) {
            //clear_button_buffer( PC_ATTACK_PRESSED );
	        clear_inputs()
	        if (x < ai_target.x) {
    	        left_down = true;
            } else {
    	        right_down = true;
            }
	        attack_pressed = true;
        }
        //bair
        else if (!facing) && (targetDistX < 100) && (targetDistX > 50) && (targetDistY < 40) {
            //clear_button_buffer( PC_ATTACK_PRESSED );
	        clear_inputs()
	        if (x > ai_target.x) {
    	        left_down = true;
            } else {
    	        right_down = true;
            }
	        attack_pressed = true;
        }
        //nair
        if (targetDistX < 60) && (targetDistY < 60) {
            //clear_button_buffer( PC_ATTACK_PRESSED );
	        clear_inputs()
	        attack_pressed = true
        }
        //uair
        else if (ai_target.y < y) && targetDistY < 100 && targetDistY > 50 && (targetDistX < 30) {
            //clear_button_buffer( PC_ATTACK_PRESSED );
	        clear_inputs()
	        up_down = true
	        attack_pressed = true
        }
        
        //dair
        else if (targetDistX < 80) && (ai_target.y > y) && targetDistY < 100 && targetDistY > 40 {
            //clear_button_buffer( PC_ATTACK_PRESSED );
	        clear_inputs()
	        down_down = true
	        attack_pressed = true
        }
    }
    
    //specials
    if can_special && get_stage_data( SD_Y_POS ) > y+24{
    	//nspecial
        if timer mod 60 > 30 && targetDistX < 200 && targetDistX > 50 && targetDistY < 50 && meter_cur > 30 && facing {
            clear_inputs()
	        special_pressed = true;
        }
        
        //dspecial
        if (orb_id != undefined && orb_dist < 50 && orb_id.pulse_cooldown == 0 && !orb_id.pulse) || (timer mod 60 < 10 && ((!meter_flipped && meter_cur < 30) || (meter_flipped && meter_cur > 70))) {
    		clear_inputs()
    		down_down = true
    		special_pressed = true
        }
        
        //fspecial
        if !offstage && timer mod 60 < 30 && targetDistX < 200 && targetDistX > 30 && targetDistY < 50 && meter_cur > 15 {
            clear_inputs()
            if (x < ai_target.x) {
    	        right_down = true;
            } else {
                left_down = true;
            }
	        special_pressed = true;
        }
    }
    
    //strongs
    if can_strong && !free && (timer mod 80 > 70 || get_player_damage(ai_target.player) >= 100) {
        //fstrong
        if targetDistX < 70 && targetDistY < 30 {
            clear_inputs()
            if (x < ai_target.x) {
    	        right_strong_pressed = true;
            } else {
                left_strong_pressed = true;
            }
        }
        //ustrong
        else  if (ai_target.y < y) && targetDistY < 100 && targetDistY > 50 && (targetDistX < 30) {
            clear_inputs()
            up_strong_pressed = true
        }
        //dstrong
        else if targetDistX < 80 && targetDistY < 20{
            clear_inputs()
            down_strong_pressed = true
        }
    }
}



#define clear_inputs()
joy_pad_idle = true;
left_down = false;
right_down = false;
up_down = false;
down_down = false;
special_pressed = false;
attack_pressed = false;