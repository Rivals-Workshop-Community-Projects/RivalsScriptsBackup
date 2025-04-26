// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}

switch(state){
	case PS_PARRY_START:
		if(state_timer == 0 && (left_down || right_down)){
			sprite_index = sprite_get("crouch");
		}
	break;
	case PS_AIR_DODGE:
		if (!free && image_index == 0){
			sprite_index = sprite_get("jumpstart");
			image_index = 1;
		}
	break;	
	case PS_PARRY:
		if(alt!=0)sprite_index = sprite_get("parry_alts");
	break;
}

if(phone_attacking){
	switch(attack){
		case AT_DSPECIAL:
			if(window == 3 && window_timer >= 7)image_index = 6;
		break;
		case AT_FSPECIAL:
			if(window == 2 || window == 3){
				if(meatball_fill >= .4 && meatball_fill < .8)image_index += 3;
				if(meatball_fill >= .8 && meatball_fill < 1.2)image_index += 6;
				if(meatball_fill >= 1.2)image_index += 9;
			}
		break;
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

hud_offset = round(hud_offset);