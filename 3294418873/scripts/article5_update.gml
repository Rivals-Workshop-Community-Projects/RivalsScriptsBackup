//Background guys update
image_index += animation_speed;

if(active == false){
	sprite_index = asset_get("empty_sprite");
}

if(spawn_variables[1] > 0){
	if(image_alpha >= 4.5){
		flicker_on = false;
		image_alpha = 1;
	} else if (image_alpha <= 0.5){
		flicker_on = true;
	}
	
	if(flicker_on == true){
		image_alpha += flicker_speed;
	}else{
		image_alpha -= flicker_speed;
	}
}
