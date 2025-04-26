// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


//-----------------------------------------------------------------------------------------------------
// -- THE WEIRD THINGS --
//-----------------------------------------------------------------------------------------------------
if (attack==AT_JAB||attack==AT_DSPECIAL){
	if (attack==AT_JAB){ jab_timer++; };
	if (attack==AT_DSPECIAL){ dsp_timer++; };
	if (down_down){
		if (attack==AT_JAB){
		//print("yeah?")
		fall_through = true;
		y++;
		}
	}
	switch (window){
		//behavior
		case 1://idle
			if (free){
				window=5; window_timer=0; state_timer=0;
			}
		break;
		case 2://walk
			if (!left_down&&!right_down){
				window=1; window_timer=0; state_timer=0;
				//print("---noneHAPPENING")
			}
			if (window==2){
				if (state_timer%8==0){
					spawn_base_dust(x, y, "walk", spr_dir)
				}
			}
		case 3://walkturn
			hsp = clamp(hsp+((walk_accel+ground_friction)*spr_dir), walk_speed*-1, walk_speed)
			if (free){
				window=5; window_timer=0; state_timer=0;
			}
		break;
		case 4://jumpstart
			if (window_timer==jump_start_time){
				if (jump_down){
					vsp = jump_speed*-1;
				}else{
					vsp = short_hop_speed*-1;
				}
				window=5; window_timer=0; state_timer=0;
				sound_play(jump_sound);
				spawn_base_dust(x, y, "jump", spr_dir)
			}
		break;
		case 5://jump
			if (!free){
				window=6; window_timer=0; state_timer=0;
				spawn_base_dust(x, y, "land", spr_dir);
				sound_play(land_sound);
			}
		break;
		case 6://land
		break;
		default: break;
	}
	switch (window){
		//input
		//walker
		case 1://idle
		case 2://walk
			//turning
			if (left_down){
				if (spr_dir==-1&&window==1){
					window=2; window_timer=0; state_timer=0;
				}
				if (spr_dir==-1&&window==2){
				}else{
					if (spr_dir==1){spr_dir=-1;
					window=3; window_timer=0; state_timer=0;
					}
				}
			}else if (right_down){
				//print("RIGHT_DOWN")
				if (spr_dir==1&&window==1){
					window=2; window_timer=0; state_timer=0;
				//print("SHOULD BE GOING IDK")
				}
				if (spr_dir==1&&window==2){
				}else{
					if (spr_dir==-1){spr_dir=1;
					window=3; window_timer=0; state_timer=0;
					}
				}
			}
			if (jump_pressed){
				if (attack==AT_JAB){
					window=4; window_timer=0; state_timer=0;
				}
			}
		break;
		default: break;
	}
	switch (window){
		//ender
		case 1://idle
		case 2://walk
			if (!attack_down){
				if (attack==AT_JAB && jab_timer>jab_timer_min){
					window=7; window_timer=0; state_timer=0;
				}
			}
			if (!special_down){
				if (attack==AT_DSPECIAL && dsp_timer>dsp_timer_min){
					window=7; window_timer=0; state_timer=0;
				}
			}
			if (attack==AT_DSPECIAL && dsp_timer>=dsp_timer_max){
				window=7; window_timer=0; state_timer=0;
			}
		break;
		
		default: break;
	}//switch
		if (attack==AT_JAB && jab_timer>jab_timer_min){
			can_shield = true;
			can_wall_jump = true;
		}
	if (window>=7){
		if (attack==AT_JAB){ jab_end_timer++; };
		if (attack==AT_DSPECIAL){ dsp_end_timer++; };
	}
	
}
if (attack==AT_DSPECIAL){
	if (window<7){
		var dsp_dist_increase = 5;//2 //2.5 //4 //4.5
		if (position_meeting(x+dsp_distance, y+1, asset_get("par_block"))||position_meeting(x+dsp_distance, y+1, asset_get("par_jumpthrough"))){
			dsp_distance+=dsp_dist_increase*dsp_orig_dir;
			//print(string(dsp_distance));
			//print(string(position_meeting(x+dsp_distance, y+1, asset_get("par_block"))));
		}else{
			dsp_distance-=dsp_dist_increase*dsp_orig_dir;
		}
		if (dsp_timer>dsp_timer_min){
		var shadow_stood_id = -4;
		with(oPlayer){
			if (id != other.id){
					//print("thing: "+string(x-other.x))
				//if (x-other.x < other.dsp_distance){
				/*if (point_distance(x, 0, other.x, 0) < other.dsp_distance){
					if (sign(other.dsp_distance)==sign(x-other.x)){
						if (y==other.y){
							shadow_stood_id = id;
							print("yea its happenin")
						}
					}
				}*/
				if ( get_player_team( other.player ) != get_player_team( player ) ){
				if (collision_line(other.x, other.y-2, other.x+other.dsp_distance, other.y-2, id, false, false)){
					if(!free){
						if (invincible == false && attack_invince == false && initial_invince == false){
							if (hitpause == false){
								shadow_stood_id = id;
								//print("yea its happenin")
							}
						}
					}
				}
				}
			}
		}
		
		if (shadow_stood_id!=-4){
			summon_afterimage(0, 0);
			spr_dir = shadow_stood_id.spr_dir;
			
			if (position_meeting(shadow_stood_id.x - (30*shadow_stood_id.spr_dir), y+1, asset_get("par_block"))||position_meeting(shadow_stood_id.x - (30*shadow_stood_id.spr_dir), y+1, asset_get("par_jumpthrough"))){
				x = shadow_stood_id.x - (30*shadow_stood_id.spr_dir);
			}else{
				x = shadow_stood_id.x
			}
			y = shadow_stood_id.y;
			invincible = true;
			invincible_time = 1;
			
			if (get_player_color( player ) == 21){//ender
				sound_play(sound_get("z_tele_ender"),false,noone,0.8);
				sound_play(sound_get("z_tele_ender"),false,noone,0.8);
				sound_play(sound_get("piano"),false,noone,0.75);
			}else{
				sound_play(sound_get("piano"));
				sound_play(sound_get("cut_5"));
			}
			if (shadow_stood_id.slender_haunt == -4){shadow_stood_id.slender_buildup+=20;}
			shadow_stood_id.was_parried = true;
			shadow_stood_id.state = PS_PRATLAND;
			shadow_stood_id.state_timer = 0;
			shadow_stood_id.hsp = 0;
			shadow_stood_id.vsp = 0;
			/*shadow_stood_id.old_hsp = shadow_stood_id.hsp;
			shadow_stood_id.old_vsp = shadow_stood_id.vsp;
			shadow_stood_id.hitpause = true;
			shadow_stood_id.hitstop = 30;
			shadow_stood_id.hitstop_full = 30;*/
			with(shadow_stood_id){
				attack_end()
				destroy_hitboxes()
			}
			
			dsp_real_cd = 120;
			state = PS_SPAWN;
			state_timer = 100;
			attack_end();
		}
		}//dsp_timer
		
	}
}



