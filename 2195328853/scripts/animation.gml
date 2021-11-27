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

/*if(intro && (state == PS_IDLE or state == PS_SPAWN)){
	//sprite_index = sprite_get("intro");
	//var playernum = 5 + (player);
	//image_index = (state_timer*introspeed)-playernum;
}else{
    intro = 0;
}*/

if (state == PS_RESPAWN){
    sprite_index = sprite_get("respawn");
}

if (attack == AT_DSPECIAL){
    if(window == 1){
    	if(!special_pressed){
    		image_index = 0;
    	}else{
    		image_index = 4;
    	}
    }
}

if (state == PS_PARRY && box){
    sprite_index = sprite_get("parry_box");
}