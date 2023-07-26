//animation.gml

//fix weird jittering that can happen when it tries to return to 0
if (abs(hud_offset) < 1) hud_offset = 0;

switch (state)
{
	case PS_ROLL_FORWARD: case PS_ROLL_BACKWARD: case PS_TECH_FORWARD: case PS_TECH_BACKWARD:
		sprite_index = sprite_get("roll");
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
					var anim_speed = 0.25 + (strong_charge/500); //sets the speed the strong charge animation goes
					
					image_index = anim_first + (strong_charge * anim_speed) % anim_length;

					if (strong_charge % 15 == 0 && strong_charge < 30 || image_index < strong_charge/80 + 2)
					{
						sound_play(asset_get("sfx_swipe_heavy2"), false, 0, 1, 1 + strong_charge/60);
					}
				}
				break;
			case AT_NSPECIAL:
				if (image_index > 2 && nspec_turned) image_index += 10;
				break;
			case AT_TAUNT: //far taunt
				if (window < 3) image_index += 4 * taunt_pose;
				break;
			case 2: //intro
				if (window == 1)
				{
					draw_x = lerp(-350, -100, window_timer/(window_end-1)) * spr_dir;
					draw_y = lerp(-200, 0, window_timer/(window_end-1));

					intro_land_start = state_timer;
				}
				else
				{
					var time = 30; //how long it takes her to stop
					if (state_timer - intro_land_start <= time) draw_x = ease_cubeOut(-100, 0, state_timer - intro_land_start, time) * spr_dir;
				}
				break;
		}
		break;
	case PS_PRATLAND:
		sprite_index = sprite_get("pratland");
		
		//this complicated math allows the player to animate properly when in pratland
		var timer_to_index_math = state_timer / (extended_parry_lag ? clamp(parry_distance * 8.8, 60, 110) : parry_lag);

		if (extended_parry_lag || was_parried) image_index = lerp(0, image_number, timer_to_index_math);
		else image_index = lerp(0, image_number, state_timer/prat_land_time);
		break;
	case PS_CROUCH:
		if (right_down || left_down) sprite_index = sprite_get("crawl");
		if (crawl_time > 0) image_index = fake_img;
		break;
	case PS_TUMBLE: case PS_HITSTUN_LAND:
		hurt_img = 5;
		break;
	case PS_FLASHED: case PS_FROZEN: case PS_CRYSTALIZED:
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
		if (free)
		{
			//normally this is called spinhurt, but calling it hurt_tumble places it next to the hurt strip in the files
			sprite_index = sprite_get("hurt_tumble");
			image_index = state_timer * 0.1;
		}
	}

	//ranno bubble forces the player into hurt_img 1 too
	if (bubbled) hurt_img = 1;
}