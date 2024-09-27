//State 0: Snake Summon
if (state == 0){
	image_index += 0.25;
	if (image_index >= 10){
		state = 1;
		state_timer = 0;
		sound_play (sound_get("madara_spawn"));
	} 
}

//State 1: Mouth Open (Loop/Wait)
if (state == 1){
	image_index += 0.3;
	if (image_index >= 13.5) image_index = 10;
	if (state_timer == 20) detection_hitbox = create_hitbox(AT_DSPECIAL, 2, x, y);
	with (oPlayer){
		if (instance_exists(other.detection_hitbox) && place_meeting(x, y, other.detection_hitbox) && other.snake_wait_timer == 0){
			other.snake_wait_timer = 1;
		}
	}
	if (snake_wait_timer >= 1) snake_wait_timer++
	if (snake_wait_timer == 5){
		state = 2
		image_index = 14;
		instance_destroy(detection_hitbox);
		sound_play (sound_get("madara_attack"));
	}
	if (state_timer >= 360){
		image_index = 9;
		state = 4;
	} 
}

//State 2: Snake Bite
if (state == 2){
	image_index += 0.3;
	if (image_index >= 15 && image_index < 16 && !bite_hitbox){
		bite_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y);	
	} 
	if (image_index >= 20) state = 3;
}

//State 3: Snake Endlag
if (state == 3){
	image_index += 0.2;
	if (image_index >= 32) shoulddie = true;
}

//State 4: Snake Despawn
if (state == 4){
	image_index -= 0.3;
	if (instance_exists(detection_hitbox)) instance_destroy(detection_hitbox);
	if (image_index < 1) shoulddie = true;
}

//Dying
if (shoulddie == true){
	player_id.killarticles = false;
	if (instance_exists(detection_hitbox)) instance_destroy(detection_hitbox);
    instance_destroy();
    exit;
}

//Make time progress
state_timer++;

/*
//Adding potential % damage
if(state_timer >= 60/(state+1)){
	state_timer = 0;
	if(number_ones >= 9){
        if(number_tens >= 9){
        	//Maximum time
            state_timer = 0;
            number_ones = 9;
            number_tens = 9;
        } else {
        	number_ones = 0;
        	if (!player_id.dspecial_grab){
            number_tens++;
        	}
        }
    } else {
    	if (!player_id.dspecial_grab){
        number_ones++;
    	}
    }
}