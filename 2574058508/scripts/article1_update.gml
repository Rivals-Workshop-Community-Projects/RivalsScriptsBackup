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
	state_timer = 0;
}


//State 0: Flying Forward
if (state == 0){						//Spawing with FSpecial, flying forward
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
    total_timer = 100;
	sprite_index = sprite_get("butterfly_active");
	image_index += .15;
	x = round(x);
	y = round(y);
	hsp = 0;
	vsp = 0;
	if (image_index >= 2){		//Creates the colision hitbox
		create_hitbox(AT_DSPECIAL, 4, round(x)+4 * spr_dir, round(y)-10);
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
		state_timer = 0;
		image_index = 11;
	}
}

// angle change not currently used
// with(player_id){
// 	var e = 2.71828; // euler's number
// 	var dist = point_distance(x, y, other.x, y); // distance between eid and block
// 	var starting_point_max = 400; // maximum height of focal point
// 	var straight_launch_buffer = 40; // distance away from block where launch angle is still completely vertical
// 	if(x > other.x){
// 		var the_angle = point_direction(x, y, other.x + straight_launch_buffer, other.y - starting_point_max + dist/e);
// 		if(y < other.y - starting_point_max){
// 			the_angle = point_direction(x, y, other.x + straight_launch_buffer, y);
// 		}
// 		the_angle = clamp(the_angle, 90, 120);
// 	} else {
// 		var the_angle = point_direction(x, y, other.x - straight_launch_buffer, other.y - starting_point_max + dist/e);
// 		if(y < other.y - starting_point_max + dist/e){
// 			the_angle = point_direction(x, y, other.x - straight_launch_buffer, y);
// 		}
// 		the_angle = clamp(the_angle, 60, 90);
// 	}
// 	set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, the_angle);
	
// 	if(hit_player_obj == self){
// 		set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 90);
// 		set_hitbox_value(AT_DSPECIAL, 5, HG_HITSTUN_MULTIPLIER, .8);
// 	} else {
// 		reset_hitbox_value(AT_DSPECIAL, 5, HG_HITSTUN_MULTIPLIER);
// 	}
// }

//State 6: Lighting
if (state == 6){		//Spawns the lighting
	sprite_index = sprite_get("dspecial_hit");
	image_index += .2;
	hsp = 0;
	vsp = 0;
	if (image_index == 1){		//Creates the Hitbox
		create_hitbox(AT_DSPECIAL, 6, round(x), round(y) - 17);
	}
	
	if (image_index > 8){		//Destroys the butterfly
		state = 7;
	}
}

//State 7: Dying
if (state == 7){		//Dying, yea
	player_id.butterfly = noone;
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
	if(state_timer == 1 && player_id.butterfly == self){
		player_id.butterfly = noone;
	}
	sprite_index = sprite_get("butterfly_destroy");
	image_index += .2;	//How fast the dying animation plays
	hsp = 0;
	vsp = 0;
	if (image_index > 7){		//Dying 
    	instance_destroy();
    	exit;
	}
}
