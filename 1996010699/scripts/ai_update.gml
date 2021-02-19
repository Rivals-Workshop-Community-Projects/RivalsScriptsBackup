//ai_update - called every frame for this character as a CPU
var stage_x = get_stage_data(SD_X_POS);
var stage_y = get_stage_data(SD_Y_POS);
xdist = abs(ai_target.x - x);
ydist = abs(y - ai_target.y);
var canBuy = false;
var facingTarget = false;
var onstage = false;

if(itemCredits > 0){
	canBuy = true;
} else {
	canBuy = false;
}

if ((ai_target.x < x && spr_dir = -1) || (ai_target.x > x && spr_dir = 1)){
    facingTarget = true;
} else {
	facingTarget = false;
}

if (x > stage_x && x < room_width - stage_x){
	onstage = true;
} else {
	onstage = false;
}


if((xdist)*spr_dir > 180 && canBuy && onstage){	//if reasonably safe & can buy item, downb
	down_down = true;
	special_pressed = true;
}

//do nairbounce
if (attack == AT_NAIR && item[2,3] == 1 && window == 2 && onstage && window_timer < get_window_value(AT_NAIR,2,AG_WINDOW_LENGTH)){
	down_hard_pressed = true;
	attack_down = true;
}

if(state == PS_RESPAWN){
	if((item[3, 3] == 0) && (item[3, 7] == false)){		//unlock creator's curse
		taunt_pressed = true;
	}
	if(canBuy){
		down_down = true;
		special_pressed = true;
	}
}

if(attack == AT_TAUNT && window_timer >= 1){	//don't keep taunting forever wtf
	clear_button_buffer( PC_TAUNT_PRESSED );
}

if(ai_target.state == PS_RESPAWN){
	if(canBuy){
		down_down = true;
		special_pressed = true;
	}
}	

if (attack == AT_UTILT && window == 3){
	if(has_hit_player){
		if(xdist < 60){
			attack_down = true;
		}
	} else {
		if (xdist < 30){
			attack_down = true;
		}
	}
}

if (attack == AT_DSPECIAL && window == 2){
	attack_pressed = true;
}

if (attack == AT_FSPECIAL && window == 3 && fspecialTimer > 30 && onstage){
	jump_pressed = true;
}

if(ai_recovering){
	if(y < stage_y && djumps > 0 && carbounceRestoredJumps == false){
		if(x < stage_x){
			right_down = true;
			special_pressed = true;
		} else {
			left_down = true;
			special_pressed = true;
		}
	}
}

if(ai_target.was_parried && ai_target.attack != AT_JAB && facingTarget && xdist < 40 && ydist < 20){
	if(xdist < 90 && xdist > 42){
		special_pressed = true;
	} else if (xdist <= 42){
		if(spr_dir < 0){
			left_strong_pressed = true;
		} else {
			right_strong_pressed = true;
		}
	}
}