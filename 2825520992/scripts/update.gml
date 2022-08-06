


switch(state){
    case PS_CROUCH:
        //Crouch SFX
        if(state_timer == 0){
            sound_play(sound_get("sfx_crouch"));
        }
    break;
    case PS_WALK:
        //Walk SFX
        if(state_timer % 38 == 0){
            sound_play(sound_get("sfx_step"));
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
		}
		break;
}

if (parasol_hit == true){
    hit_player_obj.hitstop = 1;
}