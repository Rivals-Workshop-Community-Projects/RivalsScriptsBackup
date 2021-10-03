//Modify this file if you want to change what buttons send to what attacks.
//This file runes frame 0 of an attack and is used to make everything go to one button for smash land.
//Any edits you want to do should go at the marked section at the bottom of this file.
#region //Air Attacks
if (free){
  
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
        case AT_UAIR:
        case AT_USPECIAL:
        	if(tap_jump_protection_enabled){
                if((is_double_jump //catches frame 1+ doublejumps
                    or (prev_state != PS_JUMPSQUAT and (jump_down and !jump_counter) and old_djumps == djumps and djumps != max_djumps) ) //catches frame 0 doublejumps
                     and dj_state_timer < 5) //limits to the first 5 frames
                {
                    if(ssl_debug_enabled) {print("Double jump refunded.")}
                    djumps--;
                }else{
                    tap_jump_debug()
                }
            } else {
                if((is_double_jump //catches frame 1+ doublejumps
                    or (prev_state != PS_JUMPSQUAT and (jump_down and !jump_counter) and old_djumps == djumps and djumps != max_djumps) ) //catches frame 0 doublejumps
                     and dj_state_timer < 5) //limits to the first 5 frames
                {
                    if(ssl_debug_enabled) {print("Double jump removed.")}
                    djumps++;
                }else{
                    tap_jump_debug();
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
        case AT_FAIR:
            if(!(left_pressed or left_down) and !(right_pressed or right_down) and !(right_stick_down or left_stick_down)){//Srong Neutral Press
                attack = AT_NAIR;
            }
            break;
    }
    #endregion
    
#region //Grounded Attacks
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
        case AT_USTRONG:
            attack = AT_UTILT;
            if((jump_down and !jump_counter) or is_jumpsquat){ // catches frame 0 jump-utilt
                move_cooldown[attack] = move_cooldown[attack] > 0 ? move_cooldown[attack] : 1;
            }
            break;
        case AT_DSTRONG:
        case AT_DSPECIAL:
            attack = AT_DTILT;
            break;
        
        case AT_DATTACK:
            attack = AT_FTILT;
            break;
        case AT_FSTRONG:
            if(!(left_pressed or left_down) and !(right_pressed or right_down) and !(right_stick_down or left_stick_down)){//Srong Neutral Press
                attack = AT_JAB;
            }else{
                attack = AT_FTILT;
            }
            break;
    }
}
#endregion

#region //Srong Neutral Press
if(strong_down and !(down_down or up_down or left_down or right_down)){
    if(free){
        attack = AT_NAIR;
    } else {
        attack = AT_JAB;
    }
}
#endregion

//IF YOU WANT TO CHANGE ATTACKS IN OR SET VALUES FOR FRAME 0 OF AN ATTACK DO IT
//BELOW THIS COMMENT------------------------------------------------------------
/*  Example of changing an attack:
*
*   if(attack == AT_FAIR){
*       attack = AT_FTILT; 
*   }
*
*   The above will make a forward air input use ftilt.gml for the attack and become AT_FTILT for code purposes.
*/




//YOUR CODE SHOULD BE ABOVE THIS COMMENT----------------------------------------
#define tap_jump_debug()
{
    if(ssl_advanced_debug_enabled){
        print("prev_state " + get_state_name(prev_state))
    	print("is_double_jump " + string(is_double_jump))
    	print("is_double_jump " + string(is_double_jump))
    	print("jump_down " + string(jump_down))
    	print("jump_pressed " + string(jump_pressed))
    	print("old_djumps" + string(old_djumps))
    	print("djumps" + string(djumps))
    	print("max_djumps" + string(max_djumps))
    }
}