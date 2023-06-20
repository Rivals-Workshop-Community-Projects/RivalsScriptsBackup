//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

// per-attack logic
switch(attack){
	case AT_NSPECIAL:
		can_move = false;can_fast_fall = false;
		
		if(window <= 2 || window == 7){
			if(right_down && hsp < 1.5){
				hsp += .35;
			}else if(left_down && hsp > -1.5){
				hsp -= .35;
			}
		}

	    if(window == 1){
	    	if(window_timer == 1){
	    		nspecial_start_charge = nspecial_charge;
	    	}
		}else if(window == 2){
			if(special_down && !shield_pressed && !jump_pressed && (nspecial_start_charge >= 400 || nspecial_charge < 400 && nspecial_start_charge < 400)){
				nspecial_charge += 1;
				if(!nspecial_charge_sfx){nspecial_charge_sfx = true;nspecial_charge_sfx2 = sound_play(sound_get("laser charge loop"),true,noone,1.0);sfx = sound_play(sound_get("laser charge start"),false,noone,1.0);}
				if(get_gameplay_time() % 6 == 0){
		    		var lightbeams = noone;
		    		if(nspecial_charge >= 200){ //low
		    			lightbeams = spawn_hit_fx(x+50*spr_dir,y-17+draw_y,fx_lightbeams_small_fast);lightbeams.draw_angle = random_func(0, 360, true);
		    		}if(nspecial_charge >= 400){ //mid
		    			lightbeams = spawn_hit_fx(x+50*spr_dir,y-17+draw_y,fx_lightbeams_small_fast);lightbeams.draw_angle = random_func(1, 360, true);
		    			lightbeams = spawn_hit_fx(x+50*spr_dir,y-17+draw_y,fx_lightbeams_small_fast);lightbeams.draw_angle = random_func(2, 360, true);
		    		}
		    	}
			}else{
	    		if(shield_pressed || !shield_pressed && !jump_pressed && nspecial_charge < 400 || nspecial_charge >= 400 && nspecial_start_charge < 400){ //cancel
		    		window = 7;window_timer = 0;sound_stop(sfx);
		    	}else if(jump_pressed && !free){ //cancel (jump)
		    		window = 20;window_timer = 0;sound_stop(sfx);
		    	}else if(nspecial_charge >= 400){ //pew
		    		window = 3;window_timer = 0;
		    		sound_stop(sfx);sfx = sound_play(sound_get("laser charge start 2"),false,noone,1.15);
			    	sound_play( sound_get("sweep very fast 2") );
			    	
			    	if(voicemode == 1){ //modern
						if(voicecooldown <= 0){
							rand = random_func(2, 3, true);
							if(rand == 0){
								voicecooldown = 60;voicecooldown3 = 60;PlayVoiceClip("pollock_fire_all_weapons", 2.2);
							}else if(rand == 1){
								voicecooldown = 60;voicecooldown3 = 60;PlayVoiceClip("pollock_fire", 2);
							}
						}
					}if(voicemode == 2){ //alfred
						if(voicecooldown <= 0){
							rand = random_func(2, 3, true);
							if(rand == 0){
								voicecooldown = 60;voicecooldown3 = 60;PlayVoiceClip("alfred_superlaserpiss", 2);
							}else if(rand == 1){
								voicecooldown = 60;voicecooldown3 = 60;PlayVoiceClip("alfred_pissingonthemoon", 2);
							}
						}
					}
					
					rand = 0;PlayAttackVoiceClip();
		    	}
	    	}
	    }else if(window == 3){
		    if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
		    	var offset_x = 20;
				create_hitbox(AT_NSPECIAL, 1, round(x+(160+offset_x)*spr_dir), round(y-40));create_hitbox(AT_NSPECIAL, 1, round(x+(400+offset_x)*spr_dir), round(y-40));create_hitbox(AT_NSPECIAL, 1, round(x+(640+offset_x)*spr_dir), round(y-40));
                create_hitbox(AT_NSPECIAL, 1, round(x+(880+offset_x)*spr_dir), round(y-40));create_hitbox(AT_NSPECIAL, 1, round(x+(1120+offset_x)*spr_dir), round(y-40));create_hitbox(AT_NSPECIAL, 1, round(x+(1360+offset_x)*spr_dir), round(y-40));
				
				var effect = fx_nspec_laser;var effect2 = fx_nspec_laser2;offset_x = 50;
				shake_camera(15, 8);
				
				var laser = spawn_hit_fx(round(x+(235+offset_x)*spr_dir),round(y-40),effect);laser.depth = depth-2;laser.draw_angle = -90*spr_dir;laser = spawn_hit_fx(round(x+(475+offset_x)*spr_dir),round(y-40),effect);laser.depth = depth-2;laser.draw_angle = -90*spr_dir;
		    	laser = spawn_hit_fx(round(x+(715+offset_x)*spr_dir),round(y-40),effect);laser.depth = depth-2;laser.draw_angle = -90*spr_dir;laser = spawn_hit_fx(round(x+(955+offset_x)*spr_dir),round(y-40),effect);laser.depth = depth-2;laser.draw_angle = -90*spr_dir;
		    	laser = spawn_hit_fx(round(x+(1195+offset_x)*spr_dir),round(y-40),effect);laser.depth = depth-2;laser.draw_angle = -90*spr_dir;laser = spawn_hit_fx(round(x+(1435+offset_x)*spr_dir),round(y-40),effect);laser.depth = depth-2;laser.draw_angle = -90*spr_dir;
		    	laser = spawn_hit_fx(round(x+(195+offset_x)*spr_dir),round(y-40),effect2);laser.depth = depth-1;laser.draw_angle = -90*spr_dir;
		    	
		    	var lightbeams = spawn_hit_fx(round(x+(50+offset_x)*spr_dir),round(y-40),fx_lightbeams_small_fast);lightbeams.draw_angle = random_func(0, 360, true);
				lightbeams = spawn_hit_fx(round(x+(50+offset_x)*spr_dir),round(y-40),fx_lightbeams_small_fast);lightbeams.draw_angle = random_func(2, 1080, true);
				lightbeams = spawn_hit_fx(round(x+(50+offset_x)*spr_dir),round(y-40),fx_lightbeams_small);lightbeams.draw_angle = random_func(3, 1440, true);
				lightbeams = spawn_hit_fx(round(x+(100+offset_x)*spr_dir),round(y+20),fx_sharphit_big);lightbeams.draw_angle = 45*spr_dir;lightbeams = spawn_hit_fx(round(x+(60+offset_x)*spr_dir),round(y+20),fx_sharphit_big);lightbeams.draw_angle = 25*spr_dir;
				lightbeams = spawn_hit_fx(round(x+(100+offset_x)*spr_dir),round(y-100),fx_sharphit_big);lightbeams.draw_angle = 135*spr_dir;lightbeams = spawn_hit_fx(round(x+(60+offset_x)*spr_dir),round(y-100),fx_sharphit_big);lightbeams.draw_angle = 155*spr_dir;
		    	
		    	sound_play( sound_get("laser shot hit") );sound_play( sound_get("laser_shot") );sound_play( sound_get("mech explosion") );
				hsp *= 0.5;vsp = 0;
				nspecial_charge = 0;
		    }
	    }else if(window == 4){
	    	hsp *= 0.5;vsp = 0;
	    }else if(window == 5){
	    	hsp *= 0.5;vsp *= 0.5;
	    }
	    if(window != 2){nspecial_charge_sfx = false;sound_stop(nspecial_charge_sfx2);}
	break;
	case AT_FSPECIAL:
		if(window == 1){
			if(window_timer == 1){
				target_list = ds_list_create();
				fspec_sfx = false;
			}
			if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
				sound_play(sound_get("laser"),false,noone,1.0);
			}
		}else if(window == 2){
			target_list = ds_list_create();
			//if(window_timer == 1){
				//eff = spawn_hit_fx(x+50*spr_dir, y-50,fx_aimlasers_small);eff.draw_angle = random_func(0, 360, true);
				//eff = spawn_hit_fx(x+50*spr_dir, y-50,fx_aimlasers_verysmall);eff.draw_angle = random_func(10, 720, true);
				if(up_down){
					set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
					if(window_timer == 1 || window_timer == 3 || fspecialY != -1000){
						fspecialY = -1000;
						eff = spawn_hit_fx(x+450*spr_dir,y-82,fx_aimlaser);eff.depth = depth-1;eff.draw_angle = 6*spr_dir;eff = spawn_hit_fx(x+1150*spr_dir,y-154,fx_aimlaser);eff.depth = depth-1;eff.draw_angle = 6*spr_dir;
						eff = spawn_hit_fx(x+1950*spr_dir,y-226,fx_aimlaser);eff.depth = depth-1;eff.draw_angle = 6*spr_dir;
					}
				}else if(down_down){
					set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 8);
					if(window_timer == 1 || window_timer == 3 || fspecialY != 1000){
						fspecialY = 1000;
						eff = spawn_hit_fx(x+450*spr_dir,y+2,fx_aimlaser);eff.depth = depth-1;eff.draw_angle = -6*spr_dir;eff = spawn_hit_fx(x+1150*spr_dir,y+78,fx_aimlaser);eff.depth = depth-1;eff.draw_angle = -6*spr_dir;
						eff = spawn_hit_fx(x+1950*spr_dir,y+138,fx_aimlaser);eff.depth = depth-1;eff.draw_angle = -6*spr_dir;
					}
				}else{
					reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START);
					if(window_timer == 1 || window_timer == 3 || fspecialY != 0){
						fspecialY = 0;
						eff = spawn_hit_fx(x+450*spr_dir,y-40,fx_aimlaser);eff.depth = depth-1;eff = spawn_hit_fx(x+1250*spr_dir,y-40,fx_aimlaser);eff.depth = depth-1;
						eff = spawn_hit_fx(x+2050*spr_dir,y-40,fx_aimlaser);eff.depth = depth-1;eff = spawn_hit_fx(x+2850*spr_dir,y-40,fx_aimlaser);eff.depth = depth-1;
					}
				}
				//target hitboxes
				target_list = collision_line_list(x+(50*spr_dir), y - 40, x+(10000*spr_dir), y - 50 + fspecialY, pHitBox, true, true);
				if(ds_list_valid(target_list)) {
					for(var i=0; i < ds_list_size(target_list); i++) {var target = ds_list_find_value(target_list, i);
						if(target.type == 2 && target.player_id != self){var aim = instance_create(round(target.x), round(target.y),"obj_article1");aim.fspec_target = target;}
					}
				}
				//target article 1
				target_list = collision_line_list(x+(50*spr_dir), y - 40, x+(10000*spr_dir), y - 50 + fspecialY, obj_article1, true, true);
				if(ds_list_valid(target_list)) {
					for(var i=0; i < ds_list_size(target_list); i++) {var target = ds_list_find_value(target_list, i);
						if("Eggman_Aim" not in target && target.player_id != self){var aim = instance_create(round(target.x), round(target.y),"obj_article1");aim.fspec_target = target;}
					}
				}
				//target article 2
				target_list = collision_line_list(x+(50*spr_dir), y - 40, x+(10000*spr_dir), y - 50 + fspecialY, obj_article2, true, true);
				if(ds_list_valid(target_list)) {
					for(var i=0; i < ds_list_size(target_list); i++) {var target = ds_list_find_value(target_list, i);
						if(target.player_id != self){var aim = instance_create(round(target.x), round(target.y),"obj_article1");aim.fspec_target = target;}
					}
				}
				//target article 3
				target_list = collision_line_list(x+(50*spr_dir), y - 40, x+(10000*spr_dir), y - 50 + fspecialY, obj_article3, true, true);
				if(ds_list_valid(target_list)) {
					for(var i=0; i < ds_list_size(target_list); i++) {var target = ds_list_find_value(target_list, i);
						if(target.player_id != self){var aim = instance_create(round(target.x), round(target.y),"obj_article1");aim.fspec_target = target;}
					}
				}
				//target players
				target_list = collision_line_list(x+(50*spr_dir), y - 40, x+(10000*spr_dir), y - 50 + fspecialY, pHurtBox, true, true);
				if(ds_list_valid(target_list)) {
					for(var i=0; i < ds_list_size(target_list); i++) {
						var target = ds_list_find_value(target_list, i);aimtarget = target;
						var height = target.bbox_bottom - target.bbox_top;
						
						//spawn target
		    			var aim = instance_create(round(target.x), round(target.y),"obj_article1");
		    			//get the player that the hurtbox (probably) belongs to
		    			with(oPlayer){
			    			if(self != other && place_meeting(x,y,other.aimtarget))other.aimtarget = self;
			    		}
			    		//do stuff, assuming it is a player (it should be!!!)
		    			if(aimtarget.object_index == oPlayer){
			    			aim.fspec_target = aimtarget;
			    			aim.fspec_target_player = true;aim.fspec_target_offset = aimtarget.char_height/2;
			    			
			    			if(voicemode == 2){ //alfred
				    			var amy = false;
				    			with(aimtarget){
							    	if(string_count("Amy", string( get_char_info(player, INFO_STR_NAME) )) > 0){
								    	with(other){amy = true;}
									}
								}
								if(amy){
									if(voicecooldown <= 0){
										rand = random_func(2, 6, true);
										if(rand == 0){
											voicecooldown = 90;PlayVoiceClip("alfred_shoot_amy", 2);
										}
									}
								}
			    			}
						}
					}
				}
			//}
			if(ds_list_valid(target_list)){
				ds_list_destroy(target_list);
			}
			if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 && !hitpause){
				window_timer = 0;
			}else if(!special_down){
				window = 3;window_timer = 0;
			}else if(shield_pressed){
				window = 6;window_timer = 0;
			}
		}else if(window == 3){
			if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
				with(asset_get("obj_article1")){
					if(player_id == other && !fspec_projectile_targeting && !other.fspec_sfx){
						var projectile = create_hitbox(AT_FSPECIAL, 1, other.x+(70*other.spr_dir), other.y - 100);projectile.target = fspec_target;
						fspec_projectile = projectile;fspec_projectile_targeting = true;
						other.fspec_sfx = true;
					}
				}
				if(fspec_sfx){
					sound_play(sound_get("laser_shot"),false,noone,0.8);
					if(voicemode == 1){ //modern
						if(voicecooldown <= 0){
							rand = random_func(2, 2, true);
							if(rand == 0){
								PlayVoiceClip("pollock_fire", 2);
							}
						}
					}else if(voicemode == 2){ //alfred
						if(voicecooldown <= 0){
							rand = random_func(2, 5, true);
							if(rand == 0){
								voicecooldown = 60;PlayVoiceClip("alfred_laser", 2);
							}else if(rand == 1){
								voicecooldown = 60;PlayVoiceClip("alfred_im_poppin_between_yo_eyes", 2);
							}else if(rand == 2){
								voicecooldown = 60;PlayVoiceClip("alfred_shoot", 2);
							}
						}
					}
					rand = random_func(1, 2, true);PlayAttackVoiceClip();
				}else{
					window = 5;window_timer = 0;
				}
				fspec_sfx = false;
				with(asset_get("obj_article1")){
					if(player_id == other && !fspec_projectile_targeting){
						other.fspec_sfx = true;
					}
				}
			}
		}else if(window == 4){
			if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause && fspec_sfx){
				window = 3;window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH)-1;fspec_sfx = false;
			}
			move_cooldown[AT_FSPECIAL] = 30;
		}
		if(window >= 3 && window <= 5){
			if(free && vsp > 0)vsp *= 0.9;
		}
	break;
	case AT_USPECIAL:
		if(window == 1 || window == 4){
			if(window_timer == 1){
				move_cooldown[AT_USPECIAL] = 999;upb = true;
			}
			if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
				if(window == 1){
					create_hitbox(AT_USPECIAL, 1, x, y-35);y -= 20;
				}vsp = -12;
				if(inside_mech){
					if(voicemode == 1){ //modern
						rand = random_func(0, 5, true);
					    if(rand == 0){
					    	PlayVoiceClip("pollock_catch_me_if_you_can", 2);
					    }else if(rand == 1){
					    	PlayVoiceClip("pollock_time_for_a_change_of_pace", 2);
					    }
					}else if(voicemode == 2){ //alfred
						rand = random_func(0, 4, true);
					    if(rand == 0){
					    	PlayVoiceClip("alfred_legs", 2);
					    }
					}
				}
				inside_mech = false;
				sound_play(sound_get("hover start short"),false,noone,0.85);
				window = 2;window_timer = 0;
			}
			//if moving backwards and the player is holding forward, slow down the hsp
			if(hsp*spr_dir < 0 && (spr_dir == 1 && right_down || spr_dir == -1 && left_down))hsp = 0.5;
			
		}else if(window == 2){
			if(window_timer < 10 && vsp > -8)vsp -= 1;
			if(get_gameplay_time() % 4 == 0){
		        var eff = spawn_hit_fx(x-(20+random_func(0, 15, true))*spr_dir,y-60+random_func(1, 20, true),fx_dust_dark);eff.depth = depth-1;
		    }if(get_gameplay_time() % 3 == 0){
		        var eff = spawn_hit_fx(x-(20+random_func(2, 15, true))*spr_dir,y-60+random_func(3, 20, true),fx_fire);eff.depth = depth-1;
		    }
		}else if(window == 3){
			can_wall_jump = true;
		}else if(window == 5){
			can_move = false;
			hsp *= 0.85;vsp *= 0.85;
			if(upb){
				move_cooldown[AT_USPECIAL] = 999;
			}
			if(window_timer == 1){
				sound_play(sound_get("mech phaser"),false,noone,1.25);
			}if(window_timer <= 3){
				var eff = spawn_hit_fx(x-60+random_func(0, 120, true),y-90+random_func(1, 80, true),fx_pixel);eff.depth = depth-1;
				eff = spawn_hit_fx(x-60+random_func(2, 120, true),y-90+random_func(3, 80, true),fx_pixel_fast);eff.depth = depth-1;
				eff = spawn_hit_fx(x-60+random_func(4, 120, true),y-90+random_func(5, 80, true),fx_pixel_fast2);eff.depth = depth-1;
				eff = spawn_hit_fx(x-60+random_func(6, 120, true),y-90+random_func(7, 80, true),fx_pixel_fast);eff.depth = depth-1;
				eff = spawn_hit_fx(x-60+random_func(8, 120, true),y-90+random_func(9, 80, true),fx_pixel_fast2);eff.depth = depth-1;
			}
		}
	break;
	case AT_DSPECIAL:
		if(window == 2){
			if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
				sound_play(sound_get("dspecial_button"),false,noone,2);
				if(eggpawn_cooldown <= 0 && !instance_exists(the_eggpawn) || eggpawn_cooldown2 <= 0 && !instance_exists(the_eggpawn2)){
					var eggpawn = instance_create(round(x+65*spr_dir), round(y-45),"obj_article2");
					if(!instance_exists(the_eggpawn) && eggpawn_cooldown <= 0){
						the_eggpawn = eggpawn;the_eggpawn.eggpawn_num = 0;eggpawn_cooldown = 240;
					}else if(!instance_exists(the_eggpawn2) && eggpawn_cooldown2 <= 0){
						the_eggpawn2 = eggpawn;the_eggpawn2.eggpawn_num = 1;eggpawn_cooldown2 = 300;
					}
					sound_play(sound_get("mech phaser2"),false,noone,1.1);
					var eff = spawn_hit_fx(round(x+65*spr_dir),round(y-45),fx_orb);eff.depth = depth+2;
					eff = spawn_hit_fx(round(x+(35+random_func(0, 60, true))*spr_dir),round(y-75+random_func(1, 60, true)),fx_pixel);eff.depth = depth+1;
					eff = spawn_hit_fx(round(x+(35+random_func(2, 60, true))*spr_dir),round(y-75+random_func(3, 60, true)),fx_pixel_fast);eff.depth = depth+1;
					eff = spawn_hit_fx(round(x+(35+random_func(4, 60, true))*spr_dir),round(y-75+random_func(5, 60, true)),fx_pixel_fast2);eff.depth = depth+1;
					eff = spawn_hit_fx(round(x+(35+random_func(6, 60, true))*spr_dir),round(y-75+random_func(7, 60, true)),fx_pixel_fast);eff.depth = depth+1;
					eff = spawn_hit_fx(round(x+(35+random_func(8, 60, true))*spr_dir),round(y-75+random_func(9, 60, true)),fx_pixel_fast2);eff.depth = depth+1;
					
					if(voicemode == 0){ //adventure
						rand = random_func(0, 7, true);
					    if(rand == 0){
					    	PlayVoiceClip("adv_smash_them_all", 1.75);
					    }else if(rand == 1){
					    	PlayVoiceClip("adv_get_them", 1.75);
					    }else if(rand == 2){
					    	PlayVoiceClip("adv_eradicate_all", 1.75);
					    }else if(rand == 3){
					    	PlayVoiceClip("adv_new_assignment", 1.75);
					    }
					}else if(voicemode == 1){ //modern
						rand = random_func(0, 4, true);
					    if(rand == 0){
					    	if(sonic_inmatch){
						    	PlayVoiceClip("pollock_get_rid_of_that_blue_bozo", 1.75);
						    }else if(based_frog_inmatch){
						    	PlayVoiceClip("pollock_your_mission_is_to_jump_this_froggy", 1.75);
						    }
					    }
					}
					if(free){
						if(voicemode == 1){ //modern
							rand = random_func(0, 3, true);
						    if(rand == 0){
						    	PlayVoiceClip("pollock_wing_units_deploy", 2);
						    }
						}
					}
				}else{
					if(voicemode == 1){ //modern
						rand = random_func(0, 4, true);
					    if(rand == 0){
					    	PlayVoiceClip("pollock_lost_control_again", 2);
					    }else if(rand == 1){
					    	PlayVoiceClip("pollock_the_controls_wont_respond", 2);
					    }
					}else if(voicemode == 2){ //alfred
						rand = random_func(0, 4, true);
					    if(rand == 0){
					    	PlayVoiceClip("alfred_wtf", 2);
					    }else if(rand == 1){
					    	PlayVoiceClip("alfred_what_the_actual_shit", 2);
					    }
					}
				}
			}
		}
	break;
	case AT_FSTRONG:
		if(window == 1 && !hitpause){
			if(window_timer == 1){
				if(hsp*spr_dir < 0){hsp *= 0.25;/*vsp = -3;*/}else{hsp *= 1.5;}
			}
			if (window_timer == round(get_window_value(attack, window, AG_WINDOW_LENGTH)/2)){
	        	sound_play(sound_get("mech sfx"),false,noone,0.5);
	    	}
		}
		if(window <= 2 && window_timer != get_window_value(attack, window, AG_WINDOW_LENGTH)-1 && !hitpause ){
			hsp -= 0.75*spr_dir;
		}
		if(window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			hsp = 10*spr_dir;shake_camera(5,5);
			sound_play(sound_get("mech_stomp"),false,noone,1.0);
			if(free){
				set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 10);
				set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.8);
			}else{
				reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);
				reset_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING);reset_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING);
			}
		}
		if(window == 4 && !hitpause){
			hsp *= 0.9;
		}
		if(free && vsp > 0)vsp *= 0.85;
	break;
	case AT_USTRONG:
		if (window == 1 && window_timer == round(get_window_value(attack, window, AG_WINDOW_LENGTH)/2) && !hitpause){
        	sound_play(sound_get("mech sfx"),false,noone,0.35);
    	}
		if ((window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) || window >= 3 && window <= 4 && window_timer % 3 == 0) && !hitpause){
			sound_play(asset_get("sfx_metal_hit_weak"));
		}
		if (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			shake_camera(4,3);
        	sound_play(asset_get("sfx_metal_hit_strong"));sound_play(sound_get("mech sfx"),false,noone,0.75);
    	}
	break;
	case AT_DSTRONG:
		if (window == 1 && window_timer == round(get_window_value(attack, window, AG_WINDOW_LENGTH)/2) && !hitpause){
        	sound_play(sound_get("mech sfx"),false,noone,0.35);
    	}
		if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
        	shake_camera(8, 8);
        	eff = spawn_hit_fx(x+120*spr_dir,y,fx_slamfast);eff.depth = depth-1;eff = spawn_hit_fx(x+60*spr_dir,y,fx_slamfast);eff.depth = depth-1;eff.spr_dir = -spr_dir;
        	eff = spawn_hit_fx(x-120*spr_dir,y,fx_slamfast);eff.depth = depth-1;eff.spr_dir = -spr_dir;eff = spawn_hit_fx(x-60*spr_dir,y,fx_slamfast);eff.depth = depth-1;
        	sound_play(sound_get("mech_stomp"),false,noone,0.75);sound_play(sound_get("mech_stomp2"),false,noone,0.75);
    	}
	break;
	case AT_NAIR:
		if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			nair_loop = 0;sound_play(sound_get("mech sfx"),false,noone,0.75);
			create_hitbox(AT_NAIR, 1, x, y);
		}
		if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause && /*(*/nair_loop < 2
		/*|| (attack_down || strong_down || left_stick_down || right_stick_down || right_strong_pressed || left_strong_pressed) && nair_loop < 3)*/){
			window = 2;window_timer = 0;
			nair_loop += 1;sound_play(sound_get("mech sfx"),false,noone,0.5);
		}else if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			create_hitbox(AT_NAIR, 2, x, y);
		}
	break;
	case AT_BAIR:
		if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sound_play(sound_get("fire"),false,noone,0.75);
			sound_play(asset_get("sfx_zetter_fireball_fire"),false,noone,0.5);
			if(attack_down || strong_down || left_stick_down || right_stick_down || right_strong_pressed || left_strong_pressed){
				window = 6;window_timer = 0;set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 8);set_attack_value(AT_BAIR, AG_CATEGORY, 2);
			}
			if(voicemode == 1){ //modern
				rand = random_func(2, 2, true);
				if(rand == 0 && voicecooldown <= 0){
					voicecooldown = 60;
					PlayVoiceClip("pollock_burn", 1.75);
				}
			}
		}
		if(window >= 3 && window <= 5 && !hitpause){
			if(abs(hsp) > 6){set_hitbox_value(AT_BAIR, 7, HG_PRIORITY, 4);}else{reset_hitbox_value(AT_BAIR, 7, HG_PRIORITY);}
		}
		if(window == 6){
			can_fast_fall = false;
		}else{
			can_fast_fall = true;
		}
		if(window == 3 || window == 4 || window == 6 || window == 7){
			if(get_gameplay_time() % 2 == 0){
				var fire = spawn_hit_fx(x-(130*spr_dir)+random_func(0, 70, true)*spr_dir,y-35-random_func(1, 40, true),fx_fire);fire.draw_angle = (25+random_func(4, 60, true))*spr_dir;
				fire = spawn_hit_fx(x-(130*spr_dir)+random_func(2, 70, true)*spr_dir,y-35-random_func(3, 40, true),fx_fire_fast);fire.draw_angle = (25+random_func(5, 60, true))*spr_dir;
			}if(get_gameplay_time() % 3 == 0){
				var fire = spawn_hit_fx(x-(130*spr_dir)+random_func(4, 70, true)*spr_dir,y-35-random_func(5, 40, true),fx_fire);fire.draw_angle = (25+random_func(6, 60, true))*spr_dir;
			}
		}
	break;
	case AT_UAIR:
		if(window == 1 && window_timer == 1 && !hitpause){
			sound_play(sound_get("eggdragoon_sfx"),false,noone,1.0);
		}
		if(((window == 1 || window == 2) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) || (window == 2 || window == 3) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)/2) && !hitpause){
			sound_play(sound_get("eggdragoon_shot2"),false,noone,0.75);
			var projectile = create_hitbox(AT_UAIR, 7, x+((50+random_func(0, 15, true))*spr_dir), y-145+random_func(1, 15, true));projectile.hsp = 3*spr_dir;projectile.vsp = -30;
		}
		if(window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sound_play(sound_get("eggdragoon_shot"),false,noone,1.0);
			var projectile = create_hitbox(AT_UAIR, 7, x+((50+random_func(0, 15, true))*spr_dir), y-145+random_func(1, 15, true));projectile.hsp = 3*spr_dir;projectile.vsp = -30;
			projectile = create_hitbox(AT_UAIR, 7, x+((50+random_func(2, 15, true))*spr_dir), y-145+random_func(3, 15, true));projectile.hsp = 2*spr_dir;projectile.vsp = -30;
			projectile = create_hitbox(AT_UAIR, 7, x+((50+random_func(4, 15, true))*spr_dir), y-145+random_func(5, 15, true));projectile.hsp = 4*spr_dir;projectile.vsp = -30;
		}
	break;
	case AT_DAIR:
		if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sound_play(sound_get("mech sfx"),false,noone,0.75);
		}
	break;
	case AT_FTILT:
		if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sound_play(sound_get("mech sfx"),false,noone,0.75);
			with(asset_get("obj_article2")){
				if(player_id == other){
					if(!instance_exists(eggpawn_target)){
						spr_dir = other.spr_dir;
					}
				}
			}
		}
		if(window == 3 && window_timer == 5 && !hitpause && (attack_down || right_stick_down || left_stick_down)){
			window_timer -= 1;
			if(!instance_exists(ftilt_hitbox))ftilt_hitbox = create_hitbox(AT_FTILT, 4, x, y);
		}
	break;
	case AT_UTILT:
		if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			sound_play(sound_get("boxing_glove short"),false,noone,0.75);
		}
	break;
	case AT_DTILT:
		if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			shake_camera(5,3);eff = spawn_hit_fx(x+130*spr_dir,y,fx_dust_sharp_fast);eff.depth = depth-1;eff = spawn_hit_fx(x+40*spr_dir,y,fx_dust_sharp_fast);eff.depth = depth-1;eff.spr_dir = -spr_dir;
			sound_play(sound_get("mech_stomp"),false,noone,0.5);sound_play(sound_get("mech_stomp2"),false,noone,0.5);
		}
		if((window >= 3 && window_timer >= round(get_window_value(attack, window, AG_WINDOW_LENGTH)/2) 
		|| window >= 3 && (right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed))
		&& !down_stick_pressed && (!attack_down || attack_down && !down_down) && !hitpause && has_hit){
	    	cancelattack();
		}
	break;
	case AT_DATTACK:
		can_fast_fall = false;
		if(!has_hit && window <= 2){
	    	can_move = false;
		}if(has_hit){
	    	can_wall_jump = true;
		}
	    if(window == 1){
	    	if(window_timer == 1 ){
				dattack_timer = 0;hit_timer = 0;eff_offset_X = 0;eff_offset_Y = 0;dattack_anim = 0;dattack_alpha = 0;dattack_hit = false;
				if(voicemode == 0){ //adventure
					rand = random_func(2, 3, true);
				    if(rand == 0 && voicecooldown <= 0){
				    	voicecooldown = 60;
				    	PlayVoiceClip("adv_charge", 1.75);
				    }
				}
			}
	        if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
				sound_play(sound_get("forcefield"),false,noone,0.8);sfx = sound_play(sound_get("hornet_loop"),true,noone,0.8);
			}
	    }else if(window == 2){
	    	eff_offset_X = 0;eff_offset_Y = 20;
	        grav = 0.2;
	        if(dattack_alpha < 7)dattack_alpha += 1;
	    }else if(window == 3){
	        eff_offset_X = 0;eff_offset_Y = -10;
	        if(window_timer >= 10){eff_offset_X = 10;eff_offset_Y = -20;}
	        grav = 0.2;
	    }else if(window == 4){
	    	eff_offset_X = 25;eff_offset_Y = -30;
	    	if(window_timer >= 5 && !instance_exists(dattack_hitbox)){
	    		dattack_hitbox = create_hitbox(AT_DATTACK, 6, x, y);
	    	}
	    	if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 && (attack_down || right_stick_down || left_stick_down || (!has_hit || dattack_hit || was_parried) && dattack_timer < 15)){
				window_timer -= 1;
				dattack_timer += 1;
				if(!hitpause){
					hit_timer --;
        			if(hit_timer <= 0)attack_end();
				}
			}
			if((window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) || has_hit && !dattack_hit && !was_parried && !attack_down && !right_stick_down && !left_stick_down) && !hitpause){
				window = 6;window_timer = 0;vsp = -5;
				sound_stop(sfx);
			}
	    }else if(window == 5){
	    	if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
				var buryeffect = spawn_hit_fx(x+75*spr_dir,y,fx_bury);buryeffect.depth = depth-1;
				buryeffect = spawn_hit_fx(x-25*spr_dir,y,fx_bury);buryeffect.depth = depth-1;buryeffect.spr_dir = -spr_dir;
				if(!was_parried){hsp = -2*spr_dir;}vsp = -5;
			}
	    }
	    if(window >= 5){
	    	if(dattack_alpha > 0){dattack_alpha -= 2;}else{dattack_alpha = 0;}
	    }
	    if(window == 3 || window == 4){
	    	if(!free){
	    		window = 5;window_timer = 0;hsp *= 0.75;
	    		shake_camera(8, 8);
	    		eff = spawn_hit_fx(x+70*spr_dir,y,fx_slamfast);eff.depth = depth-1;eff = spawn_hit_fx(x+10*spr_dir,y,fx_slamfast);eff.depth = depth-1;eff.spr_dir = -spr_dir;
        		//eff = spawn_hit_fx(x-30*spr_dir,y,fx_slamfast);eff.depth = depth-1;eff.spr_dir = -spr_dir;eff = spawn_hit_fx(x+90*spr_dir,y,fx_slamfast);eff.depth = depth-1;
	    		eff = spawn_hit_fx(x+90*spr_dir,y,fx_dust_sharp_big_fast);eff.depth = depth-1;eff = spawn_hit_fx(x-30*spr_dir,y,fx_dust_sharp_big_fast);eff.depth = depth-1;eff.spr_dir = -spr_dir;
				sound_play(sound_get("mech sfx"),false,noone,0.35);sound_play(sound_get("groundhit"),false,noone,1.25);sound_play(sound_get("mech_stomp"),false,noone,0.75);
	    		set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 6);
	    		if(dattack_hit || was_parried){
	    			set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 40);
	    		}else if(has_hit){
	    			set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 10);
	    		}else{
	    			reset_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH);
	    		}
	    		destroy_hitboxes();sound_stop(sfx);
	    	}
	    }
	    if(window >= 2 && window <= 4){
			if(get_gameplay_time() % 2 == 0){
				var fire = spawn_hit_fx(x-(110*spr_dir)+(random_func(0, 70, true)+eff_offset_X)*spr_dir,y-35-random_func(1, 40, true)+eff_offset_Y,fx_fire);fire.draw_angle = (25+random_func(4, 60, true))*spr_dir;
				fire = spawn_hit_fx(x-(110*spr_dir)+(random_func(2, 70, true)+eff_offset_X)*spr_dir,y-35-random_func(3, 40, true)+eff_offset_Y,fx_fire_fast);fire.draw_angle = (25+random_func(5, 60, true))*spr_dir;
				dattack_anim += 1;
			}if(get_gameplay_time() % 3 == 0){
				var fire = spawn_hit_fx(x-(110*spr_dir)+(random_func(4, 70, true)+eff_offset_X)*spr_dir,y-35-random_func(5, 40, true)+eff_offset_Y,fx_fire_slow);fire.draw_angle = (25+random_func(6, 60, true))*spr_dir;
			}
		}
		if(!hitpause && soft_armor > 0){
			armor_timer --;
			if(armor_timer <= 0)soft_armor = 0;
		}
	break;
	case AT_TAUNT:
		if(window == 2 && window_timer == 1 && !hitpause && voicecooldown <= 0){
			voicecooldown = 120;
			if(voicemode == 0){ //adventure
				rand = random_func(0, 13, true);
			    if(rand == 0){
			    	PlayVoiceClip("adv_hohoho", 1.25);voicecooldown -= 60;
			    }else if(rand == 1){
			    	PlayVoiceClip("adv_hohohoho", 1.75);voicecooldown -= 15;
			    }else if(rand == 2){
			    	PlayVoiceClip("adv_laugh", 1.75);voicecooldown -= 30;
			    }else if(rand == 3){
			    	PlayVoiceClip("adv_laugh2", 1.75);
			    }else if(rand == 4){
			    	PlayVoiceClip("adv_laugh3", 1.75);voicecooldown -= 40;
			    }else if(rand == 5){
			    	PlayVoiceClip("adv_laugh4", 1.75);voicecooldown -= 40;
			    }else if(rand == 6){
			    	PlayVoiceClip("adv_laugh5", 1.75);
			    }else if(rand == 7){
			    	PlayVoiceClip("adv_laugh6", 1.75);
			    }else if(rand == 8){
			    	PlayVoiceClip("adv_laugh7", 1.75);
			    }else if(rand == 9){
			    	PlayVoiceClip("adv_laugh8", 1.75);voicecooldown += 60;
			    }else if(rand == 10){
			    	PlayVoiceClip("adv_laugh9", 1.75);
			    }else if(rand == 11){
			    	PlayVoiceClip("adv_laughing_forever", 1.75);voicecooldown += 400;
			    }else if(rand == 12){
			    	PlayVoiceClip("adv_laughing_forever2", 1.75);voicecooldown += 180;
			    }
			}else if(voicemode == 1){ //modern
				rand = random_func(0, 8, true);
			    if(rand == 0){
			    	PlayVoiceClip("pollock_laugh", 1.75);
			    }else if(rand == 1){
			    	PlayVoiceClip("pollock_laugh2", 1.75);voicecooldown -= 45;
			    }else if(rand == 2){
			    	PlayVoiceClip("pollock_laugh3", 1.75);voicecooldown += 20;
			    }else if(rand == 3){
			    	PlayVoiceClip("pollock_laugh4", 1.75);
			    }else if(rand == 4){
			    	PlayVoiceClip("pollock_laugh5", 1.75);voicecooldown += 20;
			    }else if(rand == 5){
			    	PlayVoiceClip("pollock_laugh6", 1.65);voicecooldown -= 30;
			    }else if(rand == 6){
			    	PlayVoiceClip("pollock_laugh7", 1.65);voicecooldown -= 60;
			    }else if(rand == 7){
			    	PlayVoiceClip("pollock_laugh8", 1.65);
			    }
			}else if(voicemode == 2){ //alfred
				rand = random_func(0, 3, true);
			    if(rand == 0){
			    	PlayVoiceClip("alfred_laugh", 1.75);voicecooldown += 80;
			    }else if(rand == 1){
			    	PlayVoiceClip("alfred_laugh2", 1.75);voicecooldown += 400;
			    }else if(rand == 2){
			    	PlayVoiceClip("alfred_laugh3", 1.75);
			    }
			}
		}
		if(window == 2){
			if(get_gameplay_time() % 15 == 0){
		        spawn_hit_fx(x+(35+random_func(0, 10, true))*spr_dir,y-90+random_func(1, 15, true)+draw_y,fx_laugh);
		    	var eff = spawn_hit_fx(x-(50-random_func(2, 10, true))*spr_dir,y-90+random_func(3, 15, true)+draw_y,fx_laugh);eff.spr_dir = -spr_dir;
		    }
		}
		if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			if(taunt_down){
				window_timer = 0;
			}else{
				voicecooldown = 0;sound_stop(voice);
			}
		}
	break;
}

