//Jab
if (attack == AT_JAB){

	if (inputs_swapped_toggle == false){
		var buttonLetGo = (!attack_down);
		var buttonHold = (attack_down);
	} else if (inputs_swapped_toggle == true){
		var buttonLetGo = (((!left_stick_down && spr_dir == -1)||(!right_stick_down && spr_dir == 1))||(!attack_down));
		var buttonHold = (((left_stick_down && spr_dir == -1)||(right_stick_down && spr_dir == 1))||(attack_down));
	}

	if ((window < 6) && !hitpause && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){//>
		//spawn_base_dust( x - (22 * spr_dir), y, "dash", spr_dir)
	}
	if (buttonHold && window > 1 && window < 6){//>
		if (window == 5){
			if (window_timer == 5){
				window = 2
				window_timer = 0
			}
		}
	} else if (buttonLetGo && window > 1 && window < 5){//>
		window = 6
		window_timer = 0
		destroy_hitboxes();
	}
	if (window == 6){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (22 * spr_dir), y, "dash", spr_dir)
			//spawn_base_dust( x + (40 * spr_dir), y, "walk", spr_dir * -1)
			spawn_base_dust( x + (42 * spr_dir), y, "wavedash", spr_dir*-1)
			if (voiced == true){
				sound_stop(vc_mk_jab)
				sound_play(vc_mk_grunt_4)
			}
		}
	}
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (voiced){
				var scream = random_func( 1, 2, true );
				switch (scream){
					case 1:
					sound_play(vc_mk_jab);
					break;
				}
			}
		}
	}
	if (image_index == 14){
		dattack_land_var++;
		if (dattack_land_var == 1){
			spawn_base_dust( x - (10 * spr_dir), y, "dash", spr_dir)
			sound_play(landing_lag_sound);
			did_swap_inputs = false;
		}
	} else {
		dattack_land_var = 0;
	}
}

if (attack == AT_JAB){
	if ((window == 6 && window_timer > 2) || (window == 7 && window_timer < 4)){//>
	    hud_offset = 62;
	}
}

//Dash Attack
if (attack == AT_DATTACK){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 2){
			if (voiced == true){
				sound_play(vc_mk_grunt_6)
			}
		}
	}
	if (image_index == 6){
		dattack_land_var++;
		if (dattack_land_var == 1){
			spawn_base_dust( x - (2 * spr_dir), y, "land", spr_dir)
			sound_play(landing_lag_sound);
		}
	} else {
		dattack_land_var = 0;
	}
	if (has_hit && has_rune("C")){
		can_jump = true;
	}
}

//Ftilt
if (attack == AT_FTILT){
	if (window == 1 || window == 4){
		if (window_timer == 1){
			clear_button_buffer(PC_ATTACK_PRESSED);
		}
	}
	if ((window == 1 || window == 4 || window == 7) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		spawn_base_dust( x - (22 * spr_dir), y, "dash", spr_dir)
		if (voiced == true){
			var haa = random_func( 1, 6, true );
			switch (haa){
				case 1:
					sound_play(vc_mk_grunt_1)
					break;
				case 2:
					sound_play(vc_mk_grunt_2)
					break;
				case 3:
					sound_play(vc_mk_grunt_3)
					break;
				case 4:
					sound_play(vc_mk_grunt_4)
					break;
			}
		}
	}	
	if (window == 3){
		if (window_timer > 5){
			if (left_stick_down || right_stick_down){
				window++;
				window_timer = 0;
			}
			if ((((up_pressed || up_down) && attack_pressed) || up_stick_down) && (((!down_pressed || !down_down)) || !down_stick_down)){
				set_attack( AT_UTILT );
				hsp = 6 * spr_dir
				sound_stop(sfx_krtd_sword_swipe2);
			} else if ((((!up_pressed || !up_down)) || !up_stick_down) && (((down_pressed || down_down) && attack_pressed) || down_stick_down)){
				set_attack( AT_DTILT );
				hsp = 3 * spr_dir
				sound_stop(sfx_krtd_sword_swipe2);
			}
		}
	}
	if (window == 4){
		if (window_timer == 2){
			//
		}
	}
	if (window == 6){
		if (window_timer > 4){
			if (left_stick_down || right_stick_down){
				window++;
				window_timer = 0;
			}
			if ((((up_pressed || up_down) && attack_pressed) || up_stick_down) && (((!down_pressed || !down_down)) || !down_stick_down)){
				set_attack( AT_UTILT );
				hsp = 6 * spr_dir
				sound_stop(sfx_krtd_sword_swipe2);
			} else if ((((!up_pressed || !up_down)) || !up_stick_down) && (((down_pressed || down_down) && attack_pressed) || down_stick_down)){
				set_attack( AT_DTILT );
				hsp = 3 * spr_dir
				sound_stop(sfx_krtd_sword_swipe2);
			}
		}
	}
	if (window == 7){
		//
		if (window_timer == 4){
			sound_play(asset_get("sfx_jumpground"));
			hsp += 6 * spr_dir
		}
	}
	if (window == 3 || window == 6 || window == 9){
		if (did_swap_inputs == true){
			did_swap_inputs = false;
		}
	}
	
	if (window < 9){//>
		was_parried = false;
	}
}


