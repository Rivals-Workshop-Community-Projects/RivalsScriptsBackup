state_timer++;

//state 0 - pause while plucked
if(state == 0){
	if(state_timer == 30){
		state = 1;
		state_timer = 0;
	}
}

//state 1 - starting
if(state == 1){
	if(state_timer == 1){
		sound_play(sound_get("pow"))
	}
	if(state_timer == 60){
		state = 2;
		state_timer = 0;
	}
	sprite_index = sprite_get("rocket_start");
    article_animation_frame_number = 2;
}

//State 2 - moving
if(state == 2){
	if(state_timer == 600){
		state = 3;
	}
	vsp = -3;
	sprite_index = sprite_get("rocket_move");
    article_animation_frame_number = 2;
}

//State 3 - die
if(state == 3){
	instance_destroy();
	exit;
}

//Hits
if(state > 0){
	article_hit_timer++
	if (article_hit_timer == article_hit_trigger) {
		var rocket1 = create_hitbox(AT_JAB, 5, x, y);
		rocket1.player = hitplayer;
		article_hit_timer = 0;
	}
}

image_index = article_animation_frame;
if (article_animation_frame < image_number) article_animation_frame += article_animation_speed;
else article_animation_frame = 0;