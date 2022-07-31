//update.gml

switch (state){
	case PS_SPAWN:
		//
		break;
	case PS_IDLE:
		//
		break;
	case PS_CROUCH:
		//Crouch SFX
		if (state_timer == 2){
			sound_play(sfx_crouch);
		}
		if (image_index == 5){
			crouch_timer++;
			if (crouch_timer == 1){
				sound_play(sfx_crouch);
			}
		} else {
			crouch_timer = 0
		}
		break;
	case PS_WALK:
		//Walk SFX
		if (state_timer == 16 || state_timer == 37){
			sound_play(sfx_step);
		}
		if(state_timer == 45){
			state_timer = 0;
		}
		break;
	case PS_WALK_TURN:
		//
		break;
	case PS_DASH_START:
		//
		if (state_timer == 1){
			sound_play(sfx_krdl_dashstart);
		}
		break;
	case PS_DASH:
		//Dash SFX
		if (state_timer == 10 || state_timer == 23){
			sound_play(sfx_step);
		}
		if(state_timer == 27){
			state_timer = 0;
		}
		break;
	case PS_DASH_STOP:
		//Dash Stop SFX
		if (state_timer == 1){
			sound_play(sfx_dashstop);
		}
		break;
	case PS_DASH_TURN:
		//
		break;
	case PS_JUMPSQUAT:
		//
		break;
	case PS_FIRST_JUMP:
		//
		break;
	case PS_DOUBLE_JUMP:
		//
		break;
	case PS_WALL_JUMP:
		//
		if (state_timer < 2){
			sound_stop(sfx_star_allies_clean_chuchu);
		}
		move_cooldown[AT_FSPECIAL] = 0;
		break;
	case PS_LAND:
		//
		break;
	case PS_LANDING_LAG:
		//
		sound_stop(sfx_air_ride_quick_spin);
		sound_stop(sfx_air_ride_quick_spin_short);
		break;
	case PS_AIR_DODGE:
		//	
		break;
	case PS_WAVELAND:
		//
		sound_stop(sfx_airdodge);
		break;
	case PS_PARRY:
		//
		if (state_timer == 0){
			sound_play(sfx_parry);
			//sound_stop(asset_get("sfx_parry_use"));
		}
		break;
}

if (!free){
	move_cooldown[AT_FSPECIAL] = 0;
}

if (waterProjDead == true){
	waterProjDead = false;
	waterProjX = 0;
	waterProjY = 0;
}

with(oPlayer){
	if (state == PS_RESPAWN && state_timer < 90){
		visible = false;
	}
}

//DSpecial "Comand Grab"
if (vacuum_grab == true){
	hit_player_obj.hitstop = 1;
	//hit_player_obj.visible = false;
	if (vacuum.throw_direction == vacuum.spr_dir){
		/*
		hit_player_obj.x = lerp(hit_player_obj.x, vacuum.x+50*vacuum.spr_dir, 0.4);
		hit_player_obj.y = lerp(hit_player_obj.y, vacuum.y-30, 0.4);
		*/
	}
	if (vacuum.throw_direction != vacuum.spr_dir){
		/*
		hit_player_obj.x = lerp(hit_player_obj.x, vacuum.x-60*vacuum.spr_dir, 0.4);
		hit_player_obj.y = lerp(hit_player_obj.y, vacuum.y-30, 0.4);
		*/
	}
} else {
	if (has_hit_someone_for_first_time_with_dspec){
		if (hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer > 90){
			hit_player_obj.visible = true;
		} else if (hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer < 90){
			hit_player_obj.visible = false;
		}
	}
}

//rainbow color code lol

hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb( 224, 16, 16 ); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 11, 5, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
set_color_profile_slot( 11, 6, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
init_shader();

if (!free){
	move_cooldown[AT_FSPECIAL] = 0; //reseting fspecial usage in the air.
}