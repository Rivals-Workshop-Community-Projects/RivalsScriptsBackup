switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}

if (state == PS_DOUBLE_JUMP){
    if(state_timer <= 1){
    	if((hsp < 0 && spr_dir == 1 || hsp > 0 && spr_dir == -1)){
	    	jump = 1;
	    }else{
	    	jump = 0;
	    }
    }
    if(jump == 1){
    	sprite_index = sprite_get("doublejump_backward");
    }
}

if(phone_attacking){
	if(attack == AT_DSPECIAL){
		if (window == 4){
	    	var anim_start = get_window_value(AT_DSPECIAL,window,AG_WINDOW_ANIM_FRAME_START);
	        if(abs(hsp) < 0.2 || free){
	            //anim_offset = 0;
	        }else{
	            if(window_timer % 3 == 0){
	                if(hsp*spr_dir > 0){
	                    dspec_walk += 1;
	                }else{
	                    dspec_walk -= 1;
	                }
	                if(dspec_walk > 4){
	                    dspec_walk = 1;
	                }else if(dspec_walk < 1){
	                    dspec_walk = 4;
	                }
	            }
	            image_index = round(anim_start+(dspec_walk));
	        }
	    }
	    if (window == 6 && strong_charge > 10){
	        image_index = 21+round((strong_charge-10)/2.5);
	    }
	}
	if(attack == AT_TAUNT && window == 14){
    	if(vsp < -5 && jump_pressed)image_index = 1;
    	else if(!free && specialkewtland < 5)image_index = 2;
    }
}

if(state == PS_IDLE && up_down){
    lookuptime += 1;
}else{
    if(state == PS_IDLE && lookuptime != 0){
        if(lookuptime > 0){lookuptime -= 1;}else if(lookuptime < 0){lookuptime += 1;}
    }else{
        lookuptime = 0;
    }
}
if(state == PS_IDLE && lookuptime > 0){
    sprite_index = sprite_get("lookup");image_index = floor(abs(lookuptime)/2);lookuptime = min(4,lookuptime);
    if(image_index > 2)image_index = 2;
}