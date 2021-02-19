if(mode == 6){
	if(x > 1200){
		x = -2200;
	}
	sprite_index = sprite_get("hoopstickgirl");
	hsp = 1.45;
	image_index = article_animation_frame;
	if (article_animation_frame < image_number) article_animation_frame += article_animation_speed;
	else article_animation_frame = 0;
}
else{
	sprite_index = asset_get("empty_sprite");
	hsp = 0;
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