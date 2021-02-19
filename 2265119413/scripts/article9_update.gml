if(mode == 3){
	if(x < -1500){
		x = 1200;
	}
	hsp = -0.3;
	sprite_index = sprite_get("moon");
}
else{
	hsp = 0;
	sprite_index = asset_get("empty_sprite");
}

if(should_exist == true){
	if(image_alpha < 1){
		image_alpha += 0.05;
	}
}
else{
	if(image_alpha > 0){
		image_alpha -= 0.05;
	}
}