//Utilt
if (attack == AT_UTILT){
	if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		spawn_base_dust( x, y, "jump", spr_dir)
		if (voiced == true){
			var hg = random_func( 1, 6, true );
			switch (hg){
				case 1:
					sound_play(vc_mk_grunt_1)
					break;
				case 2:
					sound_play(vc_mk_grunt_2)
					break;
				case 3:
					sound_play(vc_mk_grunt_3)
					break;
				case 4:
					sound_play(vc_mk_grunt_4)
					break;
			}
		}
	}
	if (window == 2 || (window == 3 && window_timer < 9)){
	    hud_offset = 80;
	}
}

//Dtilt
if (attack == AT_DTILT){
	if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		//spawn_base_dust( x - (10 * spr_dir), y, "dash", spr_dir)
		spawn_base_dust( x + (76 * spr_dir), y, "wavedash", spr_dir*-1)
		if (voiced == true){
			var gs = random_func( 1, 6, true );
			switch (gs){
				case 2:
					sound_play(vc_mk_grunt_2)
					break;
				case 3:
					sound_play(vc_mk_grunt_3)
					break;
				case 4:
					sound_play(vc_mk_grunt_4)
					break;
			}
		}
	}
}
//>
//Air Voices lol
if (attack == AT_NAIR
	|| attack == AT_FAIR
	|| attack == AT_DAIR
	|| attack == AT_UAIR
	|| attack == AT_BAIR){
		if (window == 1){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				if (voiced == true){
					var gaming = random_func( 1, 6, true );
					switch (gaming){
						case 1:
							sound_play(vc_mk_grunt_1)
							break;
						case 2:
							sound_play(vc_mk_grunt_2)
							break;
						case 3:
							sound_play(vc_mk_grunt_3)
							break;
						case 4:
							sound_play(vc_mk_grunt_4)
							break;
					}
				}
			}
		}
	}

//Nair
if (attack == AT_NAIR){
	if (window == 2 || window == 3 || (window == 1 && window_timer > 3) || (window == 4 && window_timer < 4)){
	    hud_offset = 62;
	}
	if (has_rune("B")){
		for (var i = 0; i < 9; i++){
			set_hitbox_value(AT_NAIR, i, HG_ANGLE_FLIPPER, 10);
		}
		if (window == 3){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				if (attack_down){
					attack_end();
					window = 2;
					window_timer = 0;
					sound_play(sfx_nair);
				}
			}
		}
	}
}

//Uair
if (attack == AT_UAIR){
	if (window == 2 || (window == 1 && window_timer > 3) || (window == 3 && window_timer < 4)){
	    hud_offset = 62;
	}
}

//Dair
if (attack == AT_DAIR){
	if (has_rune("A")){
		set_num_hitboxes(AT_DAIR, 4);
	}
}

