

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
        case AT_USPECIAL:
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
        case AT_USPECIAL:
            attack = AT_UTILT;
            break;
        case AT_DSPECIAL:
            attack = AT_DTILT;
            break;
        case AT_FSTRONG:
        case AT_DATTACK:
            attack = AT_FTILT;
            break;
        case AT_USTRONG:
            attack = AT_UTILT;
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