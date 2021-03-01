//ai_update - called every frame for this character as a CPU
if (get_training_cpu_action() == CPU_FIGHT){
rangedtimer -= 1
xdist = abs(ai_target.x - x);
ydist = abs(ai_target.y - y);
damage = get_player_damage( ai_target.player );
facing = false;
cuttertimer -= 1
if 90 > xdist and 90 > ydist AIwait -= 1
usmashpercent = 0
fsmashpercent = 0
dsmashpercent = 0
uspecialpercent = 0
bairpercent = 0

if (ai_target.state == PS_DEAD or ai_target.state == PS_RESPAWN){
    targetbusy = true;
} else { 
	targetbusy = false;
}

if soultimer < 0 && state == PS_DASH_START && state_timer > 2 {
	shield_pressed = true
}

///taunt

if state == PS_RESPAWN && visible {
	move_cooldown[AT_TAUNT] = 0 ;
	set_attack(AT_TAUNT)
}

if (can_attack and attack != (AT_TAUNT) and targetbusy and move_cooldown[AT_TAUNT] == 0){
    taunt_pressed = true;
}

if get_gameplay_time() > 100 and !targetbusy or state_cat = SC_HITSTUN {
	move_cooldown[AT_TAUNT] = 80 ;
}


if soultimer < 0 && karma > 200 {
    	joy_pad_idle = true;
		left_down = false;
		right_down = false;
		up_down = false;
		down_down = true;
		special_pressed = true;
		attack_pressed = false;
}

if "ai_target" in ai_target {
	with (pHitBox) {
		can_tech = 1
		dumb_di_mult = 0.1
	}
}
if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	if get_gameplay_time() % 2 == 0 {
  if attack == AT_FAIR or attack == AT_JAB {
  	if state_timer == 1  {
  		set_attack_value(AT_FAIR, AG_LANDING_LAG, 14);
		set_attack (AT_FAIR)
		window = 5
		window_timer = 0
  	}
  }
  
    if attack == AT_BAIR  {
  	if window == 1 && state_timer == 1  {
  		set_attack_value(AT_FAIR, AG_LANDING_LAG, 14);
		set_attack (AT_FAIR)
		window = 5
		window_timer = 0
  	}
  }
 
   if attack == AT_UAIR  {
  	if window == 1 && state_timer == 1  {
  		set_attack_value(AT_UAIR, AG_LANDING_LAG, 12);
		window = 5
		window_timer = 0
		sound_play(asset_get("sfx_swipe_heavy1"))
  	}
  }
  
   if attack == AT_DAIR  {
  	if window == 1 && state_timer == 1  {
    	set_attack_value(AT_DAIR, AG_LANDING_LAG, 12);
		window = 5
		window_timer = 0
  	}
  }
  

  
}
	if window == 1 && state_timer <= 2 {
		if x < ai_target.x {
			hsp += 0.1
		} else {
			hsp -= 0.1
		}
		
		if y < ai_target.y + 20 {
			vsp += 0.1
		} else {
			vsp -= 0.1
		}
		
		if "ai_target" in ai_target && xdist < 100 && ydist < 100 {
			if x > ai_target.x {
		      ai_target.hsp += 0.1
	     	} else {
	     		ai_target.hsp -= 0.1
	     	}
	     	
	     	if y > ai_target.y + 20 {
	     		ai_target.vsp += 0.1
	     	} else {
	     		ai_target.vsp -= 0.1
	     	}
		}
		
	}
	
   if has_hit_player {
   	
  if attack == AT_DTILT && get_gameplay_time() % 3 <= 1 {
   		if window == 3 && window_timer >= 8 {
   			set_attack (AT_NSPECIAL)
   			window = 1
   			window_timer = 0
   		}
   	}
   	
   	
   	if attack == AT_JAB && get_gameplay_time() % 3 == 0 {
   		if window == 3 && window_timer >= 8 {
   			set_attack (AT_FSTRONG)
   			window = 1
   			window_timer = 0
   		}
   	}
   	
   	
   	
   	if attack == AT_JAB && get_gameplay_time() % 3 == 1{
   		if x > ai_target.x {
   			spr_dir = -1
   		} else {
   			spr_dir = 1
   		}
   		if window == 3 && window_timer >= 8 {
   			set_attack (AT_FTILT)
   			window = 1
   			window_timer = 0
   		}
   	}
   	
   	   	
   	if attack == AT_JAB && get_gameplay_time() % 3 == 2 {
   		if x > ai_target.x {
   			spr_dir = -1
   		} else {
   			spr_dir = 1
   		}
   		if window == 3 && window_timer >= 8 {
   			set_attack (AT_DATTACK)
   			window = 1
   			window_timer = 0
   		}
   	}
   	
   	
   	if attack == AT_FTILT && get_gameplay_time() % 3 == 1 {
   		if window == 3 && window_timer >= 10 {
   			set_attack (AT_FSTRONG)
   			window = 1
   			window_timer = 0
   		}
   	}
   	
   	if attack == AT_FTILT && get_gameplay_time() % 3 == 1 {
   		if window == 3 && window_timer >= 10 {
   			set_attack (AT_NSPECIAL)
   			window = 1
   			window_timer = 0
   		}
   	}
   	
   	 if attack == AT_FTILT && get_gameplay_time() % 3 == 3 {
   		if window == 3 && window_timer >= 10 {
   			set_attack (AT_DSTRONG)
   			window = 1
   			window_timer = 0
   		}
   	}
   	
   	
   	if attack == AT_NSPECIAL && get_gameplay_time() % 3 <= 1 {
   		if window == 4 && window_timer >= 12 {
   			set_attack (AT_NSPECIAL)
   			window = 1
   			window_timer = 0
   		}
   	}
   	
   	
   }
}

