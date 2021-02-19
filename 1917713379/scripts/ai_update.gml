//ai_update - called every frame for this character as a CPU

temp_level = 9;
rangedtimer -= 2
xdist = abs(ai_target.x - x);
ydist = abs(ai_target.y - y);
damage = get_player_damage( ai_target.player );
facing = false;
cuttertimer -= 1
if 90 > xdist and 90 > ydist AIwait -= 1
usmashpercent = (2 - ai_target.knockback_adj) * 85
fsmashpercent = (2 - ai_target.knockback_adj) * 95
dsmashpercent = (2 - ai_target.knockback_adj) * 100
AIwait = -1
if (get_training_cpu_action() == CPU_FIGHT) fighting = true
else fighting = false 

if fighting {


if ai_target.sealmark = 2 or gold {
usmashpercent -= 15
fsmashpercent -= 15
dsmashpercent -= 15
}

if mytotem {
	totemxdist = abs(mytotem.x - x)
	totemydist = abs(mytotem.y -y)
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
	if can_special and 0 > cuttertimer and xdist > 350 {
	cuttertimer = 90
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

if (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL) and state != PS_DOUBLE_JUMP and ydist > 20 and y > ai_target.y {
	if damage > usmashpercent and 120 > ydist and 40 > xdist {
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
if !gold and free and has_hit_player and hitpause and can_fast_fall and get_stage_data(SD_Y_POS) - y > 0 {
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
if (can_strong and !free and 30 > xdist and damage > usmashpercent and 80 > ydist and y > ai_target.y-1 and facing){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    special_pressed = false;
    attack_pressed = false;
    up_strong_pressed = true;
}

// D Smash
if ( 5 > abs(ai_target.vsp) and ai_target.state_cat = SC_HITSTUN and can_strong and !free and 100 > xdist and damage > dsmashpercent and 60 > ydist and y > ai_target.y-1){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
    special_pressed = false;
    attack_pressed = false;
    down_strong_pressed = true;
}

//Uspecial
if !gold {
if get_gameplay_time() mod 9 == 0 and ai_target.sealmark and ai_target.state_cat = SC_HITSTUN and 300 > xdist and 300 > ydist and xdist > 50 and ydist > 50 and can_special {
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
	down_down = false
	up_down = true;
    special_pressed = true;
    attack_pressed = false;
}
}
if gold {
if attack != AT_USPECIAL and 300 > xdist and 300 > ydist and xdist > 100 and ydist > 100 and can_special {
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
	down_down = false
	up_down = true;
    special_pressed = true;
    attack_pressed = false;
}
if attack = AT_USPECIAL and window = 3 {
attack_pressed = true;
}
}


if attack = AT_USPECIAL {
	joy_pad_idle = false;
	joy_dir = point_direction(x,y,ai_target.x,ai_target.y)
	if ai_recovering {
		if joy_dir > 90 joy_dir -= 10
		if 90 > joy_dir joy_dir += 10
	}
	if !gold {
	if place_meeting(x,y,ai_target) and ai_target.sealmark {
	attack_pressed = true;
	}
	if place_meeting(x,y,mytotem) {
	if ai_recovering special_pressed = true
	else attack_pressed = true;
	}
	if ai_recovering {
		if 300 > totemxdist and 300 > totemydist and uspecialcancel[0] = 1 {joy_dir = point_direction(x,y,mytotem.x,mytotem.y)}
		else {
			if y > get_stage_data(SD_Y_POS) and !ai_target.sealmark {
				joy_dir = point_direction(x,y,room_width/2,SD_Y_POS)
				if joy_dir > 90 joy_dir -= 10
				if 90 > joy_dir joy_dir += 10
			}
		}
	}
	}

}

//Fspecial
if ( get_stage_data( SD_Y_POS ) > y and can_special and ((250 > xdist and xdist > 50 and 80 > ydist and 0 > cuttertimer) or (get_stage_data( SD_Y_POS ) > y and !ai_target.sealmark and (get_gameplay_time() mod 2 == 0) and 30 > ydist))){
	cuttertimer = 140
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

//Nspecial
if (0 > AIwait and get_gameplay_time() mod 2 == 0 and ai_target.state_cat = SC_HITSTUN and can_special and xdist > 100 and totemxdist > 200 and totemydist > 200){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
	down_down = false
	up_down = false
    special_pressed = true;
    attack_pressed = false;
}


if mytotem = noone and get_gameplay_time() mod 2 == 0 and can_special {
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
	down_down = false
	up_down = false
    special_pressed = true;
    attack_pressed = false;
}


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
    else if !(gold and attack = AT_FTILT) and 80 > xdist and 60 > ydist and facing{ // Ftilt
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
	else if 120 > ydist and 60 > xdist{ // Utilt
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
	else if 20 > ydist and 110 > xdist and facing{ // Dtilt
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
	else if 40 > ydist and xdist > 110 and 150 > xdist{ // Dattack
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
	if xdist < 90 and ydist < 20 and y < ai_target.y - 10 and !facing{ // Bair
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
	else if xdist < 60 and ydist < 30 and y < ai_target.y+20 and facing{ // Fair
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
	else if (y > ai_target.y - 80) and (ai_target.y > y-20) and 30 > xdist{ // Dair
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = false;
        down_down = true;
        special_pressed = false;
        attack_pressed = true;
    }
    else if (y > ai_target.y) and (ai_target.y > y - 80) and 30 > xdist{ // Uair
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = true;
        left_down = false;
        right_down = false;
        up_down = true;
        down_down = false;
        special_pressed = false;
        attack_pressed = true;
    }
	else if xdist < 80 and ydist < 80{ // Nair
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

