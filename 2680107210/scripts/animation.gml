var ct = current_time;
var orig_index = image_index;
//animation
if(in_dash_jumpsquat)
{
    sprite_index = s_dash_jumpsquat;
}
switch(state)
{
	case PS_HITSTUN_LAND:
	{
		sprite_index = s_crouch;
		image_index = 2;
		break;
	}
	case PS_DASH_START:
	{
		if(prev_state == PS_CROUCH && down_down)
		{
			image_index = max(image_index, 2);
		}
		break;
	}
	case PS_CROUCH:
	{
		if(down_down && (prev_state == PS_DASH || (prev_state == PS_IDLE && prev_prev_state == PS_DASH_START)))
		{
			image_index = max(image_index, 2);
		}
		break;
	}
	case PS_IDLE:
	{
		if(prev_state == PS_DASH_START && prev_prev_state == PS_CROUCH && down_down)
		{
			sprite_index = s_crouch;
			image_index = max(image_index, 2);
		}
		break;
	}
	case PS_AIR_DODGE:
	{
		if(!free)
		{
			sprite_index = s_waveland;
			image_index = 0;
		}
		break;
	}
	case PS_ATTACK_AIR:
	{
		if(attack == AT_FSPECIAL_AIR && window == 3)
		{
			//5-16, inclusive
			var velocity_magnitude = point_distance(0, 0, hsp, vsp);
			var velocity_angle_reg = darcsin(dsin(point_direction(0, 0, hsp, vsp)));
			
			var this_fspecial_index = 0;
			while(velocity_angle_reg < fspecial_flight_visual_angles[this_fspecial_index])
			{
				this_fspecial_index += 1;
			}
			
			var my_index = lerp(this_fspecial_index, this_fspecial_index - 1, abs(velocity_angle_reg - fspecial_flight_visual_angles[this_fspecial_index - 1]) < abs(velocity_angle_reg - fspecial_flight_visual_angles[this_fspecial_index])); //1 - 6
			
			var my_index = 3 + (my_index * 2) + ((image_index + 1) % 2); //5-16
			
			image_index = my_index;
		}
		break;
	}
	case 40: //Olympia crystallization
	{
		sprite_index = name_to_ref_map[? "hurt"];
		image_index = 0;
		break;
	}
	case 41: //Hodan bury
	{
		sprite_index = name_to_ref_map[? "downhurt"];
		image_index = 0;
		break;
	}
}

{
	if(upgraded_nspecial)
	{
		if(sprite_index == s_dash)
		{
			sprite_index = s_dash_sacrifice;
		}
		else if(sprite_index == s_dashstart)
		{
			sprite_index = s_dashstart_sacrifice;
		}
		else if(sprite_index == s_dashstop)
		{
			sprite_index = s_dashstop_sacrifice;
		}
	}

	if(in_dash_shorthop && state != PS_LAND)
	{
		sprite_index = s_dash_shorthop;
		if(state_timer > 1 && state_timer <= 4)
		{
			image_index = 0;
		}
		else if(state_timer > 4 && state_timer <= 10)
		{
			image_index = 1;
		}
		else if(state_timer > 10 && state_timer <= 13)
		{
			image_index = 2;
		}
		else if(state_timer > 13)
		{
			image_index = 3;
		}
	}


	if(upgraded_uspecial && djumps > 1 && state == PS_DOUBLE_JUMP)
	{
		sprite_index = s_doublejump_extra;
	}
	else if(dj_back && state == PS_DOUBLE_JUMP)
	{
		sprite_index = s_doublejump_back;
	}

}

