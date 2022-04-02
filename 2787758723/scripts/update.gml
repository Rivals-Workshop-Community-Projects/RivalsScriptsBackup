//
//user_event(1);

//Event Enum
enum EN_EVENT {
    INIT,
    ANIMATION,
    PRE_DRAW,
    POST_DRAW,
    UPDATE,
    DEATH,
    SET_ATTACK,
    ATTACK_UPDATE,
    GOT_HIT,
    GOT_PARRIED,
    HIT_PLAYER,
    PARRY
}
if get_gameplay_time() < 2 exit; //Spawning players is fucked, it will spawn all player objects on the first frame, then cull unslotted ones - need to do nothing for a frame to let the game sort out it's issues.

if !_init {
	//Get following player
	//with oPlayer if get_player_hud_color(player) == 6612290 other.follow_player = id; //Online hud color
	if follow_player == noone  with oPlayer if (!("temp_level" in self) || temp_level == 0) && is_player_on(player){
	    other.follow_player = id;
	    break;
	}
	// print("[init_update] Cam Player ID:"+ string(follow_player));
	// print("[init_update] Cam Player Access Test:"+ string(follow_player.sprite_index));
	// print("[init_update] Cam Player Object ID:"+ string(follow_player.object_index));
	// print("[init_update] Cam Player Num:"+ string(follow_player.player));
	
	with follow_player other.player_name  = get_char_info(player,INFO_STR_NAME);
	with oPlayer {
        if (!("temp_level" in self) || temp_level == 0) && is_player_on(player) {
        	array_push(other.players_on, player);
        	other.player_array[player] = id;
        	other.player_count ++;
        	respawn_point = obj_stage_main.am_mario_level_info[obj_stage_main.am_mario_level].spawn_point
        }
	}
	array_sort(players_on, true);
	
	scene_manager = instance_create(0,0,"obj_stage_article",3);
	action_manager = scene_manager.id;
	room_manager = instance_create(0,0,"obj_stage_article",5);
	scene_manager.player_name = player_name;
	
	with oPlayer {
		action_manager = other.action_manager;
		room_manager = other.room_manager;
	}
	/*debug = false;
	with obj_stage_article debug = false;
	with obj_stage_article_solid debug = false;
	with obj_stage_article_platform debug = false;*/
	// debug = false;
	with obj_stage_article {
		// if num == 3 other.action_manager = id;
		// if num == 5 other.room_manager = id;
		debug = other.debug;
		og_depth = depth;
	}
	with obj_stage_article_solid {
		debug = other.debug;
		og_depth = depth;
	}
	with obj_stage_article_platform {
		debug = other.debug;
		og_depth = depth;
	}
	_init = 1;
} else {
	// with oPlayer if state == PS_RESPAWN print("[update] started check");
	handle_hitboxes();
	if debug {
		with oPlayer { //Debug vars
			djumps = 0; 
			has_walljump = true;
		}
		//print_debug(string(url));
		with asset_get("pHitBox") visible = true;
		with obj_stage_article if num == 6 && player_controller != 0 djumps = max_djumps;
	}
	if get_gameplay_time() == 3 with oPlayer {
		
		// if taunt_down {
		// 	with other {
		// 		debug = true;
		// 		with obj_stage_article debug = true;
		// 		with obj_stage_article_solid debug = true;
		// 		with obj_stage_article_platform debug = true;
		// 	}
		// }
		set_state(PS_SPAWN);
		small_sprites_old = small_sprites;
		if jump_down && attack_down {
			sound_play(asset_get("sfx_chester_appear"));
			other.in_speedrun = true; //Speedrun mode!
		}
		/*spr_dir = 1;
		clear_button_buffer(PC_LEFT_HARD_PRESSED);
		clear_button_buffer(PC_RIGHT_HARD_PRESSED);
		clear_button_buffer(PC_UP_HARD_PRESSED);
		clear_button_buffer(PC_DOWN_HARD_PRESSED);
		clear_button_buffer(PC_LEFT_STRONG_PRESSED);
		clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
		clear_button_buffer(PC_UP_STRONG_PRESSED);
		clear_button_buffer(PC_DOWN_STRONG_PRESSED);
		clear_button_buffer(PC_LEFT_STICK_PRESSED);
		clear_button_buffer(PC_RIGHT_STICK_PRESSED);
		clear_button_buffer(PC_UP_STICK_PRESSED);
		clear_button_buffer(PC_DOWN_STICK_PRESSED);
		clear_button_buffer(PC_JUMP_PRESSED);
		clear_button_buffer(PC_ATTACK_PRESSED);
		clear_button_buffer(PC_SHIELD_PRESSED);
		clear_button_buffer(PC_SPECIAL_PRESSED);
		clear_button_buffer(PC_STRONG_PRESSED);
		clear_button_buffer(PC_TAUNT_PRESSED);*/
	}
	with oPlayer {
		if down_down down_held++;
		else down_held = 0;
		if up_down up_held++;
		else up_held = 0;
		if left_down left_held++;
		else left_held = 0;
		if right_down right_held++;
		else right_held = 0;
		if taunt_down taunt_held++;
		else taunt_held = 0;
		if attack_down attack_held++;
		else attack_held = 0;
		if special_down special_held++;
		else special_held = 0;
		//if taunt_held == 10 other.debug_console = !other.debug_console;
	}
	var wall_here;
	
//#region exclusive to mario	

	var players_alive = 0
	var players_idle = 0
	var players_warping = 0
	var players_warping2 = 0
	var players_ingoal = 0
	with oPlayer { //Mario death
		if ("am_mario_health" in self) {
			if (!("temp_level" in self) || temp_level == 0) {
				if (am_mario_state != 1 && state != PS_DEAD && state != PS_RESPAWN)
					players_alive++;
				if (am_mario_state == 0 && state != PS_DEAD && state != PS_RESPAWN)
					players_idle++;
				if (am_mario_state == 4 && am_mario_state_timer >= 60 && state != PS_DEAD && state != PS_RESPAWN)
					players_warping++;
				if ((am_mario_state == 4 || am_mario_state == 5) && state != PS_DEAD && state != PS_RESPAWN)
					players_warping2++;
				if (am_mario_state == 6 && state != PS_DEAD && state != PS_RESPAWN)
					players_ingoal++;
			}
		}
	}
	
	all_players_dead = players_alive == 0;

	if (am_mario_warp_timer > 0) {
		if (players_idle) {
			am_mario_warp_timer --;
		}
		if (players_warping > players_idle) {
			am_mario_warp_timer = 1;
		}
	}
	
	if (players_alive > 0 && players_warping2 == 0) {
		if (am_mario_timer_tick) {
			if (am_mario_timer > 0) {
				if (players_ingoal == 0) {
					am_mario_time_inc++;
					if (am_mario_time_inc >= 24) {
						am_mario_timer --;
						am_mario_time_inc = 0;
						
						if (am_mario_timer == 99)
							with (obj_stage_main) sound_play(sound_get("sfx_hurry"), 0, 0);
					}
						
					if (am_mario_timer > 90 && am_mario_timer <= 99) {
						suppress_stage_music(0, 1)
					}
				}
				else {
					am_mario_timer --;
					if (get_gameplay_time() % 4 == 0) {
						with (obj_stage_main) sound_play(sound_get("sfx_beep"), 0, 0);
					}
				}
			}
			else {
				if (players_ingoal == 0 && !room_manager.room_switch_on) {
					with oPlayer { //Time over death
						if ("am_mario_health" in self) {
							am_mario_health = 0;
						}
					}
				}
			}
		}
	}
	else {
		am_mario_time_inc = 0;
	}
	
	
	
	// for (var i = 0; i < array_length(obj_stage_main.am_mario_enemies); i++) {
	// 	if (!instance_exists(obj_stage_main.am_mario_enemies[i])) continue;
	// 	if (obj_stage_main.am_mario_enemies[i].mask_index == asset_get("empty_sprite")) continue;
	// 	var dist = max(bbox_right - bbox_left, bbox_bottom - bbox_top)		
	// 	var max_dist = 0;
	// 	var j = 0;
	// 	repeat(instance_number(obj_stage_article)) {
	// 		var inst = instance_find(obj_stage_article, j)
	// 		j++
	// 		if (inst.num != 6) continue;
	// 		if (inst.num != 10) continue;
	// 		var nearest = point_distance(obj_stage_main.am_mario_enemies[i].x, obj_stage_main.am_mario_enemies[i].y, inst.x, inst.y);
	// 		if (nearest <= dist) {
	// 			obj_stage_main.am_mario_enemies[i].colliding = inst;
	// 			break;
	// 		}
	// 	}
	// 	j = 0;
	// 	repeat(instance_number(obj_stage_article_solid)) {
	// 		var inst = instance_find(obj_stage_article_solid, j)
	// 		j++
	// 		if (inst.num != 6) continue;
	// 		if (inst.num != 10) continue;
	// 		var nearest = point_distance(obj_stage_main.am_mario_enemies[i].x, obj_stage_main.am_mario_enemies[i].y, inst.x, inst.y);
	// 		if (nearest <= dist) {
	// 			inst.colliding = obj_stage_main.am_mario_enemies[i];
	// 			break;
	// 		}
	// 	}
	// }
	
//#endregion
	
	with oPlayer { //Fixes for various things due to article solids
		if clone || custom_clone {
			if ("team" not in self) team = 1;
			continue; 
		}
		if (!("temp_level" in self) || temp_level != 0) {
			visible = false;
			image_xscale = 0;
			image_yscale = 0;
			x = -200;
			y = -200;
			set_state(PS_SPAWN);
			// clear_button_buffer(PC_LEFT_HARD_PRESSED);
			// clear_button_buffer(PC_RIGHT_HARD_PRESSED);
			// clear_button_buffer(PC_UP_HARD_PRESSED);
			// clear_button_buffer(PC_DOWN_HARD_PRESSED);
			// clear_button_buffer(PC_LEFT_STRONG_PRESSED);
			// clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
			// clear_button_buffer(PC_UP_STRONG_PRESSED);
			// clear_button_buffer(PC_DOWN_STRONG_PRESSED);
			// clear_button_buffer(PC_LEFT_STICK_PRESSED);
			// clear_button_buffer(PC_RIGHT_STICK_PRESSED);
			// clear_button_buffer(PC_UP_STICK_PRESSED);
			// clear_button_buffer(PC_DOWN_STICK_PRESSED);
			// clear_button_buffer(PC_JUMP_PRESSED);
			// clear_button_buffer(PC_ATTACK_PRESSED);
			// clear_button_buffer(PC_SHIELD_PRESSED);
			// clear_button_buffer(PC_SPECIAL_PRESSED);
			// clear_button_buffer(PC_STRONG_PRESSED);
			// clear_button_buffer(PC_TAUNT_PRESSED);
			continue;
		}
		if god {
			invincible = true;
			invince_time = 2;
		}
		
		if (actually_dead || state == PS_RESPAWN) {
			actually_dead = false;
			set_state(PS_DEAD);
		}
		
		if (state == PS_DEAD) {
			visible = false;
			small_sprites = small_sprites_old;
		}
		
		//Set the hit position when not in hitstun, if in hitstun or the camera has external controls it will not update.
		if state != PS_HITSTUN && state != PS_DEAD && state != PS_SPAWN && state != PS_RESPAWN && obj_stage_main.cam_state != 2 {
			if ("am_mario_health" in self) {
				if am_mario_state != 1 {
					// print("PLAYER-UPDATE");
					hit_pos = [obj_stage_main.room_manager.follow_point.x,obj_stage_main.room_manager.follow_point.y];
					hit_pos[0] = clamp(hit_pos[0], obj_stage_main.room_manager.cell_min[0], obj_stage_main.room_manager.cell_max[0])
					hit_pos[1] = clamp(hit_pos[1], obj_stage_main.room_manager.cell_min[1], obj_stage_main.room_manager.cell_max[1])
				}
			}
		}
		
		
//#region exclusive to mario	
		if ("am_mario_health" in self) {
			switch (am_mario_state) {
				case 0:
					mask_index = am_mario_mask_prev;
					am_mario_mask_prev = mask_index;
					
					if (am_mario_invincible > 0)
					{
						if (am_mario_invincible == am_mario_invincible_max) {
		    				with (obj_stage_main) music_play_file("music_star");
							dash_speed = am_mario_dash_speed_old * 1.5;
						}
						if (am_mario_invincible == 120) {
		    				with (obj_stage_main) music_play_file(action_manager.cur_music_id);
						}
						if (am_mario_invincible == 1) {
							dash_speed = am_mario_dash_speed_old;
						}
						am_mario_invincible --;
						invincible = true;
						invince_time = 2;
						if (am_mario_invincible % 8 == 0 && am_mario_invincible > 120) {
							var rand_x = -48 + random_func(0, 96, true);
							var rand_y = random_func(1, 48, true) * -1;
							with other spawn_dust_fx(floor(other.x + rand_x), floor(other.y + rand_y), sprite_get("fx_star"), 24);
						}
					}
					else {
						am_mario_dash_speed_old = dash_speed;
					}
					
					if (am_mario_lives <= 0 && !obj_stage_main.am_mario_syobon) {
						am_mario_state = 7;
						am_mario_state_timer = 0;
					}
					
					if (am_mario_health <= 0) {
						am_mario_state = 1;
						am_mario_state_timer = 0;
					}
					
					if (am_mario_warp_fade) {
						if (am_mario_warp_out != -1) {
							with (oPlayer) {
								if ("am_mario_health" in self) && state != PS_DEAD{
						            switch (other.am_mario_warp_out) {
						                case 1:
						                    am_mario_warp_pos_s = [x - 32, y+32]
						                    am_mario_warp_pos_e = [x + 64, y + 32]
						                break;
						                case 2:
						                    am_mario_warp_pos_s = [x, y + 64]
						                    am_mario_warp_pos_e = [x, y]
						                break;
						                case 3:
						                    am_mario_warp_pos_s = [x + 32, y + 32]
						                    am_mario_warp_pos_e = [x - 64, y + 32]
						                break;
						                default:
						                    am_mario_warp_pos_s = [x, y]
						                    am_mario_warp_pos_e = [x, y + 64]
						                break;
						            }
									am_mario_state = 4;
						            am_mario_state_timer = 0;
									am_mario_warp_fade = true;
					    			with (obj_stage_main) sound_stop(sound_get("sfx_warp"));
					    			with (obj_stage_main) sound_play(sound_get("sfx_warp"));
								}
							}
						}
						else
							am_mario_warp_fade = false;
					}
				break;
				case 1:
					am_mario_health = 0;
					am_mario_state_timer ++;
					attack_invince = 2;
					dash_speed = am_mario_dash_speed_old;
					am_mario_invincible = 0;
					if (am_mario_state_timer < 180) {
			    		hitstop = 2;
			    		hitstop_full = 180;
			    		hitpause = true;
			    		set_state(PS_HITSTUN);
					}
		    		if (am_mario_state_timer == 1) {
		    			dead_pos = [x, y]
						mask_index = asset_get("empty_sprite");
		    			set_state(PS_HITSTUN);
		    			
			    		if (obj_stage_main.player_count > 1)
							am_mario_lives --;	
						if (!obj_stage_main.am_mario_syobon)
							am_mario_lives = max(0, am_mario_lives);
		    			if (players_alive > 0) {
		    				with (obj_stage_main) sound_stop(sound_get("sfx_player_death"))
		    				with (obj_stage_main) sound_play(sound_get("sfx_player_death"),0, noone);
		    			}
		    			else {
		    				with (obj_stage_main) sound_stop(sound_get("sfx_player_death"))
		    				with (obj_stage_main) music_play_file("music_death");
		    			}
						if (obj_stage_main.am_mario_syobon) {
				    		obj_stage_main.am_mario_syobon_trick = true;
				    	}
		    		}
		    		if (am_mario_state_timer >= 1 && am_mario_state_timer <= 45) {
		    			hsp = 0;
		    			vsp = 0;
		    			grav = 0;
		    			am_mario_draw_ysp = 0;
		    		}
		    		if (abs(obj_stage_main.room_manager.follow_point.x-x) <= 480  && abs(obj_stage_main.room_manager.follow_point.y-y) <= 270 ) {
			    		if (am_mario_state_timer == 45) {
			    			am_mario_draw_ysp = -8;
			    		}
		    			if (am_mario_state_timer >= 45 && am_mario_state_timer < 180) {
		    				am_mario_draw_ysp += 0.2;
		    			}
		    		}
		    		if (am_mario_state_timer >= 45 && am_mario_state_timer < 180) {
		    			y += am_mario_draw_ysp;
		    		}
		    		if (am_mario_state_timer == 181) {
						create_deathbox(floor(x),floor(y-32),32,32,player,false,0,2,1);
		    		}
		    		if (am_mario_state_timer == 180) {
		    			y = room_height + 560;
						mask_index = am_mario_mask_prev;
						//dead_pos = [x,y];
		    		}
		    		hurt_img = 5;
				break;
				case 2:
					am_mario_state_timer ++;
					attack_invince = 2;
					if (am_mario_state_timer == 1) {
						mask_index = asset_get("empty_sprite");
						old_hsp = hsp;
						old_vsp = vsp;
					}
					if (am_mario_state_timer < 50) {
			    		hitstop = 2;
			    		hitstop_full = 2;
			    		hitpause = true;
					}
					if (am_mario_state_timer == 1) {
						//mask_index = asset_get("empty_sprite");
						with (obj_stage_main) {
							var fx = instance_create(floor(other.x), floor(other.y - 32), "obj_stage_article", 18);
		    				fx.depth = other.depth - 20;
		    				fx.grav = 0;
		    				fx.sprite_index = other.am_mario_health == 3 ? sprite_get("mario_fire") : sprite_get("mario_grow")
		    				fx.timer_max = 50
		    				fx.img_spd = 10/50
		    				fx.spr_dir = other.spr_dir;
						}
		    			with (obj_stage_main) sound_play(sound_get("sfx_powerup"),0, noone);
		    		}
					if (am_mario_state_timer == 50) {
						mask_index = am_mario_mask_prev;
						am_mario_state_timer = 0;
						am_mario_state = 0;
						attack_invince = 0;
						invincible = true;
						invince_time = 120;
					}
				break;
				case 3:
					am_mario_state_timer ++;
					attack_invince = 2;
					
					if (am_mario_state_timer == 1) {
						old_hsp = hsp;
						old_vsp = vsp;
					}
					if (am_mario_state_timer < 50) {
						mask_index = asset_get("empty_sprite");
			    		hitstop = 2;
			    		//hitstop_full = 2;
			    		hitpause = true;
					}
					if (am_mario_state_timer == 1) {
						//mask_index = asset_get("empty_sprite");
						with (obj_stage_main) {
							var fx = instance_create(floor(other.x), floor(other.y - 32), "obj_stage_article", 18);
		    				fx.depth = other.depth - 20;
		    				fx.sprite_index = sprite_get("mario_shrink");
		    				fx.grav = 0;
		    				fx.timer_max = 50
		    				fx.img_spd = 10/50
		    				fx.spr_dir = other.spr_dir;
						}
		    			with (obj_stage_main) sound_stop(sound_get("sfx_warp"));
		    			with (obj_stage_main) sound_play(sound_get("sfx_warp"));
		    		}
					if (am_mario_state_timer == 50) {
						mask_index = am_mario_mask_prev;
						am_mario_state_timer = 0;
						am_mario_state = 0;
						attack_invince = 0;
						invincible = true;
						invince_time = 120;
					}
				break;	
				case 4:
					do_a_fast_fall = false;
					am_mario_state_timer ++;
					attack_invince = 2;
					hsp = 0;
					vsp = 0;
					if (am_mario_state_timer == 1) {
						old_hsp = hsp;
						old_vsp = vsp;
					}
		    		hitstop = 2;
		    		hitstop_full = 2;
		    		hitpause = true;
		    		force_depth = true;
		    		state = PS_FIRST_JUMP;
		    		state_timer = 3;
		    		depth = 31;
					if (am_mario_state_timer == 1) {
						mask_index = asset_get("empty_sprite");
					}
					if (am_mario_state_timer >= 1 && am_mario_state_timer <= 60) {
						x = ease_linear(floor(am_mario_warp_pos_s[0]), floor(am_mario_warp_pos_e[0]), am_mario_state_timer, 60);
						y = ease_linear(floor(am_mario_warp_pos_s[1]), floor(am_mario_warp_pos_e[1]), am_mario_state_timer, 60);
					}
					if (am_mario_state_timer >= 60 && am_mario_state_timer < 3600) {
						if (!am_mario_warp_fade && !obj_stage_main.room_manager.switch_room) {
							visible = false;
							if (obj_stage_main.am_mario_warp_timer == 0) {
								obj_stage_main.am_mario_warp_timer = obj_stage_main.am_mario_warp_max_time;
							}
							
							if (obj_stage_main.am_mario_warp_timer == 1) {
								if (is_array(am_mario_warp_vars)) {
									am_mario_warp_fade = true;
							        with obj_stage_main.room_manager {
							            if !switch_room { //If not already transitioning rooms
							                switch_to_room_pos = [other.am_mario_warp_vars[0], other.am_mario_warp_vars[1]];
							                room_switch_type = other.am_mario_warp_vars[2];
							                switch_to_room =  other.am_mario_warp_vars[3];
							                // room_switch_event = other.action_id;
							                switch_room = true;
							            }
							        }
									am_mario_state_timer = 3600;
								}
								else if (am_mario_warp_vars > 0) {
									am_mario_warp_fade = true;
                					obj_stage_main.room_checkpoints = true;
							        obj_stage_main.am_mario_level += am_mario_warp_vars;
							        room_checkpoints = true;
				                    var next_level = obj_stage_main.am_mario_level_info[obj_stage_main.am_mario_level];
							        with obj_stage_main.room_manager {
							            if !switch_room { //If not already transitioning rooms
							                switch_to_room_pos = [next_level.spawn_point[0], next_level.spawn_point[1]];
							                room_switch_type = 2;
							                switch_to_room = next_level.spawn_point[2];
							                // room_switch_event = other.action_id;
							                switch_room = true;
							                show_gui = false;
							            }
							        }
									am_mario_state_timer = 3600;
								}
								else {
									if (am_mario_warp_vars == 0) {
										spawn_hit_fx(floor(x), floor(y), 143);
										sound_play(asset_get("sfx_ell_big_missile_ground"))
									}
									visible = true;
									am_mario_state = 1;
						            am_mario_state_timer = 0;
								}
							}
						}
						else if (am_mario_warp_fade) {
							am_mario_warp_fade = false
							am_mario_state = 0;
							am_mario_state_timer = 0;
							am_mario_warp_out = -1;
						}
					}
				break;	
				case 5:
					var global_delay = 90; 
					attack_invince = 2;
					if (am_mario_state_timer == 0) {
						old_hsp = hsp;
						old_vsp = vsp;
						am_mario_state_timer = 1;
					}
		    		hitstop = 2;
		    		hitstop_full = 120;
		    		hitpause = true;
		    		hit_pause = 0;
					do_a_fast_fall = false;
		    		if (am_mario_state_timer < global_delay) {
		    			if (am_mario_state_timer >= 2)
		    				am_mario_state_timer ++;
			    		if (instance_exists(am_mario_flagpole)) {
			    			if (am_mario_state_timer <= 2) {
			    				x = am_mario_flagpole.x - 16
			    				spr_dir = 1;
			    			}
			    			else {
			    				x = am_mario_flagpole.x + 32
			    				spr_dir = -1;
			    			}
			    			if (am_mario_flagpole.state == 2) {
			    				y += 6;
				    			if (y >= am_mario_flagpole.y + 304 - (32 * (array_find_index(am_mario_flagpole.players_on, id)))) {
				    				if (am_mario_state_timer == 1)
				    					am_mario_state_timer = 2
				    				y = am_mario_flagpole.y + 304 - (32 * (array_find_index(am_mario_flagpole.players_on, id)));
				    			}
			    			}
	    				}
		    			state = PS_FIRST_JUMP;
						image_index = ease_linear(0,image_number,floor(jump_speed), floor(jump_speed*2));
		    		}
		    		else {
		    			var delay = 0;
		    			//Delay depending on the number of players.
			    		if (instance_exists(am_mario_flagpole)) {
			    			delay = 15 * (array_find_index(am_mario_flagpole.players_on, id));
			    		}
	    				var castle = false
	    				var castle_x = x;
	    				var castle_y = y;
	    				with (obj_stage_article) {
	    					if (num = 22) {
		    					castle_x = x;
			    				castle_y = y;
	    					}
	    				}
		    			if (am_mario_state_timer == global_delay + delay) {
		    				am_mario_draw_xsp = arc_calc_x_speed(x, y, castle_x, castle_y, -12, 0.5);
		    				am_mario_draw_ysp = -12;
		    				
			    			spr_dir = 1;
		    			}
		    			if (am_mario_state_timer > global_delay + delay) {
    						if (point_distance(x, y, castle_x, castle_y) <= 24) {
		    					visible = false;
								am_mario_state = 6;
								am_mario_state_timer = 0;
    						}
			    			am_mario_draw_ysp += 0.5;
			    			if (!free) {
			    				am_mario_draw_ysp = 0;
			    				am_mario_draw_xsp = 0;
			    			}
			    			x += am_mario_draw_xsp;
			    			y += am_mario_draw_ysp;
		    			}
		    			am_mario_state_timer++;
						image_index = ease_linear(0,image_number,floor(am_mario_draw_ysp + jump_speed), floor(jump_speed*2));
		    		}
				break;
				case 6:
					attack_invince = 2;
		    		hitstop = 2;
		    		hitstop_full = 2;
		    		hitpause = true;
					mask_index = asset_get("empty_sprite");
				break;
				case 7:
					attack_invince = 2;
		    		hitstop = 2;
		    		hitstop_full = 180;
		    		hitpause = true;
		    		if (am_mario_lives <= 0 && !obj_stage_main.am_mario_syobon)
		    			visible = false;
					mask_index = asset_get("empty_sprite");
					set_state(PS_HITSTUN);
		    		hurt_img = 5;
				break;
			}
		}
//#endregion
		
		//Shadow tests
		
		//Platform tests
		var plat_here = instance_place(x,y + 4,obj_stage_article_platform);
		if (plat_here != noone && !free) {
			x += plat_here.x - plat_here.xprevious;
			y = plat_here.y;
		}
		
		plat_here = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+4, obj_stage_article_solid, 0, 0);
		if (plat_here != noone && !free) {
			x += plat_here.x - plat_here.xprevious;
			y = plat_here.y;
		}
		
		//Land Spam Fix
		if state == PS_LAND && free set_state(PS_IDLE_AIR);
		//Wall Jumps
		if state == PS_WALL_JUMP && state_timer == 1 has_walljump_actual = false;
		if !free has_walljump_actual = true;
		wall_here = (right_down && place_meeting(x+22,y,obj_stage_article_solid) ) || (left_down && place_meeting(x-22,y,obj_stage_article_solid));
		has_walljump = wall_here && has_walljump_actual;
		
		if death_cooldown != 0 death_cooldown--;
		if !room_manager.room_switch_on && state != PS_DEAD && state != PS_SPAWN && state != PS_RESPAWN && ((x > hit_pos[0]+960/2+other.blastzone_x/2  || x < hit_pos[0]-960/2-other.blastzone_x/2) ||
	 		(y > hit_pos[1]+540+other.blastzone_y/2  || (y < hit_pos[1]-540-other.blastzone_y/2 && (state == PS_HITSTUN || hitstun > 0)))) { //Die on getting outside of the camera range
		//if !room_manager.room_switch_on && state != PS_DEAD && state != PS_SPAWN && state != PS_RESPAWN && (abs(hit_pos[0]-x) > 960/2+other.blastzone_x/2  || abs(hit_pos[1]-y) > 540/2+other.blastzone_y/2 ) { //Die on getting outside of the hit_pos range
			// print("PLAYER DEATH WITH: "+string([abs(hit_pos[0]-x),abs(hit_pos[1]-y)]));
			// print("PLAYER POS: "+string([x,y]));
   //         print("HIT POS: "+string(hit_pos));
   //         print("BLAST X "+string(960/2+other.blastzone_x/2));
   //         print("EXCESS X? "+string(abs(hit_pos[0]-x) > 960/2+other.blastzone_x/2));
   //         print("EXCESS Y? "+string(abs(hit_pos[1]-y) > 540/2+other.blastzone_y/2));
				
				//dead_pos = [x,y];
				// set_state(PS_SPAWN);
				if (am_mario_state == 0) {
					am_mario_state = 1;
					am_mario_state_timer = 0
				}
				else {
					if (am_mario_state_timer >= 180 && death_cooldown == 0 && am_mario_state == 1) {
						death_cooldown = death_cooldown_max;
						create_deathbox(floor(x),floor(y-32),32,32,player,true,0,2,1);
						
					}
				}
		}
		if start_down {
			other.is_paused = !other.is_paused;
			// if other.is_paused set_player_damage(player, other.paused_percent[player]);
			// else other.paused_percent[player] = get_player_damage(player);
		}
		//Keep dash upon landing
		if !prev_free && free && (prev_state == PS_DASH || prev_state == PS_DASH_START) keep_dash = true;
		if keep_dash {
			if !(left_held > 0 || right_held > 0) || 
			(free && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) ||
			state == PS_WAVELAND || shield_pressed {
				keep_dash = false;
			}
			if !free && state != PS_JUMPSQUAT && state != PS_WAVELAND && state != PS_DASH_START && (state != PS_TECH_GROUND && state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD) {
				if ((left_held != 0) || (right_held != 0)) {
					set_state(PS_DASH_START);
					spr_dir = (right_held > 0) - (left_held > 0);
				}
				//state_timer = 0;
				keep_dash = false;
			} else if (!free) keep_dash = false;
		}
		// if state == PS_AIR_DODGE && old_pos[1] - y > 16 { //SNAPPING GRRR
		// 	y = old_pos[1];
		// 	print("SNAP");
		// }
		rel_pos = [x-view_get_xview(),y-view_get_yview()];
		prev_free = free;
		// if state != PS_AIR_DODGE old_pos = [x,y];
		
		// if state == PS_RESPAWN print("[update:player] completed check");
	}
	
	
	var i = 0;
	
	repeat (array_length(active_bosses)) {
		if (!instance_exists(active_bosses[i]))
        	array_cut(active_bosses,i);
        i++;
	}
	
	i = 0;
	
	//Window Update Call
	win_call = 2;
	user_event(2);
	
	// with oPlayer if state == PS_RESPAWN print("[update:windows] completed check");
	
	/*with oPlayer {
		other.down_down = down_down;
		other.up_down = up_down;
	}
	if "cooldown" not in self cooldown = 0;
	
	if down_down && cooldown <= 0 {
	    cooldown = 15;
	    repeat(1000) {
	        last_ID++;
	        with (last_ID) {
	            if NoHasVar == undefined other.self_check = 0;
	        }
	    }
	} else if up_down && cooldown <= 0 {
	    cooldown = 15;
	    repeat(1000) {
	        last_ID--;
	        with (last_ID) {
	            if NoHasVar == undefined other.self_check = 0;
	        }
	    }
	}
	cooldown--;*/
	
	/*with (self) {
	            if NoHasVar == undefined other.self_check = 0;
	        }*/
	        
	        
	if (active_enemy_timer <= active_enemy_timer_max) {
		active_enemy_timer ++;
	}
	//Uncomment this for no mario
	var tick_timer = true; 
	with (oPlayer) {
		if clone || custom_clone continue; 
		if state == PS_SPAWN || state == PS_RESPAWN || !visible tick_timer = false; //Track each player's time when not in spawn state (unmovable)
	}
	if (tick_timer && (players_alive > 0 && players_warping2 == 0)) {
		speedrun_timer++
	}
	
	with (oPlayer) {
		if clone || custom_clone continue; 
		if state == PS_DEAD || state == PS_SPAWN || state == PS_RESPAWN || !visible continue; //Track each player's time when not in spawn state (unmovable)
		if ("am_mario_health" in self) {
			if (am_mario_state != 0) continue;
		}
		speedrun_timer++
	}
}

