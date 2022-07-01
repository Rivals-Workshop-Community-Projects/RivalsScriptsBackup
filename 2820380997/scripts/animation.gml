// Courch Idle
if(state == PS_CROUCH && state_timer > 20){
    sprite_index = sprite_get("crouch_idle");
    image_index = floor(image_number*state_timer/(image_number*10));
}

// Idle Flourish Code
if(state == PS_IDLE){
	//print(idle_2_current_timer)
	idle_2_current_timer++;
	if(idle_2_current_timer > idle_2_start_timer){
		sprite_index = sprite_get("idle_2");
		image_index = (idle_2_current_timer - idle_2_start_timer) / idle_2_game_frames_per_anim_frame;
		idle_2_current_timer++;
	}
	if(idle_2_current_timer > idle_2_total_length + idle_2_start_timer - 1){
		idle_2_current_timer = 0;
	}
}
else idle_2_current_timer = 0;

// Double Jump Backward Animation Logic
if(state == PS_DOUBLE_JUMP){
    if(state_timer == 2){hsp_at_start_of_double_jump = hsp}
    if(spr_dir * hsp_at_start_of_double_jump < 0){double_jump_backward_flag = true;}
        else double_jump_backward_flag = false;
    if(double_jump_backward_flag == true){sprite_index = (sprite_get("doublejump_backward"));}
}

// Intro Code
if(state == PS_SPAWN){
	sprite_index = sprite_get("intro");
	image_index = 0;
	// Parameters of the intro sequence
	var start_intro_movement_timer = 50; // Set this to calibrate where the animation should start
	var number_of_frames_in_strip = 8;
	var animation_speed = 8; // Inverse
	// Image Index Handler
	if(get_gameplay_time() >= start_intro_movement_timer && image_index != number_of_frames_in_strip){ // starts animation. 
	    image_index = clamp(floor((get_gameplay_time() - start_intro_movement_timer) / animation_speed),0,number_of_frames_in_strip);
	}
	/*
	// Sound Handler
	switch(get_player_color(player)){
		case 22:
			if(state_timer == 1){
				sound_play(sound_get("thunder_3"));
			}
			if(image_index == 9 && intro_sound_played_flag == false){ // play reload sound on image index 8S
			    sound_play(asset_get("sfx_syl_dspecial_howl"));
			    intro_sound_played_flag = true;
			}
			//
			break;
		default:
			break;
	}
	*/
}

//Respawn Code
if(state == PS_RESPAWN){
	sprite_index = sprite_get("plat_idle");
	image_index = get_gameplay_time() / 20;
}

// Code for Dspecial Draw Logic
if(attack == AT_DTHROW && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
	switch(window){
		case 3:
		case 4:
		case 5:
		sprite_index = sprite_get("dthrow"); // Foreground
			break;
		default:
		sprite_index = sprite_get("dthrow_behind"); // Full Sprite
			break;
	}
}

// Advance / Beckon Code sprite swap for dspecial held button
if(attack == AT_EXTRA_1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_GROUND)) // Beckon / Advance Code
{
	if(!instance_exists(clone_object_ID)){exit;}
	var clone_relative_x = clone_object_ID.x - x; // Pos is to the right, Neg is to the left
	var clone_relative_direction = sign(clone_relative_x);
	if(right_down && spr_dir == 1 && clone_relative_direction == 1) then sprite_index = sprite_get("extra_1_advance");
	if(left_down && spr_dir == 1 && clone_relative_direction == 1) then sprite_index = sprite_get("extra_1_beckon");
	if(right_down && spr_dir == -1 && clone_relative_direction == 1) then sprite_index = sprite_get("extra_1_beckon");
	if(left_down && spr_dir == -1 && clone_relative_direction == 1) then sprite_index = sprite_get("extra_1_advance");
	if(right_down && spr_dir == 1 && clone_relative_direction == -1) then sprite_index = sprite_get("extra_1_advance");
	if(left_down && spr_dir == 1 && clone_relative_direction == -1) then sprite_index = sprite_get("extra_1_beckon");
	if(right_down && spr_dir == -1 && clone_relative_direction == -1) then sprite_index = sprite_get("extra_1_beckon");
	if(left_down && spr_dir == -1 && clone_relative_direction == -1) then sprite_index = sprite_get("extra_1_advance");
}