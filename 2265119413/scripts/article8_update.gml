if(mode == 3){
	if(x > 1200){
		x = -3500;
	}
	hsp = 1;
	sprite_index = sprite_get("train");
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