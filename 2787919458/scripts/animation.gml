if(state == PS_CROUCH){
	hud_offset = lerp(hud_offset,-60,.5)
	if(state_timer <= 8){
		image_index = state_timer / 4;
	}
	if(is_crawling){
		sprite_index = sprite_get("airdodge");
		image_index = state_timer / 8;	
	}
}else if(state == PS_AIR_DODGE || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_JUMPSQUAT || state == PS_LAND || state == PS_LANDING_LAG){
	hud_offset = lerp(hud_offset,-60,.5)
}else if(state == PS_HITSTUN){
	if(state_timer == 1 && !just_played_scream && !trigger_warning){
		sound_stop(stupid_sound_shit)
		if(sprite_index == sprite_get("bighurt")){
			random_scream = random_func(1,28,true);
			switch(random_scream){
				case 0:
					stupid_sound_shit = sound_play(sound_get("scream"))
				break;
				case 1:
					stupid_sound_shit = sound_play(sound_get("waaa"))
				break;
				case 2:
					stupid_sound_shit = sound_play(sound_get("JumpScare"))
				break;
				case 3:
					stupid_sound_shit = sound_play(sound_get("mlg_scream"))
				break;
				case 4:
					stupid_sound_shit = sound_play(sound_get("AHHH"))
				break;
				case 5:
					stupid_sound_shit = sound_play(sound_get("werehog"))
				break;
				case 6:
					stupid_sound_shit = sound_play(sound_get("tom"))
				break;
				case 7:
					stupid_sound_shit = sound_play(sound_get("mickey"))
				break;	
				case 8:
					stupid_sound_shit = sound_play(sound_get("meen_screem"))
				break;
				case 9:
					stupid_sound_shit = sound_play(sound_get("marks"))
				break;
				case 10:
					stupid_sound_shit = sound_play(sound_get("sr_pelo_1"))
				break;
				case 11:
					stupid_sound_shit = sound_play(sound_get("monopoly_scream"))
				break;
				case 12:
					stupid_sound_shit = sound_play(sound_get("YODADEATH"))
				break;
				case 13:
					stupid_sound_shit = sound_play(sound_get("willhelm"))
				break;
				case 14:
					stupid_sound_shit = sound_play(sound_get("brawl_sonic"))
				break;
				case 15:
					stupid_sound_shit = sound_play(sound_get("goofy"))
				break;
				case 16:
					stupid_sound_shit = sound_play(sound_get("g_when_25"))
				break;
				case 17:
					stupid_sound_shit = sound_play(sound_get("ree"))
				break;
				case 18:
					stupid_sound_shit = sound_play(sound_get("wario"))
				break;
				case 19:
					stupid_sound_shit = sound_play(sound_get("power_ring"))
				break;
				case 20:
					stupid_sound_shit = sound_play(sound_get("lupay_dies"))
				break;	
				case 21:
					stupid_sound_shit = sound_play(sound_get("sammy_scream"))
				break;
				case 22:
					stupid_sound_shit = sound_play(sound_get("king_oh"))
				break;
				case 23:
					stupid_sound_shit = sound_play(sound_get("snake"))
				break;
				case 24:
					stupid_sound_shit = sound_play(sound_get("wario_2"))
				break;
				case 25:
					stupid_sound_shit = sound_play(sound_get("gunga_scream"))
				break;	
				case 26:
					stupid_sound_shit = sound_play(sound_get("blyat"))
				break;
				case 27:
					stupid_sound_shit = sound_play(sound_get("train_horn"))
				break;				
			}
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
}else if(state == PS_FIRST_JUMP){
	if(state_timer <= 8){
		image_index = state_timer / 10;
	}
}else if(state == PS_PARRY){
	hud_offset = lerp(hud_offset,60,.5)
}else if(state == PS_DASH){
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