//-----------------------------------------------------------------------------------------------------
// -- NORMALS --
//-----------------------------------------------------------------------------------------------------
/*
//SCRAPPED POGO BADLY IMPLEMENTED
if (attack==AT_DAIR){
	
	var tmp_x_a = get_hitbox_value(AT_DAIR, 1, HG_HITBOX_X)*spr_dir;
	var tmp_y_a = get_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y);
	var tmp_x_b = get_hitbox_value(AT_DAIR, 2, HG_HITBOX_X)*spr_dir;
	var tmp_y_b = get_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y);
	if (window==3){
		if (!hitpause){
		if (collision_line(x+tmp_x_a, y+tmp_y_a, x+tmp_x_b, y+tmp_y_b, asset_get("par_block"), false, false)){
			print("i sense")
			vsp = -13;
		}
		}
	}
}
*/





//-----------------------------------------------------------------------------------------------------
// -- STRONGS --
//-----------------------------------------------------------------------------------------------------
if (attack==AT_FSTRONG){
	if (instance_exists(grabbed_player_obj)) {
		
		
		//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
		if (window >= 13) { grabbed_player_obj = noone; }
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
			else {
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			grabbed_player_obj.force_depth = 1;
			grabbed_player_obj.depth = depth-1;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (!fst_hit) {
				if (!hitpause){
					grabbed_player_relative_x = grabbed_player_obj.x - x;
					grabbed_player_relative_y = grabbed_player_obj.y - y;
					window = 7;
					window_timer = 0;
					fst_hit = true;
				}
			}
			 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 82 * spr_dir;
				var pull_to_y = -84+round(grabbed_player_obj.char_height);
			//on the first window, pull the opponent into the grab.
			if (window == 7) { 
				
				if (!hitpause){
				//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
				}
			}/*
			if (window == 6) { 
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + pull_to_x
				grabbed_player_obj.y = y + pull_to_y
			}
			if (window == 7) { 
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + pull_to_x + (10 * spr_dir) + (sin( get_gameplay_time()*0.8 )*4)
				grabbed_player_obj.y = y + pull_to_y - 10 + (sin( get_gameplay_time()*0.8 )*1)
				if (window_timer%5==0){
					spawn_base_dust(x-(12*spr_dir), y, "dash", spr_dir)
					spawn_base_dust(x+(12*spr_dir), y, "dash", spr_dir*-1)
				}
			}
			if (window == 8) { 
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + pull_to_x
				grabbed_player_obj.y = y + pull_to_y
				if (window_timer==1){
					if ( (spr_dir == 1 && left_down)||(spr_dir == -1 && right_down) ){
						spr_dir = spr_dir*-1;
					}
				}
				if (window_timer==5){
					var raincloud_apply_time = 500;//CHANGE THIS FOR RAINCLOUD DURATION
					if (grabbed_player_obj.ushr_rainclouded == false){
						grabbed_player_obj.ushr_rainclouded = true;
						grabbed_player_obj.ushr_rainclouded_timer = raincloud_apply_time;//TIMER
						grabbed_player_obj.ushr_rainclouded_timer_max = raincloud_apply_time;
						var cloudcloud = instance_create( x, y, "obj_article1" );
						cloudcloud.applied_player_id = grabbed_player_obj;
					}else{//if true
						grabbed_player_obj.ushr_rainclouded_timer = raincloud_apply_time;//TIMER
						grabbed_player_obj.ushr_rainclouded_timer_max = raincloud_apply_time;
					}
				}
			}*/
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
	}
}


//-----------------------------------------------------------------------------------------------------
// -- SPECIALS --
//-----------------------------------------------------------------------------------------------------
if (attack==AT_NSPECIAL){
	move_cooldown[AT_NSPECIAL] = 120;//4seconds
	if (window==5||window==6){can_move = false;}
	
	//the grab has appeared
	if (instance_exists(grabbed_player_obj)) {
		
		if ( (window >= 5 && window <= 12) || (window==12&&window_timer<=6) ){
			hsp = 0;
			vsp = 0;
			can_move = false;
			can_fast_fall = false;
		}
		
		//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
		if (window >= 6) { grabbed_player_obj = noone; 
		/*hit_player_obj.slender_haunt = id;
		hit_player_obj.slender_haunt_timer = 400;
		sound_play(sound_get("tta_3"),false,noone,0.7)*/
		if (hit_player_obj.slender_haunt == -4){hit_player_obj.slender_buildup+=25;}}
		else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
			else {
			//keep the grabbed player in hitstop until the grab is complete.
			grabbed_player_obj.hitstop = 2;
			grabbed_player_obj.hitpause = true;
			grabbed_player_obj.force_depth = 1;
			grabbed_player_obj.depth = depth-1;
			
			//if this is the first frame of a window, store the grabbed player's relative position.
			if (!nsp_hit) {
				if (!hitpause){
					grabbed_player_relative_x = grabbed_player_obj.x - x;
					grabbed_player_relative_y = grabbed_player_obj.y - y;
					window = 5;
					window_timer = 0;
					nsp_hit = true;
				}
			}
			 
				//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
				var pull_to_x = 150 * spr_dir;
				var pull_to_y = -2;
			//on the first window, pull the opponent into the grab.
			if (window == 5 && window_timer < 6) { 
				if (window_timer==1){
					if (!free){
					take_damage( grabbed_player_obj.player, player, 2 );
					spawn_hit_fx( grabbed_player_obj.x, grabbed_player_obj.y, 136 );
					shake_camera( 1, 2 );
					sound_play(sound_get("distort_11"),false,noone,1,1.3);
					}
				};
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}else if (window == 5 && window_timer < 12) { 
				if (window_timer==6){
					if (!free){
					take_damage( grabbed_player_obj.player, player, 2 );
					spawn_hit_fx( grabbed_player_obj.x, grabbed_player_obj.y, 136 );
					shake_camera( 1, 2 );
					sound_play(sound_get("distort_11"),false,noone,1,1.3);
					}
				};
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x+(-40 * spr_dir), window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}else if (window == 5 && window_timer < 18) { 
				if (window_timer==12){
					if (!free){
					take_damage( grabbed_player_obj.player, player, 2 );
					spawn_hit_fx( grabbed_player_obj.x, grabbed_player_obj.y, 136 );
					shake_camera( 1, 2 );
					sound_play(sound_get("distort_11"),false,noone,1,1.3);
					}
				};
				var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x+(-100 * spr_dir), window_timer, window_length);
				grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
			}
			//the above block can be copied for as many windows as necessary.
			//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
		}
	}
}

