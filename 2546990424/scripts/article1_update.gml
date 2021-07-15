
//Make time progress
state_timer++;

//Gets destroyed on Clairen's Plasma Field
if (place_meeting(x, y, asset_get("plasma_field_obj")) && state_timer > 0) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256);
	state_timer = -40;
}

//Creates the initial hitbox after 20 frames
if (state_timer == 20){
	if (whirlwind_second == false){
		whirlwind_active_hitbox = create_hitbox(AT_DSPECIAL, 1, 
		x+whirlwind_x_hitbox, y+whirlwind_y_hitbox-50);	
	}
	else {
		whirlwind2_active_hitbox = create_hitbox(AT_DSPECIAL, 10, 
		x+whirlwind_x_hitbox, y+whirlwind_y_hitbox-50);	
	}
	
}

//If the hitbox somohow gets destroyed or moved
if (state_timer > 20){
	if (whirlwind_second == false){
		
		if (!instance_exists(whirlwind_active_hitbox)){
			state_timer = -24;
		}
		if (instance_exists(whirlwind_active_hitbox) 
		&& (whirlwind_active_hitbox.y > y+50 || whirlwind_active_hitbox.y < y-50)){
			state_timer = -24;
		}
	}
	else {
		if (!instance_exists(whirlwind2_active_hitbox)){
			state_timer = -24;
		}
		if (instance_exists(whirlwind2_active_hitbox) 
		&& (whirlwind2_active_hitbox.y > y+50 || whirlwind2_active_hitbox.y < y-50)){
			state_timer = -24;
		}
	}
}

//Creates the Launch Hitbox
if (state_timer == -25){
	create_hitbox(AT_DSPECIAL, whirlwind_hitbox_num, x+whirlwind_x_hitbox, y+whirlwind_y_hitbox-50);
}

//Idle State
if (state_timer == -24 || state_timer == 470){
	state = 1;
	image_index = 0;
}

//Should Die
if (state_timer == -4 || state_timer > 490){
	shoulddie = true;
}

//State 0: Idle
if (state == 0){
	sprite_index = sprite_get("dspecial_projectile");
	image_index += .5;
}

//State 1: Dying
if (state == 1){
	sprite_index = sprite_get("dspecial_effect");
	image_index += .3;
}


//Dying
if (shoulddie == true){
	if (whirlwind_first = true){
		player_id.whirlwind_first = false;
	}
	if (whirlwind_second = true){
		player_id.whirlwind_second = false;
	}
	player_id.killarticles = false;
    instance_destroy();
    exit;
}



