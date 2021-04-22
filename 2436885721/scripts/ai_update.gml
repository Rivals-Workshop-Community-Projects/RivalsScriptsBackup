//ai_update - called every frame for this character as a CPU
temp_level = 9;
rangedtimer -= 1
xdist = abs(ai_target.x - x);
ydist = abs(ai_target.y - y);
damage = get_player_damage( ai_target.player );
facing = false;
if 90 > xdist and 90 > ydist AIwait -= 1
usmashpercent = (2 - ai_target.knockback_adj) * 60
fsmashpercent = (2 - ai_target.knockback_adj) * 90
dsmashpercent = (2 - ai_target.knockback_adj) * 110
bairpercent = (2 - ai_target.knockback_adj) * 80


//recovery

if (x > ai_target.x and spr_dir = -1) or (ai_target.x > x and spr_dir = 1){
    facing = true;
}
	
if (attack == AT_USPECIAL && window == 2) {
    if(abs(get_stage_data( SD_Y_POS ) - y ) < 80){    //pillarless height check
        if(abs((room_width - get_stage_data( SD_X_POS ) - x)) < 100) {
            print("pillarless right side attempt");
            left_down = true;
            shield_pressed = true;
        } else if(abs((get_stage_data( SD_X_POS ) - x)) < 100) {
            print("pillarless left side attempt");
            right_down = true;
            shield_pressed = true;
        } else {
            print("pillarless horizontally out of range - special input");
            special_pressed = true;
        }
    } else {
        print("not in pillarless height range - special input");
        special_pressed = true;
    }
}

// Chase the opponent down
if (((0 > rangedtimer) or (!ai_recovering and inactive > 20)) and (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL) and xdist > 270){
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
		} else {
			left_down = true;
			right_down = false;
		}
	}
    if x > ai_target.x{
        left_down = true;
        right_down = false;
    } else {
        left_down = false;
        right_down = true;
    }
	up_down = false;
    //special_pressed = true;
    attack_pressed = false;
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
if ((get_gameplay_time() mod 2 == 0 or ai_target.state_cat = SC_HITSTUN) and can_strong and !free and 50 > xdist and damage > usmashpercent and 80 > ydist and y > ai_target.y-1 and facing){
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
if (usedUspecial == false && ai_recovering && get_stage_data( SD_Y_POS ) < y+24){
    joy_pad_idle = true;
    left_down = false;
    right_down = false;
	up_down = true;
    special_pressed = true;
    attack_pressed = false;
}

//Fspecial

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

//Tilts
if !free and can_attack and 0 > AIwait{
    if 60 > xdist and 50 > ydist{ // Ftilt
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
	if 20 > ydist and 35 > xdist and facing{ // Dtilt
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
	if 200 < xdist and 40 > ydist and facing{ // Dstrong
        clear_button_buffer( PC_ATTACK_PRESSED );
        joy_pad_idle = false;
        left_down = false;
        right_down = false;
        up_down = false;
        down_down = true;
		down_strong_pressed = true;
        special_pressed = false;
        attack_pressed = false;
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

//Dtilt 2
if(attack == AT_DTILT && window == 4 && window_timer == 3 && 60 > ydist){
    var doDTilt2 = random_func(0, 2, true);
    if(doDTilt2 == 1){
        attack_pressed = true;
    }
}

// specials usage
if instance_exists(hexDebuffID) and (ai_target.x < x + 40){
	var doNspec = random_func(0, 6, true);
	if(doNspec == 1){
		up_pressed = false;
		up_down = false;
		special_pressed = true;
		}	
}

if instance_exists(hexDebuffID) and (ai_target.x > x - 40){
	var doNspec = random_func(0, 6, true);
	if(doNspec == 1){
		up_pressed = false;
		up_down = false;
		special_pressed = true;
		}	
}

if instance_exists(hexDebuffID) and (ai_target.x > x - 40) and (ai_target.knockback_adj) * 80{
	var doNspec = random_func(0, 10, true);
	if(doNspec == 1){
		up_pressed = false;
		up_down = false;
		special_pressed = true;
		}			
}