//ai_update - called every frame for this character as a CPU

ai_attack_time = 0
rangedtimer -= 1
xdist = abs(ai_target.x - x);
ydist = abs(ai_target.y - y);
damage = get_player_damage( ai_target.player );
facing = false;
cuttertimer -= 1
if 90 > xdist and 90 > ydist AIwait -= 1
usmashpercent = (2 - ai_target.knockback_adj) * 85
fsmashpercent = (2 - ai_target.knockback_adj) * 95
dsmashpercent = (2 - ai_target.knockback_adj) * 100
if (get_training_cpu_action() == CPU_FIGHT) fighting = true
else fighting = false 

if fighting and 1 {

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
if !ai_recovering and !move_cooldown[AT_DSPECIAL] and !my_table {
	left_down = false;
	right_down = false;
	down_down = true;
	attack_pressed = false;
	special_pressed = true;
}

if ((0 > rangedtimer) and !ai_recovering and xdist > 100){
    if ai_target.x > x{
        right_hard_pressed = true;
		right_down = true;
		if state = PS_DASH {
		right_down = true
		}
    } else {
        left_hard_pressed = true;
		left_down = true;
		if state = PS_DASH {
		left_down = true
		}
    }
}

if 100 > xdist and state = PS_DASH {
jump_pressed = true
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

if (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL) and state != PS_DOUBLE_JUMP and ydist > 20 and y > ai_target.y {
	if damage > usmashpercent and 130 > ydist and 50 > xdist {
	    joy_pad_idle = true;
		left_down = false;
		right_down = false;
		special_pressed = false;
		attack_pressed = false;
		up_strong_pressed = true;
	}
	else {
	if vsp > -2 jump_pressed = true
	}
}

if free and ai_target.y - 120 > y {
	down_hard_pressed = true;
}

if !free and ai_target.y - 70 > y and !ai_target.free {
	down_hard_pressed = true;
}
if free and has_hit_player and hitpause and can_fast_fall and get_stage_data(SD_Y_POS) - y > 0 {
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
			AIwait = rangedtimer mod 15
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
if ( 5 > abs(ai_target.hsp) and can_strong and !free and 100 > xdist and damage > fsmashpercent and xdist > 40 and 60 > ydist and y > ai_target.y-1){
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
if (can_strong and !free and 50 > xdist and damage > usmashpercent and 100 > ydist and y > ai_target.y-1 and facing){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    special_pressed = false;
    attack_pressed = false;
    up_strong_pressed = true;
}

// D Smash
if ( 5 > abs(ai_target.vsp) and ai_target.state_cat = SC_HITSTUN and can_strong and !free and 120 > xdist and damage > dsmashpercent and 60 > ydist and y > ai_target.y-1){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    special_pressed = false;
    attack_pressed = false;
    down_strong_pressed = true;
}

//Uspecial
if attack = AT_USPECIAL and has_hit_player {
	special_pressed = true
}

//Fspecial
if can_special and position_meeting(x+200*spr_dir,y-200,ai_target) {
	if ai_target.x > x {
		right_down = true
		left_down = false
	}
	if x > ai_target.x {
		left_down = true
		right_down = false 
	}
    joy_pad_idle = true;
    special_pressed = true;
    attack_pressed = false;
}
//Nspecial



//Tilts
if !free and can_attack and 0 > AIwait{
	if 40 > xdist and 50 > ydist and facing{ // Jab
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
    else if 70 > xdist and 50 > ydist and facing{ // Ftilt
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
	else if 110 > ydist and 30 > xdist{ // Utilt
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
	else if 20 > ydist and 100 > xdist and facing{ // Dtilt
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
	else if 40 > ydist and xdist > 120 and 150 > xdist{ // Dattack
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

}

// Aerials
if free and can_attack and get_stage_data( SD_Y_POS ) > y+24 and 0 > AIwait {
	if xdist < 60 and ydist < 50 and y < ai_target.y - 10 and !facing{ // Bair
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
	else if xdist < 80 and ydist < 50 and facing{ // Fair
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
	else if (y > ai_target.y - 100) and (ai_target.y > y-10) and 40 > xdist{ // Dair
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = false;
        down_down = true;
        special_pressed = false;
        attack_pressed = true;
    }
    else if (y > ai_target.y) and (ai_target.y > y - 90) and 30 > xdist{ // Uair
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = true;
        down_down = false;
        special_pressed = false;
        attack_pressed = true;
    }
	else if xdist < 70 and ydist < 70{ // Nair
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = false;
        down_down = false;
        special_pressed = false;
        attack_pressed = true;
    }
    
}

nearbyhitbox = collision_circle( x-32, y-32, 64, asset_get("pHitBox"), true, true ) 
if nearbyhitbox != noone{
	if nearbyhitbox.player_id != self and get_player_team(nearbyhitbox.player) != get_player_team(player){
		shield_pressed = true
		}
}



if has_hit_player {
attack_pressed = false
special_pressed = false
has_hit_player = false
}

if state = PS_JUMPSQUAT and jump_pressed{
	if 80 > ydist {
		jump_pressed = false
	}
}

if ai_target.state = PS_ATTACK_GROUND or ai_target.state = PS_ATTACK_AIR and 100 > xdist and 100 > ydist {
	var valk = self
	var parrynow = false
	with ai_target {
		num_hitboxes = get_num_hitboxes(attack);
		cur_hitbox = 0
		while cur_hitbox != num_hitboxes {
				hitbox_window = get_hitbox_value(attack, cur_hitbox, HG_WINDOW);
				window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				hitbox_frame = get_window_value(attack, cur_hitbox, HG_WINDOW_CREATION_FRAME);
				if (window = hitbox_window-1 and (window_length = window_timer+3)) or (window = hitbox_window and hitbox_frame = window_timer+3)  {
						parrynow = true
				}
				cur_hitbox += 1
			}
		}
	if parrynow {
		shield_pressed = true
	}
}

}

