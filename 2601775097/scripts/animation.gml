//animation

////////////////////////////////////////////////////////////// SETUP STUFF //////////////////////////////////////////////////////////////

// fix weird jittering that can happen when it tries to return to 0
if (abs(hud_offset) < 1) hud_offset = 0;

//theikos state specific animations
if (theikos_type > 0)
{
	if (sprite_index == sprite_get("idle"))
	{
		sprite_index = sprite_get("theikos_idle");
		image_index = state_timer * idle_anim_speed;
	}
	if (sprite_index == sprite_get("dash"))
	{
		sprite_index = sprite_get("theikos_dash");
		image_index = state_timer * dash_anim_speed;
	}
}

////////////////////////////////////////////////////////// ANIMATE //////////////////////////////////////////////////////////

switch (state) {
	// ATTACK ANIMATIONS
	case PS_ATTACK_AIR: case PS_ATTACK_GROUND:
		switch (attack)
		{
			case AT_DSTRONG: case AT_DSTRONG_2:
				if (smash_charging)
				{
					image_index = 2 + (strong_charge / 3) % 4;
	                //image_index = 2: starting frame
	                //(strong_charge/3): animation speed
	                //% 4: amount of frames
				}
	            break;
			case AT_USTRONG_2:
				if (smash_charging) image_index = 1 + (strong_charge / 3) % 2;
	            break;
			case AT_DSPECIAL_2: //ember fist
				if (image_index >= 4) image_index = image_index + ember_alter_anim_start;
				if (window == window_last) image_index = 8;
				break;
			case 49: //lord's punishment
				hurtboxID.sprite_index = hurtbox_spr;
	
				//sword animation
	            switch (window)
	            {
	                default:
	                    od_sword_image = 0;
	                    break;
	                case 12: case 13:
	                    od_sword_image = image_index-19;
	                    break;
	                case 14: case 15: case 16: case 17:
						if (od_sword_image < 13)
						{
							sword_timer = state_timer-202;
							od_sword_image += 0.4;
							od_sword_pos[0] = [x-24*spr_dir, y-112];
							od_sword_pos[1] = [ease_cubeInOut(x-24*spr_dir, x-80*spr_dir, sword_timer, 17), ease_cubeInOut(y-112, y-256, sword_timer, 17)];
						}
						if (od_sword_image >= 13) od_sword_image = image_index-13;
	
						if (state_timer >= 240 && state_timer < 255)
						{
							sword_timer = state_timer-240;
							od_sword_pos[0] = [ease_cubeOut(x-24*spr_dir, x+8*spr_dir, sword_timer, 10), ease_cubeOut(y-112, y-88, sword_timer, 15)];
							od_sword_pos[1] = [ease_cubeOut(x-80*spr_dir, x+80*spr_dir, sword_timer, 10), ease_cubeOut(y-256, y-244, sword_timer, 15)];
						}
	
						if (window == 17)
						{
							if (window_timer == 0) od_slash_alpha = 1;
							od_sword_pos[0] = [x-64*spr_dir, y-48];
							od_sword_pos[1] = [x-264*spr_dir, y-96];
						}
	                    break;
	                case 18: case 19:
						sword_timer = state_timer-272;
	                    od_sword_image += 0.2;
						od_sword_pos[0] = [ease_cubeInOut(x-64*spr_dir, x-264*spr_dir, sword_timer, 17), ease_cubeInOut(y-48, y-96, sword_timer, 25)];
	                    break;
	            }
				break;
		}
		spr_angle = 0;
		draw_y = 0;
		break;
	// POINTLESS SHORTCUTS
	case PS_PRATLAND:
		if (extended_parry_lag) image_index = lerp(0, 2, state_timer/clamp((4/45.0) * parry_distance + (160.0/3.0), 60, 100));
		break;
	case PS_ROLL_BACKWARD: case PS_ROLL_FORWARD: case PS_TECH_BACKWARD: case PS_TECH_FORWARD:
		sprite_index = sprite_get("roll");
		break;
	case PS_TECH_GROUND:
		sprite_index = sprite_get("crouch");
		image_index = floor(lerp(1, 5, state_timer/18));	
		break;
	case PS_HITSTUN: case PS_TUMBLE:
		image_index = hurt_img;
		
		if (state == PS_TUMBLE) hurt_img = 5;
		
		if (hurt_img == 5) 
		{
			//spiphurt spinning cuz i don't wanna make a long strip
			//thanks Muno and Frtoud
			sprite_index = sprite_get("hurt_tumble"); //tf is a spinhurt
		
			rotate_time ++;
			if (rotate_time == 0)
			{
				spr_angle = 0;
				cur_sprite_rot = 0;
				should_rotate = false;
			}
			else if (rotate_time % 10 == 0) should_rotate = true;
			else should_rotate = false;
			if (should_rotate)
			{
				cur_sprite_rot += 90*spr_dir;
				if (abs(cur_sprite_rot) >= 360) cur_sprite_rot = 0;
			}
		
			spr_angle = cur_sprite_rot; 
			draw_y = -40;
		}
		else
		{
			spr_angle = 0;
			draw_y = 0;
		}
		break;
	case PS_HITSTUN_LAND:
		image_index = 5;
		break;
	case PS_FLASHED:
		sprite_index = sprite_get("hurt");
		image_index = 1;
		break;
	case PS_BURIED:
		sprite_index = sprite_get("hurt");
		image_index = 2;
		break;
	default:
		spr_angle = 0;
		draw_y = 0;
		break;
}

//crystalize is seperate because of the damage thing
if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || state == PS_CRYSTALIZED)
{
	sprite_index = sprite_get("hurt");
	image_index = 1;
}