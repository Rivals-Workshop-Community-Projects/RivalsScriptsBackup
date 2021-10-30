can_dspec = false;

switch(attack){
    
    //for jab turnaround tilts
    case AT_DTILT:
    case AT_UTILT:
        if((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down)){
            spr_dir *= -1;
        }
        break;
   
    case AT_FTILT:
		reset_attack_value(AT_FTILT, AG_NUM_WINDOWS);
		increased = false;
        increase = 0;
		break;
    	
    case AT_DATTACK:
		sound_play(asset_get("sfx_shovel_swing_light2"));
		break;
    
    case AT_UAIR:
        uair_loop = 0;
        break;
    case AT_USTRONG:
        grab = noone;
        reset_attack_value(AT_USTRONG, AG_NUM_WINDOWS);
		reset_window_value(AT_USTRONG, 3, AG_WINDOW_GOTO);
        break;
   
    case AT_NSPECIAL:
        //reset variables just in case
        can_b_reverse = true;
        increased = false;
        increase = 0;
        //if charged
        if (knives == 6){
            window = 3;
            sound_play(asset_get("sfx_swipe_weak2"));
        }
        break;
    
    case AT_FSPECIAL:
        sound_play(sound_get("sfx_sword_movement1"));
        if(free) attack = AT_FSPECIAL_AIR;
        break;
    
    case AT_USPECIAL:
		uspec_loop = 0;
		uspec_knives = 0;
		increase = 0;
		increased = false;
		sound_play(sound_get("swipe_Sw02"));
		reset_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE);
		reset_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH);
		reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);
		break;
		
	case AT_TAUNT:
		if(!up_down && !down_down){
			attack = AT_TAUNT_2;
			sound_play(asset_get("sfx_shovel_swing_light2"));
		}
		break;
    
}