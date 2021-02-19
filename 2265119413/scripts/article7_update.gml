//Cameos update
if spawn_variables[0] = 0 { //First article
	if(mode == 1){
		sprite_index = sprite_get("astronaut");
		article_animation_speed = 1;
		depth = 10;
		parallax_x = -0.13;
		parallax_y = -0.16;
		x = 180;
		y = 270;
	} else if(mode == 2){
		sprite_index = sprite_get("flags");
		article_animation_speed = 0.15;
		depth = 10;
		parallax_x = 0;
		parallax_y = 0;
		x = 442;
		y = 78;
	} else {
		sprite_index = asset_get("empty_sprite");
	}
}
else{
	if(mode == 2){
		sprite_index = sprite_get("waterfall");
		article_animation_speed = 0.2;
		depth = -10;
		parallax_x = 0;
		parallax_y = 0;
		x = 822;
		y = 560;
	} else if(mode == 4){
		sprite_index = sprite_get("ghost");
		article_animation_speed = 0.12;
		depth = 10;
		parallax_x = -0.13;
		parallax_y = -0.1;
		x = 319;
		y = 571;
	} else {
		sprite_index = asset_get("empty_sprite");
	}
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

image_index = article_animation_frame;
if (article_animation_frame < image_number) article_animation_frame += article_animation_speed;
else article_animation_frame = 0;