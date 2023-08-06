//animation.gml
//this script runs every frame, but will also run last in line after all the other update scripts
//we use this script to mess more graphical things

//fix weird jittering that can happen when hud_offset tries to return to 0 - from the munophone
if (abs(hud_offset) < 1) hud_offset = 0;

switch (state)
{
	case PS_SPAWN:
		if (window == 2) //check strong charge window
				{
					var anim_first = get_window_value(state, window, AG_WINDOW_ANIM_FRAME_START);
					var anim_length = get_window_value(state, window, AG_WINDOW_ANIM_FRAMES);
					var anim_speed = 0.3; //sets the speed the strong charge animation goes
					
					image_index = anim_first + (.5 * anim_speed) % anim_length;
				}
				break;
	case PS_AIR_DODGE: //changes the first sprite of the airdodge for wavelanding (not neccesary to use but it looks nicer)
		if (!free && image_index == 0)
		{
			sprite_index = sprite_get("jumpstart");
			image_index = 1;
		}
		break;
	case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
		switch (attack)
		{
			case AT_FSTRONG: //looping strong charge animation
				//this code basically checks the strong charge window frames and animates accordingly
				if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && smash_charging) //check strong charge window
				{
					var anim_first = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
					var anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
					var anim_speed = 0.3; //sets the speed the strong charge animation goes
					
					image_index = anim_first + (strong_charge * anim_speed) % anim_length;
				}
				break;
				
			case AT_USTRONG: //looping strong charge animation
				//this code basically checks the strong charge window frames and animates accordingly
				if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && smash_charging) //check strong charge window
				{
					var anim_first = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
					var anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
					var anim_speed = 0.3; //sets the speed the strong charge animation goes
					
					image_index = anim_first + (strong_charge * anim_speed) % anim_length;
					//this equasion forces the image_index (frames) to animate
					//	- anim_first is used as an animation offset, as in which frame should the animation start on
					//	- strong_charge always counts up, so it can be used as an animation timer that's consistent with every charge
					//	- anim_speed is the speed in which the timer is multiplied by, allowing different animation speeds
					//	- anim_length acts as a limiter to the loop, when the image_index value reaches this value it will loop back to the first value of anim_first
				}
				break;
				
			case AT_DSTRONG: //looping strong charge animation
				//this code basically checks the strong charge window frames and animates accordingly
				if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && smash_charging) //check strong charge window
				{
					var anim_first = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
					var anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
					var anim_speed = 0.3; //sets the speed the strong charge animation goes
					
					image_index = anim_first + (strong_charge * anim_speed) % anim_length;
				}
				break;	
				
			case AT_USPECIAL: 
				if (window == 2) //check strong charge window
				{
					var anim_first = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
					var anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
					var anim_speed = 0.3; //sets the speed the strong charge animation goes
					
					image_index = anim_first + (.5 * anim_speed) % anim_length;
				}
				break;
		}
		break;
	case PS_WALL_JUMP: //easy clinging (only works if you set can_wall_cling to true in init.gml)
		if (can_wall_cling)
		{
			//makes sure the cling_timer is consistent with the state_timer
			if (state_timer == 0) cling_timer = 0;
			if (clinging) cling_timer = state_timer;
			
			//sets image to the proper index
			if (clinging && image_index >= cling_frame) image_index = cling_frame; //when clinging and the image_index goes over the cling frame, force it back
			else //when not clinging, simply do the animation
			{
				image_index = lerp(
					image_index < cling_frame ? 0 : cling_frame, //depending on if we clinged for enough time to reach the cling frame, the lerp adapts
					image_number, //this is the maximum frame number in the strip
					(state_timer-cling_timer)/walljump_time //checks when the animation starts [state_timer - cling_timer] and for how long with [walljump_time]
				);
			}
		}
		break;
	case PS_PRATLAND:
		//this complicated math allows the player to animate properly when in pratland

		var timer_to_index_math = state_timer / clamp(parry_distance * 8.8, 60, 110);
		//how did i get to this math?
		//	  parry_distance returns the distance which the player was parried from
		//	  if the parry distance is 150 and under, the parried state will be 60 frames long
		//	  if the parry distance is 590 and over, the parried state will be 110 frames long
		//	  590 - 150 = 440 (gap between the min and max affected distances)
		//	  110 - 60 = 50 (gap between the min and max parry stun time)
		//	  440 : 50 = 8.8 (the mulitplier in which parry_distance knows how many frames to add to the parry stun)
		//	  clamp will limit the math to any number in between 60 and 110, the frame limits (otherwise the player may have loop the animation which we don't want)
		//	  state_timer is divided by the complex math above so it dynamically changes the image below

		if (extended_parry_lag) image_index = lerp(0, image_number, timer_to_index_math);
		break;
	case PS_TUMBLE: case PS_HITSTUN_LAND:
		hurt_img = 5;
		break;
	case PS_FLASHED: case PS_FROZEN: //no break because PS_CRYSTALIZED uses hurt_img 1 too
		hurt_img = 1;
	case PS_CRYSTALIZED: //only relevant if you don't use small sprites
		if (small_sprites < 1)
		{
			small_sprites = 1;
			sprite_index = sprite_get("hurt_crystalized");
		}
		//if the character doesn't use small_sprites, they need to be resized
		//this also means that you need a seperate sprite for crystalize that is smaller
		break;
	case PS_BURIED:
		hurt_img = 2;
		break;
	
	case PS_SPAWN:
		if ( state_timer < intro_duration && get_gameplay_time() < 300) {
		    sprite_index = sprite_get("intro");
		    image_index = floor(ease_linear(0, image_number-1, state_timer, intro_duration));
}

}


//rune F - auto turnaround - walk backwards sprites set
//NOTE: when creating/exporting the sprite, the character should face right unlike the rest of the animations
if (has_rune("F"))
{
	//here we check if we are in the walk state and if we are not facing the same way as the spr_dir
	//if this occurence happens, force a different walk animation
	//also should set the image_index to keep playing - the state_timer forces the animation to keep going
	if (state == PS_WALK && spr_dir != runeF_face_dir)
	{
		sprite_index = sprite_get("walkback_runeF");
		image_index = floor(walk_anim_speed*state_timer);
	}
}