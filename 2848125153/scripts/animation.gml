if (attack == AT_DAIR){
    if(window == 3){
    	if(vsp < -4){
    	    image_index = 9;
    	}else if(vsp < 0){
    	    image_index = 6;
    	}else if(vsp < 4){
    	    image_index = 8;
    	}else{
    	    image_index = 7;
    	}
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