//Aerial stuff out of Uspecial
if (attack == AT_NAIR || attack == AT_FAIR || attack == AT_UAIR || attack == AT_DAIR || attack == AT_BAIR){
	if (attacking_out_of_shuttle_loop == true && !has_hit){
		if ((attack == AT_UAIR || attack == AT_DAIR) && window == 3 && window_timer == 19
		|| (attack == AT_FAIR || attack == AT_BAIR) && window == 7 && window_timer == 18
		|| (attack == AT_NAIR) && window == 4 && window_timer == 19){
			set_state(PS_PRATFALL);
			attacking_out_of_shuttle_loop = false;
		}
	}
}

//Fstrong
if (attack == AT_FSTRONG){
	if (attack == AT_FSTRONG && window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1){
		spawn_base_dust( x + (50 * spr_dir), y, "dash", spr_dir*-1)
		spawn_base_dust( x - (20 * spr_dir), y, "dash_start", spr_dir)
		if (voiced){
			sound_play(vc_mk_grunt_5)
		}
	}
}

//Ustrong
if (attack == AT_USTRONG){
	if (window == 1){
		if (hsp > 8 && spr_dir == 1){
			hsp = 7
		}
		if (hsp < -8 && spr_dir == -1){
			hsp = -7
		}
	}
	if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir*-1)
	}
	if (window > 2 && window < 7 || (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))) {
		//hud_offset = 72;
		if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (voiced){
				sound_play(vc_mk_grunt_6)
			}
		}
	}
	if (image_index != 17){
		land_index_thingy = 0;
	} else {
		land_index_thingy++;
		if (land_index_thingy == 1){
			spawn_base_dust( x + (18 * spr_dir), y, "walk", spr_dir*-1)
			spawn_base_dust( x - (18 * spr_dir), y, "walk", spr_dir*1)
			sound_play(sfx_landinglag)
		}
	}
	
	//Hud Offset
	if ((window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 3 || window == 4 || window == 5 || window == 6 || window == 7 || (window == 8 && image_index < 20)){
	    hud_offset = 90
	} //>
}

//Dstrong
if (attack == AT_DSTRONG){
	if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		spawn_base_dust( x + (75 * spr_dir), y, "dash", spr_dir*-1)
		if (voiced){
			sound_play(vc_mk_grunt_7)
		}
	} else if (window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		spawn_base_dust( x - (75 * spr_dir), y, "dash", spr_dir)
	}
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || (attack == AT_USPECIAL && window == 1)){
    trigger_b_reverse();
}

//Nspecial: Mach Tornado
if (attack == AT_NSPECIAL){
	can_wall_jump = true;
	if (brawl_mode && has_hit && window > 4){
		can_jump = true;
		can_shield = true;
		can_attack = true;
	}
	if (window != 5){
		if (!brawl_mode){
			if (vsp < -2.5){
				vsp = -2.5
			}
			if (vsp > 3){
				vsp = 3
			}
			if (hsp > 5){
				hsp = 5
			}
			if (hsp < -5){
				hsp = -5
			}
		} else if (brawl_mode){
			if (vsp < -2.5){
				vsp = -2.5
			}
			if (vsp > 3){
				vsp = 3
			}
			if (hsp > 7.5){
				hsp = 7.5
			}
			if (hsp < -7.5){
				hsp = -7.5
			}
		}
	}
    if (window == 1){
        mach_tornado_loop_count = 0;
		vsp = -3
    }
	if (window == 2 || window == 3 || window == 4){
		if (!hitpause){
			can_move = true;
			if (special_pressed || special_down){
				vsp = vsp - 0.75
			}
			if (left_down){
				hsp = hsp - 0.75
			}
			if (right_down){
				hsp = hsp + 0.75
			}
			if (!left_down && !right_down){
				if (hsp > 0){
					hsp = hsp - 0.125
				}
				if (hsp < 0){
					hsp = hsp + 0.125
				}
			}
		}
	}
	if (window == 4){
		if (window_timer == 8){
			if (mach_tornado_loop_count != mach_tornado_max_loops){
				destroy_hitboxes();
				mach_tornado_loop_count++;
				sound_play(sfx_mach_tornado_slash);
				window_timer = 0
			}
		}
	}
	if (window == 5){
		if (window_timer < 4 && vsp > -4){
			//vsp = -4
		}
		if (window_timer > 22 && !free){
			set_state( PS_LANDING_LAG );
			//sound_play(sfx_landinglag);
		}
	}	
}

