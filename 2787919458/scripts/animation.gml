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
	case PS_AIR_DODGE:case PS_DOUBLE_JUMP:case PS_WALL_JUMP:case PS_ROLL_BACKWARD:
	case PS_ROLL_FORWARD:case PS_JUMPSQUAT:case PS_LAND:case PS_LANDING_LAG:
		hud_offset = lerp(hud_offset,-60,.5)
	break;
	case PS_PARRY:
		hud_offset = lerp(hud_offset,60,.5)
	break;
	case PS_HITSTUN:
		if(state_timer == 1 && !just_played_scream && !trigger_warning){
			sound_stop(stupid_sound_shit)
			if(sprite_index == sprite_get("bighurt")){
				random_scream = random_func(1,array_length(screamList),true);
				stupid_sound_shit = sound_play(sound_get(screamList[random_scream]));
			}else if(sprite_index == sprite_get("uphurt") || sprite_index == sprite_get("bouncehurt")){
				random_scream = random_func(1,3,true);
				switch(random_scream){
					case 0:
						stupid_sound_shit = sound_play(sound_get("gangstar_choir"))
					break;
					case 1:
						stupid_sound_shit = sound_play(sound_get("wolves"))
					break;
					case 2:
						stupid_sound_shit = sound_play(sound_get("going_up"))
					break;				
				}		
			}
		}else if(state_timer == 2 && just_played_scream){
			just_played_scream = false;
		}	
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
			case 1:
				sprite_index = sprite_get("sanic_run");
				image_index = state_timer / 3;
			break;
			case 2:
				hud_offset = lerp(hud_offset,-40,.5)
				sprite_index = sprite_get("sanic_run2");
				image_index = state_timer / 3;
			break;
			case 3:
				hud_offset = lerp(hud_offset,-40,.5)
				sprite_index = sprite_get("sanic_run3");
				image_index = state_timer / 3;
			break;
			case 4:
				hud_offset = lerp(hud_offset,-40,.5)
				sprite_index = sprite_get("sanic_run4");
				image_index = state_timer / 3;
			break;
			case 5:
				hud_offset = lerp(hud_offset,-30,.5)
				sprite_index = sprite_get("sanic_run5");
				image_index = state_timer / 2;
			break;	
			case 6:
				sprite_index = sprite_get("sanic_run6");
			break;		
		}	
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
			if(get_player_color(player) == 13){
				sprite_index = sprite_get("fstrong_majin")
			}
		break;
		case AT_DATTACK:
			if(get_player_color(player) != 0){
				sprite_index = sprite_get("dattack_alts")
			}
		break;
		case AT_BAIR:
			if(get_player_color(player) != 0){
				sprite_index = sprite_get("bair_alts")
			}
		break;		
		case AT_FSPECIAL:
			if(get_player_color(player) != 0){
				sprite_index = sprite_get("fspecial_alts")
			}
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