//ai_update - called every frame for this character as a CPU
var stage_x = get_stage_data(SD_X_POS);
var stage_y = get_stage_data(SD_Y_POS);
xdist = abs(ai_target.x - x);
ydist = abs(ai_target.y - y);

if(itemCredits > 0){
	canBuy = true;
} else {
	canBuy = false;
}

if (x > stage_x && x < room_width - stage_x){
	onstage = true;
} else {
	onstage = false;
}

//ai_update - called every frame for this character as a CPU
temp_level = 9;
rangedtimer -= 1
damage = get_player_damage( ai_target.player );
facing = false;
if 90 > xdist and 90 > ydist AIwait -= 1
usmashpercent = (2 - ai_target.knockback_adj) * 85
fsmashpercent = (2 - ai_target.knockback_adj) * 110
dsmashpercent = (2 - ai_target.knockback_adj) * 90

if (get_training_cpu_action() == CPU_FIGHT){

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

	if(attack == AT_TAUNT){	//don't keep taunting forever wtf
		if(window == 1 && window_timer >= 1){
			clear_button_buffer( PC_TAUNT_PRESSED );
		}
	}

	//do dtilt2
	if(attack == AT_DTILT && window == 3 && window_timer == 2 && 60 > ydist){
		var doDTilt2 = random_func(0, 2, true);
		print(doDTilt2);
		if(doDTilt2 == 1){
			attack_pressed = true;
		}
	}

	if(attack == AT_JAB){
		if(window == 3 && window_timer == 5){
			var doJab2 = random_func(0, 3, true);
			if(doJab2 >= 1){
				attack_pressed = true;
			}
		}
		if(window == 6 && window_timer == 6){
			var doJab3 = random_func(0, 3, true);
			if(doJab3 == 2){
				attack_pressed = true;
			}
		}
	}

	if((ai_target.state == PS_RESPAWN || ai_target.state == PS_DEAD) && onstage){
		if(canBuy){
			down_down = true;
			special_pressed = true;
		}
	}

	if (attack == AT_DSPECIAL && window == 2){
		attack_pressed = true;
	}

	//sideb slam
	if (attack == AT_FSPECIAL && window == 3 && xdist < 82 && ydist < 32 && onstage && facing){
		attack_pressed = true;
	}

	if ai_recovering {
		recoverytimer += 1
	}
	else {
		recoverytimer = 0
	}
	if (x > ai_target.x and spr_dir = -1) or (ai_target.x > x and spr_dir = 1){
		facing = true;
	}

	// Chase the opponent down
	if (((0 > rangedtimer) or (!ai_recovering and inactive > 20)) and (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL) and xdist > 110){
		if ai_target.x > x{
			right_hard_pressed = true;
			if state = PS_DASH {
			right_down = true
			}
		} else {
			left_hard_pressed = true;
			if state = PS_DASH {
			left_down = true
			}
		}
	}

	//Spacing time

	if !ai_recovering and rangedtimer > 0 and ai_target.state_cat != SC_HITSTUN{
		if !free and xdist > 200 and get_player_damage(player) > 90 {
			jump_pressed = true
		}
		if free and get_player_damage(player) > 90 {
				if x > ai_target.x{
					left_down = false;
					right_down = true;
				} 	else {
					left_down = true;
					right_down = false;
				}
		}
	}

	if (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL) and state != PS_DOUBLE_JUMP and ydist > 70 and y > ai_target.y {
		if damage > usmashpercent and 100 > ydist and 50 > xdist {
			joy_pad_idle = true;
			left_down = false;
			right_down = false;
			special_pressed = false;
			attack_pressed = false;
			up_strong_pressed = true;
		}
		else {
		jump_pressed = true
		}
	}

	if free and ai_target.y - 120 > y {
		down_hard_pressed = true;
	}

	if !free and ai_target.y - 70 > y and !ai_target.free {
		down_hard_pressed = true;
	}
	if free and has_hit_player and hitpause and can_fast_fall and get_stage_data(SD_Y_POS) - y > 60 and 1 > get_stage_data(SD_Y_POS) - y {
		down_hard_pressed = true;
	}


	if state_cat != SC_HITSTUN {
		if x > room_width - get_stage_data( SD_X_POS ) {
			left_down = true
		}
		else {
			if get_stage_data( SD_X_POS ) > x {
				right_down = true
			}
		}
	}

	if state_cat = SC_HITSTUN{
		if hitpause {
			if 50 > rangedtimer randDI = 0 //Random none
			if rangedtimer > 50 { //Random DI full out
				if(reconsider){
					randDI = 2;
				} else {
					randDI = 1;
				}
			}
			if rangedtimer > 100 { //Random DI full in
				randDI = 2
			}
			if rangedtimer > 150 { //Random DI full down
				if(reconsider){
					randDI = 2;
				} else {
					randDI = 3;
				}
			}
			if rangedtimer > 200 { //Random DI full up
				randDI = 4
			}
			if 3 > hitstop{
				AIwait = rangedtimer mod 10
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
	}


	// F Smash
	if ((get_gameplay_time() mod 2 == 0 or ai_target.state_cat = SC_HITSTUN) and can_strong and 120 > xdist and damage > fsmashpercent and xdist > 40 and 60 > ydist and y > ai_target.y-1){
		joy_pad_idle = true;
		left_down = false;
		right_down = false;
		special_pressed = false;
		attack_pressed = false;
		if x > ai_target.x{
			left_strong_pressed = true;
		} else {
			right_strong_pressed = true;
		}
	}

	// U Smash
	if ((get_gameplay_time() mod 2 == 0 or ai_target.state_cat = SC_HITSTUN) and can_strong and !free and 50 > xdist and damage > usmashpercent and 100 > ydist and y > ai_target.y-1 and facing){
		joy_pad_idle = true;
		left_down = false;
		right_down = false;
		special_pressed = false;
		attack_pressed = false;
		up_strong_pressed = true;
	}

	// D Smash
	if (get_gameplay_time() mod 3 == 0 and ai_target.state_cat = SC_HITSTUN and can_strong and !free and 80 > xdist and damage > dsmashpercent and 60 > ydist and y > ai_target.y-1){
		joy_pad_idle = true;
		left_down = false;
		right_down = false;
		special_pressed = false;
		attack_pressed = false;
		down_strong_pressed = true;
	}

	//Uspecial
	if (get_stage_data(SD_Y_POS) - 150 > y and get_gameplay_time() mod 13 == 0 and can_special and 75 > xdist and 90 > ydist and y > ai_target.y-1 and facing){
		joy_pad_idle = true;
		left_down = false;
		right_down = false;
		up_down = true;
		special_pressed = true;
		attack_pressed = false;
	}
	
	if(abs(x - stage_x) < 150 || abs(x - (room_width - stage_x)) < 150){
		if(!onstage && get_stage_data(SD_Y_POS) > (has_walljump ? y - 150 : y) && state == PS_ATTACK_AIR && attack == AT_USPECIAL && window >= 2 && window <= 5){
			var doUpBCancel = random_func(0, 100, true);
			if(doUpBCancel >= 90){
				print(doUpBCancel);
				shield_down = true;
			}
		}
	}
	

	//Fspecial
	if (get_stage_data( SD_Y_POS ) > y and get_gameplay_time() mod 40 == 0 and can_special and 250 > xdist and xdist > 120 and 70 > ydist){
		joy_pad_idle = true;
		if x > ai_target.x{
				left_down = true;
				right_down = false;
		} else {
				left_down = false;
				right_down = true;
			}
		up_down = false;
		special_pressed = true;
		attack_pressed = false;
	}


	//Fspecial offstage -- wait this isn't right, this is nspecial??? what is this
	// and get_stage_data( SD_Y_POS ) > y+24
	if 	(recoverytimer > 60) and can_special {
		joy_pad_idle = true;
		left_down = false;
		right_down = false;
		down_down = false;
		special_pressed = true;
		attack_pressed = false;
	}
	//Tilts
	if !free and can_attack and 0 > AIwait{
		if 72 > xdist and 50 > ydist{ // Ftilt
			clear_button_buffer( PC_ATTACK_PRESSED );
			joy_pad_idle = true;
			if x > ai_target.x{
				left_down = true;
				right_down = false;
			} else {
				left_down = false;
				right_down = true;
			}
			up_down = false;
			down_down = false;
			special_pressed = false;
			attack_pressed = true;
		}
		if get_gameplay_time() mod 5 == 0 and 40 > ydist and xdist > 120 and 200 > xdist{ // Dattack
			clear_button_buffer( PC_ATTACK_PRESSED );
			if ai_target.x > x{
				right_hard_pressed = true;
			} 
			else {
				left_hard_pressed = true;
				}
			joy_pad_idle = true;
			left_down = false;
			right_down = false;
			up_down = false;
			down_down = false;
			special_pressed = false;
			attack_pressed = true;
			}
		if 100 > ydist and 30 > xdist{ // Utilt
			clear_button_buffer( PC_ATTACK_PRESSED );
			joy_pad_idle = true;
			left_down = false;
			right_down = false;
			up_down = true;
			down_down = false;
			special_pressed = false;
			attack_pressed = true;
			rangedtimer = 300
		}
		if 80 > xdist and 64 > ydist and facing{ // Jab
			clear_button_buffer( PC_ATTACK_PRESSED );
			joy_pad_idle = true;
			left_down = false;
			right_down = false;
			up_down = false;
			down_down = false;
			special_pressed = false;
			attack_pressed = true;
			rangedtimer = 300
		}
		if 32 > ydist and 70 > xdist and facing { // Dtilt
			clear_button_buffer( PC_ATTACK_PRESSED );
			joy_pad_idle = true;
			left_down = false;
			right_down = false;
			up_down = false;
			down_down = true;
			special_pressed = false;
			attack_pressed = true;
			rangedtimer = 300
		}
	}

	// Aerials
	if free and can_attack and get_stage_data( SD_Y_POS ) > y+24 and 0 > AIwait {
		if (y + 10 <= ai_target.y) and xdist < 60{ // Dair
			clear_button_buffer( PC_ATTACK_PRESSED );
			joy_pad_idle = true;
			left_down = false;
			right_down = false;
			up_down = false;
			down_down = true;
			special_pressed = false;
			attack_pressed = true;
		}
		if (ai_target.y < y) and (ai_target.y > y - 130) and xdist < 50{ // Uair
			clear_button_buffer( PC_ATTACK_PRESSED );
			joy_pad_idle = true;
			left_down = false;
			right_down = false;
			up_down = true;
			down_down = false;
			special_pressed = false;
			attack_pressed = true;
		}
		else if xdist < 64 and ydist < 72 { // Nair
			clear_button_buffer( PC_ATTACK_PRESSED );
			joy_pad_idle = true;
			left_down = false;
			right_down = false;
			up_down = false;
			down_down = false;
			special_pressed = false;
			attack_pressed = true;
		}
		else if xdist < 120 and ydist < 60 and facing{ // Fair
			clear_button_buffer( PC_ATTACK_PRESSED );
			joy_pad_idle = true;
			if ai_target.x < x{
				left_down = true;
				right_down = false;
			} else {
				left_down = false;
				right_down = true;
			}
			up_down = false;
			down_down = false;
			special_pressed = false;
			attack_pressed = true;
		}
		if xdist < 100 and ydist < 50 and !facing{ // Bair
			clear_button_buffer( PC_ATTACK_PRESSED );
			joy_pad_idle = true;
			if ai_target.x < x{
				left_down = true;
				right_down = false;
			} else {
				left_down = false;
				right_down = true;
			}
			up_down = false;
			down_down = false;
			special_pressed = false;
			attack_pressed = true;
		}
	}
}