//play sfx on most normals
if (attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG
&& attack != AT_NSPECIAL && attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL
&& attack != AT_TAUNT){
    if(window == 1 && window_timer == round(get_window_value(attack, window, AG_WINDOW_LENGTH)/2)){rand = random_func(1, 5, true);PlayAttackVoiceClip();}
}
//play sfx on strongs
if (attack = AT_FSTRONG || attack = AT_USTRONG || attack = AT_DSTRONG){
    if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){rand = random_func(1, 3, true);PlayAttackVoiceClip();}
}


#define KoB_reverse
	// Does a sick and based reverse
	if((left_down && spr_dir == 1 || right_down && spr_dir == -1) && b_reversed == false){
    	hsp *= -1;spr_dir *= -1;
		b_reversed = true;
	}
	
#define PlayAttackVoiceClip
	if(rand == 0 && voicecooldown <= 0){
		voicecooldown = 90;
		if (attack == AT_SLAP || attack == AT_KICK){
			rand = random_func(2, 3, true);
		}else{
			rand = 0;
		}
		if(voicemode == 0){ //adventure
			if(rand == 0){
				rand = random_func(0, 8, true);
			    if(rand <= 1){
			    	PlayVoiceClip("adv_get_a_load_of_this", 1.75);
			    }else if(rand == 2){
			    	PlayVoiceClip("adv_go", 1);
			    }else if(rand == 3){
			    	PlayVoiceClip("adv_hows_this", 1.5);
			    }else if(rand == 4){
			    	PlayVoiceClip("adv_take_this", 1.5);
			    }else if(rand == 5){
			    	PlayVoiceClip("adv_take_this2", 1.5);
			    }else if(rand == 6){
			    	PlayVoiceClip("adv_take_this3", 1.5);
			    }else if(rand == 7){
			    	PlayVoiceClip("adv_take_this4", 1.75);
			    }
			}else{
				rand = random_func(0, 3, true);
			    if(rand == 0){
			    	PlayVoiceClip("adv_yosh", 1.5);
			    }else if(rand == 1){
			    	PlayVoiceClip("adv_yosh2", 1.5);
			    }else if(rand == 2){
			    	PlayVoiceClip("adv_yosh3", 1.5);
			    }
			}
		}else if(voicemode == 1){ //modern
			if(rand == 0){
				rand = random_func(0, 3, true);
			    if(rand == 0){
			    	PlayVoiceClip("pollock_how_about_this", 1.5);
			    }else if(rand == 1){
			    	PlayVoiceClip("pollock_take_this", 1.5);
			    }else if(rand == 2){
			    	PlayVoiceClip("pollock_time_for_a_change_of_pace", 2);
			    }
			}
		}else if(voicemode == 2){ //alfred
			if(rand == 0){
				rand = random_func(0, 9, true);
			    if(rand == 0){
			    	rand = random_func(3, 2, true);
				    if(rand == 0){
				    	PlayVoiceClip("alfred_shutup", 1.5);
				    }else if(rand == 1){
				    	PlayVoiceClip("alfred_shutup2", 1.5);
				    }
			    }else if(rand == 1 || rand == 2){
			    	PlayVoiceClip("alfred_get_out", 1.5);
			    }else if(rand == 3){
			    	PlayVoiceClip("alfred_get_the_fuck_away_from_me", 1.5);
			    }else if(rand == 4){
			    	PlayVoiceClip("alfred_listen_to_me", 1.5);
			    }else if(rand == 5){
			    	PlayVoiceClip("alfred_where_do_you_think_youre_going", 1.5);
			    }else if(rand == 6){
			    	PlayVoiceClip("alfred_behave", 1.5);
			    }else if(rand == 7){
			    	PlayVoiceClip("alfred_bitch", 1.5);
			    }else if(rand == 8){
			    	PlayVoiceClip("alfred_gtfo", 1.5);
			    }
			}else{
				PlayVoiceClip("alfred_get_the_fuck_away_from_me", 1.5);
			}
		}
	}
	