if (attack==AT_FSPECIAL){
	fsp_did = true;
	can_fast_fall = false;
	can_move = false;
	if (window==1)
	{
		if (window_timer==10)
		{ 
			summon_afterimage(0.7,0) 
		}
	}
	if (window>=2){can_wall_jump = true;}
	if (window==2){
		super_armor = true;//yes it is
		with(oPlayer){
			if (id!=other.id){
				if ( get_player_team( other.player ) != get_player_team( player ) ){
					if (point_distance(x, y, other.x, other.y-66)<other.dist_h_static){
						if (slender_haunt == -4){
							slender_buildup+=1.075;
						}
					}//point distance
				}
			}
		}//with
	}
	if (window==3){
		super_armor = false;
	}
	
	if (window < 3)
	{
		if (place_meeting(x + hsp, y, asset_get("par_block")) && free) {
		    for (var i = 1; i < 30; i++){
		        if (!place_meeting(x + hsp, y- i ,asset_get("par_block"))) {
		            y -= i;
		            break;
		        }
		    }
		}
	}
}

if (attack==AT_USPECIAL){
	can_fast_fall = false;
	if (window==1){if (window_timer==8){ summon_afterimage(2,1) }}
	if (window>=2){
		can_wall_jump = true;
		with(oPlayer){
			if (id!=other.id){
				if ( get_player_team( other.player ) != get_player_team( player ) ){
					if (point_distance(x, y, other.x, other.y-66)<other.dist_h_static){
						if (slender_haunt == -4){
							slender_buildup+=1.075;
						}
					}//point distance
				}
			}
		}//with
	}
}