//#region exclusive to mario

with (pHitBox) {
	if "am_mario_fire" in self {
		if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + vsp, asset_get("par_block"), 1, 1) ||
			collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + vsp, asset_get("par_jumpthrough"), 1, 1)) {
			if (vsp > 0)
				vsp = -4;
		}
		if (collision_rectangle(bbox_left - 2, bbox_top + 4, bbox_right + 2, bbox_bottom - 4, asset_get("par_block"), 1, 1)) {
			fx_created = true;
			destroyed = true;
			with obj_stage_main sound_stop(sound_get("sfx_bump"));
			with obj_stage_main sound_play(sound_get("sfx_bump"));
		}
	}
	
}
//#endregion

#define arc_calc_x_speed(x1, y1, x2, y2, vspd, g)
var dX = x2 - x1;
var dY = y2 - y1;
if (dX == 0) {
	return 0;
}
var t = (abs(vspd) / g) + sqrt(abs(vspd * vspd) / (g * g) - (dY / g));
return dX / t;

//Hitbox logic put here to prevent slowdown.
#define handle_hitboxes
obj_stage_main.hitstop = 0;
obj_stage_main.hitpause = false;
with (pHitBox) {
	if "hit_owner" in self {
		if (hitbox_timer == 0) {
	        with hit_owner {
	        	var attack_p = ("attack" in self) ? attack : 0;
	            if ("attack" in self) {
	        		attack = other.attack
	            	reset_attack_grid(attack);
	            	custom_behavior(EN_EVENT.SET_ATTACK)
	            }
	            with other set_hitboxes(id);
	            if ("attack" in self) {
	            	reset_attack_grid(attack);
	            	attack = attack_p;
	            }
	        }
	    }
	    hbox_group = -1;
	    if (instance_exists(hit_owner)) {	
	    	if (hit_owner.team == -1) {
				for (var i = 0; i < array_length(can_hit); i++)
					can_hit[i] = false;
			}
		    if (type != 2) {
		        x_pos = ((hit_owner.x + x_off * hit_owner.spr_dir) - obj_stage_main.x);
		        y_pos = ((hit_owner.y + y_off) - obj_stage_main.y);
		        hsp = hit_owner.hsp;
		        vsp = hit_owner.vsp;
		        spr_dir = hit_owner.spr_dir;
		    }
	    }
	}
}

