///
if (get_training_cpu_action() == CPU_FIGHT) && get_gameplay_time() > 120{	

    targetdamage = get_player_damage( ai_target.player );
    
    
if "superTrue" in self {
	
if state == PS_DASH or state == PS_DASH_START or state == PS_DASH_TURN or state == PS_DASH_STOP {
	can_attack = true
}

if (targetdamage == 20 && get_gameplay_time() > 120 && hitpause && !free && has_hit_player){
    taunt_pressed = true    
}

if can_attack && hitpause {
	set_state(PS_DASH_START)
	state_timer = 1
}



}	
	
	if (attack == AT_NSPECIAL && has_hit_player) {
		            move_cooldown[AT_NSPECIAL] = 60
             sound_play(sound_get("sideb"),false,noone,1,0.9 + random_func(1,3,true)/20)
             create_hitbox(AT_NSPECIAL,8,x,y)

        set_attack(AT_FSPECIAL)    
           window = 2
           window_timer = 0
	}
	
	if (attack == AT_NSPECIAL or attack == AT_DAIR) && state == PS_ATTACK_AIR {
		
		if y > room_width/2 + 300 {
			vsp = 0
			state = PS_AIR_DODGE
			state_timer = 0
		}
	}
	
	if state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND {
		if attack == AT_USPECIAL {
			down_down = true
		
		shield_pressed = false
		
		if ai_recovering && y > room_width/2 + 60{
				jump_pressed = true
			}
			
			
		if xdist < 110 and ydist < 80 && ai_target.y <= y + 20 {
			if x > ai_target.x {
				spr_dir = -1
			} else {
				spr_dir = 1
			}
			if get_gameplay_time() % 3 == 0 {
				attack_pressed = true
			}
			if get_gameplay_time() % 3 == 1 {
				special_pressed = true
			}
			if get_gameplay_time() % 3 == 2 or y > room_width/2 + 300 {
				jump_pressed = true
			}
		}
		}
		
	}
	if state_cat == SC_HITSTUN {
	hsp /= 1.008
	if x > room_width/2 - 400 and x < room_width/2 - 400 {
		vsp += 0.4
	} 
}

if y < room_height/2 - 100 && x < room_width/2 + 300 && x > room_width/2 - 300 && can_attack {
	    joy_pad_idle = true;
	attack_pressed = true
	special_pressed = false
	up_down = false
	left_down = false
	right_down = false 
} else {
	move_cooldown[AT_DSPECIAL] = 2 
}

if free {
	move_cooldown[AT_NSPECIAL] = 2 
}

if get_gameplay_time() <= 20 {
	sakura = 1
}

if attack == AT_NSPECIAL && state == PS_ATTACK_AIR {
   	soft_armor = 100
}

if attack == AT_DSPECIAL {
	special_down = true
}

if attack == AT_FSPECIAL {
    can_attack = true
}


//ai_update - called every frame for this character as a CPU
temp_level = 9;
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
if ( get_stage_data( SD_Y_POS ) > y and can_special and xdist > 100){
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
	if x > ai_target.x {
           left_down = false
           right_down = false
           up_down = false
           down_down = false
    } 
	else {
		left_down = false
           right_down = false
           up_down = false
           down_down = false
	}
	attack_pressed = true
	
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

if xdist > 400 and can_special and !ai_recovering  {
	joy_pad_idle = true;
    left_down = false;
    right_down = false;
	down_down = true;
    special_pressed = true;
    attack_pressed = false;
}

if attack = AT_DSPECIAL and window = 2 {
	if xdist > 400  and !ai_recovering {
	special_down = true
	}
	else {
	special_down = false
	if !ai_recovering {
	shield_pressed = true
	}
	}
}

if attack = AT_DSPECIAL and window = 5 {
	if 100 > ydist and 100 > xdist and facing {
		special_pressed = true
	}
	else {
	special_pressed = false;
	}
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
    if get_gameplay_time() mod 5 == 0 and 40 > ydist and xdist > 100 and 100 > xdist{ // Dattack
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
    if 60 > ydist and 30 > xdist{ // Utilt
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
	if 40 > ydist and 80 > xdist and facing{ // Dtilt
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

}