//Fspecial: Dimensional Cape
//The main teleportation logic. You can place this anywhere in the script.
if(attack == AT_FSPECIAL) {
    can_fast_fall = 0; //Prevent the player from accidentally fast falling during the move.
    wings_out = false;
    //Startup Logic
    if(window == 1) {
		draw_indicator = true;
		dimensional_cape_hit = false;
		tp_dist = 170
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);
		set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 7);
		set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 7);
		vsp = 0
		hsp = 0
		if (window_timer < 2){
			tp_dont = false;
		}
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {    //Check to see if the window is at its end.
            var tp_angle = 0;   //The angle at which the teleport will go.
			if (window_timer > 14){
				if(!joy_pad_idle) { //Set the angle to the direction held on the joystick if a direction is being held.
					tp_angle = joy_dir;
					tp_dont = false;
				} else {
					tp_angle = 0
					tp_dont = true;
				}
				
				sangle = tp_angle
			
				var tp_dist_x = lengthdir_x(tp_dist, tp_angle); //The x and y components of the vector that will be added to
				var tp_dist_y = lengthdir_y(tp_dist, tp_angle); //the player's location.
				
				x_ = x + tp_dist_x; //The coordinates of the desired teleportation destination.
				y_ = y + tp_dist_y;
			}
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (voiced == true){
				sound_play(vc_mk_cape)
			}
		}
    }
    if(window == 2) {
	
	    draw_indicator = false;
	
		vsp = 0
		
		if ((right_stick_down || down_stick_down) || (down_stick_down) || (left_stick_down || down_stick_down)){
			window_timer = 0;
		}
		
		/*
		if (up_down){
			y -= 1
		}
		if (down_down){
			y += 1
		}
		if (left_down){
			x -= 1
		}
		if (right_down){
			x += 1
		}
		*/
		
		//Old tap attack and dodge code Lol!
				
		/*
		if ((shield_pressed || shield_down) || (attack_pressed || attack_down || left_stick_down || up_stick_down || right_stick_down || down_stick_down) && window_timer > 1){
			tp_dist = 135
			if(!joy_pad_idle) { //Set the angle to the direction held on the joystick if a direction is being held.
					tp_angle = joy_dir;
					tp_dont = false;
					//Is on ground or platfrom???
					if !free &&(place_meeting(x + (0*spr_dir), y + 65, asset_get("par_block")) && !place_meeting(x + (0*spr_dir), y + 65, asset_get("par_jumpthrough"))){
						//On Ground
						if (left_down && !right_down && tp_angle > 180 && tp_angle < 240){
							//print_debug("personally i think that mario");	
							tp_angle = 179
						}
						if (!left_down && right_down && tp_angle > 300 && tp_angle < 360){
							//print_debug("personally i think that mario");	
							tp_angle = 1
						}
					} else if !free && (!place_meeting(x + (0*spr_dir), y + 65, asset_get("par_block")) && place_meeting(x + (0*spr_dir), y + 65, asset_get("par_jumpthrough"))){
						//On Plat
						//print_debug("personally i think that mario");	
					}
				} else {
					tp_angle = 0
					tp_dont = true;
				}
			
				var tp_dist_x = lengthdir_x(tp_dist, tp_angle); //The x and y components of the vector that will be added to
				var tp_dist_y = lengthdir_y(tp_dist, tp_angle); //the player's location.
				
				x_ = x + tp_dist_x; //The coordinates of the desired teleportation destination.
				y_ = y + tp_dist_y;
			
			if(place_meeting(x_, y_, asset_get("par_block"))) { //Check to see if destination is colliding with the stage.
				var tp_dest = stage_collide_alt(x, y, x_, y_, tp_prec); //Use alternate collision function to determine the new teleportation destination.
				x_ = tp_dest[0];
				y_ = tp_dest[1];
			}
			   
			if (tp_dont == false){
				//Change the player's location to the teleport destination.
				x = x_;
				y = y_;
			}
			if ((shield_pressed || shield_down) && (!attack_pressed || !attack_down || !left_stick_down || !up_stick_down || !right_stick_down || !down_stick_down)){
				window = 3
				window_timer = 0
			} else if ((!shield_pressed || !shield_down) && (attack_pressed || attack_down || left_stick_down || up_stick_down || right_stick_down || down_stick_down)){
				window = 7
				window_timer = 0
			}
			
			sangle = tp_angle
		}
		*/
		
		if (window_timer == 12){
			if(!joy_pad_idle) { //Set the angle to the direction held on the joystick if a direction is being held.
					tp_angle = joy_dir;
					tp_dont = false;
					//Is on ground or platfrom???
					if !free &&(place_meeting(x + (0*spr_dir), y + 65, asset_get("par_block")) && !place_meeting(x + (0*spr_dir), y + 65, asset_get("par_jumpthrough"))){
						//On Ground
						if (left_down && !right_down && tp_angle > 180 && tp_angle < 240){
							//print_debug("personally i think that mario");	
							tp_angle = 179
						}
						if (!left_down && right_down && tp_angle > 300 && tp_angle < 360){
							//print_debug("personally i think that mario");	
							tp_angle = 1
						}
						if (down_down && !left_down && !right_down && tp_angle == 270){
							tp_angle = 271
						}
					} else if !free && (!place_meeting(x + (0*spr_dir), y + 65, asset_get("par_block")) && place_meeting(x + (0*spr_dir), y + 65, asset_get("par_jumpthrough"))){
						//On Plat
						//print_debug("personally i think that mario");	
					}
				} else {
					tp_angle = 0
					tp_dont = true;
				}
			
				var tp_dist_x = lengthdir_x(tp_dist, tp_angle); //The x and y components of the vector that will be added to
				var tp_dist_y = lengthdir_y(tp_dist, tp_angle); //the player's location.
				
				x_ = x + tp_dist_x; //The coordinates of the desired teleportation destination.
				y_ = y + tp_dist_y;
			
			if(place_meeting(x_, y_, asset_get("par_block"))) { //Check to see if destination is colliding with the stage.
				var tp_dest = stage_collide_alt(x, y, x_, y_, tp_prec); //Use alternate collision function to determine the new teleportation destination.
				x_ = tp_dest[0];
				y_ = tp_dest[1];
			}
			   
			if (tp_dont == false){
				//Change the player's location to the teleport destination.
				x = x_;
				y = y_;
			}
		}
		
		if (window_timer == 12){
			if (special_down){
				window = 4
				window_timer = 0
				set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
			}
		}
    }
	if (window > 2){
		draw_indicator = true;
	}
	if (window == 3){
		can_move = true;
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
		if (window_timer < 2){
			vsp = -6
		}
	}
	if (window == 4){
		vsp = -0.4
		if (window_timer < 3){
			if (left_down && !right_down){
				spr_dir = -1
			}
			if (!left_down && right_down){
				spr_dir = 1
			}
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (voiced == true){
				sound_play(vc_mk_grunt_5)
			}
		}
	}
	if (window == 7){
		vsp = -0.4
		if (window_timer < 3){
			if (left_down && !right_down){
				spr_dir = -1
			}
			if (!left_down && right_down){
				spr_dir = 1
			}
		}
	}
	if (window == 5 || window == 6 || window == 8 || window == 9){
		hsp = 0
		vsp = 0
	}
}

