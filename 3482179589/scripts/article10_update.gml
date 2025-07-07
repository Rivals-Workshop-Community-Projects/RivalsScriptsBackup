//all bg i think

if (init == false){
	sprite_index = sprite_get("bg"+string(bgnum)+"_A")
	/*if (bgnum==0){
		sprite_index = sprite_get("bg"+string(bgnum)+"_B")
	}*/
	init = true;
}else{
	
	image_index += aspd;
	if (laststock_init == false){
		if (obj_stage_main.fake_laststock>0){
			laststock_init = true;
			sprite_index = sprite_get("bg"+string(bgnum)+"_B")
			if (aspd!=0){aspd=0.11}
		}
	}
	
	
}