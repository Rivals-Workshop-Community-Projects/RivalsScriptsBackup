switch(state){
    case PS_CROUCH:
        //Crouch SFX
        if(state_timer == 0){
            sound_play(sound_get("sfx_crouch"));
        }
    break;
    case PS_WALK:
        //Walk SFX
        if(state_timer % 32 == 1){
			if (state_timer > 2){
				sound_play(sound_get("sfx_step"));
			}
        }
    break;
    case PS_DASH:
        //Dash SFX
        if(state_timer % 20 == 0){
            sound_play(sound_get("sfx_step"));
        }
    break;
    case PS_DASH_STOP:
		//Dash Stop SFX
		if (state_timer == 1){
			sound_play(sfx_dashstop);
		}
		break;
	case PS_PARRY:
		//parry sfx
		if (state_timer == 0){
			sound_play(sfx_parry);
			//sound_stop(asset_get("sfx_parry_use"));
			sound_play(sfx_star_allies_gooey_friend_bag);
		}
		if (state_timer == 18){
			sound_play(sfx_star_allies_gooey_friend_bag_open, false, noone, 0.3, 1);
		}
		break;
	case PS_WAVELAND:
		//parry sfx
		if (state_timer == 0){
			//sound_play(asset_get("sfx_waveland_ran"), false, noone, 1, 1.1);
		}
		break;
	case PS_WALL_JUMP:
		move_cooldown[AT_FSPECIAL] = 0;
		break;
}

if (!free){
	move_cooldown[AT_FSPECIAL] = 0;
}

if attack == AT_FSPECIAL && window == 2 {
	move_cooldown[AT_FSPECIAL] = 99999;
}

if state == PS_HITSTUN {
	strong_fspecial = false;
}

//Trail stuff
if (draw1 > 0){
    draw1 -= 0.08;
}
if (draw2 > 0){
    draw2 -= 0.08;
}
if (draw3 > 0){
    draw3 -= 0.08;
}
if (draw4 > 0){
    draw4 -= 0.08;
}
if (draw5 > 0){
    draw5 -= 0.08;
}

with (oPlayer){	
	//print(get_char_info(player, INFO_STR_NAME) + string(visible));
	if(url != 2840242565){
		if(gooeyOpponentShouldBeVisisbleTimer != 0 && gooeyOpponentShouldBeVisisbleTimer < 15){
			hitstop = 1;
			if(state != PS_HITSTUN_LAND && state != PS_HITSTUN){
				gooeyOpponentShouldBeVisisbleTimer--;
			}
			if(state == PS_HITSTUN_LAND || state == PS_HITSTUN){
				gooeyOpponentShouldBeVisisbleTimer--;
			}
			visible = false;
		} else if(gooeyOpponentShouldBeVisisbleTimer != 0 && gooeyOpponentShouldBeVisisbleTimer > 15){
			//print(get_char_info(player, INFO_STR_NAME) + " needs help");
			visible = false;
			gooeyOpponentShouldBeVisisbleTimer = 0;
			hitstop = 0;
			set_state(PS_IDLE_AIR);
		}
		//print(get_char_info(player, INFO_STR_NAME) + string(gooeyOpponentShouldBeVisisbleTimer));
		//print(get_char_info(player, INFO_STR_NAME) + string(state_timer));
	}
}