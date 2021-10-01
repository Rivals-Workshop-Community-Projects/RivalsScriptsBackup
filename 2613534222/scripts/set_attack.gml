

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
            attack = AT_NAIR;
            state = PS_ATTACK_AIR;
            
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
        case AT_USTRONG:
        case AT_USPECIAL:
            attack = AT_UTILT;
            if((jump_down and !jump_counter) or is_jumpsquat){ // catches frame 0 jump-utilt
                move_cooldown[attack] = move_cooldown[attack] > 0 ? move_cooldown[attack] : 1;
            }
            break;
        case AT_DSPECIAL:
            attack = AT_DTILT;
            break;
        case AT_FSTRONG:
        case AT_DATTACK:
            attack = AT_FTILT;
            break;
        case AT_DSTRONG:
            attack = AT_DTILT;
            break;
    }
}

if(attack == AT_UTILT or attack == AT_UAIR) and shadowball_hit_timer > 0 {
    attack = AT_USPECIAL;
}

if(strong_down and !(down_down or up_down or left_down or right_down)){
    if(free){
        attack = AT_NAIR;
    } else {
        attack = AT_JAB;
    }
}