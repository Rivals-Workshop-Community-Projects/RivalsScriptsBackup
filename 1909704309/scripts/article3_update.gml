state_timer++;

//state 0 - tossed into air
if(state == 0){
	if(vsp < 0){
		vsp += 0.5;
	}
	if(vsp >= 0){
		state = 1;
		state_timer = 0;
	}
	image_index+=0.5
}

//state 1 - timer goes off
if(state == 1){
	if(state_timer == 3){
		var time1 = create_hitbox(AT_JAB, 4, x, y);
		time1.player = hitplayer;
		sound_play(sound_get("timer"))
		with(obj_stage_main){
			timer_freeze = 100
		}
		with(obj_stage_article){
			if(variable_instance_exists(id,"timer_freeze")){
				timer_freeze = 100;
			}
		}
	}
	if(state_timer == 16){
		state = 2;
	}
	sprite_index = sprite_get("timer_hit");
    image_index = 9;
}

//State 2 - die
if(state == 2){
	instance_destroy();
	exit;
}