if (attack==AT_DSPECIAL_AIR){
	can_move = false;
}


//-----------------------------------------------------------------------------------------------------
// -- THE tiny VFX AREA --
//-----------------------------------------------------------------------------------------------------

if (attack==AT_DATTACK){  if (window==1){  if (window_timer%3==0){
		spawn_base_dust(x-(12*spr_dir), y, "walk", spr_dir)
}  }  if (window==2){  if (window_timer==5){
		spawn_base_dust(x-(12*spr_dir), y, "dash_start", spr_dir)
}  }  }
if (attack==AT_FSTRONG||attack==AT_USTRONG||attack==AT_DSTRONG){
	if (!hitpause){
		if (smash_charging){
			if (strong_charge%10==0){
				spawn_base_dust(x-(32*spr_dir), y, "dash", spr_dir)
				spawn_base_dust(x+(32*spr_dir), y, "dash", spr_dir*-1)
			}
			if (strong_charge%10==4){
				spawn_base_dust(x-(16*spr_dir), y, "dash", spr_dir)
				spawn_base_dust(x+(16*spr_dir), y, "dash", spr_dir*-1)
			}
		}
	}
}
if (attack==AT_FSTRONG){
	if (window==2){if (window_timer==4){ spawn_base_dust(x-(16*spr_dir), y, "dash_start", spr_dir) }}
}
if (attack==AT_USTRONG){
	if (window==2){if (window_timer==5){ 
				spawn_base_dust(x-(32*spr_dir), y, "dash_start", spr_dir)
				spawn_base_dust(x+(32*spr_dir), y, "dash_start", spr_dir*-1)
	}}
}
if (attack==AT_DSTRONG){
	if (window==1){if (window_timer==7){
				spawn_base_dust(x-(16*spr_dir), y, "dash_start", spr_dir)
				spawn_base_dust(x+(16*spr_dir), y, "dash_start", spr_dir*-1)
	}}
	if (window==4){if (window_timer==5){
				spawn_base_dust(x-(32*spr_dir), y, "dash_start", spr_dir)
				spawn_base_dust(x+(48*spr_dir), y, "dash_start", spr_dir*-1)
				spawn_base_dust(x-(64*spr_dir), y, "dash_start", spr_dir)
				spawn_base_dust(x+(86*spr_dir), y, "dash_start", spr_dir*-1)
	}}
}
if (attack==AT_USPECIAL){
	if (window==1){if (window_timer==8){ spawn_base_dust(x, y+10, "jump") }}
}

