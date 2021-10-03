

if free{    // AIR ATTACKS
    switch (attack){
        case AT_FSPECIAL:
            var dir = left_down*-1 + right_down;
            spr_dir = old_spr_dir;

            if(dir == spr_dir){
                attack = AT_FAIR;
                state = PS_ATTACK_AIR;
            }else{
                attack = AT_BAIR;
                state = PS_ATTACK_AIR;
            }
            break;
        case AT_NSPECIAL:
			if can_throw_bell == 0 {
				attack = AT_JAB;
				state = PS_ATTACK_AIR;
			} else {
				attack = AT_JAB;
				state = PS_IDLE_AIR;
			}
			
        case AT_NAIR:
			if can_throw_bell == 0 {
				attack = AT_JAB;
				state = PS_ATTACK_AIR;
			} else {
				attack = AT_JAB;
				state = PS_IDLE_AIR;
			}
            
            break;
        case AT_UAIR:
        case AT_USPECIAL:
        	if(tap_jump_protection_enabled){
                if((is_double_jump //catches frame 1+ doublejumps
                    or (prev_state != PS_JUMPSQUAT and (jump_down and !jump_counter) and old_djumps == djumps and djumps != max_djumps) ) //catches frame 0 doublejumps
                     and dj_state_timer < 5) //limits to the first 5 frames
                {
                    djumps--;
                }
            } else {
                if((is_double_jump //catches frame 1+ doublejumps
                    or (prev_state != PS_JUMPSQUAT and (jump_down and !jump_counter) and old_djumps == djumps and djumps != max_djumps) ) //catches frame 0 doublejumps
                     and dj_state_timer < 5) //limits to the first 5 frames
                {
                    djumps++;
                }
            }
            attack = AT_UAIR;
            state = PS_ATTACK_AIR;
            spr_dir = old_spr_dir;
            
            break;
        case AT_DSPECIAL:
            attack = AT_DAIR;
            state = PS_ATTACK_AIR;
            spr_dir = old_spr_dir;
            
            break;
    }
}else{
    switch (attack){
        case AT_FSPECIAL:
            var dir = left_down*-1 + right_down;

            if(dir == spr_dir){
                attack = AT_FTILT;
            }else{
                attack = AT_BAIR;
            }
            break;
        case AT_NSPECIAL:
            attack = AT_JAB;
            break;
        case AT_DSPECIAL:
            attack = AT_DTILT;
            break;
        case AT_FSTRONG:
        case AT_DATTACK:
            attack = AT_FTILT;
            break;
        case AT_USPECIAL:
        case AT_USTRONG:
            attack = AT_UTILT;
            if((jump_down and !jump_counter) or is_jumpsquat){ // catches frame 0 jump-utilt
                move_cooldown[attack] = move_cooldown[attack] > 0 ? move_cooldown[attack] : 1;
            }
            break;
        case AT_DSTRONG:
            attack = AT_DTILT;
            break;
    }
}

if (attack == AT_UTILT || attack == AT_UAIR) {
if ((move_cooldown[AT_UTILT] == 0 &&  move_cooldown[AT_UAIR] == 0 ) && attack == AT_UTILT) {
	invincible = 1
	invince_time = 5
}
//char_height = 100
if left_down {
	spr_dir = -1
} else if right_down {
	spr_dir = 1
}
}