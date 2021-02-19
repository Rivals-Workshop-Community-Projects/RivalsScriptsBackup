switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}


if (lu_ds){
	if (lu_ds_timer<lu_ds_max){
		lu_ds_timer++;
		if (lu_ds_timer == lu_ds_max){
			sprite_index = sprite_get("idle")
			image_index = 0
		}else{
			sprite_index = sprite_get("dashstop")
			image_index = 0 + lu_ds_timer * 3 / lu_ds_max;
		}
		//that's:
		//starting animation frame +
		//current time *
		//number of anim frame in the duration /
		//time it takes
	}
}