//Update hurtbox
if(in_dash_jumpsquat + 2 * in_dash_shorthop > 0)
{
	hurtboxID.sprite_index = name_to_ref_map[? "dash_hurt"];
}
else
{
	switch(state)
	{
		case PS_IDLE:
		case PS_WALK:
		case PS_WALK_TURN:
		case PS_FIRST_JUMP:
		case PS_IDLE_AIR:
		case PS_HITSTUN:
		case PS_WALL_JUMP:
		case PS_WALL_TECH:
		case PS_PARRY:
		case PS_PARRY_START:
		case 40: //Olympia crystallization
		case 41: //Hodan bury
		{
			hurtboxID.sprite_index = name_to_ref_map[? "idle_hurt"];
			break;
		}
		case PS_JUMPSQUAT:
		case PS_DOUBLE_JUMP:
		case PS_TUMBLE:
		case PS_LAND:
		case PS_LANDING_LAG:
		case PS_WAVELAND:
		case PS_PRATLAND:
		//case PS_AIR_DODGE:
		//case PS_ROLL_FORWARD:
		//case PS_ROLL_BACKWARD:
		case PS_HITSTUN_LAND:
		//case PS_TECH_GROUND:
		//case PS_TECH_FORWARD:
		//case PS_TECH_BACKWARD:
		case PS_WRAPPED:
		case PS_FROZEN:
		case PS_SPAWN:
		case PS_RESPAWN:
		case PS_DEAD:
		{
			hurtboxID.sprite_index = a_ex_guy_hurt_box;
			break;
		}
		case PS_CROUCH:
		case PS_DASH_START:
		case PS_DASH_STOP:
		{
			hurtboxID.sprite_index = name_to_ref_map[? "crouch_hurt"];
			break;
		}
		case PS_DASH:
		{
			hurtboxID.sprite_index = name_to_ref_map[? "dash_hurt"];
			break;
		}
		case PS_DASH_TURN:
		{
			hurtboxID.sprite_index = name_to_ref_map[? "dashturn_hurt"];
			break;
		}
		case PS_PRATFALL:
		{
			hurtboxID.sprite_index = name_to_ref_map[? "pratfall_hurt"];
			break;
		}
		case PS_ATTACK_GROUND:
		case PS_ATTACK_AIR:
		{
			var dmfv = ds_map_find_value(name_to_ref_map, current_sprite + "_hurt");
			if(dmfv != undefined && hurtboxID.sprite_index != dmfv)
			{
				hurtboxID.sprite_index = dmfv;
			}
			else if(dmfv == undefined)
			{
				hurtboxID.sprite_index = a_ex_guy_hurt_box;
			}
			break;
		}
	}
}

//determine current sprite
if(sprite_index != current_sprite_ref)
{
	current_sprite_ref = sprite_index;
	current_sprite = ref_to_name_map[? sprite_index];
}

current_vanda_state = (disabled_nspecial + disabled_fspecial*2 + disabled_uspecial*4);
var numf = sprite_get_number(current_sprite_ref) / 8;
var numt = image_index % numf;

last_index = current_index;
current_index = current_vanda_state * numf + numt;

//reduced_vanda_state = current_vanda_state & (dspecial_selected ^ 7);
reduced_vanda_state = current_vanda_state;
reduced_index = reduced_vanda_state * numf + numt;

selected_vanda_state = reduced_vanda_state | dspecial_selected;
selected_index = selected_vanda_state * numf + numt;

