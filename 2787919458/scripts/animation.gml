switch(state){
	case PS_CROUCH:
		hud_offset = lerp(hud_offset,-60,.5)
		if(state_timer <= 8){
			image_index = state_timer / 4;
		}
		if(is_crawling){
			sprite_index = sprite_get("airdodge");
			image_index = state_timer / 8;	
		}	
	break;
	case PS_PRATLAND: //plays the parry stun animation right - thanks Frtoud!
		var timer_to_index_math = state_timer / (extended_parry_lag ? clamp(parry_distance * 8.8, 60, 110) : parry_lag);
		if (extended_parry_lag || was_parried) image_index = lerp(0, image_number, timer_to_index_math); //parrystun
		else image_index = lerp(0, image_number, state_timer/prat_land_time); //pratland
	break;	
	case PS_AIR_DODGE:case PS_DOUBLE_JUMP:case PS_WALL_JUMP:
	case PS_JUMPSQUAT:case PS_LAND:case PS_LANDING_LAG:
		hud_offset = lerp(hud_offset,-60,.5)
		if(state == PS_AIR_DODGE){
			if (!free && image_index == 0){
				sprite_index = sprite_get("jumpstart");
				image_index = 1;
			}			
		}
	break;
	case PS_ROLL_BACKWARD: case PS_ROLL_FORWARD: case PS_TECH_BACKWARD: case PS_TECH_FORWARD:
		sprite_index = sprite_get("roll");
		hud_offset = lerp(hud_offset,-60,.5)
	break;	
	case PS_PARRY_START:
		if(state_timer == 0 && (left_down || right_down)){
			sprite_index = sprite_get("crouch");
			hud_offset = lerp(hud_offset,-60,.5);		
		}
	break;	
	case PS_PARRY:
		hud_offset = lerp(hud_offset,60,.5)
	break;
	case PS_HITSTUN:
		image_index = hurt_img;
		if(state_timer == 1 && !just_played_scream && !trigger_warning){
			if(hurt_img == 0){
				random_scream = random_func(1,array_length(screamList)-4,true);
				sound_stop(stupid_sound_shit)
				stupid_sound_shit = sound_play(sound_get(screamList[random_scream+4]));
			}else if(hurt_img == 3 || hurt_img == 4){
				sound_stop(stupid_sound_shit)
				random_scream = random_func(1,4,true);
				stupid_sound_shit = sound_play(sound_get(screamList[random_scream]));
			}
		}else if(state_timer == 2 && just_played_scream){
			just_played_scream = false;
		}	
	break;
	case PS_HITSTUN_LAND:
		image_index = 5;
	break;
	case PS_FLASHED:case PS_BURIED:
		sprite_index = sprite_get("hurt");
		image_index = (state==PS_FLASHED)?1:2;
	break;
	case PS_FIRST_JUMP:
		if(state_timer <= 8){
			image_index = state_timer / 10;
		}	
	break;
	case PS_DASH:
		switch(random_dash){
			case 0:
				sprite_index = sprite_get("dash");
			break;
			case 1:case 2:case 3:case 4:
				sprite_index = sprite_get("sanic_run"+string(random_dash));
				image_index = state_timer / 3;
				if(random_dash != 1)hud_offset = lerp(hud_offset,-40,.5)
			break;
			case 5:
				hud_offset = lerp(hud_offset,-30,.5)
				sprite_index = sprite_get("sanic_run"+string(random_dash));
				image_index = state_timer / 2;
			break;	
			case 6:
				sprite_index = sprite_get("sanic_run"+string(random_dash));
			break;		
		}	
	break;
	default:
		spr_angle = 0;
		draw_y = 0;
	break;	
	/*
    case PS_SPAWN:
        var length = 17; // num of anim frames
        var spd = 4; // in game frames per anim frame
        if (state_timer % spd == 0) introTimer++;
        sprite_index = sprite_get(introTimer<length&&introTimer>=0?"intro":"idle");
        if (introTimer < 0) image_index = 0;
        else if (introTimer < length) image_index = introTimer;
    break;
    */
}
if(phone_attacking){
	switch(attack){
		case AT_EXTRA_1:
			if(free){
				hud_offset = lerp(hud_offset,-60,.5)
			}
		break;
		case AT_DTILT:
			hud_offset = lerp(hud_offset,-60,.5)
		break;
		case AT_UTILT:
			if(window == 1){
				hud_offset = lerp(hud_offset,-50,.5)
			}		
			if(window == 2 && window_timer >= 4){
				hud_offset = lerp(hud_offset,50,.5)
			}
		break;
		case AT_FSTRONG:case AT_DSTRONG:case AT_USTRONG:
			Get_Alt_Sprite(13,"fstrong_majin");
		break;
		case AT_DATTACK:case AT_BAIR:case AT_FSPECIAL:
			Get_Alt_Sprite();
			if(attack == AT_DATTACK && window == 3 && window_timer < 10){sprite_index = sprite_get("nair");}
			if(attack == AT_DATTACK && window == 3 && window_timer >= 10){sprite_index = sprite_get("jump");image_index = floor(lerp(0, 2, window_timer/4));}
		break;
		case AT_UAIR:
			if(window == 1 && window_timer == 1 && !hitpause){
				sound_play(sound_get("Stretch"))
			}
			if(window > 1){
				hud_offset = lerp(hud_offset,80,.5)
				if(window_timer == 3 && !hitpause && window == 2){
					sound_play(asset_get("sfx_may_whip2"));
				}
			}
		break;	
		case AT_USPECIAL:
			if(window == 1){
				if(window_timer < 13){
					image_index = 0;
				}
			}
		break;
		case AT_TAUNT_2:case AT_EXTRA_2:
			hud_offset = lerp(hud_offset,-40,.5)
			if(attack == AT_EXTRA_2){
				image_index = state_timer / 2;
			}
		break;		
	}
}
// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}

#define Get_Alt_Sprite()
if(argument_count > 0 && get_player_color(player) == argument[0]){
	sprite_index = sprite_get(argument[1]);
}
if(get_player_color(player) != 0){
	var found = 0;
	for (var i = 0; i < array_length(sprite_names) && !found; i++){
		if (sprite_index == sprite_get(sprite_names[i])){
			sprite_index = sprite_get(sprite_names[i]+"_alts");
			found = 1;
		}
	}
}