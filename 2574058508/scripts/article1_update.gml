//article1_update - runs every frame the article exists
//if (replacedcount > maxarticles){
//    shoulddie = true;
//}


//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)




//Make time progress

state_timer++;
total_timer++;

if (player_id.lighting == true && state < 5){	//If DSpecial, goes to the state 3 (activate hazard)
	state_timer = 0;
	image_index = 0;
	state = 5;
}

if (total_timer == 500){	//The amount in frames the butterfly lasts
	state = 9;
}


//State 0: Flying Forward
if (state == 0){						//Spawing with FSpecial, flying forward
	player_id.butterfly_alive = true;
	sprite_index = sprite_get("fspecial_proj");
	image_index += .25;
	hsp = 10*spr_dir;
	if (state_timer >= 25){
		state = 2;
		hsp = 0.5*spr_dir;
	}
}

//State 1: Flying Upward
if (state == 1){						//Spawing with USpecial, flying upward
	player_id.butterfly_alive = true;
	sprite_index = sprite_get("uspecial_proj");
	image_index += .25;
	vsp = -4;
	if (state_timer >= 30){
		state = 2;
		vsp = -2;
	}
}

//State 2: Transition
if (state == 2){						//Transition to the "idle" state with animation
	sprite_index = sprite_get("butterfly_transition");
	image_index += .25;
	if (state_timer >= 50){
		state = 3;
		hsp = 0;
		vsp = 0;
		x -= 30*spr_dir; 
		center_x = x;
		center_y = y;
	}
}

//State 3: Idle Infinity
if (state == 3){						// Infinity pattern
	sprite_index = sprite_get("butterfly_idle");
	image_index += .25;
	
	x = spr_dir * amplitude_x * dcos(timer * frequency) + center_x;
	y = amplitude_y * dsin(timer * frequency * 2)  + center_y;
	timer++;
}

//State 4: Teleporting
if (state == 4){						//Using the USpecial, teleport animation
	sprite_index = sprite_get("butterfly_teleport");
	image_index += .25;
	hsp = 0;
	vsp = 0;
	if (image_index >= 11){
		state = 7;
	}
}

//State 5: Lighting Activation
if (state == 5){				//Hazard is active
   // sound_play ("sfx_plasma_field_loop");
	sprite_index = sprite_get("butterfly_active");
	image_index += .15;
	x = round(x);
	y = round(y);
	hsp = 0;
	vsp = 0;
	if (image_index >= 2){		//Creates the colision hitbox
		create_hitbox(AT_DSPECIAL, 4, round(x)+4, round(y)-10);
	}
	if (image_index >= 10){	//Loop animation
		image_index = 2;
	}
	if (lighting_strike == true){	//Enemy got in contact
		sound_play(asset_get("sfx_absa_concentrate"));
		image_index = 0;
		state = 6;
		lighting_strike = false;
	}
	if (state_timer >= 180){		//Back to idle
		state = 9;
		image_index = 11;
	}
}

//State 6: Lighting
if (state == 6){		//Spawns the lighting
	sprite_index = sprite_get("dspecial_hit");
	image_index += .2;
	hsp = 0;
	vsp = 0;
	if (image_index == 1){		//Creates the Hitbox
		create_hitbox(AT_DSPECIAL, 5, round(x), round(y));
	}
	
	if (image_index > 8){		//Destroys the butterfly
		state = 7;
	}
}

//State 7: Dying
if (state == 7){		//Dying, yea
	player_id.butterfly_alive = false;
	player_id.killarticles = false;
    instance_destroy();
    exit;
}

//State 8: Back to Normal
if (state == 8){
	player_id.lighting = false;		//From hazard to idle, just transitioning 
	sprite_index = sprite_get("butterfly_active");
	image_index += .2;
	hsp = 0;
	vsp = 0;
	if (image_index >= 15){
		state = 3;
		image_index = 0;
	}
}

//State 9: Dying With an animation
if (state == 9){		//Despawing animation
	sprite_index = sprite_get("butterfly_destroy");
	image_index += .2;	//How fast the dying animation plays
	hsp = 0;
	vsp = 0;
	if (image_index > 7){		//Dying 
		player_id.butterfly_alive = false;
		player_id.killarticles = false;
    	instance_destroy();
    	exit;
	}
}
