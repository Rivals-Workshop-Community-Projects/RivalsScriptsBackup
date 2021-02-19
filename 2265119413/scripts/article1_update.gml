//Linkable friends update

if(mode == 1){
	state_timer++
	
	if(state == 0){
		with(asset_get("oPlayer")){
			if (place_meeting(x,y,other.id)){
				other.istouched = true;
			}
		}
		if(istouched == true or state_timer == start_time){
			state = 1;
			sprite_index = move_sprite;
			article_animation_frame = 0
			state_timer = 0;
		}
		else{
			sprite_index = default_sprite;
		}
	}
	islinktouched = false;
	if(state == 1){
		if(state_timer == end_time){
			sprite_index = default_sprite;
			state_timer = 0;
			state = 0;
			istouched = false;
		}
		islinktouched = false;
	}
	if(linkable == true){
		state = 2;
	}
	if(state == 2){
		sprite_index = link_sprite;
		with(asset_get("oPlayer")){
			if (place_meeting(x,y,other.id)){
				other.islinktouched = true;
			}
		}
		if(islinktouched == true){
			with(obj_stage_article){
				if(variable_instance_exists(id, "handler")){
					actor_mode = other.link;
					//actor_mode = 6;
					mode = 0;
				}
			}
		}
	}
	if(sprite_index != link_sprite and sprite_index != move_sprite){
		sprite_index = default_sprite;
	}
	image_index = article_animation_frame;
	if (article_animation_frame < image_number) article_animation_frame += article_animation_speed;
	else article_animation_frame = 0;
}
else{
	sprite_index = asset_get("empty_sprite");
	state_timer = start_time-1;
	state = 0;
	istouched = false;
	linkable = false;
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
	state_timer = 0;
	state = 1;
	istouched = false;
	linkable = false;
}