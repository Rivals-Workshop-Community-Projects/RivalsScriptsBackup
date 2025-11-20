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
	sprite_index = asset_get("empty_sprite");
}else{
    intro = 0;
}

if(phone_attacking){
	with(pHitBox){
		if(player_id == other && type != 2){
			if(attack == AT_JAB && hbox_num == 1){
				DarkHitbox = true;
			}else if(attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_USPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL){
				WaterHitbox = true;
			}else if(attack == AT_DAIR && hbox_num >= 2){
				MetalHitbox = true;if(hbox_num != 0)IgnoreElement = true;
			}
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