//article1_update


if (init == 0){
    init = 1;
    
    with (asset_get("obj_article1")){
        if (id != other.id && player_id == other.player_id){
			if (state != 2){
				state = 2;
				state_timer = 0;
				state_end = 2;
				replaced = true;
			}
        }
    }
}

state_timer++;
if (hit_lockout_duration > 0){
	hit_lockout_duration--;
}

// // // // STATE 0 - START
if (state == 0){
	state_end = 18;
	image_alpha = 1;
    image_index = (0 + state_timer * 3 / state_end) + (door_kind*4);
	knock_image_index = -1;
	
    if (state_timer == 1){
		sound_play(sound_get("door_place"), false, noone, 1)
		sound_play(sound_get("door_place"), false, noone, 1)
		
	}
    if (state_timer == state_end){
        state = 1;
        state_timer = 0;
		sound_play(sound_get("door_close"), false, noone, 1)
		sound_play(sound_get("door_close"), false, noone, 1)
    }
}

// // // // STATE 1 - IDLE
if (state == 1){
	state_end = 30;
    image_index = 3 + (door_kind*4);
	knock_image_index = -1;
	
	is_hittable = true;
	
	//print(string(state_timer))
	
	if (state_timer == state_end){
        state_timer = 0;
		image_index = 3 + (door_kind*4);
		idle_cycle++;
		if (idle_cycle>=idle_cycle_max){//change the shadow tier upgrade time here.//i mean in the init.gml
			shadowtier++;
			sound_play(sound_get("door_tierup"), false, noone, 1)
			if (shadowtier>=4){
				var head = create_hitbox( AT_DSPECIAL, 1, x, y-36 );
				head.head_kind = random_func( 3, 13, true ); //0-12
				spawn_hit_fx( x, y-36, 67 );
				sound_play(sound_get("door_summon"), false, noone, 1)
				sound_play(sound_get("door_summon"), false, noone, 1)
				shadowtier=0;
			}
			idle_cycle = 0;
		}
    }
	/*if (player_id.shield_down){//knock test
		state_timer = 0;
		state = 3;
	}*/
}

// // // // STATE 2 - DOOR BREAK
if (state == 2){
	//state_end = 30;
	//print(string(state_end))
	sprite_index = sprite_get("door_fade");
	image_index = 0;
	knock_image_index = -1;
	if (state_timer == 1){
		if (!replaced){
			player_id.move_cooldown[AT_DSPECIAL] = 260;
		}
		if (knocked){
			player_id.move_cooldown[AT_DSPECIAL] = 300;//jirachi cooldown was like 600
		}
	}
	is_hittable = false;
	
	if (state_timer >= state_end){
		sound_play(asset_get("sfx_boss_vortex_end"))
		spawn_hit_fx( x, y, player_id.door_fade )
		if (player_id.door_storage==id){
			player_id.door_storage = -4;
		}
		instance_destroy();
		exit;
	}
}


//the code here could have been optimized with a bunch of variables but im lazy

//has those in init.gml:
//knock_phase = 0; //phases of each knock
//knock_level = 0; //strength of knock
// // // // STATE 3 - KNOCK 1
if (state == 3){
	knocked = true;
    image_index = 3 + (door_kind*4); //door
	is_hittable = true;
	if (knock_phase < 2){//if knock vfx
		state_end = 15;//knock time
		knock_image_index = ((knock_level*4) + state_timer * 3 / state_end); //atk
		if (state_timer == 1){
			sound_play(sound_get("door_close"), false, noone, 0.7, 1.5)
			if (knock_level==1){sound_play(sound_get("door_close"), false, noone, 0.5, 1.5)}
			if (knock_level==2){sound_play(sound_get("door_close"), false, noone, 0.8, 0.3)}
			if (knock_level==2){sound_play(sound_get("door_close"), false, noone, 0.8, 0.3)}
			if (knock_level==2){shake_camera( 2, 2 );}
		}
	};
	if (knock_phase == 2){//if wait
		if (knock_level < 2){state_end = 70;}//wait time
		if (knock_level == 2){state_end = 10;}//wait time
		knock_image_index = (knock_level*4)+3; //atk
	};
	
    if (state_timer == state_end){
        state_timer = 0;
		knock_phase++;
		if (knock_phase==3){knock_phase = 0; knock_level++;};
		if (knock_level==3){state = 4; knock_phase = 0; knock_level = 0;}
    }
}

if (state >= 4){
	player_id.move_cooldown[AT_DSPECIAL] = 3;
}

// // // // STATE 4 - KNOCK 2
if (state == 4){
	state_end = 16; //HELLO THIS IS THE STARTUP FOR THE DOOR ATTACK
    image_index = (door_kind*4) + (3 - (0 + state_timer * 3 / state_end)); //door
	knock_image_index = (12 + state_timer * 3 / state_end); //atk
	is_hittable = false;
	
    if (state_timer == 1){
		sound_play(sound_get("door_close"), false, noone, 0.7, 1.8)
		sound_play(asset_get("sfx_forsburn_consume"), false, noone, 0.6, 0.8)
		sound_play(asset_get("sfx_forsburn_consume"), false, noone, 0.4, 0.6)
	}
	
    if (state_timer == state_end){
        state = 5;
        state_timer = 0;
    }
}

// // // // STATE 5 - KNOCK 3
if (state == 5){
	state_end = 24; //HELLO THIS IS THE ACTIVE FRAME
    image_index = door_kind*4; //door
	knock_image_index = (15 + state_timer * 8 / state_end); //atk
	is_hittable = false;
	
    if ( (state_timer)%(state_end/6)==0 ){
		sound_play(asset_get("sfx_waveland_fors"), false, noone, 1, 0.8);
		sound_play(asset_get("sfx_birdflap"), false, noone, 1, 1);
		create_hitbox( AT_DSPECIAL, 2, x, y-36 );
		shake_camera( 4, 2 );
		//print("its runnin alright")
		//a
	}
	
    if (state_timer == state_end){
        state = 6;
        state_timer = 0;
		//state 6 frame 0 stuff
		sound_play(asset_get("sfx_swipe_heavy2"));
		sound_play(asset_get("sfx_ice_back_air"), false, noone, 1, 1.3);
		sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.5, 0.8);
		sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.5, 0.7);
		create_hitbox( AT_DSPECIAL, 3, x, y-36 );
		shake_camera( 6, 6 );
    }
}

// // // // STATE 6 - KNOCK 4
if (state == 6){
	state_end = 12;
    image_index = door_kind*4; //door
	knock_image_index = (23 + state_timer * 3 / state_end); //atk
	is_hittable = false;
	
    if (state_timer == 1){
		//moved to above
	}
    if (state_timer == state_end){
        state = 7;
        state_timer = 0;
    }
}

// // // // STATE 7 - KNOCK 5 (end)
if (state == 7){
	state_end = 42; //HELLO THIS IS THE MOST OF THE ENDLAG
    image_index = (0 + state_timer * 3 / state_end) + (door_kind*4); //door
	knock_image_index = (26 + state_timer * 2 / state_end); //atk
	is_hittable = false;
	
    if (state_timer == state_end){
        state = 2;
        state_timer = 0;
		state_end = 2;
		knock_image_index = -1;
    }
}















