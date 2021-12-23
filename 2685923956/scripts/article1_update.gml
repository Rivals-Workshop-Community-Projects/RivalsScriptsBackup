//article1_update

//Hello This Is Doom Desire

if (init == 0){
    init = 1;
	
}



state_timer++;

// // // // STATE 0 - WAIT
if (state == 0){
	if (idle_cycle==0){state_end = 160;/*320*/}else if(idle_cycle==3||idle_cycle==4){state_end = 30;}else{state_end = 60;};
	
	if (idle_cycle==3||idle_cycle==4){
		var fastantici = sound_get("fastantici")
		var dd_shine = sound_get("doomdesire_shine")
		with(asset_get("oPlayer")){
			if (id != other.player_id){
				//if (place_meeting(x, y, other.id)){
				if ( point_distance(other.x, other.y-118, x, y-round(char_height/2)) <= 85 ){//80
					if (state == PS_HITSTUN){ //ONLY WHEN HITSTUN
						other.state = 1;
						other.state_timer = 0;
						other.image_alpha = 1;
						sound_play(fastantici)
						sound_play(dd_shine)
						other.quicker = true;
					}
				}
			}
		}
	}
    if (state_timer == state_end){
        state_timer = 0;
		idle_cycle++;
		if (idle_cycle == 5){
			sound_play(sound_get("doomdesire_shine"))
			image_alpha = 1;
			state = 1;
		}else{
			if (idle_cycle==3||idle_cycle==4){
				sound_play(sound_get("doomdesire_count2"))
				spawn_hit_fx( x-4, y-118, player_id.eye3_hfx )
			}else{
				sound_play(sound_get("doomdesire_count"))
				spawn_hit_fx( x-4, y-118, player_id.eye2_hfx )
			}
			//spawn_hit_fx( x-4, y-50, player_id.eye2_hfx )
			//spawn_hit_fx( x-4, y-118, player_id.eye2_hfx )
		}
    }
}

var firsthits_vdisp = 124//118


// // // // STATE 1 - START
if (state == 1){
	if (!quicker){state_end = 16;}else{state_end = 10;}
    image_index = 0 + state_timer * 2 / state_end;
	
    if (state_timer == state_end){
        state = 2;
        state_timer = 0;
		sound_play(sound_get("doomdesire_quickboom"))
		create_hitbox( AT_DSPECIAL, 1, x, y-firsthits_vdisp )
		shake_camera( 6, 5 );
    }
}


// // // // STATE 2 - ATTACK1
if (state == 2){
	state_end = 14;//10
    image_index = 2 + state_timer * 2 / state_end;
	
    //if (state_timer == round(state_end/2)){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, 1, x, y-118 ); shake_camera( 6, 5 );}
    if (state_timer == round(state_end/3)){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, 1, x, y-firsthits_vdisp ); shake_camera( 6, 5 );}
    if (state_timer == round(state_end/3)*2){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, 1, x, y-firsthits_vdisp ); shake_camera( 6, 5 );}
    /*if (state_timer == round(state_end/4)){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, 1, x, y-118 ); shake_camera( 6, 5 );}
    if (state_timer == round(state_end/4)*2){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, 1, x, y-118 ); shake_camera( 6, 5 );}
    if (state_timer == round(state_end/4)*3){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, 1, x, y-118 ); shake_camera( 6, 5 );}*/
		
    if (state_timer == state_end){
        state = 3;
        state_timer = 0;
		sound_play(sound_get("doomdesire_quickboom"))
		create_hitbox( AT_DSPECIAL, 1, x, y-firsthits_vdisp )
		shake_camera( 6, 5 );
    }
}

// // // // STATE 3 - ATTACK2
if (state == 3){
	state_end = 14;//10
    image_index = 4 + state_timer * 2 / state_end;
	
    //if (state_timer == round(state_end/2)){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, 1, x, y-118 ); shake_camera( 6, 5 );}
    if (state_timer == round(state_end/3)){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, 1, x, y-firsthits_vdisp ); shake_camera( 6, 5 );}
    if (state_timer == round(state_end/3)*2){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, 1, x, y-firsthits_vdisp ); shake_camera( 6, 5 );}
	
    if (state_timer == state_end){
        state = 4;
        state_timer = 0;
		sound_play(sound_get("doomdesire_boom"))
		create_hitbox( AT_DSPECIAL, 2, x, y-144 )
		shake_camera( 8, 9 );
    }
}

// // // // STATE 4 - ATTACK3 (END)
if (state == 4){
	state_end = 10;
    image_index = 6 + state_timer * 2 / state_end;
	
    if (state_timer == state_end){
        state = 5;
        state_timer = 0;
    }
}

// // // // STATE 5 - END
if (state == 5){
	state_end = 30;
    image_index = 8 + state_timer * 2 / state_end;
	
    if (state_timer == state_end){
		player_id.doomdesire_storage = -4
        instance_destroy();
        exit;
    }
}