#define PlayVoiceClip
	/// PlayVoiceClip(name,?volume)
	//Plays SFX
	if(voicemode != 3 && !hitpause){
	    sound_stop(voice)
	    voice = sound_play(sound_get(argument[0]/* + (alt==21?" df":"")*/),false,noone,argument_count>1?argument[1]:1);
	}

#define cancelattack
    if(attack_pressed || special_pressed || jump_pressed || shield_pressed || right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed
	|| right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed
	|| right_down || left_down || down_down || taunt_pressed){
		window = 20;//sound_stop(voice);
	}
	
#define cancelattack2
    if(attack_pressed || special_pressed || jump_pressed || shield_pressed || right_stick_pressed || left_stick_pressed || up_stick_pressed || down_stick_pressed
	|| right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed || taunt_pressed){
		window = 20;//sound_stop(voice);
	}
	
#define collision_line_list 
    {
        var x1,y1,x2,y2,obj,prec,notme,dsid,i;
        x1 = argument0;
        y1 = argument1;
        x2 = argument2;
        y2 = argument3;
        obj = argument4;
        prec = argument5;
        notme = argument6;
        dsid = ds_list_create();
        with (obj) {
            if (!notme || "id" in self && id != other.id) {
                i = collision_line(x1,y1,x2,y2,id,prec,false);
                if (i != noone) ds_list_add(dsid,i);
            }
        }
        if (ds_list_size(dsid) == 0) {
            ds_list_destroy(dsid);
            dsid = noone;
        }
        return dsid;
    }
	
#define spawn_base_dust // written by supersonic
	/// spawn_base_dust(x, y, name, dir = 0)
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
	if newdust == noone return noone;
	newdust.dust_fx = dfx; //set the fx id
	if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
	newdust.dust_color = dust_color; //set the dust color
	if dir != 0 newdust.spr_dir = dir; //set the spr_dir
	newdust.draw_angle = dfa;
	return newdust;
	
	
