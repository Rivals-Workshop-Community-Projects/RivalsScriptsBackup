// hitbox_update.gml

// template for setting up
/*
if (attack == AT_NSPECIAL){
	if (hbox_num == 1){
		// do stuff here
	}
}
*/



// Neutral Special - SD Card
if (attack == AT_NSPECIAL){


	// yeah
	if (draw_xscale != 1){
		draw_xscale = 1;
	}

	var end_lifetime = length;

	if ("sd_card_thrown_up" not in self){
		sd_card_thrown_up = false;
	}
	
	if ("sd_card_thrown_down" not in self){
		sd_card_thrown_down = false;
	}
	
	if ("sd_card_thrown_diag_up" not in self){
		sd_card_thrown_diag_up = false;
	}
	
	if ("sd_card_thrown_diag_down" not in self){
		sd_card_thrown_diag_down = false;
	}
	
	if ("sd_card_unable_to_recatch" not in self){
		sd_card_unable_to_recatch = false;
	}
	
	if ("spawned_from_operator" not in self){
		spawned_from_operator = false;
	}
	
	if ("stupid_dumb_direction_variable" not in self){
		stupid_dumb_direction_variable = 0;
	}
	
	image_index = hbox_num;
		
	
	
	// i hate how i have to do this :sob:
	if (stupid_dumb_direction_variable != 0){
	
		if (stupid_dumb_direction_variable == 1){
			// print("i should be going RIGHT");
			
			spr_dir = 1;
			hsp = abs(hsp);
		}
		
		if (stupid_dumb_direction_variable == -1){
			// print("i should be going LEFT");
			
			spr_dir = -1;
			hsp = -abs(hsp);
		}
		stupid_dumb_direction_variable = 0;
	}

	/*
	if (sd_card_thrown_up){
		spawn_hit_fx(x, y, 144);
	}
	*/
	
	if (hitbox_timer == end_lifetime){
		sd_card_should_kill_self = true;
	}
	
	// sd card 1
	if (hbox_num == 1){
		// do stuff here
		if (!sd_card_bounced_on_hit){
			vsp = clamp(vsp, -6, 6);
		}
	}
	
	// sd card 2
	if (hbox_num == 2){
	
		if (hitbox_timer == 1){
			if (sd_card_thrown_up && !sd_card_thrown_down && !sd_card_thrown_diag_up && !sd_card_thrown_diag_down){
				hsp = 3*spr_dir;
				vsp = -3;
			} else if (!sd_card_thrown_up && sd_card_thrown_down && !sd_card_thrown_diag_up && !sd_card_thrown_diag_down){
				hsp = 3*spr_dir;
				vsp = 3;
			} else if (!sd_card_thrown_up && !sd_card_thrown_down && sd_card_thrown_diag_up && !sd_card_thrown_diag_down){
				hsp = 6*spr_dir;
				vsp = 0;
			} else if (!sd_card_thrown_up && !sd_card_thrown_down && !sd_card_thrown_diag_up && sd_card_thrown_diag_down){
				hsp = 6*spr_dir;
				vsp = 0;
			}
		}
	
		// do stuff here
		if (!sd_card_bounced_on_hit){
			// vsp = clamp(vsp, -7.5, 7.5);
			
			if ( (hitbox_timer + 4) mod 20 == 0 ){
				if (!sd_card_thrown_up && !sd_card_thrown_down && !sd_card_thrown_diag_up && !sd_card_thrown_diag_down){
					vsp *= -1;
				} else if (sd_card_thrown_up && !sd_card_thrown_down && !sd_card_thrown_diag_up && !sd_card_thrown_diag_down){
					hsp *= -1;
				} else if (!sd_card_thrown_up && sd_card_thrown_down && !sd_card_thrown_diag_up && !sd_card_thrown_diag_down){
					hsp *= -1;
				} else if (!sd_card_thrown_up && !sd_card_thrown_down && sd_card_thrown_diag_up && !sd_card_thrown_diag_down){
					var temp_hsp_swap = hsp;
					var temp_vsp_swap = vsp;
					
					hsp = abs(temp_vsp_swap) * spr_dir;
					vsp = abs(temp_hsp_swap) * -1;
				} else if (!sd_card_thrown_up && !sd_card_thrown_down && !sd_card_thrown_diag_up && sd_card_thrown_diag_down){
					var temp_hsp_swap = hsp;
					var temp_vsp_swap = vsp;
					
					hsp = abs(temp_vsp_swap) * spr_dir;
					vsp = abs(temp_hsp_swap) * 1;
				}
				
			}
			
			
		}
	}
	
	// sd card 3
	if (hbox_num == 3){
		// do stuff here
		
		if (sd_card_thrown_up || sd_card_thrown_down || sd_card_thrown_diag_up || sd_card_thrown_diag_down){
			grounds = 0;
		}
		
		if (
		(!free && (sd_card_thrown_up || sd_card_thrown_down))
		||
		(sd_card_thrown_up && vsp == 0)
		){
			sd_card_should_kill_self = true;
		}
	}
	
	// sd card 4
	if (hbox_num == 4){
		
		// do stuff here
		if (card4_phase != -1){
			if (card4_phase == 1){			
				if (vsp > 0){
					card4_parry_flag_thing = false;
				}
			
				if (!free || (0 > vsp && card4_parry_flag_thing == false) || sd_card_thrown_up || sd_card_thrown_diag_up){
					card4_phase = 2;
					
					hsp = 5.5 * spr_dir;
					vsp = -6;
					grav = 0.5;
				}
			}
			
			if (card4_phase == 2){
				if (sd_card_bounced_on_hit == false){
					grav = 0.5;
				}
				
			}
		}
	}
	
	// sd card 5
	if (hbox_num == 5){
		// new behavior
		if (hitbox_timer == 15){
			card5_stored_hsp = hsp;
			card5_stored_vsp = vsp;
			
			hsp = 0;
			vsp = 0;
			
			card5_refresh_hit = true;
		}
		
		if (hitbox_timer == 30){
			// normal
			/*
			if ( !sd_card_thrown_up && !sd_card_thrown_down && !sd_card_thrown_diag_up && !sd_card_thrown_diag_down ){
				
			}
			*/
			hsp = -card5_stored_hsp;
			vsp = -card5_stored_vsp;
			
			card5_refresh_hit = true;
		}
		
		// refresh hitbox
		if (card5_refresh_hit == true){
			for (var i = 0; i < array_length(can_hit); i++) {//>
				if (i != player) {
					can_hit[i] = true;
					stop_effect = false;
				}
			}
			
			card5_refresh_hit = false;
		}
		
	
		// old behavior
		/*
		if((sd_card_thrown_diag_up || sd_card_thrown_diag_down) && !(sd_card_thrown_up || sd_card_thrown_down)){
			hsp -= 0.8*spr_dir;
			vsp -= 0.7*((sd_card_thrown_diag_up==true)?-1:1)
			
			hsp = clamp(hsp, -10, 10);
			vsp = clamp(vsp, -10, 10);
		} else if !(sd_card_thrown_up || sd_card_thrown_down){
			hsp -= 0.8*spr_dir;
		} else {
			vsp -= 1.2*((sd_card_thrown_up==true)?-1:1)
			
			vsp = clamp(vsp, -16, 16);
		}
		
		if (sd_card_thrown_up || sd_card_thrown_down){
			grounds = 0;
			
			if (!free){
				sd_card_should_kill_self = true;
			}
		}
		
		if (sd_card_thrown_diag_up || sd_card_thrown_diag_down){
		
			if (vsp > 5){
				grounds = 0;
			}
			
			if (!free && vsp > 5){
				sd_card_should_kill_self = true;
			}
		}
		
		if ((spr_dir == 1 && hsp < 0) || (spr_dir == -1 && hsp > 0)){
			if (card5_refresh_hit == false){
				for (var i = 0; i < array_length(can_hit); i++) {//>
					if (i != player) {
						can_hit[i] = true;
						stop_effect = false;
					}
				}
				
				card5_refresh_hit = true;
			}
		}
		*/
	}
	
	// sd card 6
	if (hbox_num == 6){
		if (!sd_card_bounced_on_hit){
			vsp -= 0.4 * (((sd_card_thrown_up||sd_card_thrown_diag_up)==false)?1:-0.8);
			
			if (!free && sd_card_thrown_up){
				sd_card_should_kill_self = true;
			}
		}
		
	}
	
	// sd card 7
	if (hbox_num == 7){
		if (card7_phase == 1){
		
			hit_flipper = 0;
		
			if (hitbox_timer == 20){
			
				
				if (!sd_card_thrown_up && !sd_card_thrown_down) {
					// no or neutral
					
					card7_rotate_point_x = x;
					card7_rotate_point_y = y - card7_rotate_point_rad;
				} else if (sd_card_thrown_up && !sd_card_thrown_down) {
					// up
				
					card7_rotate_point_x = x - (card7_rotate_point_rad*spr_dir);
					card7_rotate_point_y = y;
				} else if (!sd_card_thrown_up && sd_card_thrown_down) {
					// down
				
					card7_rotate_point_x = x - (card7_rotate_point_rad*spr_dir);
					card7_rotate_point_y = y;
				}
				
				
				
				
				card7_phase = 2;
				
				for (var i = 0; i < array_length(can_hit); i++) {//>
					if (i != player) {
						can_hit[i] = true;
						stop_effect = false;
					}
				}
			}
		}
		
		if (card7_phase == 2){
			
			hit_flipper = 3;
			
			var thingtimer = (hitbox_timer - 20);
			
			if (!sd_card_thrown_down){
				card7_rot_ang += 10*spr_dir;
				proj_angle += 10*spr_dir;
			} else {
				card7_rot_ang -= 10*spr_dir;
				proj_angle -= 10*spr_dir;
			}
			
			if (-359 > card7_rot_ang){
				card7_rot_ang += 360;
				proj_angle += 360;
			}
			if (card7_rot_ang > 359){
				card7_rot_ang -= 360;
				proj_angle -= 360;
			}
			
			if (card7_rot_ang > 80 && 100 > card7_rot_ang && !card7_looping_refresh_hit){
				for (var i = 0; i < array_length(can_hit); i++) {//>
					if (i != player) {
						can_hit[i] = true;
						stop_effect = false;
					}
				}
				card7_looping_refresh_hit = true;
			}
			
			// debug
			// spawn_hit_fx(card7_rotate_point_x, card7_rotate_point_y, 305);
			
			var addThingLol = 0;
			if (sd_card_thrown_up || sd_card_thrown_down){
				addThingLol = 90*spr_dir;
			}
			
			x = card7_rotate_point_x + lengthdir_x(card7_rotate_point_rad, card7_rot_ang + addThingLol);
			y = card7_rotate_point_y + lengthdir_y(card7_rotate_point_rad, card7_rot_ang + addThingLol);
			
			
			// ignore how messy this code is lol
			
			if (
			
			(!sd_card_thrown_down &&
			(
			(spr_dir == 1 && card7_rot_ang >= 320 && card7_looping_refresh_hit)
			||
			(spr_dir == -1 && card7_rot_ang <= /*>*/ -120 && card7_looping_refresh_hit)
			)
			)
			
			|| 
			
			(sd_card_thrown_down &&
			(
			(spr_dir == -1 && card7_rot_ang >= 320 && card7_looping_refresh_hit)
			||
			(spr_dir == 1 && card7_rot_ang <= /*>*/ -120 && card7_looping_refresh_hit)
			)
			)
			
			)
			
			
			{
				card7_phase = 3;
				
				for (var i = 0; i < array_length(can_hit); i++) {//>
					if (i != player) {
						can_hit[i] = true;
						stop_effect = false;
					}
				}
			}
		}
		
		if (card7_phase == 3){
			hit_flipper = 0;
		
			if (!sd_card_thrown_up && !sd_card_thrown_down){
				hsp = 6.6*spr_dir;
				vsp = -4;
			} else if (sd_card_thrown_up && !sd_card_thrown_down){
				vsp = -4;
				hsp = -6.6*spr_dir;
			} else if (!sd_card_thrown_up && sd_card_thrown_down){
				vsp = 4;
				hsp = -6.6*spr_dir;
			}
		}
	}
	
	// sd card 8
	if (hbox_num == 8){
		if (card8_phase == 1){
			if (!sd_card_thrown_up && !sd_card_thrown_down){
				vsp += 0.125;
			} else if (sd_card_thrown_up && !sd_card_thrown_down){
				vsp = -9.5;
			} else if (!sd_card_thrown_up && sd_card_thrown_down){
				vsp = 9;
			}
			
			if (sd_card_thrown_diag_up && !sd_card_thrown_diag_down){
				hsp = 11 * spr_dir;
				vsp = -11;
			} else if (!sd_card_thrown_diag_up && sd_card_thrown_diag_down){
				hsp = 11 * spr_dir;
				vsp = 11;
			}
			
			
			if ((!sd_card_thrown_up && !sd_card_thrown_down && !sd_card_thrown_diag_up && !sd_card_thrown_diag_down ) && vsp >= 0){
				card8_phase = 2;
				vsp = 9;
			}	
			
			if ((sd_card_thrown_up || sd_card_thrown_down || sd_card_thrown_diag_up || sd_card_thrown_diag_down) && hitbox_timer >= 20){
				card8_phase = 2;
				vsp = 9;
			}	
		}
		
		if (card8_phase == 2){
			hsp = 0;
			
			if (vsp < 0){
				card8_phase = 3;
			}
		}
		
		if (card8_phase == 3){
			hsp = 0;
			vsp = clamp(vsp, -4, 4);
		}
	}
	
	// sd card 9
	if (hbox_num == 9){
		if (sd_card_thrown_down || sd_card_thrown_diag_down){
			grounds = 0;
		}
		
		if (
		(!free && (sd_card_thrown_down || sd_card_thrown_diag_down))
		||
		((sd_card_thrown_up || sd_card_thrown_diag_up) && vsp == 0)
		){
			sd_card_should_kill_self = true;
		}
	}
	
	// for all hitboxes
	if (sd_card_can_bounce_on_hit && has_hit && sd_card_bounced_on_hit == false){
		hsp = 0;
		vsp = -3;
		
		sd_card_bounced_on_hit = true;
		
		grav = 0.1;
		
		// reset
		grounds = 2;
		walls = 2;
		
		hitbox_timer = (end_lifetime - 60);		
		hitbox_timer = clamp(hitbox_timer, 0, 999);	// prevents negative
		
		// print("test " + string(hitbox_timer));
		
		card4_phase = -1;
	}
	
	if (sd_card_bounced_on_hit){
		proj_angle += 12*spr_dir;
		// if card was already recaught and it bounces, speed up anim to go away faster
		if (sd_card_unable_to_recatch){
			hitbox_timer += 2;
		}
	}
	
	// print(sd_card_unable_to_recatch);
	
	// cooldown
	if (!spawned_from_operator && !player_id.holding_sd_card){
		player_id.move_cooldown[AT_NSPECIAL] = 15;
	}
	
	if (sd_card_unable_to_recatch == false){
		
		if (!was_parried && !player_id.holding_sd_card){
			// checks, direct hitbox touch
			with (asset_get("pHitBox")){
				if (place_meeting(x, y, other) && (type == 1) && (player_id == other.player_id)
				&& (attack != AT_USPECIAL && attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG)
				){
					// print("player can recatch!");
					with (other){
						player_id.holding_sd_card = true;
						player_id.sd_card_was_recaught = true;
						
						if (hbox_num == 10){
							player_id.held_sd_card_num = 0;
						} else {
							player_id.held_sd_card_num = hbox_num;
						}						
						
						sound_play(player_id.sfx_ssbu_item_get);
						
						destroyed = true;
						exit;
					}
				}
			}
			
			// with orig player
			with (player_id){
				if (place_meeting(x, y, other) && attack_pressed){
					// print("player can recatch!");
					with (other){
						player_id.holding_sd_card = true;
						player_id.sd_card_was_recaught = true;
						
						if (hbox_num == 10){
							player_id.held_sd_card_num = 0;
						} else {
							player_id.held_sd_card_num = hbox_num;
						}						
						
						sound_play(player_id.sfx_ssbu_item_get);
						
						destroyed = true;
						exit;
					}
				}
			}
		}
	}
	
	
	//Blastzone stuffs lol
	if (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b || y < blastzone_t){//>
		sd_card_should_kill_self = true;
	}
	
	// die
	if (sd_card_should_kill_self){
		
		sound_play(asset_get("sfx_blow_weak1"), false, noone, 0.7, 1.4);
		
		spawn_hit_fx(x, y, 144);
		
		if (sd_card_unable_to_recatch){
			player_id.move_cooldown[AT_NSPECIAL] = 0;
		}
		
		destroyed = true;
		exit;
	}
}