//ai_update - called every frame for this character as a CPU

is_ai = true;



if (get_training_cpu_action() == CPU_FIGHT) {
	rangedtimer -= 1
	xdist = abs(ai_target.x - x);
	ydist = abs(ai_target.y - y);
	damage = get_player_damage( ai_target.player );
	facing = false;
	cuttertimer -= 1
	if 90 > xdist and 90 > ydist AIwait -= 1
	usmashpercent = (2 - ai_target.knockback_adj) * 85
	fsmashpercent = (2 - ai_target.knockback_adj) * 95
	dsmashpercent = (2 - ai_target.knockback_adj) * 110
	uspecialpercent = (2 - ai_target.knockback_adj) * 130
	bairpercent = (2 - ai_target.knockback_adj) * 110
	cloudrange = false;
	cloudcount = 0;
	with(asset_get("obj_article1")){
		if (player_id == other.id && state < 2){
			other.cloudcount++;
			if (y < other.ai_target.y && abs(x - other.ai_target.x) < 30){
				other.cloudrange = true;
			}
		}
	}
	rainrange = (y < ai_target.y && abs(x - ai_target.x) < 30);
	targetsoaked = (ai_target.soaked && ai_target.soaked_id == id);
	
	if ai_recovering {
		recoverytimer += 1
	}
	else {
		recoverytimer = 0
	}
	if (x > ai_target.x and spr_dir = -1) or (ai_target.x > x and spr_dir = 1){
	    facing = true;
	}
	
	if (cloudcount == 0 && !free && abs(x - ai_target.x > 50) && get_gameplay_time() >= 141){
		if (x > ai_target.x){
			left_down = false;
			right_down = true;
		}else{
			left_down = true;
			right_down = false;
		}
		shield_pressed = true;
	}
	
	if (state == PS_ATTACK_GROUND && attack == AT_UTILT && has_hit){
		jump_pressed = true;
	}
	
	// Chase the opponent down
	if (((0 > rangedtimer) or (!ai_recovering and inactive > 20)) and (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL) and xdist > 100 && rain_cooldown == 0){
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
	
	if (!ai_recovering && (rangedtimer > 0 || targetsoaked) && ai_target.state_cat != SC_HITSTUN){
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
		if can_special and 0 > cuttertimer and xdist > 350 {
			cuttertimer = 60
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
				randDI = 1
			}
			if rangedtimer > 100 { //Random DI full in
				randDI = 2
			}
			if rangedtimer > 150 { //Random DI full down
				randDI = 3
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
	if ((get_gameplay_time() mod 2 == 0 or ai_target.state_cat = SC_HITSTUN) and can_strong and !free and 100 > xdist and damage > fsmashpercent and xdist > 40 and 60 > ydist and y > ai_target.y-1){
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
	if ((get_gameplay_time() mod 2 == 0 or ai_target.state_cat = SC_HITSTUN) and can_strong and !free and 50 > xdist and damage > usmashpercent and 150 > ydist and y > ai_target.y-1 and facing){
	    joy_pad_idle = true;
	    left_down = false;
	    right_down = false;
	    special_pressed = false;
	    attack_pressed = false;
	    up_strong_pressed = true;
	}
	
	// D Smash
	if (get_gameplay_time() mod 3 == 0 and ai_target.state_cat = SC_HITSTUN and can_strong and !free and 120 > xdist and damage > dsmashpercent and 60 > ydist and y > ai_target.y-1){
	    joy_pad_idle = true;
	    left_down = false;
	    right_down = false;
	    special_pressed = false;
	    attack_pressed = false;
	    down_strong_pressed = true;
	}
	
	//Fspecial
	if ( get_stage_data( SD_Y_POS ) > y and can_special and 250 > xdist and xdist > 120 and 70 > ydist and 0 > cuttertimer){
		cuttertimer = 120
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
	
	if attack = AT_FSPECIAL and window = 2{
		if y > ai_target.y - 30{
	            up_pressed = false;
	            down_pressed = true;
	    } 
		else {
			if ai_target.y + 30 > y { 
				up_pressed = true;
	            down_pressed = false;
	        }
			else {
				up_down = false;
				down_down = false;
			}
		}
	}
	
	//Dspecial
	if ((cloudrange || rainrange) && rain_cooldown == 0){
	    joy_pad_idle = true;
	    left_down = false;
	    right_down = false;
		down_down = true;
	    special_pressed = true;
	    attack_pressed = false;
	}
	
	
	//Tilts
	if !free and can_attack and 0 > AIwait{
	    if 72 > xdist and 60 > ydist{ // Ftilt
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
	    if 80 > ydist and 30 > xdist{ // Utilt
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
	    if 50 > xdist and 50 > ydist and facing{ // Jab
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
		if 40 > ydist and 120 > xdist and facing{ // Dtilt
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
	    if (y > ai_target.y - 80) and (y < ai_target.y) and xdist < 40{ // Dair
	        clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        left_down = false;
	        right_down = false;
	        up_down = false;
	        down_down = true;
	        special_pressed = false;
	        attack_pressed = true;
	    }
	    if (ai_target.y < y) and (ai_target.y > y - 70) and xdist < 60{ // Uair
	        clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        left_down = false;
	        right_down = false;
	        up_down = true;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
	    }
	    else if xdist < 60 and ydist < 60{ // Nair
	        clear_button_buffer( PC_ATTACK_PRESSED );
	        joy_pad_idle = true;
	        left_down = false;
	        right_down = false;
	        up_down = false;
	        down_down = false;
	        special_pressed = false;
	        attack_pressed = true;
	    }
	    else if xdist < 80 and ydist < 60 and facing{ // Fair
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
		if xdist < 80 and ydist < 70 and y < ai_target.y - 10 and !facing{ // Bair
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
	
	
	//Nspecial
	if (0 > AIwait and get_gameplay_time() mod 17 == 0 and ai_target.state_cat = SC_HITSTUN and can_special and 70 > xdist and facing and 60 > ydist){
	    joy_pad_idle = true;
	    left_down = false;
	    right_down = false;
		down_down = false
		up_down = false
	    special_pressed = true;
	    attack_pressed = false;
	}
	
	if attack = AT_NSPECIAL and window = 2 and 90 > xdist and facing and 90 > ydist {
	special_down = true;
	}
	
	if attack != AT_DSPECIAL{ 
		nearbyhitbox = collision_circle( x-32, y-32, 64, asset_get("pHitBox"), true, true ) 
		if nearbyhitbox != noone{
			if nearbyhitbox.player_id != self{
				shield_pressed = true
				}
		}
	}
	
	//Uspecial
	if (ai_target.y < y && rain_cooldown == 0 && xdist < 50 && ydist < 250 && (!godmode || get_player_damage(ai_target.player) < 200)){
	    joy_pad_idle = true;
	    left_down = false;
	    right_down = false;
		up_down = true;
	    special_pressed = true;
	    attack_pressed = false;
	}
	
	if (attack == AT_USPECIAL && (state == PS_ATTACK_GROUND) || (state == PS_ATTACK_AIR)){
		if !ai_recovering{
			down_down = true;
		}
		if (x - ai_target.x > 75){
			left_down = true;
		}
		if (x - ai_target.x < -75){
			right_down = true;
		}
	}
	
	
	
	//Dspecial
	if ((cloudrange || rainrange) && !targetsoaked && rain_cooldown == 0){
	    joy_pad_idle = true;
	    left_down = false;
	    right_down = false;
	    up_down = false;
		down_down = true;
	    special_pressed = true;
	    attack_pressed = false;
	}
	
	if (ai_target.state == PS_ATTACK_GROUND && ai_target.attack == AT_TAUNT && ai_target.state_timer == 1 + player * 3 && !(codec || godmode) && temp_level == 9){
		sound_play(sound_get("textappear"));
        textboxframe = 0;   //Anim frame for box
        codec = true;       //Codec on/off
        codectimer = 0;     //Anim timer for box
        codecfile = 20;     //Angery
        codecindex = 0;     //First page
        currentcodecline = 1;   //Line of codec being written
		codectimer2 = 0;    //Anim timer for text scroll
		codecprint[1] = "";
		codecprint[2] = "";
		codecprint[3] = "";
		codecprint[4] = "";
	}
	
	
	
	if (codec && codectimer2 >= 90 && textboxframe == 8){
	    if (codecindex < maxcodecindex){
	    	sound_play(sound_get("textpage"));
		    codecindex++;
		    currentcodecline = 1;   //Line of codec being written
		    codectimer2 = 0;    //Anim timer for text scroll
		    codecprint[1] = "";
		    codecprint[2] = "";
		    codecprint[3] = "";
		    codecprint[4] = "";
	    }else{
		    sound_play(sound_get("textleave"));
		    textboxframe = 9;   //Frame after pausing frame
		    codectimer = 0;     //Reset timer for even frame timing
	    }
	}
}