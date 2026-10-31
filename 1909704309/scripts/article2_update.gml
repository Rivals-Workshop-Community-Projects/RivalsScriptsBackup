state_timer++;

//state 0 - tossed into air
if(state == 0){
	vsp += 0.5;
	if(!free){
		state = 1;
		state_timer = 0;
		image_index = 0;
	}
}

//state 1 - hitting the ground
if(state == 1){
	if(state_timer == 3){
		var pow1 = create_hitbox(AT_JAB, 3, x, y);
		pow1.player = hitplayer;
		sound_play(sound_get("pow"))
		with(obj_stage_article){
			if(variable_instance_exists(id, "isgrass")){
				if(state = 1){
					state = 2;
					state_timer = 0;
					if(x > other.x){
						toss_direction = 1;
					}
					else{
						toss_direction = -1;
					}
					hitplayer = other.hitplayer;
				}
			}
		}
	}
	if(state_timer == 10){
		state = 2;
				shake_camera(15,5);
	}
	sprite_index = sprite_get("pow_hit");
    image_index += 0.5
}

//State 2 - die
if(state == 2){
	instance_destroy();
	exit;
}