//These animations wig out and don't follow the normal flow of things
//Rivals auto-interpolates the index based on how many frames there are in the sprite
//We have to manually define the image index at every frame or else they start cycling really fast
//Thankfully they all follow the same pattern and have a ratio they can be interpolated against
switch(current_sprite)
{
	case "jump":
	{
		//var ratio = clamp((vsp + jump_speed) / (jump_speed + 3), 0, 1);
		var ratio = clamp(state_timer / 21, 0, 1);
		if(state == PS_IDLE_AIR)
		{
			//ratio = clamp((state_timer + 16) / 21, 0, 1);
			ratio = 1;
		}
		image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + round(lerp(0, (sprite_get_number(current_sprite_ref) / 8) - 1, min(ratio, 1)));
		break;
	}
	case "doublejump":
	case "doublejump_back":
	case "doublejump_extra":
	{
		//var ratio = clamp((vsp + djump_speed) / (djump_speed + 3), 0, 1);
		var ratio = clamp((state_timer + 2) / double_jump_time, 0, 1);
		image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + round(lerp(0, (sprite_get_number(current_sprite_ref) / 8) - 1, min(ratio, 1)));
		break;
	}
	case "walkturn":
	{
		var ratio = state_timer / walk_turn_time;
		image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + round(lerp(0, (sprite_get_number(current_sprite_ref) / 8) - 1, min(ratio, 1)));
		break;
	}
	case "dashstart":
	case "dashstart_sacrifice":
	{
		var ratio = state_timer / initial_dash_time;
		image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + round(lerp(0, (sprite_get_number(current_sprite_ref) / 8) - 1, min(ratio, 1)));
		break;
	}
	case "dash_sacrifice":
	{
			image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + floor(state_timer * dash_anim_speed) % (sprite_get_number(current_sprite_ref) / 8);
			break;
	}
	case "dashturn":
	{
		var ratio = state_timer / dash_turn_time;
		image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + round(lerp(0, (sprite_get_number(current_sprite_ref) / 8) - 1, min(ratio, 1)));
		if(disabled_nspecial) //Use completely different timings, skipping the 3rd frame
		{
			//Should I just accept that there's 4 dashturn frames? probably.
			var num_frames = (sprite_get_number(current_sprite_ref) / 8);
			var output_frame = [0, 1, 3];
			var this_current_frame = round(lerp(0, num_frames - 1, min(ratio, 1)) - 0.2); //-0.1 to 2.4
			image_index = current_vanda_state*num_frames + output_frame[this_current_frame];
		}
		break;
	}
	case "dashstop":
	case "dashstop_sacrifice":
	{
		var multimod = lerp(0.85, 1, disabled_nspecial > 0);
		var ratio = state_timer * multimod / dash_stop_time;
		image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + round(lerp(0, (sprite_get_number(current_sprite_ref) / 8) - 1, min(ratio, 1)));
		break;
	}
	case "land":
	{
		var ratio = state_timer / land_time;
		image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + round(lerp(0, (sprite_get_number(current_sprite_ref) / 8) - 1, min(ratio, 1)));
		break;
	}
	case "pratfall":
	{
		image_index = current_vanda_state;
		break;
	}
	case "pratland":
	{
		var ratio = state_timer / prat_land_time;
		image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + round(lerp(0, (sprite_get_number(current_sprite_ref) / 8) - 1, min(ratio, 1)));
		break;
	}
	case "landinglag":
	{
		var ratio = state_timer / get_attack_value(attack, AG_LANDING_LAG);
		image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + round(lerp(0, (sprite_get_number(current_sprite_ref) / 8) - 1, min(ratio, 1)));
		break;
	}
	case "waveland":
	{
		var ratio = state_timer / wave_land_time;
		image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + round(lerp(0, (sprite_get_number(current_sprite_ref) / 8) - 1, min(ratio, 1)));
		break;
	}
	case "walljump":
	{
		var ratio = state_timer / walljump_time;
		image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + round(lerp(0, (sprite_get_number(current_sprite_ref) / 8) - 1, min(ratio, 1)));
		break;
	}
	case "spinhurt":
	{
		image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + (floor(state_timer / 8) % (sprite_get_number(current_sprite_ref) / 8));
		break;
	}
	case "airdodge":
	{
		if(state_timer >= 0 && state_timer < 2)
		{
			var ratio = (state_timer - 0) / (2 - 0);
			image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + round(lerp(0, air_dodge_startup_frames, min(ratio, 1)));
		}
		else if(state_timer >= 2 && state_timer < 14)
		{
			var ratio = (state_timer - 2) / (14 - 2);
			image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + round(lerp(air_dodge_startup_frames, air_dodge_startup_frames + air_dodge_active_frames, min(ratio, 1)));
		}
		else
		{
			var ratio = (state_timer - 14) / (25 - 14);
			image_index = current_vanda_state*(sprite_get_number(current_sprite_ref) / 8) + round(lerp(air_dodge_startup_frames + air_dodge_active_frames, air_dodge_startup_frames + air_dodge_active_frames + air_dodge_recovery_frames - 1, min(ratio, 1)));
		}
		
		break;
	}
	default:
	{
		image_index = reduced_index;
		break;
	}
}

if(phone_cheats[CHEAT_DEBUG] == 2)
{
	ds_list_insert(animation_perf, 0, current_time - ct);
	if(ds_list_size(animation_perf) > perf_size)
	{
		ds_list_delete(animation_perf, perf_size);
	}
}