if xdist > 300 && can_attack && soultimer == 0 && karma < 200{
	joy_pad_idle = true;
		left_down = false;
		right_down = false;
		up_down = false;
		down_down = true;
		special_pressed = true;
		attack_pressed = false;
}


if attack == AT_JAB 
if ai_recovering {
	if soultimer == 0 {
		joy_pad_idle = true;
		left_down = false;
		right_down = false;
		up_down = false;
		down_down = true;
		special_pressed = true;
		attack_pressed = false;
	}
	recoverytimer += 1
}
else {
	recoverytimer = 0
}
if (x > ai_target.x and spr_dir = -1) or (ai_target.x > x and spr_dir = 1){
    facing = true;
}

// Chase the opponent down
if (((0 > rangedtimer) or (!ai_recovering and inactive > 20)) and (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL) and xdist > 100){
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
if ((get_gameplay_time() mod 2 == 0 or ai_target.state_cat = SC_HITSTUN) and can_strong and !free and 50 > xdist and damage > usmashpercent and 100 > ydist and y > ai_target.y-1 and facing){
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

//Uspecial
if (get_stage_data(SD_Y_POS) - 150 > y and get_gameplay_time() mod 13 == 0 and can_special and 75 > xdist and damage > uspecialpercent and 90 > ydist and y > ai_target.y-1 and facing){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
	up_down = true;
    special_pressed = true;
    attack_pressed = false;
}

//Fspecial
if ( get_stage_data( SD_Y_POS ) > y and can_special and 250 > xdist and xdist > 120 and 70 > ydist and 0 > cuttertimer){
	cuttertimer = 120
    joy_pad_idle = true;
    if !free {
    	vsp = 0
    }
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




//Dspecial
if 	(recoverytimer > 60) and can_special and get_stage_data( SD_Y_POS ) > y+24 {
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
    
    if  xdist < 60 and ydist < 40 { // Jab
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
    
	if 30 > ydist and 120 > xdist and facing{ // Dtilt
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
    if (y > ai_target.y - 100) and (y < ai_target.y) and xdist < 50{ // Dair
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = false;
        down_down = true;
        special_pressed = false;
        attack_pressed = true;
    }
    if (ai_target.y < y) and (ai_target.y > y - 70) and xdist < 80{ // Uair
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
	if xdist < 80 and ydist < 70  and !facing{ // Bair
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