//Uspecial: Shuttle Loop
if (attack == AT_USPECIAL){
	fall_through = true
	can_fast_fall = false;
	can_move = false;
	wings_out = true;
	move_cooldown[AT_USPECIAL] = 9999999;
	if (window == 1){
		airdodging_out_of_shuttle_loop = false;
		if (window_timer == 1){
			if (!free){
				shuttle_loop_started_from_ground = true;
			} else if (free){
				shuttle_loop_started_from_ground = false;
			}
			wings_out = true;
			can_jump = false;
			sound_play(sfx_shuttle_loop_1);
			shuttle_loop_vsp_lost = 0
			shuttle_loop_can_rise = true
			shuttle_loop_can_dive = true
			if (brawl_mode){
				shuttle_loop_timer = 600
			} else {
				shuttle_loop_timer = 120
			}
			shuttle_loop_is_rising = false
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-4){
			sound_play(sfx_smash_brawl_shuttle_loop, false, noone, 0.7, 1);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (shuttle_loop_started_from_ground == true){
				spawn_base_dust(x, y, "jump", 0);
			} else {
				spawn_base_dust(x, y - 12, "doublejump", 0);
			}
			if (voiced == true){
				sound_play(vc_mk_shuttle_loop)
			}
		}
	}
	if (window != 13){
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
		if (window > 2){
			if (has_hit){
				//trolled!
				//can_jump = true
			}
		}
	} else {
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
	}
	
	//Preventing accidental suicides with Up B near side blastzones.
	if (window > 2 && window < 13){
		if (spr_dir == 1 && x < (blastzone_l + 40)){
			if (hsp < 2){
				hsp = 2;
			}
		}
		if (spr_dir == -1 && x > (blastzone_r - 40)){
			if (hsp > -2){
				hsp = -2;
			}
		}
	}
	
	if (window == 13){ //oh my god how
		shuttle_loop_timer--;
		//clamp(vsp, -8, 8)
		if (!brawl_mode){
			clamp(hsp, -9.5, 9.5)
		} else if (brawl_mode){
			clamp(hsp, -12, 12)
		}
		can_shield = true
		can_attack = true
		can_special = false
		if (spr_dir == 1 && shuttle_loop_can_rise == true && !down_down){
			if (hsp < 6.5){
				hsp = 6.5
			}
		} else if (spr_dir == -1 && shuttle_loop_can_rise == true && !down_down){
			if (hsp < -6.5){
				hsp = -6.5
			}
		} else if (spr_dir == 1 && shuttle_loop_can_rise == true && down_down){
			if (hsp > 9){
				hsp = 9
			}
		} else if (spr_dir == -1 && shuttle_loop_can_rise == true && down_down){
			if (hsp < -9){
				hsp = -9
			}
		}
		if (!up_down && !down_down){
			hsp -= 0.15
			if (vsp < -4){
				vsp += 0.2
				spr_angle = spr_angle - (0.66666 * spr_dir)
			} else {
				vsp += 0.1
				spr_angle = spr_angle - (0.33333 * spr_dir)
			}
		}
		if (shuttle_loop_timer != 0){
			window_timer = 1
		}
		if (down_down && shuttle_loop_can_dive == true){
			vsp += 0.3
			if (vsp < 8){
				hsp += (0.1 * spr_dir)
			} else {
				hsp -= (0.1 * spr_dir)
			}
			spr_angle = spr_angle - (1 * spr_dir)
			shuttle_loop_is_rising = false
		}
		if (up_down){
			shuttle_loop_timer--;
		}
		if (up_down && shuttle_loop_can_rise == true){
			vsp -= 0.3
			hsp -= 0.25
			spr_angle = spr_angle + (1 * spr_dir)
		}
		if (up_down && shuttle_loop_can_rise == false){
			shuttle_loop_is_rising = true
			if (spr_dir == 1){
				if (hsp > 1.5){
					hsp -= .25
					shuttle_loop_timer--;
				}
			} else if (spr_dir == -1){
				if (hsp < -1.5){
					hsp += .25
					shuttle_loop_timer--;
				}
			}
		}
		if (shuttle_loop_is_rising == true){
			if (vsp < -2){
				vsp += 0.25
			}
			shuttle_loop_timer--;
		}
		if (vsp < -8){
			shuttle_loop_can_rise = false
		}
		if (vsp > 4){
			shuttle_loop_can_rise = true
		}
		if (vsp > 12){
			shuttle_loop_can_dive = false
		} else {
			shuttle_loop_can_dive = true
		}
		//im just gonna leave out the "if diving too low, then push up" code. i think this will make the move really funny
		/*
		if (shuttle_loop_can_dive == false){
			vsp -= 0.3
			hsp -= 0.4
			spr_angle = spr_angle + (1 * spr_dir)
		}
		*/
		if (shuttle_loop_timer < 10){
			set_state(PS_PRATFALL);
			//set_state(PS_IDLE_AIR);
		}
		//Hit a Wall
		if (place_meeting(x + 6 * spr_dir, y, asset_get("par_block"))){
			sound_play(landing_lag_sound);
			set_state(PS_IDLE_AIR);
			spawn_base_dust(x+(24*spr_dir), y, "walljump", spr_dir * -1);
			move_cooldown[AT_USPECIAL] = 9999999;
			hsp = -4 * spr_dir
			vsp = -8
		}
		//Airdodge
		if (has_airdodge && shield_pressed){
			shuttle_loop_timer -= 20
			move_cooldown[AT_USPECIAL] = 9999999;
			airdodging_out_of_shuttle_loop = true;
		}
		//Attack
		if ((attack_pressed)||((up_stick_down)||(down_stick_down)||(left_stick_down)||(right_stick_down)) && can_attack == true){
			shuttle_loop_timer -= 60
			spr_angle = 0
			attacking_out_of_shuttle_loop = true;
			move_cooldown[AT_USPECIAL] = 9999999;
		}	
		//Special
		if (!brawl_mode){
			if (special_pressed && (!up_down || !up_pressed) && (down_down || down_pressed)){
				shuttle_loop_timer -= 60
				spr_angle = 0
				move_cooldown[AT_USPECIAL] = 9999999;
				if ((up_down || up_pressed) && (!down_down || !down_pressed)){
					//hsp *= -1
				} else if ((!up_down || !up_pressed) && (down_down || down_pressed)){
					set_attack(AT_DSPECIAL);
				}
			}
		} else if (brawl_mode){
			can_special = true;
		}
		//Landing
		if (place_meeting(x, y + 1, asset_get("par_block"))){
			y = y + 1
			hsp *= 0.9
			//set_state(PS_LANDING_LAG);
		}
		
	}
}