//-----------------------------------------------------------------------------------------------------
// -- THE SOUNDS AREA --
//-----------------------------------------------------------------------------------------------------
if (!hitstop)
{
	if (attack==AT_DATTACK){  
		if (window==1){ if (window_timer==2){
			//sound_play(sound_get("tta_6"),false,noone,0.4,5);
			sound_play(sound_get("tta_23"),false,noone,0.3, 1.5); 
			sound_play(sound_get("tta_5"), false, noone, 0.5, 1.8);
		} }
		if (window==2){ if (window_timer==2){
			sound_play(sound_get("tta_1")); 
			sound_play(sound_get("nisae_hit4"),false,noone,0.9);
			sound_play(sound_get("SWB2"),false,noone,0.5,0.9);
		} } 
	}
	
	if (attack==AT_FTILT){  if (window==1){  if (window_timer==2){
			sound_play(sound_get("distort_3"),false,noone,0.5,1.8);
	}  }  if (window==1){  if (window_timer==6){
			sound_play(sound_get("distort_11"));
	}  }  }
	if (attack==AT_DTILT){  if (window==1){  if (window_timer==8){
			sound_play(sound_get("distort_10"),false,noone,1,1.3); sound_play(sound_get("nisae_hit7"),false,noone,0.7,1);
			sound_play(sound_get("swing5"),false,noone,0.6,0.8);
	}  }  }
	if (attack==AT_UTILT){  if (window==1){  if (window_timer==8){
			sound_play(sound_get("tta_1")); sound_play(sound_get("tta_5"));
			sound_play(asset_get("sfx_swipe_medium2"),false,noone,0.75,0.8);
	}  }  }
	
	
	if (attack==AT_NAIR){  if (window==1){  if (window_timer==1){
			sound_play(sound_get("distort_5"),false,noone,0.5,1.5);
	}  }  if (window==1){  if (window_timer==6){
			sound_play(sound_get("distort_8_b")); sound_play(sound_get("tta_15"),false,noone,0.7);
			sound_play(asset_get("sfx_shovel_dig"),false,noone,0.9,0.7);
			sound_play(sound_get("BossMovePredict"),false,noone,0.5,1.1);
	}  }  }
	if (attack==AT_FAIR){  if (window==1){  if (window_timer==12){
			sound_play(sound_get("tta_4")); sound_play(sound_get("tta_9"));
			sound_play(sound_get("SWB2"),false,noone,0.5,0.8);
			sound_play(asset_get("sfx_swipe_heavy1"),false,noone,1,0.85);
	}  }  }
	if (attack==AT_BAIR){  if (window==1){  if (window_timer==2){
			sound_play(sound_get("antici_2"),false,noone,1,0.7);
	}  }  if (window==2){  if (window_timer==1){
			sound_stop(sound_get("antici_2"));
			sound_play(sound_get("tta_9")); sound_play(sound_get("tta_2"),false,noone,1,1.4);
			sound_play(sound_get("sfx_swipe_medium1"),false,noone,0.7,0.8);
	}  }  }
	if (attack==AT_UAIR){  if (window==1){  if (window_timer==12){
			sound_play(sound_get("tta_13")); sound_play(sound_get("tta_14"),false,noone,0.8);
			sound_play(sound_get("tta_17"),false,noone,0.7);
			sound_play(sound_get("SWB2"),false,noone,0.5,0.9);
	}  }  }
	if (attack==AT_DAIR){  if (window==2){  if (window_timer==13){
			sound_play(sound_get("distort_2")); sound_play(sound_get("spike"),false,noone,0.5,1.4);
	}  }  }
	
	
	if (attack==AT_FSTRONG){  if (window==1){  if (window_timer==2){
			sound_play(sound_get("tta_7"));
			sound_play(sound_get("antici_1"),false,noone,1,0.8);
	}  }  if (window==2){  if (window_timer==4){
			sound_stop(sound_get("tta_7"));
			sound_play(sound_get("tta_2"),false,noone,1,1.2); sound_play(sound_get("cut_3"));
	}  }  if (window==7){  if (window_timer==1){
			sound_play(sound_get("distort_5")); sound_play(sound_get("distort_6"));
	}  }  if (window==9){  if (window_timer==1){
			sound_play(sound_get("distort_6")); sound_play(sound_get("distort_6"));
	}  }  }
	if (attack==AT_DSTRONG){  if (window==1){  if (window_timer==1){
			sound_play(sound_get("tta_8")); sound_play(sound_get("tta_12"));
	}  }  if (window==1){  if (window_timer==5){
			sound_play(sound_get("tta_9")); sound_play(sound_get("hit4"),false,noone,0.6,1.2);
			shake_camera( 2, 4 );
	}  }  if (window==4){  if (window_timer==1){
			sound_stop(sound_get("tta_8")); sound_stop(sound_get("tta_12"));
			sound_play(sound_get("tta_19")); sound_play(sound_get("nisae_hit7"));
			sound_play(sound_get("nisae_hit4")); sound_play(sound_get("nisae_metallic1"));
			shake_camera( 6, 6 );
	}  }  }
	if (attack==AT_USTRONG){  if (window==1){  if (window_timer==2){
			sound_play(sound_get("tta_6"),false,noone,1,1.7);
			sound_play(sound_get("antici_2"));
	}  }  if (window==2){  if (window_timer==5){
			sound_stop(sound_get("tta_6"));
			sound_play(asset_get("sfx_may_wrap2"));
			sound_play(sound_get("tta_4"),false,noone,1,0.8); sound_play(sound_get("tta_1"));
			sound_play(sound_get("SWE3"),false,noone,0.7); sound_play(sound_get("spike"),false,noone,0.7);
			shake_camera( 3, 4 );
	}  }  }
	
	
	if (attack==AT_NSPECIAL){  if (window==1){  if (window_timer==10){
			sound_play(sound_get("SWEN"),false,noone,0.8,1.5);
			sound_play(asset_get("sfx_swipe_medium2"),false,noone,0.8,0.7);
	}  }  if (window==5){  if (window_timer==1){
			sound_stop(sound_get("SWEN"));
			sound_play(sound_get("distort_3"),false,noone,0.5);
			sound_play(sound_get("tta_2")); sound_play(sound_get("tta_18"));
	}  }  if (window==5){  if (window_timer==18){
			sound_play(sound_get("tta_23")); sound_play(sound_get("tta_19")); sound_play(sound_get("nisae_hit7"));
	}  }  }
	if (attack==AT_FSPECIAL){  if (window==1){  if (window_timer==2){
			sound_play(sound_get("tta_2"),false,noone,0.7,2.2);
	}  }  if (window==1){  if (window_timer==8){
		sound_play(sound_get("distort_4"),false,noone,0.8,1);
		var rand_tmp = random_func_2( 3, 9, true );
			switch (rand_tmp){
				case 0: sound_play(sound_get("distort_3"),false,noone,0.5,1.1);
				break;
				case 1: sound_play(sound_get("distort_5"),false,noone,0.7,1);
				break;
				case 2: sound_play(sound_get("distort_9"),false,noone,0.7,2);
				break;
				case 3: sound_play(sound_get("tta_3"),false,noone,0.7,1.4);
				break;
				case 4: sound_play(sound_get("tta_10"),false,noone,0.7,1.4);
				break;
				case 5: sound_play(sound_get("tta_11"),false,noone,0.7,1.65);
				break;
				case 6: sound_play(sound_get("tta_20"),false,noone,0.7,1.4);
				break;
				case 7: sound_play(sound_get("tta_21"),false,noone,0.7,1.8);
				break;
				case 8: sound_play(sound_get("tta_22"),false,noone,0.7,1.8);
				break;
				default: break;
			}
	}  }  }
	if (attack==AT_USPECIAL){   if (window==1){  if (window_timer==8){
			sound_play(sound_get("cut_4"),false,noone,1);
			sound_play(sound_get("distort_3"),false,noone,0.6);
			sound_play(sound_get("tta_2")); sound_play(sound_get("tta_5"));
			sound_play(sound_get("tta_3"),false,noone,0.8,1.3);
			sound_play(sound_get("antici_1"),false,noone,1,0.8);
			sound_play(sound_get("antici_2"),false,noone,1,0.8);
	}  }  if (window==3){  if (window_timer==22){
			sound_play(sound_get("distort_10"),false,noone,0.8);
			if (get_player_color( player ) == 20){//scarymaze
				sound_play(sound_get("z_death_scarymaze2_jumpscare_warning_please"),false,noone,0.9,1);
				sound_play(sound_get("z_death_scarymaze2_jumpscare_warning_please"),false,noone,0.9,0.9);
			}else{
				sound_play(sound_get("distort_ex_1"),false,noone,0.7);
			}
			sound_play(sound_get("distort_11"),false,noone,0.8); sound_play(sound_get("nisae_hit2"));
	}  }  }
	if (attack==AT_DSPECIAL){   if (window==7){  if (window_timer==1){
			sound_play(asset_get("sfx_syl_dstrong"),false,noone,0.5,1.3);
	}  }  }
	
	
	if (attack==AT_TAUNT){  if (window==2){  if (window_timer==1){
			sound_play(sound_get("pagegrab"),false,noone,1,1);
	}  }  if (window==3){  if (window_timer==20){
			sound_play(asset_get("sfx_syl_promo2"),false,noone,0.7,2.8);
	}  }  if (window==4){  if (window_timer==13){
			sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
			if (special_down&&down_down){
				sound_play(sound_get("cut_4"),false,noone,1);
				gimme_20_dollars = true;
				sound_stop(slender_staticmedium_sound_id);
				slender_staticmedium_sound_id = sound_play(sound_get("gimm20dollars"),true);
			}
	}  }  }
}






//=======================================================================================================================//


#define summon_afterimage
///summon_afterimage(hspboolean, vspboolean)
var aft_ = instance_create( x, y, "obj_article1" );
aft_.sprite_index = sprite_index;
aft_.image_index = image_index;
aft_.spr_dir = spr_dir;
aft_.hsp = hsp/3*argument[0];
aft_.vsp = vsp/3*argument[1];
return aft_;

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if (newdust != -4){
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
}
return newdust;