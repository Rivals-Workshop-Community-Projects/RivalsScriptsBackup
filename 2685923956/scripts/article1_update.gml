//article1_update

//Hello This Is Doom Desire

if (init == 0){
    init = 1;
	
}



state_timer++;

// // // // STATE 0 - WAIT
if (state == 0){
	if (idle_cycle==0){state_end = 160;/*320*/
	}else if(idle_cycle==9||idle_cycle==10){state_end = 30;
	}else if(idle_cycle>4){state_end = 60;
	}else{state_end = 90};
	
	//if (idle_cycle==9||idle_cycle==10){
	if (idle_cycle>0){//not 0
		var fastantici = sound_get("fastantici")
		var dd_shine = sound_get("doomdesire_shine")
		var sfxshatter = sound_get("shatterlight")
		var sfxboom = sound_get("shinyboom")
		with(asset_get("oPlayer")){
			if (id != other.player_id){
				//if (place_meeting(x, y, other.id)){
				if ( point_distance(other.x, other.y-other.eye_y_offset, x, y-round(char_height/2)) <= other.eye_y_radius ){//80
					if (state == PS_HITSTUN){ //ONLY WHEN HITSTUN
						if (!hitpause){
						other.state = 1;
						other.state_timer = 0;
						other.image_alpha = 1;
						sound_play(fastantici)
						sound_play(dd_shine)
						other.quicker = true;
						}
					}
				}
			}else{//if it IS me
				
				if ( point_distance(other.x, other.y-other.eye_y_offset, x, y-round(char_height/2)) <= other.eye_y_radius ){//80
					if (state == PS_HITSTUN){ //ONLY WHEN HITSTUN
					//break it
						if (!hitpause){
						//spawn_hit_fx( x+4, y-eye_y_offset, player_id.eye3_hfx ) //use player hfx like this
						spawn_hit_fx( other.x+4, other.y-other.eye_y_offset, 314 )//vfx
						sound_play(sfxshatter,false,noone,1,0.8)//sfx
						sound_play(sfxboom,false,noone,0.5,0.6)//sfx
						sound_play(asset_get("sfx_icehit_medium2"))//sfx
						hitpause = true;
						hitstop = 40;
						hitstop_full = 40;
						other.state = 5
						other.state_timer = 0
						other.state_end = 1
						move_cooldown[AT_DSPECIAL] = doomdesire_cooldown_broken_amount //change from init.gml
						shake_camera( 8, 6 );
						}
					}
				}
			}
		}
		if (get_gameplay_time()%20==0){//sparkly vfxthing
			//angle maker
			var rng_circle = random_func( 6, 360, true );
			var distance = eye_y_radius;
			var angle = round(rng_circle) / 180 * -3.14; //45)*45)/180
				var off_x = (distance * cos(angle));
				var off_y = (distance * sin(angle));
			
			//spawn_hit_fx( x, y-eye_y_offset, player_id.sparkles1 );
			
			var rng_a = random_func( 1, 3, true );
			if (rng_a == 0){
		spawn_hit_fx( x+off_x, (y-eye_y_offset)+off_y, player_id.sparkles1 );
			}	if (rng_a == 1){
		spawn_hit_fx( x+off_x, (y-eye_y_offset)+off_y, player_id.sparkles3 );
			}	if (rng_a == 2){
		spawn_hit_fx( x+off_x, (y-eye_y_offset)+off_y, player_id.sparkles2 );
			}//i was too lazy to look up the variable name thing function
		}//sparkly vfxthing
	}
    if (state_timer == state_end){
        state_timer = 0;
		idle_cycle++;
		if (idle_cycle == 11){
			if (quicker){ sound_play(sound_get("doomdesire_shine"))
				}else{ sound_play(sound_get("doomdesire_shine"),false,noone,0.7,0.8) };
			image_alpha = 1;
			state = 1;
		}else{
			if (idle_cycle==9||idle_cycle==10){
				sound_play(sound_get("doomdesire_count2"))
				var vfxthing = spawn_hit_fx( x+4, y-eye_y_offset, player_id.eye3_hfx )
					vfxthing.spr_dir = 1;
			}else{
				if (idle_cycle>4){
					sound_play(sound_get("doomdesire_count"))
				}else{
					sound_play(sound_get("doomdesire_countpre"),false,noone,0.5,1.2)
				}
				var vfxthing = spawn_hit_fx( x+4, y-eye_y_offset, player_id.eye2_hfx )
					vfxthing.spr_dir = 1;
			}
			//spawn_hit_fx( x-4, y-50, player_id.eye2_hfx )
			//spawn_hit_fx( x-4, y-eye_y_offset, player_id.eye2_hfx )
		}
    }
}

