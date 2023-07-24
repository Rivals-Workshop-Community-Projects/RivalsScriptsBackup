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

if(intro && (state == PS_IDLE or state == PS_SPAWN)){
	//sprite_index = sprite_get("intro");
	//var playernum = 5 + (player);
	//image_index = (state_timer*introspeed)-playernum;
}else{
    intro = 0;
}

if(state == PS_DOUBLE_JUMP){
    if(state_timer <= 2){
	    sprite_index = sprite_get("jump");image_index = 4;
	}else if(state_timer <= 4){
	    sprite_index = sprite_get("jump");image_index = 5;
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