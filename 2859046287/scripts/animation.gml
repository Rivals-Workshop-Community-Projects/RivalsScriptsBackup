//animation.gml
//this script runs every frame, but will also run last in line after all the other update scripts
//we use this script to mess more graphical things

//fix weird jittering that can happen when hud_offset tries to return to 0 - from the munophone
if (abs(hud_offset) < 1) hud_offset = 0;

switch (state)
{
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
					//this equasion forces the image_index (frames) to animate
					//	- anim_first is used as an animation offset, as in which frame should the animation start on
					//	- strong_charge always counts up, so it can be used as an animation timer that's consistent with every charge
					//	- anim_speed is the speed in which the timer is multiplied by, allowing different animation speeds
					//	- anim_length acts as a limiter to the loop, when the image_index value reaches this value it will loop back to the first value of anim_first
				}
				break;
		}
		break;
	case PS_PRATLAND:
		//this complicated math allows the player to animate properly when in pratland

		var timer_to_index_math = state_timer / (extended_parry_lag ? clamp(parry_distance * 8.8, 60, 110) : parry_lag);
		//how did i get to this math?
		//	  parry_distance returns the distance which the player was parried from
		//	  if the parry distance is 150 and under, the parried state will be 60 frames long
		//	  if the parry distance is 590 and over, the parried state will be 110 frames long
		//	  590 - 150 = 440 (gap between the min and max affected distances)
		//	  110 - 60 = 50 (gap between the min and max parry stun time)
		//	  440 : 50 = 8.8 (the mulitplier in which parry_distance knows how many frames to add to the parry stun)
		//	  clamp will limit the math to any number in between 60 and 110, the frame limits (otherwise the player may have loop the animation which we don't want)
		//	  state_timer is divided by the complex math above so it dynamically changes the image below

		//the ? in there is essencially an if statement, it checks if [extended_parry_lag] is active or not, and acts accordingly
		//if it isn't active, the parry stun time is [parry_lag]

		if (extended_parry_lag || was_parried) image_index = lerp(0, image_number, timer_to_index_math); //parrystun
		else image_index = lerp(0, image_number, state_timer/prat_land_time); //pratland
		break;
	case PS_TUMBLE: case PS_HITSTUN_LAND:
		hurt_img = 5;
		break;
	case PS_FLASHED: case PS_FROZEN:
		hurt_img = 1;
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
		if (free) //since hurtground will always be !free, this allows us to rule it out
		{
			//normally this is called spinhurt, but calling it hurt_tumble places it next to the hurt strip in the files
			sprite_index = sprite_get("hurt_tumble");
			image_index = state_timer * 0.1; //this part just animates it properly
		}
	}

	//crystalized compatibility
	//if the character doesn't use small sprites, uncomment this crystalized section (also make sure you have a hurt_crystalized sprite in your folder)
	if (crystalized_damage_remaining > 0 || state == PS_CRYSTALIZED)
	{
		hurt_img = 1;
		if (crystal_stun_resize)
		{
			sprite_index = sprite_get("hurt_crystalized"); //this has to be using small sprites
			small_sprites = 1;
		}
	}
	else if (crystal_stun_resize) small_sprites = 0;

	//ranno bubble forces the player into hurt_img 1 too
	if (bubbled) hurt_img = 1;
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