var firsthits_vdisp = 168//124//118


// // // // STATE 1 - START
if (state == 1){
	if (quicker){player_id.move_cooldown[AT_DSPECIAL] = player_id.doomdesire_cooldown_hit_into_amount}//change from init.gml
	if (!quicker){state_end = 16;}else{state_end = 10;}
	if (!quicker){sprite_index = sprite_get("dspecial_doomdesire_smol");}else{sprite_index = sprite_get("dspecial_doomdesire");}
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
	
	//if quicker==true it means that it's the hitstun detected version
	if (quicker){ var hbox_id_yeah = 1
		}else{ var hbox_id_yeah = 3 };
	
    //if (state_timer == round(state_end/2)){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, 1, x, y-118 ); shake_camera( 6, 5 );}
    if (state_timer == round(state_end/3)){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, hbox_id_yeah, x, y-firsthits_vdisp ); shake_camera( 6, 5 );}
    if (state_timer == round(state_end/3)*2){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, hbox_id_yeah, x, y-firsthits_vdisp ); shake_camera( 6, 5 );}
    /*if (state_timer == round(state_end/4)){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, 1, x, y-118 ); shake_camera( 6, 5 );}
    if (state_timer == round(state_end/4)*2){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, 1, x, y-118 ); shake_camera( 6, 5 );}
    if (state_timer == round(state_end/4)*3){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, 1, x, y-118 ); shake_camera( 6, 5 );}*/
		
    if (state_timer == state_end){
        state = 3;
        state_timer = 0;
		sound_play(sound_get("doomdesire_quickboom"))
		create_hitbox( AT_DSPECIAL, hbox_id_yeah, x, y-firsthits_vdisp )
		shake_camera( 6, 5 );
    }
}

// // // // STATE 3 - ATTACK2
if (state == 3){
	state_end = 14;//10
    image_index = 4 + state_timer * 2 / state_end;
	
	//if quicker==true it means that it's the hitstun detected version
	if (quicker){ var hbox_id_yeah = 1
		}else{ var hbox_id_yeah = 3 };
	
    //if (state_timer == round(state_end/2)){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, 1, x, y-118 ); shake_camera( 6, 5 );}
    if (state_timer == round(state_end/3)){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, hbox_id_yeah, x, y-firsthits_vdisp ); shake_camera( 6, 5 );}
    if (state_timer == round(state_end/3)*2){sound_play(sound_get("doomdesire_quickboom")); create_hitbox( AT_DSPECIAL, hbox_id_yeah, x, y-firsthits_vdisp ); shake_camera( 6, 5 );}
	
    if (state_timer == state_end){
		//if quicker==true it means that it's the hitstun detected version
		if (quicker){ var hbox_id_yeah = 2
			}else{ var hbox_id_yeah = 4 };
		
        state = 4;
        state_timer = 0;
		//if quicker==true it means that it's the hitstun detected version
		if (quicker){ sound_play(sound_get("doomdesire_boom"))
			}else{ sound_play(sound_get("doomdesire_boom"),false,noone,0.8,1.5) };
		
		create_hitbox( AT_DSPECIAL, hbox_id_yeah, x, y-144 )
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









