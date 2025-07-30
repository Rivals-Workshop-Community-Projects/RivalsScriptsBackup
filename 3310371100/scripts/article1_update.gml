//USHR ARTICLE1 UPDATE

if (!init){
	sound_play(asset_get("sfx_absa_cloud_place"))
	sound_play(asset_get("sfx_orca_snow_mouth"), false, noone, 0.6, 1.3)
	init = true;
}
player_id.raincloud_present = true;

//testy
if (applied_player_id != -4){
	x = applied_player_id.x+applied_player_id.hsp;
	y = applied_player_id.y+applied_player_id.vsp;
}

//hsp = hsp-(cloud_air_friction*sign(hsp));
//vsp = vsp-(cloud_air_friction*sign(vsp));
hsp = hsp*cloud_air_friction_mult;
vsp = vsp*cloud_air_friction_mult;
if (ice_timer==0){
vsp += -0.035;
}

//distance calculator
var max_rain_dist = room_height;

rain_bottom_dist = clamp(y+max_rain_dist, 0, player_id.cloud_y_limit)-y;
//print(string(rain_bottom_dist))

if (collision_line(x, y, x, y+room_height, asset_get("par_block"), false, false) == noone){
	rain_bottom_dist = max_rain_dist
	//print("offstage")
}



//var testa = ushr_rainclouded_timer / ushr_rainclouded_timer_max
var testa = ease_cubeOut( 0, 100, round(ushr_rainclouded_timer), ushr_rainclouded_timer_max )/100;
//print("test test = "+string(testa))
//var tmp_width = 100*testa;
var tmp_width = ease_cubeOut( 0, 100, round(ushr_rainclouded_timer), ushr_rainclouded_timer_max );
//var appl_player_num = applied_player_id.player;
//print("playernumber = "+string(appl_player_num));
if (is_iced == false){
	if (true/*rain_bottom_dist>3*/){
	with(pHitBox){
		if (variable_instance_exists(player_id, "nurburgring_24h_endurance")){//unique identifier for usher ~~hitboxes~~
			//print("nurburgring...detected : attack="+string(attack))
			if ( attack==AT_NSPECIAL || attack==AT_FSTRONG || (attack==AT_FSPECIAL && hbox_num==3) || (attack==AT_FSPECIAL_2 && hbox_num==3 && other.ushr_rainclouded_timer < other.ushr_rainclouded_timer_max-20) ){
				//print("hitbox...detected")
				//if (can_hit[appl_player_num] == true){
					//print("can_hit...detected")
					if (player_id.move_is_fresh == true){
						if (collision_rectangle(other.x-round(tmp_width/2), other.y, other.x+round(tmp_width/2), other.y+other.rain_bottom_dist, id, true, false)){//this is the collision box
							//print("collision...detected")
							if (reflected==false){
							other.is_iced = true;
							other.ice_attacktrack = attack;
							//can_hit[appl_player_num] = false;
							other.stored_spr_dir = spr_dir;
							other.stored_spin_state = player_id.fsp_loop_count_storage;
							spawn_hit_fx( x, y, hit_effect ) 
							other.ice_hbox_owner_id = player_id; //hopefully this is usher
							destroyed = true;
							}
						}
					}
				//}
			}
			if ( attack==AT_DSPECIAL_2 ){//bouncy
				//if (player_id.move_is_fresh == true){
					/*if (collision_rectangle(other.x, other.y, other.x, other.y+other.rain_bottom_dist, id, true, false)){//DOWNPOUR
						if (player_id.dsp_downpour == false){
							if (player_id.window==2||player_id.window==3){
								with(player_id){//destroy_hitboxes()
									dsp_downpour = true;
									if (window==2){
										window_timer = 0;
									}
									window = 7;
									destroy_hitboxes();
									vsp = dsp_downpour_vsp;
									hsp = dsp_downpour_hsp*spr_dir;
									sound_play(sound_get("fastantici"),false,noone,1,1)
									sound_play(sound_get("nsp_t"),false,noone,1,1.3)
									sound_play(asset_get("sfx_waterhit_medium"),false,noone,0.8,1.2);
									//spawn_hit_fx( x, y, hit_effect );
									white_flash_timer = 8;
									create_hitbox( AT_DSPECIAL_2, 3, x, y );
								}
							}
						}
					}else{*/
						//if (player_id.dsp_downpour == false){
						if (collision_circle(other.x, other.y-30, 30, id, true, false)){//this is the collision box
							//print("collision...detected")
							if (other.vsp<=1){
							spawn_hit_fx( x, y, hit_effect );
							//player_id.move_is_fresh = false;
							player_id.has_hit = true;
							other.vsp = 5;
							sound_play(asset_get("sfx_waterhit_medium"),false,noone,0.8,1);
							player_id.vsp = -16;
							sound_play(sound_get("bounce"),false,noone,1,1.2)
							sound_play(sound_get("bounce"),false,noone,1,1)
							sound_play(sound_get("bounce3"),false,noone,0.7,1.2)
							sound_play(sound_get("bounce2"),false,noone,0.9,1.4)
							}
						}
						//}
					//}
				//}
			}//hbcheck
		}
	}
	}
}

