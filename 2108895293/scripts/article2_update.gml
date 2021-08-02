//article2_update - uair bomb

//guadua bamboo code -> AR cloud code -> feri plant code -> ao moon code -> lumina bomb (how)

if (init == 0){
    init = 1;
	
	/*
    with (asset_get("obj_article2")){
        if (id != other.id && player_id == other.player_id){
			if (state < 2){
				state = 2;
				state_timer = 0;
				state_end = 6;
			}
        }
    }
	*/
}



state_timer++;

// // // // STATE 0 - START
if (state == 0){
	state_end = 7;//9//5
    image_index = 0;
	vsp = -1;
	hsp = hsp - (0.05*sign(hsp));
	
    if (state_timer == state_end){
        state = 1;
        state_timer = 0;
    }
}

// // // // STATE 1 - IDLE
if (state == 1){
	state_end = 7;
	loop_end = 3;
    image_index = 1 + state_timer * 2 / state_end;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	vsp = -1.5*(loopcount+1+(state_timer/state_end));//-1.2*
	hsp = hsp - (0.075*sign(hsp));
	
		if (state_timer % 4 == 0){
			var dsp_particle_rand = random_func( 0, 2, true )
			if (dsp_particle_rand == 0){
			spawn_hit_fx( x-6+random_func( 1, 12, true ), y+16+random_func( 4, 12, true ), player_id.particle1 );
			}
			if (dsp_particle_rand == 1){
			spawn_hit_fx( x-6+random_func( 2, 12, true ), y+16+random_func( 5, 12, true ), player_id.particle2 );
			}
			if (dsp_particle_rand == 2){
			spawn_hit_fx( x-6+random_func( 3, 12, true ), y+16+random_func( 6, 12, true ), player_id.particle3 );
			}
		}
	
	/*
	if (place_meeting(x,y, asset_get("oPlayer"))){
		var tmp_hb_id = instance_place(x,y, asset_get("pHitBox"))
		var tmp_id = tmp_hb_id.player_id;
		if (tmp_id == player_id){
			state = 2;
			state_timer = 0;
		}
	}
	*/
	//if (loopcount>0){
	//if (loopcount!=0&&state_timer>){
		var detectplayer = instance_place(x, y, asset_get("oPlayer"))
	if ( (detectplayer != player_id) && (detectplayer != -4) && (detectplayer.invincible == false && detectplayer.state != PS_RESPAWN) ){
		state = 2;
		state_timer = 0;
	}
	//}
	//}
	
	
    if (state_timer == state_end){
		if (loopcount = loop_end){
			state = 2;
			state_timer = 0;
		}else{
			loopcount++;
			state_timer = 0;
			image_index = 1;
		}
    }
}

// // // // STATE 2 - ANTICIPATION
if (state == 2){
	state_end = 4;//8
    image_index = 3;
	vsp = 0;
	hsp = 0;
	/*
	if (state_timer==1){
		sound_play(sound_get("prem"));
		with(player_id){
			spawn_hit_fx( other.tmp_x_str, other.tmp_y_str, 66 )
		}
	}
	
	alp2 = ease_cubeIn( 4, 9, state_timer, state_end );
		//print_debug( "ALP2 "+string(alp2) )
	
	
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		state = 2;
		state_timer = 0;
	}
	*/
	
    if (state_timer == state_end){
		sound_play(sound_get("lightshatter_2_quiet"));
		create_hitbox( AT_UAIR, 2, x, y );
        state = 3;
        state_timer = 0;
    }
}

// // // // STATE 3 - EXPLOSION
if (state == 3){
	state_end = 10;//28
    image_index = 4 + state_timer * 2 / state_end;
	vsp = 0;
	hsp = 0;
	
    if (state_timer == state_end){
        state = 4;
		state_timer = 0;
    }
}

// // // // STATE 4 - HOLD
if (state == 4){
	state_end = 20;//28
    image_index = 6 + state_timer * 2 / state_end;
	vsp = 0;
	hsp = 0;
	
    if (state_timer == state_end){
        state = 5;
		state_timer = 0;
    }
}

// // // // STATE 5 - END
if (state == 5){
	state_end = 18;//28
    image_index = 8;
	vsp = 0;
	hsp = 0;
	
    if (state_timer == state_end){
        instance_destroy();
        exit;
    }
}
















