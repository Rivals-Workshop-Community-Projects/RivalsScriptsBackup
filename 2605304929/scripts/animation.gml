// Couch Idle
if(state == PS_CROUCH && state_timer > 20 && down_down){
    sprite_index = sprite_get("crouch_idle");
    image_index = floor(image_number*state_timer/(image_number*20));
}

// Idle transisiton and Idle 2
var idle_2_trans_start_timer = 300;
var idle_2_trans_length_timer = 26;
if(state == PS_IDLE && state_timer > idle_2_trans_start_timer){
    sprite_index = sprite_get("idle_transition");
    image_index = floor(image_number*state_timer/(image_number*10));
}

if(state == PS_IDLE && state_timer > idle_2_trans_start_timer + idle_2_trans_length_timer){
    sprite_index = sprite_get("plat_idle");
    image_index = floor(image_number*state_timer/(image_number*10));
}

// Double Jump Backward Animation Logic
if(state == PS_DOUBLE_JUMP){
    if(state_timer == 2){hsp_at_start_of_double_jump = hsp}
    if(spr_dir * hsp_at_start_of_double_jump < 0){double_jump_backward_flag = true;}
        else double_jump_backward_flag = false;
    if(double_jump_backward_flag == true){sprite_index = (sprite_get("doublejump_backward"));}
}

// Intro Code
if(state == PS_SPAWN){
	// Genesis / Waste's
	if((get_player_color(player) == 12 && color_shift == 1) || (get_player_color(player) == 21 && color_shift == 0)){
		sprite_index = sprite_get("intro_g8");
		print(sprite_index);
		// Parameters of the intro sequence
		intro_animation_frames_before_start = 6; // Set this to calibrate where the animation should start
		intro_animation_strip_frames = 18;
		intro_animation_speed = 6; // Inverse
		// Sound
		if(state_timer == 1){
			sound_play(sound_get("thunder_3"));
		}
		if(image_index == 9 && intro_sound_played_flag == false){ // play reload sound on image index 8S
		    sound_play(asset_get("sfx_syl_dspecial_howl"));
		    intro_sound_played_flag = true;
		}
		
	} 
	// Riptide
	else if(get_player_color(player) == 6 && color_shift == 1){
		sprite_index = sprite_get("intro_riptide");
		intro_animation_frames_before_start = 80; // Set this to calibrate where the animation should start
		intro_animation_strip_frames = 7;
		intro_animation_speed = 7; // Inverse
		// Bubbles
		if(state_timer == 20 || state_timer == 80){
			var bubble_hfx = spawn_hit_fx(x-20,y-20,hitfx_bubbles);
			bubble_hfx.depth = depth - 1;
			//print("spawn bubbles")
		}
	}
	
	// Furi's Intro
	else if(get_player_color(player) == 8 && color_shift == 0){
		sprite_index = sprite_get("intro_furi");
		intro_animation_frames_before_start = 60; // Set this to calibrate where the animation should start
		intro_animation_strip_frames = 15;
		intro_animation_speed = 5; // Inverse
		// Sound
		if(state_timer == 80){
			sound_play(sound_get("thunder_3"));
		}
		/*
		if(image_index == 8 && intro_sound_played_flag == false){ // play reload sound on image index 8S
		    sound_play(asset_get("sfx_syl_dspecial_howl"));
		    intro_sound_played_flag = true;
		}
		*/
	}
	
	// All others
	else{
		sprite_index = sprite_get("intro");
		intro_animation_frames_before_start = 6; // Set this to calibrate where the animation should start
		intro_animation_strip_frames = 18;
		intro_animation_speed = 6; // Inverse
		}
	
	image_index = 0;
	Intro_image_index_handler(intro_animation_frames_before_start,intro_animation_strip_frames,intro_animation_speed);
}

//Respawn Code
if(state == PS_RESPAWN){
	sprite_index = sprite_get("plat_idle");
	image_index = get_gameplay_time() / 10;
}

// Code for Dspecial Draw Logic
if(attack == AT_DTHROW && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	switch(window){
		case 2:
		case 3:
		case 4:
		sprite_index = sprite_get("dthrow"); // Foreground
			break;
		default:
		sprite_index = sprite_get("dthrow_behind"); // Full Sprite
			break;
	}
}

// Code for AT_EXTRA_2 Logic
if(attack == AT_EXTRA_2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	switch(window){
		case 2:
		case 3:
		case 4:
		sprite_index = sprite_get("extra_2"); // Foreground
			break;
		default:
		sprite_index = sprite_get("extra_2_behind"); // Full Sprite
			break;
	}
}

// Custom Landing Animations
if(state == PS_LANDING_LAG){
	var num_of_frames = 3; // This is fixed for each animation
	var length_of_landing_lag = floor(get_attack_value(attack,AG_LANDING_LAG) * 1.5);
	var length_per_frame = length_of_landing_lag / num_of_frames;
	image_index = (state_timer / length_per_frame);
	switch(attack){
		case AT_NAIR:
			sprite_index = sprite_get("nair_land");
		break;
		case AT_FAIR:
			sprite_index = sprite_get("fair_land");
		break;
		case AT_DAIR:
			sprite_index = sprite_get("dair_land");
		break;
		case AT_UAIR:
			sprite_index = sprite_get("uair_land");
		break;
		case AT_BAIR:
			sprite_index = sprite_get("bair_land");
		break;
		default:
		break;
	}
}

#define Intro_image_index_handler(start_intro_movement_timer,number_of_frames_in_strip,animation_speed)
{
	/*
	// Image Index Handler
	if(get_gameplay_time() >= start_intro_movement_timer && image_index != number_of_frames_in_strip){ // starts animation. 
	    image_index = clamp(floor((get_gameplay_time() - start_intro_movement_timer) / animation_speed),0,number_of_frames_in_strip);
	}
	*/
	//number_of_frames_in_strip needs to be offset back by how long the timer has been t
	if(state_timer > start_intro_movement_timer){
		//print(get_gameplay_time());
		var animation_timer = state_timer - start_intro_movement_timer
		image_index = animation_timer / animation_speed;
		//print("image_index: " + string(image_index));
		image_index = clamp(floor(image_index),0,number_of_frames_in_strip);
	}
	//print(image_index);
	//print(animation_timer);
}