//Dspecial: Meta Condor Dive
if (attack == AT_DSPECIAL){
    wings_out = true;
	can_fast_fall = false;
	can_wall_jump = true;
	if (down_down){
		fall_through = true;
	} else if (!down_down){
		fall_through = false;
	}
	if (brawl_mode){
		can_jump = true;
		can_shield = true;
	}
	if (window != 1){
		condor_dive_dust_startup_timer = 0;
	}
	if (window == 1){
		condor_dive_timer = 0
		if (window_timer < 3){
			vsp -= 10
			hsp = 3 * spr_dir
		} else if (window_timer == 4){
			//vsp = -2
			hsp = 4 * spr_dir
		} else if (window_timer > 4){
			vsp += 0.4
		}
		if (vsp < -12){
			vsp = -12
		}
		if (window_timer == 1){
			if (voiced == true){
				sound_play(vc_mk_grunt_7)
			}
		}
		if (!free){
			condor_dive_dust_startup_timer++;
			if (condor_dive_dust_startup_timer == 1){
				spawn_base_dust(x, y, "jump", 0);
			}
		} else {
			condor_dive_dust_startup_timer = 0;
		}
	}
	if (window == 2){
		condor_dive_timer++;
		if (has_hit || !free){
			destroy_hitboxes();
			if (!free){
				window = 4
				window_timer = 0
			} else {
				window = 3
				window_timer = 3
			}
			sound_play(sfx_stomp);
			sound_stop(sfx_condor_dive);
			//
		}
		if (condor_dive_timer > 28){
			can_jump = true;
			can_shield = true;
		} else if (condor_dive_timer < 28){
			can_jump = false;
			can_shield = false;
		}
	}
	if (window == 3){
		can_jump = false;
		can_shield = false;
		if (window_timer == 1){
			//spawn_base_dust(x, y, "n_wavedash", 0);
			//spawn_base_dust( x + 16, y, "dash_start", -1)
			//spawn_base_dust( x - 16, y, "dash_start", 1)
		}
		if (window_timer < 4){
			vsp = 0
			hsp = 0
		}
		if (window_timer == 4){
			vsp = -5.5
			hsp = 5 * spr_dir
		}
		move_cooldown[AT_DSPECIAL] = 9999999;
	}
	if (window == 4){
		can_jump = false;
		can_shield = false;
		if (window_timer == 1){
			spawn_base_dust(x, y, "land", 0);
			spawn_base_dust( x + 16, y, "dash_start", -1)
			spawn_base_dust( x - 16, y, "dash_start", 1)
		}
		if (window_timer < 4){
			vsp = 0
			hsp = 0
		}
		if (window_timer == 4){
			vsp = -5.5
			hsp = 5 * spr_dir
		}
		move_cooldown[AT_DSPECIAL] = 9999999;
	}
}

