//natsumi update

if (state == PS_CROUCH && prev_state == PS_IDLE && prev_prev_state == PS_ATTACK_GROUND && state_timer==0){
	//print_debug("this script RUNNIN")
	state_timer = 4;
}

if (usp_did){
	move_cooldown[AT_USPECIAL] = 2;
	if (state==PS_WALL_JUMP){
		usp_did = false;
		move_cooldown[AT_USPECIAL] = 0;
	}
	if (!free&&state!=PS_ATTACK_AIR&&state!=PS_ATTACK_GROUND){
		usp_cd_state = 1
		usp_did = false;
		move_cooldown[AT_USPECIAL] = usp_cd_dur;
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

//usp states...
if (usp_cd_state != 0){
	usp_cd_timer++;
	hud_offset = 56;
	if (usp_cd_state == 1){
		usp_cd_end = 20;
		if (usp_cd_timer>usp_cd_end){
			usp_cd_state = 2;
			usp_cd_timer = 0;
		}
	}
	if (usp_cd_state == 2){
		if (move_cooldown[AT_USPECIAL] == 0){
			usp_cd_state = 3;
			usp_cd_timer = 0;
			sound_play(sound_get("fill"))
		}
	}
	if (usp_cd_state == 3){
		usp_cd_end = 30;
		if (usp_cd_timer>usp_cd_end){
			usp_cd_state = 0;
			usp_cd_timer = 0;
		}
	}else if (state==PS_WALL_JUMP){
		move_cooldown[AT_USPECIAL] = 0;
		usp_cd_state = 3;
		usp_cd_timer = 0;
		sound_play(sound_get("fill"))
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

if (get_player_color( player ) == 7){ //towerofheaven
if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
outline_color=[35, 67, 49]
init_shader();
}
}

if (state==PS_SPAWN && extra_col == 0){
	if (taunt_down&&up_down){//owen
		extra_col = 1
		white_flash_timer = 18;
		sound_play(sound_get("dspecial_activate"));
		init_shader();
	}
	if (taunt_down&&down_down){//spider
		extra_col = 5
		white_flash_timer = 18;
		sound_play(sound_get("dspecial_activate"));
		init_shader();
	}
	if (taunt_down&&right_down){//kingdoge
		extra_col = 3
		white_flash_timer = 18;
		sound_play(sound_get("dspecial_activate"));
		init_shader();
	}
	if (taunt_down&&left_down){//jerome :)
		extra_col = 4
		white_flash_timer = 18;
		sound_play(sound_get("dspecial_activate"));
		init_shader();
		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("lemon"));
	}
	if (taunt_down&&special_down){//obligatory hyuponia color
		extra_col = 2
		white_flash_timer = 18;
		sound_play(sound_get("dspecial_activate"));
		init_shader();
	}
}




