if state == PS_IDLE_AIR && prev_state != PS_AIR_DODGE image_index = max(image_index, 9);



if (phone_attacking && (attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG) && window == 1 && strong_charge){
	image_index += ((strong_charge + 5) % 20) / 5;
}



if state == PS_SPAWN{
	
    var frame_dur = 6;
    var amt_frames = 14;
    var dur = frame_dur * amt_frames;
    var delay = 17;
    var s_t = state_timer - delay + player * 5;
    
    if (s_t < dur){
        sprite_index = spr_intro;
        image_index = max(lerp(-1, amt_frames, s_t / dur), 0);
        image_index = s_t / frame_dur * (s_t >= 0);
        draw_indicator = 0;
    
	    switch(image_index){
	        case 0:
	            sound_play(asset_get("sfx_ori_ustrong_charge"));
	            break;
	        case 3:
	            sound_play(sfx_astral_chain_gunshot_charged);
	            break;
	        case 8:
	            sound_play(land_sound);
	            break;
	    }
    }
    
    switch(floor(image_index)){
    	case 0:
    	case 1:
    	case 2:
    	case 3:
    	case 4:
    	case 5:
    	case 6:
    	case 7:
    		intro_legion_flag = 0;
    		break;
    	case 8:
    		intro_legion_flag = 1;
    		legion.image_index = 1;
    		break;
    	default:
    		intro_legion_flag = noone;
    		if s_t < 0 intro_legion_flag = 0;
    		break;
    }
	
}