if (is_iced == true){//iced timer is just mostly for visuals, also acts as cooldown though
	if (ice_timer==0){//put hitbox here n whatever timer 0 stuff is
		//print(string(ice_hbox_owner_id))
		with(ice_hbox_owner_id){
			//print("am i oplayer?")
			if (other.ice_attacktrack==AT_FSTRONG || (other.ice_attacktrack==AT_FSPECIAL_2 && other.stored_spin_state==8)){
				//print("it goes")
				var hboxthing = create_hitbox( AT_DSPECIAL, 4, other.x, other.y+round(other.rain_bottom_dist/2) )
			}else{//if nspecial and fspecial2
				var hboxthing = create_hitbox( AT_DSPECIAL, 3, other.x, other.y+round(other.rain_bottom_dist/2) )
			}
		}
		hboxthing.image_xscale = (tmp_width/200);
		hboxthing.image_yscale = (rain_bottom_dist/200);
		//hboxthing.image_xscale = (tmp_width)/2;
		//hboxthing.image_yscale = (rain_bottom_dist/200)/2;
		hboxthing.spr_dir = stored_spr_dir;
		hboxthing.ice_checkcheck = ice_attacktrack;
			
		sound_play(asset_get("sfx_ice_shatter"))
		sound_play(asset_get("sfx_ice_on_player"))
		//applied_player_id.ushr_rainclouded_timer = clamp(applied_player_id.ushr_rainclouded_timer + (applied_player_id.ushr_rainclouded_timer/3), 0, applied_player_id.ushr_rainclouded_timer_max);//what a mouthful
		
		var reduction_amt = ushr_rainclouded_timer_max/4 //55//3
		ushr_rainclouded_timer_queue = clamp(ushr_rainclouded_timer - reduction_amt, 0, ushr_rainclouded_timer_max);
		//ushr_rainclouded_timer = clamp(ushr_rainclouded_timer + (reduction_amt*ice_attacknum) - 10, 0, ushr_rainclouded_timer_max);
		ice_timer++;
		ice_attacknum--;
	}
	//if (applied_player_id.hitpause == false){
		ice_timer++;
	//}
	if (ice_timer >= ice_timer_max/2){
		ushr_rainclouded_timer = ease_linear( round(ushr_rainclouded_timer), round(ushr_rainclouded_timer_queue), ice_timer-(ice_timer_max/2), ice_timer_max/2 );
	}
	if (ice_timer_max < ice_timer){
		is_iced = false;
		ice_timer = 0;
	}
}

if (player_id.signalling_all_my_besties_i_have_been_PARRIED == true){
	player_id.thanks_i_received_your_message_you_go_and_reset_now = true;
/*if (applied_player_id != -4){
	with (applied_player_id){ outline_color = [ 0, 0, 0 ]; init_shader(); };
	applied_player_id.ushr_rainclouded = false;
}
	instance_destroy();
	exit;*/
	
	ushr_rainclouded = false;
}

if (player_id.signalling_all_my_besties_i_have_been_HIT_by_this_player){
	player_id.thanks_i_received_your_message_you_go_and_reset_now = true;
	//ushr_rainclouded_timer -= round(ushr_rainclouded_timer_max/3);
//if (applied_player_id != -4){
	//applied_player_id.ushr_rainclouded_timer -= round(applied_player_id.ushr_rainclouded_timer_max/3);
	//applied_player_id.ushr_rainclouded_timer = 0;
//}
	
}

if (ushr_rainclouded_timer<=0){
	ushr_rainclouded = false;
}

if (ushr_rainclouded == false){
	sound_play(asset_get("sfx_orca_snow_mouth"), false, noone, 0.4, 1.7)
					player_id.raincloud_present = false;
	instance_destroy();
	exit;
}

if (ice_timer==0){
			ushr_rainclouded_timer--;
}


//uh...idk