//animation.gml

//fix weird jittering that can happen when it tries to return to 0
if (abs(hud_offset) < 1) hud_offset = 0;

switch (state)
{
	case PS_AIR_DODGE: //changes the first sprite of the airdodge for wavelanding
		if (!free && image_index == 0)
		{
			sprite_index = sprite_get("jumpstart");
			image_index = 1;
		}
		break;
	case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
		switch (attack)
		{
			case AT_DSTRONG: //looping strong charge animation
				//this code basically checks the strong charge window frames and animates accordingly
				if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && smash_charging) //check strong charge window
				{
					var anim_first = get_window_value(attack, 2, AG_WINDOW_ANIM_FRAME_START);
					var anim_length = get_window_value(attack, 2, AG_WINDOW_ANIM_FRAMES);
					var anim_speed = .25; //sets the speed the strong charge animation goes
					
					image_index = anim_first + (strong_charge * anim_speed) % anim_length;
					//this equasion forces the image_index (frames) to animate
					//	- anim_first is used as an animation offset, as in which frame should the animation start on
					//	- strong_charge always counts up, so it can be used as an animation timer that's consistent with every charge
					//	- anim_speed is the speed in which the timer is multiplied by, allowing different animation speeds
					//	- anim_length acts as a limiter to the loop, when the image_index value reaches this value it will loop back to the first value of anim_first
				}
				break;
		}

		//looping strong charge animation
		/*
			if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && smash_charging) //check strong charge window
			{
				var anim_first = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
				var anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
				var anim_speed = 0.3; //sets the speed the strong charge animation goes

				image_index = anim_first + (strong_charge * anim_speed) % anim_length;
			}
		*/
		break;
	case PS_WALL_JUMP: //easy clinging
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
		if (extended_parry_lag) image_index = lerp(0, image_number, timer_to_index_math);
		break;
	case PS_TUMBLE: case PS_HITSTUN_LAND:
		hurt_img = 5;
		break;
	case PS_FLASHED:
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
}

//sets image_index to hurt_img. this allows us to put all the hurt sprites in one strip
if (state_cat == SC_HITSTUN || state == PS_TUMBLE)
{
	sprite_index = sprite_get("hurt");
	image_index = hurt_img;

	if (hurt_img == 5) //PS_TUMBLE and hurtground share a hurt_img index, dan programmed it like that
	{
		if (free)
		{
			//normally this is called spinhurt, but calling it hurt_tumble places it next to the hurt strip in the files
			sprite_index = sprite_get("hurt_tumble");
			image_index = state_timer * 0.1;
		}
	}

	//crystalized compatibility
	//if the character doesn't use small sprites, uncomment the else line
	if (crystalized_damage_remaining != 0) hurt_img = 1;
	//else small_sprites = 0;

	//ranno bubble forces the player into hurt_img 1 too
	if (bubbled) hurt_img = 1;
}