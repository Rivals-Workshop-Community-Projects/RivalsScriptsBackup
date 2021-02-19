if(mode == 4){
	state_timer++;
	
	if(state_timer < flickertime){
		sprite_index = sprite_get("lighton");
	}

	if(state_timer == flickertime){
		sprite_index = sprite_get("lightflicker");
	}
	if(state_timer == flickerover){
		sprite_index = sprite_get("lighton");
		state_timer = 0;
	}
	
	image_index = article_animation_frame;
	if (article_animation_frame < image_number) article_animation_frame += article_animation_speed;
	else article_animation_frame = 0;
}
else{
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