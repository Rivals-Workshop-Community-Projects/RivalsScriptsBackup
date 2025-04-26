//jirachi update

// ---------------------------------------------------------------------------------------- cosmetics

if (state==PS_WALK_TURN){
	if (left_down&&right_down){
		state_timer = 1;
	}
}

if (get_player_color( player ) == 7){ //kantonianvision
if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0){
outline_color=[35, 67, 49]
init_shader();
}
}

if (was_reloaded){sound_play(sound_get("gui_accept"));was_reloaded=false;}

if (blink_time>0){
	blink_time--;
	if (blink_time==0){
		blink_cooldown = 80 + random_func( id%20, 70, true );
	}
}
if (blink_cooldown>0){
	blink_cooldown--;
	if (blink_cooldown==0){
		blink_time = 10 + random_func( (id%20)+1, 10, true );
	}
}

if (state==PS_FIRST_JUMP){
	if (state_timer==0){
		if (!hitpause){
			sound_play(sound_get("wavedash"),false,noone,0.3,1.3);
			sound_play(asset_get("sfx_oly_uspecial_crystal"),false,noone,0.3,1.7);
			spawn_hit_fx( x-40+random_func( 1, 80, true ), y-20-20+random_func( 8, 40, true ), sparkles1 );
			spawn_hit_fx( x-40+random_func( 2, 80, true ), y-20-20+random_func( 9, 40, true ), sparkles3 );
			spawn_hit_fx( x-40+random_func( 3, 80, true ), y-20-20+random_func( 10, 40, true ), sparkles2 );
		}
	}
}

if (eye_hfx_storage_taketwo!=-4){
	if (instance_exists(eye_hfx_storage_taketwo)){
		if (doomdesire_storage!=-4){
			if (instance_exists(doomdesire_storage)){
				//print("yea?/")
				eye_hfx_storage_taketwo.y = ease_quadOut( round(eye_hfx_y_store), round(doomdesire_storage.y-doomdesire_storage.eye_y_offset), eye_hfx_storage_taketwo.step_timer, eye_hfx_storage_taketwo.hit_length )
			}
		}
	}
}

//if (state==PS_WAVELAND && window_timer==0){sound_stop(air_dodge_sound);};
if (state==PS_IDLE_AIR && prev_state==PS_ATTACK_GROUND && attack==AT_DTILT && state_timer==1){if (spin1!=-4){sound_stop(spin1); sound_stop(spin2); sound_play(asset_get("sfx_birdflap")); sound_play(asset_get("sfx_birdflap"));}}

if (!alt_init){
	if (get_player_color( player ) == 26){
		//print("spidercol detected")
		set_victory_portrait(sprite_get("portrait_beta"));
	}else{
		set_victory_portrait(sprite_get("portrait"));
	}
	
	alt_init = true;
}

// ---------------------------------------------------------------------------------------- gameplay

if (djumps==0){ djump_speed=j_djump_s_1; djump_accel=j_djump_a_1; djump_sound = sound_get("double_jump")}
if (djumps==1){ djump_speed=j_djump_s_2; djump_accel=j_djump_a_1; djump_sound = sound_get("double_jump_2")}
if (djumps==2){ djump_speed=j_djump_s_2; djump_accel=j_djump_a_2; djump_sound = sound_get("double_jump_2")}
if (bair_used){
	move_cooldown[AT_BAIR] = 2;
	if ( ((state==PS_FIRST_JUMP||state==PS_DOUBLE_JUMP||state==PS_WALL_JUMP||state==PS_HITSTUN)&&state_timer==1) || !free){
		move_cooldown[AT_BAIR] = 0;
		bair_used = false;
	}
}
if (ustr_used){
	move_cooldown[AT_USTRONG] = 2;
	if ( ((/*state==PS_HITSTUN||*/state==PS_WALL_JUMP)&&state_timer==1) || !free){
		move_cooldown[AT_USTRONG] = 0;
		ustr_used = false;
	}
}
if (dstr_counter){
	if (!free){
		dstr_counter = 0;
	}
}
if (fsp_used){
	move_cooldown[AT_FSPECIAL] = 2;
	if ( ((state==PS_WALL_JUMP)&&state_timer==1) || !free){//state==PS_HITSTUN||
		move_cooldown[AT_FSPECIAL] = 0;
		fsp_used = false;
	}
}
if (dstr_used){
	move_cooldown[AT_DSTRONG] = 2;
	if ( ((/*state==PS_HITSTUN||*/state==PS_WALL_JUMP)&&state_timer==1) || !free){
		move_cooldown[AT_DSTRONG] = 0;
		dstr_used = false;
	}
}
if (str_stall > 0){
	if ((state==PS_WALL_JUMP&&state_timer==1) || !free){
		str_stall = 0;
	}
}

//gravity jump refund
//normal: 0.80 1.10 1.40 1.70 2 1 0 -1
//gravity: fastfall speed used
if (state==PS_DOUBLE_JUMP){
	if (djumps==1){
		if (window_timer<5){
			if (round(vsp) == fast_fall||round(vsp) == fast_fall-1){ //if jirachi's speed is the fastfall speed at the beginning of doublejump:
				djumps = 0;
			}
		}
	}
}
if (move_cooldown[AT_DSPECIAL]==1){
	sound_play(sound_get("wish_2"),false,noone,0.7);
	white_flash_timer = 7;
	spawn_hit_fx( x-40+random_func( 1, 80, true ), y-(char_height/2)-48+random_func( 8, 96, true ), sparkles1 );
	spawn_hit_fx( x-40+random_func( 2, 80, true ), y-(char_height/2)-48+random_func( 9, 96, true ), sparkles3 );
	spawn_hit_fx( x-40+random_func( 3, 80, true ), y-(char_height/2)-48+random_func( 10, 96, true ), sparkles2 );
	spawn_hit_fx( x-40+random_func( 4, 80, true ), y-(char_height/2)-48+random_func( 11, 96, true ), sparkles1 );
	spawn_hit_fx( x-40+random_func( 5, 80, true ), y-(char_height/2)-48+random_func( 12, 96, true ), sparkles3 );
	spawn_hit_fx( x-40+random_func( 6, 80, true ), y-(char_height/2)-48+random_func( 13, 96, true ), sparkles2 );
	spawn_hit_fx( x-40+random_func( 7, 80, true ), y-(char_height/2)-48+random_func( 14, 96, true ), sparkles2 );
}






