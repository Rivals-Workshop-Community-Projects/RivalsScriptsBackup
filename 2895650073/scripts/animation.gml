switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}


if (state==PS_CROUCH){
	if (prev_state==PS_ATTACK_GROUND){
		
	}else if (state_timer <= crouch_timer_max){
		image_index = 0 + state_timer * 3 / crouch_timer_max;
		//that's:
		//starting animation frame +
		//current time *
		//number of anim frame in the duration /
		//time it takes
	}
}
if (state==PS_SPAWN){
	var timemax = 100;
	if (get_gameplay_time()<=timemax){
		if (state_timer<timemax){
			sprite_index = sprite_get("intro_m")
			image_index = 0 + state_timer * 13 / timemax;
		}
	}
}
if (state==PS_RESPAWN){
	if (sprite_index = sprite_get("idle")){
		sprite_index = sprite_get("idle_neck")
	}
}


if (state==PS_LANDING_LAG){
	sprite_index = sprite_get("landinglag_pancake");
	image_index = 0 + state_timer * 3 / landing_lag_time;
	hurtboxID.sprite_index = sprite_get("landinglag_pancake_hb_"+string(floor(image_index)+1));
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	landinghbchange = true;
}
if (landinghbchange && state!=PS_LANDING_LAG){
	hurtboxID.sprite_index = hurtbox_spr;
	landinghbchange = false;
}

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND/*just in case*/) && attack== AT_FSPECIAL){
	if (window == 3||window == 4){
		sprite_index = sprite_get("fspecial_empty");
	}
}