//(place_meeting(x + (0*spr_dir), y + 65, asset_get("par_block")) || place_meeting(x + (0*spr_dir), y + 65, asset_get("par_jumpthrough")))

//Taunt
if (attack == AT_TAUNT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (voiced == true && !free){
				var tauntvc = random_func( 1, 4, true );
				switch (tauntvc){
					case 1:
						sound_play(vc_mk_taunt_1)
						break;
					case 2:
						sound_play(vc_mk_taunt_2)
						break;
					case 3:
						sound_play(vc_mk_taunt_3)
						break;
				}
			}
		}
	}
	if (window > 3){
	    hud_offset = 60;
	}
}

//-------------------------------------------------------------------------------------------------------------
//Alternate stage collide function. This must go at the end of attack_update.
#define stage_collide_alt {
    ///stage_collide_alt(x1, y1, x2, y2, prec)
    //This recursive script checks from (x1, y1) to (x2, y2) for the location of coordinates
    //of the edge of the stage along that line, returning it as an array formated: [x, y].
    //
    //This script assumes that there is a collision at (x2,y2) and would need to be modified
    //if this is not assumed in order to function properly.
    //
    //  Arguments:
    //      x1      The x cooridnate of the starting point, real.
    //      y1      The y coordinate of the starting point, real.
    //      x2      The x coordinate of the ending point, real.
    //      y2      The y coordinate of the ending point, real.
    //      prec    The number of samples taken for the measurement, real.
    //
    //Script by Deor
    
    var x1 = argument[0];
    var y1 = argument[1];
    var x2 = argument[2];
    var y2 = argument[3];
    var prec = argument[4];
    
    var qpu_x = (x2 - x1) / prec;  //One nth the length of the x component of the input vector, where n is prec.
    var qpu_y = (y2 - y1) / prec;  //One nth the length of the y component of the input vector.
    var x_ = x2;    //The location of the closest detection point that is colliding with the
    var y_ = y2;    //stage, the default being the destination point.
    
    //Check each detection point to find which is the closest to (x1,y1) while still colliding with the stage.
    for(var i = 1; i < prec; i++) {
        if(place_meeting(x2 - qpu_x * i, y2 - qpu_y * i, asset_get("par_block"))) {
            x_ = x2 - qpu_x * i;
            y_ = y2 - qpu_y * i;
        }
    }
    
    //If the closest colliding detection point is not the destination, recurse with the new destination being the closest colliding point.
    if(x_ != x2 && y_ != y2) {
        return stage_collide_alt(x1, y1, x_, y_, prec);
    }
        
    //Otherwise, return the closest free detection point.
    else {
        return [x2 - qpu_x, y2 - qpu_y];
    }
}
//>
//--------------------------------------------

//Supersonic's Base Cast Dust Function
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;