//Animation

//this is a superfluous way of making sure you don't see the giant white X during testing.
//remove this and the comment once you have every sprite done.
if sprite_index == 4145
{
    sprite_index = sprite_get("idle");
}

//intro anim template, remember post_draw and pre_draw can also add cool effects, 
//this is strip-based and only animates the character themselves
if (state == PS_SPAWN) {
	if (state_timer <= 14/0.2) {
    	sprite_index = sprite_get("intro");
    	image_index = intro_anim_frame;
    	
    	//speed at which the intro animates
    	intro_anim_frame+= 0.2;//if you change this, change the number in the if statement regarding state_timer
	}
}

switch (state)
{
    case PS_CROUCH:
		if (right_down || left_down) sprite_index = sprite_get("crawl");
		if (crawl_time > 0) image_index = fake_img;
	break;
	case PS_JUMPSQUAT:
		if (was_crouching) {
			sprite_index = sprite_get("crouch_jumpstart");
		}
	break;
	case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
		switch (attack)
		{
			case AT_BAIR: //looping strong charge animation
				//this code basically checks the strong charge window frames and animates accordingly
				if (window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && smash_charging) //check strong charge window
				{
					var anim_first = get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
					var anim_length = get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES);
					var anim_speed = 0.5 + (strong_charge/1000); //sets the speed the strong charge animation goes
					
					image_index = anim_first + (strong_charge * anim_speed) % anim_length;

					if (strong_charge % 6 == 0)
					{
						sound_play(asset_get("sfx_swipe_medium2"), false, 0, 0.6, 1.1 + strong_charge/60);
					}
				}
				break;
		}
	break;
}

// Handling the head state as its own thing here.
if (in_hstance) {
	switch (state) {
	
		case PS_IDLE_AIR:
			sprite_index = sprite_get("hstance_jump");
			image_index = (state_timer > 55 ? 2 : (state_timer > 20 ? 1 : 0))
		break;
		case PS_AIR_DODGE:
			sprite_index = sprite_get("hstance_airdodge");
		break;
		case PS_WALL_JUMP:
			sprite_index = sprite_get("hstance_walljump")
		break;
		case PS_HITSTUN: 
		case PS_TUMBLE:
			sprite_index = sprite_get("hstance_hurt");
		break;
		case PS_LAND:
		case PS_LANDING_LAG:
		case PS_WAVELAND:
			sprite_index = sprite_get("hstance_land");
		break;
	}
}

