//update.gml

//Munophone
user_event(14);


switch (state){
	case PS_SPAWN:
		//
		break;
	case PS_IDLE:
		//
		break;
	case PS_CROUCH:
		//Crouch Sound Effect.
		if (state_timer == 2){
			sound_play(sfx_crouch);
		}
		break;
	case PS_WALK:
		//
		break;
	case PS_DASH_START:
		//
		break;
	case PS_DASH_STOP:
		//
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
		break;
	case PS_WALL_JUMP:
		//
		wings_out = false;
		sound_stop(sfx_condor_dive);
		move_cooldown[AT_FSPECIAL] = 0;
		move_cooldown[AT_USPECIAL] = 0;
		move_cooldown[AT_DSPECIAL] = 0;
		break;
	case PS_LANDING_LAG:
		//
		break;
	case PS_AIR_DODGE:
		//Stopping the Jump Sound Effect if Sleep Kirby Airdodges.
		sound_stop(sfx_jump);	
		break;
	case PS_WAVELAND:
		if (state_timer == 0){
			sound_stop(sfx_airdodge)
			sound_stop(sfx_jump)
		}	
		break;
	case PS_PARRY:
		if (state_timer == 0){
			sound_play(sfx_parry);
			//sound_stop(asset_get("sfx_parry_use"));
		}	
		break;
}

if !(url == 2580068632) {
	player = -1
}

if (jump_pressed){
	wing_jump_timer = 2
}

if (wing_jump_timer != 0){
	wing_jump_timer--;
}

if (!free){
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_DSPECIAL] = 0;
}