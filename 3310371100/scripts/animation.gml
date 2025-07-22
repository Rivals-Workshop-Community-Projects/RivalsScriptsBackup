switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

if (state == PS_DASH){
	if (stamina <=0){
		sprite_index = sprite_get("dash_tiredhelpuhhhgh")
		image_index = state_timer*dash_anim_speed_tire;
	}
}
if (state == PS_ATTACK_AIR && attack == AT_DSPECIAL_2 && window==6){
	sprite_index = sprite_get("spinhurt")
	image_index = state_timer*-0.1;
}
if (state == PS_IDLE_AIR && prev_state == PS_WALL_JUMP){
	image_index = 7;
}
if (state == PS_IDLE_AIR && prev_state == PS_AIR_DODGE){
	image_index = 7;
}
if (state == PS_ATTACK_AIR && attack == AT_USPECIAL){
	if (window==8){
		if (spr_dir==1){
			if (left_down&&right_down){
				image_index = 10;
			}else if (left_down){
				image_index = 11;
			}else if(right_down){
				image_index = 12;
			}else{
				image_index = 10;
			}
		}
		if (spr_dir==-1){
			if (left_down&&right_down){
				image_index = 10;
			}else if (left_down){
				image_index = 12;
			}else if(right_down){
				image_index = 11;
			}else{
				image_index = 10;
			}
		}
	}
}