with (pHurtBox) {
	var collision = instance_place(x, y, pHitBox);
	if (instance_exists(collision) && ("hit_owner" in collision) && instance_exists(collision.hit_owner)) {
		if ( collision.hit_owner.num == 6) {
			if ((playerID.clone || playerID.custom_clone) && collision.can_hit[playerID.player]) {
		        if (!playerID.perfect_dodged) {
			    		if ( collision.hit_owner.has_hit_en == 0) {
			    			 collision.hit_owner.hit_player_obj = playerID.id;
			        			with  collision.hit_owner {
									art_event = EN_EVENT.HIT_PLAYER
									user_event(6); //Custom behavior
			        			}
			        		 collision.hit_owner.has_hit_en = 1
			    		}
		        }
		        else {
		        	if (!collision.hit_owner.was_parried) {
		    			 collision.hit_owner.hit_player_obj = playerID.id;
		            	if ( collision.hit_owner.num == 6)
		        			with  collision.hit_owner custom_behavior(EN_EVENT.GOT_PARRIED);
						 collision.hit_owner.was_parried = true;
		        	}
		        }
		    }
		}
	}
}

#define custom_behavior(_eventID)
art_event = _eventID
user_event(6); //Custom behavior

#define set_hitboxes(_hbox)
with (obj_stage_main) {
    var par = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_PARENT_HITBOX);
    if (par == 0) par = _hbox.hbox_num;
    
    _hbox.type = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_HITBOX_TYPE);
    if (_hbox.type == 0)
        _hbox.type = 1;
    _hbox.length = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_LIFETIME);
    _hbox.x_off = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_HITBOX_X);
    _hbox.y_off = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_HITBOX_Y);
    _hbox.image_xscale = get_hitbox_value(_hbox.attack, par, HG_WIDTH) / 200;
    _hbox.image_yscale = get_hitbox_value(_hbox.attack, par, HG_HEIGHT) / 200;
    var spr = get_hitbox_value(_hbox.attack, par, HG_SHAPE);
    switch (spr) {
        case 0:  _hbox.sprite_index = asset_get("hitbox_circle_spr"); break;
        case 1:  _hbox.sprite_index = asset_get("hitbox_square_spr"); break;
        case 2:  _hbox.sprite_index = asset_get("hitbox_rounded_rectangle"); break;
    }
    _hbox.mask_index = _hbox.sprite_index;
    _hbox.image_alpha = 0.5;
    _hbox.hit_priority = get_hitbox_value(_hbox.attack, par, HG_PRIORITY);
    _hbox.damage = get_hitbox_value(_hbox.attack, par, HG_DAMAGE);
    _hbox.kb_angle = get_hitbox_value(_hbox.attack, par, HG_ANGLE);
    _hbox.kb_value = get_hitbox_value(_hbox.attack, par, HG_BASE_KNOCKBACK);
    _hbox.kb_scale = get_hitbox_value(_hbox.attack, par, HG_KNOCKBACK_SCALING);
    _hbox.effect = get_hitbox_value(_hbox.attack, par, HG_EFFECT);
    _hbox.hitpause = get_hitbox_value(_hbox.attack, par, HG_BASE_HITPAUSE);
    _hbox.hitpause_growth = get_hitbox_value(_hbox.attack, par, HG_HITPAUSE_SCALING);
    _hbox.hit_effect = get_hitbox_value(_hbox.attack, par, HG_VISUAL_EFFECT);
    _hbox.hit_effect_x = get_hitbox_value(_hbox.attack, par, HG_VISUAL_EFFECT_X_OFFSET);
    _hbox.hit_effect_y = get_hitbox_value(_hbox.attack, par, HG_VISUAL_EFFECT_Y_OFFSET);
    _hbox.fx_particles = get_hitbox_value(_hbox.attack, par, HG_HIT_PARTICLE_NUM);
    _hbox.sound_effect = get_hitbox_value(_hbox.attack, par, HG_HIT_SFX);
    _hbox.hit_flipper = get_hitbox_value(_hbox.attack, par, HG_ANGLE_FLIPPER);
    _hbox.extra_hitpause = get_hitbox_value(_hbox.attack, par, HG_EXTRA_HITPAUSE);
    _hbox.groundedness = get_hitbox_value(_hbox.attack, par, HG_GROUNDEDNESS);
    _hbox.camera_shake = get_hitbox_value(_hbox.attack, par, HG_EXTRA_CAMERA_SHAKE);
    _hbox.proj_break = get_hitbox_value(_hbox.attack, par, HG_IGNORES_PROJECTILES);
    _hbox.no_other_hit = get_hitbox_value(_hbox.attack, par, HG_HIT_LOCKOUT);
    _hbox.hbox_group = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_HITBOX_GROUP);
    _hbox.hitstun_factor = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_HITSTUN_MULTIPLIER);
    _hbox.dumb_di_mult = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_DRIFT_MULTIPLIER);
    _hbox.sdi_mult = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_SDI_MULTIPLIER) + 1;
    _hbox.can_tech = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_TECHABLE);
    _hbox.force_flinch = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_FORCE_FLINCH);
    _hbox.bkb_final = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_FINAL_BASE_KNOCKBACK);
    _hbox.throws_rock = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_THROWS_ROCK);
    if (_hbox.kb_angle == 361)
        _hbox.draw_angle = 45
    else
        _hbox.draw_angle = _hbox.kb_angle
    if (_hbox.hit_owner.spr_dir == -1)
        _hbox.draw_angle = (180 - _hbox.draw_angle)
    if (_hbox.hit_flipper == 5)
        _hbox.draw_angle = (180 - _hbox.draw_angle)
    
    if (_hbox.type == 2) {
    	_hbox.image_alpha = 1;
        _hbox.hbox_group = -1;
        if (get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_MASK) <= 0) {
	    	_hbox.mask_index = _hbox.sprite_index
	    	_hbox.uses_sprite_collision = 0;
        }
        else {
        	_hbox.mask_index = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_MASK);
	    	_hbox.uses_sprite_collision = 1;
	    	_hbox.image_xscale = _hbox.spr_dir;
	    	_hbox.image_yscale = 1;
        }
    	_hbox.draw_xscale = _hbox.spr_dir;
    	_hbox.draw_yscale = 1;
        _hbox.sprite_index = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_SPRITE) != 0 ? get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_SPRITE) : asset_get("empty_sprite");
        _hbox.img_spd = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_ANIM_SPEED);
        if (_hbox.hsp == 0)
            _hbox.hsp = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_PROJECTILE_HSPEED) * _hbox.hit_owner.spr_dir;
        if (_hbox.vsp == 0)
            _hbox.vsp = get_hitbox_value(_hbox.attack, _hbox.hbox_num, HG_PROJECTILE_VSPEED);
        _hbox.grav = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_GRAVITY);
        _hbox.frict = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_GROUND_FRICTION	);
        _hbox.air_friction = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_AIR_FRICTION);
        _hbox.walls = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_WALL_BEHAVIOR);
        _hbox.grounds = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_GROUND_BEHAVIOR);
        _hbox.enemies = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_ENEMY_BEHAVIOR);
        _hbox.unbashable = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_UNBASHABLE);
        _hbox.projectile_parry_stun = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_PARRY_STUN);
        _hbox.does_not_reflect = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_DOES_NOT_REFLECT);
        _hbox.transcendent = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_IS_TRANSCENDENT);
        _hbox.destroy_fx = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_DESTROY_EFFECT);
        _hbox.plasma_safe = get_hitbox_value(_hbox.attack, par, HG_PROJECTILE_PLASMA_SAFE);
        _hbox.spr_dir = _hbox.hsp == 0 ? 1 : sign(_hbox.hsp);
    }
}
#define reset_attack_grid(_attack)
with obj_stage_main { //Main stage script object
    for (var i = 0; i <= 20; i++) {
        set_attack_value(_attack, i, 0);
    }
    if (other.ag_num_windows > 0)
    for (var w = 1; w <= other.ag_num_windows; w++) {
        for (var i = 0; i <= 13; i++) {
            set_window_value(_attack, w, i, 0);
        }
        set_window_value(_attack, w, 24, 0);
        set_window_value(_attack, w, 26, 0);
        set_window_value(_attack, w, 31, 0);
        set_window_value(_attack, w, 32, 0);
        set_window_value(_attack, w, 57, 0);
        set_window_value(_attack, w, 58, 0);
        set_window_value(_attack, w, 59, 0);
        set_window_value(_attack, w, 60, 0);
    }
    if (other.hg_num_hitboxes > 0)
    for (var w = 1; w <= other.hg_num_hitboxes; w++) {
        for (var i = 0; i <= 60; i++) {
            set_hitbox_value(_attack, w, i, 0);
        }
    }
}

#define array_cut(_array, _index)
var _array_cut = array_create(array_length_1d(_array)-1);
var j = 0;
for (var i = 0; i < array_length_1d(_array); i++) {
	if i != _index {
		_array_cut[@j] = _array[i];
		j++;
	}
}
return _array_cut;
