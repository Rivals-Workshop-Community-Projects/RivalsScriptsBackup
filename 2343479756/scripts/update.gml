//natsumi update

if (state == PS_CROUCH && prev_state == PS_IDLE && prev_prev_state == PS_ATTACK_GROUND && state_timer==0){
	//print_debug("this script RUNNIN")
	state_timer = 4;
}

if (usp_did){
	move_cooldown[AT_USPECIAL] = 2;
	if (!free||state==PS_WALL_JUMP){
		usp_did = false;
		move_cooldown[AT_USPECIAL] = 0;
	}
}
if (fsp_did){
	move_cooldown[AT_FSPECIAL] = 2;
	if (!free||state==PS_WALL_JUMP){
		fsp_did = false;
		move_cooldown[AT_FSPECIAL] = 0;
	}
}
if (move_cooldown[AT_DSPECIAL]){
	if (!free){
		move_cooldown[AT_DSPECIAL] = 0;
		move_cooldown[AT_DSPECIAL_AIR] = 0;
	}
}

if (state == PS_WAVELAND){
	if (state_timer==1){
		sound_stop(sound_get("dodge"))
		sound_stop(sound_get("jump"))
	}
}
if (state == PS_DASH_START){
	if (state_timer==0){
		sound_stop(asset_get("sfx_dash_start"))
		sound_play(sound_get("dash"))
	}
}

if (state==PS_SPAWN && extra_col == 0){
	if (taunt_down&&down_down){
		extra_col = 1
		white_flash_timer = 18;
		sound_play(sound_get("dspecial_activate"));
		init_shader();
	}
	if (taunt_down&&up_down){
		extra_col = 2
		white_flash_timer = 18;
		sound_play(sound_get("dspecial_activate"));
		init_shader();
	}
}