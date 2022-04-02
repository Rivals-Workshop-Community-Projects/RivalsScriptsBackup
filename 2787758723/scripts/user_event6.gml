//Custom AI Behavior. see article6 code for details.

//Enum Declarations, DO NOT EDIT
enum TR {
    NEAR,
    MID,
    FAR,
    RANDOM,
    LOW,
    HIGH,
    WAYPOINT
}
//

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

//Enemy enums
enum EN {
    GOOMBA, //0
    KOOPA, //0
    BBILL,
    PPLANT,
    SPINY,
    PTOOIE,
    PODOBOO,
    BUSTER,
    THWOMP,
    FIRE,
    BOWSER,
    TOAD
};

// with oPlayer if state == PS_RESPAWN print("[ue6] started check");

switch (enem_id) {
    case EN.GOOMBA:
        switch (art_event) {
            case EN_EVENT.INIT:
                char_name = "Goomba";
                spr_name = "enemy_goomba";
                
            	sprite_index = enemy_sprite_get(spr_name, "idle");
                hitpoints_max = 5;
                
                collision_box = sprite_get("enemy_goomba_mask");
                mask_index =  collision_box; // Collision Mask
                hurtbox_spr =  collision_box; // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
				
				big = false;
				
				num_sprite_sets = 3;
				current_sprite_set = 0;
				
                //Animation Actions
                char_height = 25;
                char_arrow = sprite_get("char_arrow");
                char_icon = sprite_get("enemy_goomba_icon")
                anim_speed = .02;
                idle_anim_speed = .1;
                crouch_anim_speed = .1;
                walk_anim_speed = .1;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                
                //Movement Variables
                walk_speed = 2;
                walk_accel = 2;
                walk_turn_time = 6;
                initial_dash_time = 10;
                initial_dash_speed = 6.5;
                dash_speed = 6;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = 0;
                moonwalk_accel = 1.4;
                
                jump_start_time = 5;
                jump_speed = 12;
                short_hop_speed = 8;
                djump_speed = 10;
                leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
                max_jump_hsp = 2; //the maximum hsp you can have when jumping from the ground
                air_max_speed = 2; //the maximum hsp you can accelerate to when in a normal aerial state
                jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
                air_accel = 1.5;
                prat_fall_accel = 1; //multiplier of air_accel while in pratfall
                air_friction = 0;
                max_djumps = 1;
                double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
                
                max_fall = 8; //maximum fall speed without fastfalling
                fast_fall = 11; //fast fall speed
                gravity_speed = .5;
                hitstun_grav = .5;
                knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                
                land_time = 4; //normal landing frames
                prat_land_time = 20;
                wave_land_time = 15;
                wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
                wave_friction = .04; //grounded deceleration when wavelanding
                
                //parry animation frames
                dodge_startup_frames = 1;
                dodge_active_frames = 1;
                dodge_recovery_frames = 4;
                
                //tech animation frames
                tech_active_frames = 3;
                tech_recovery_frames = 1;
                
                //tech roll animation frames
                techroll_startup_frames = 2;
                techroll_active_frames = 2;
                techroll_recovery_frames = 2;
                techroll_speed = 10;
                
                //airdodge animation frames
                air_dodge_startup_frames = 1;
                air_dodge_active_frames = 3;
                air_dodge_recovery_frames = 3;
                air_dodge_speed = 7.5;
                
                
                //roll animation frames
                roll_forward_startup_frames = 2;
                roll_forward_active_frames = 2;
                roll_forward_recovery_frames = 2;
                roll_back_startup_frames = 2;
                roll_back_active_frames = 2;
                roll_back_recovery_frames = 2;
                roll_forward_max = 9; //roll speed
                roll_backward_max = 9;
                
                
                land_sound = noone;
                landing_lag_sound = noone;
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
                
                ai_moving_right = false;
                ai_moving_left = true;
            break;
            case EN_EVENT.UPDATE:
                //AI Routine
                if (instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
                    var t_dist = point_distance(x, y, ai_target.x, ai_target.y);
                    var t_xd = abs(ai_target.x - x);
                    var t_yd = abs(ai_target.y - y);
                    if (!committed) {
		            	if (alive_time <= 4) {
		            		if ("out_of_block" in self) {
            					sprite_index = enemy_sprite_get(spr_name, "idle");
		            			spr_dir = 1;
		            			y -= 8;
		            		}
		            		else
		            			spr_dir = -1;
	                        if (spr_dir == 1) {
	                            ai_moving_right = true;
	                            ai_moving_left = false;
	                        } 
	                        if (spr_dir == -1) {
	                            ai_moving_right = false;
	                            ai_moving_left = true;
	                        } 
		            	}
		            	if (alive_time == 4) {
		            		if ("out_of_block" in self) {
		            			vsp = -2;
		            		}
		            	}
		            	
		            	if (!big && obj_stage_main.am_mario_syobon) {
							var nearest_shroom = collision_nearest_enemy(x, y, 64);
							if (instance_exists(nearest_shroom) && nearest_shroom.num == 10 && nearest_shroom.item_id == 0 && nearest_shroom.follow_player == noone) {
								big = true;
								instance_destroy(nearest_shroom);
                				sound_play(sound_get("sfx_powerup"));
							}
		            	}
		            	
		            	if (big) {
		            		//Check for terrain
							var terrain = terrain_detection();
							if (instance_exists(terrain)) {
								with (terrain) {
									if (num != 15 && num != 17) break;
									if (!visible) break;
									sound_stop(sound_get("sfx_break"));
							        sound_play(sound_get("sfx_break"));
							        var brick1 = instance_create(round(x), round(y), "obj_stage_article", 18)
							        brick1.sprite_index = sprite_get("brickblock_break");
							        brick1.image_index = 0;
							        brick1.hsp = -2;
							        brick1.vsp = -4;
							        var brick2 = instance_create(round(x+16), round(y), "obj_stage_article", 18)
							        brick2.sprite_index = sprite_get("brickblock_break");
							        brick2.image_index = 1;
							        brick2.hsp = 2;
							        brick2.vsp = -4;
							        var brick3 = instance_create(round(x), round(y+16), "obj_stage_article", 18)
							        brick3.sprite_index = sprite_get("brickblock_break");
							        brick3.image_index = 2;
							        brick3.hsp = -4;
							        brick3.vsp = -2;
							        var brick4 = instance_create(round(x+16), round(y+16), "obj_stage_article", 18)
							        brick4.sprite_index = sprite_get("brickblock_break");
							        brick4.image_index = 3;
							        brick4.hsp = 4;
							        brick4.vsp = -2;
							        instance_destroy(id);
								}
							}
		            	}
		            	
		            	spr_name = big ? "enemy_goomba_big" : "enemy_goomba"
		                collision_box = big ?  sprite_get("enemy_goomba_mask_big") : sprite_get("enemy_goomba_mask");
		            	
		            	standard_collision(true)
                        if (spr_dir == 1) {
                            right_down = true;
                            left_down = false;
                        } 
                        if (spr_dir == -1) {
                            right_down = false;
                            left_down = true;
                        }
                        
                        hsp = walk_speed * spr_dir
		            	
	                    if (standard_stomp_detection()) {
	                    	if (art_state != PS_ATTACK_GROUND || art_state != PS_ATTACK_AIR) {
		                    	sound_stop(sound_get("sfx_stomp"));
		                    	sound_play(sound_get("sfx_stomp"));
		                    	next_attack = AT_EXTRA_1;
	                    	}
	                    }
	                    else {
	                    	if (art_state != PS_ATTACK_GROUND || art_state != PS_ATTACK_AIR) {
		                    	var temp_player = standard_player_detection();
		                    	
		                    	if (instance_exists(temp_player)) {
		                    		standard_player_hit(temp_player);
		                    	}
	                    	}
	                    }
                    }
                }
                else {
	                if (hitstun > 0)
	                	hsp *= free ? 0.95 : 0.85;
                }
            break;
            case EN_EVENT.ATTACK_UPDATE:
            	if (attack == AT_EXTRA_1) {
            		grav = 0;
            		hsp = 0;
            		invincible = 100;
					collision_box = asset_get("empty_sprite")
            		
            		if (window == 1 && window_timer >= 29) {
            			destroyed = true;
            			visible = false;
            		}
            	}
            break;
            case EN_EVENT.ANIMATION:
        		current_sprite_set = find_room_type()
				var num_frames = image_number / num_sprite_sets;
				var offset = num_frames * current_sprite_set;
            	if (art_state != PS_ATTACK_AIR && art_state != PS_ATTACK_GROUND) {
            		if (art_state == PS_DEAD)
            			sprite_index = enemy_sprite_get(spr_name, "death");
            		else
            			sprite_index = enemy_sprite_get(spr_name, "idle");
					image_index = image_index % num_frames + offset;
            	}
            	else {
            		image_index = image_index + offset;
            	}
            break;
            case EN_EVENT.DEATH:
                standard_death()
            break;
            case EN_EVENT.SET_ATTACK:
            	user_event(7);
            break;
        }
    break;
    case EN.KOOPA:
        switch (art_event) {
            case EN_EVENT.INIT:
        		if (custom_args < 2) {
	                char_name = "Koopa";
	                spr_name = (custom_args) ? "enemy_koopa_red" : "enemy_koopa";
	            	sprite_index = enemy_sprite_get(spr_name, "idle");
                	char_icon = (!custom_args) ? sprite_get("enemy_koopa_icon") : sprite_get("enemy_koopa_red_icon")
        		}
        		else {
	                char_name = "Koopa Paratroopa";
	                spr_name = (custom_args % 2 == 1) ? "enemy_pkoopa_red" : "enemy_pkoopa";
	            	sprite_index = enemy_sprite_get(spr_name, "idle");
                	char_icon = (!custom_args % 2 == 1) ? sprite_get("enemy_pkoopa_icon") : sprite_get("enemy_pkoopa_red_icon")
        		}
                
                hitpoints_max = 5;
                hit_by_proj = false;
                player_hit_cooldown = 0;
                was_dead = false;
                move_timer = 0;
				num_sprite_sets = 3;
				current_sprite_set = 0;
                
                collision_box = sprite_get("enemy_koopa_mask");
                mask_index =  collision_box; // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
                
                //Animation Actions
                char_height = 25;
                char_arrow = sprite_get("char_arrow");
                anim_speed = .02;
                idle_anim_speed = .1;
                crouch_anim_speed = .1;
                walk_anim_speed = .1;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                
                //Movement Variables
                walk_speed = 2;
                walk_accel = 2;
                walk_turn_time = 6;
                initial_dash_time = 10;
                initial_dash_speed = 6.5;
                dash_speed = 6;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = 0;
                moonwalk_accel = 1.4;
                
                jump_start_time = 5;
                jump_speed = 12;
                short_hop_speed = 8;
                djump_speed = 10;
                leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
                max_jump_hsp = 2; //the maximum hsp you can have when jumping from the ground
                air_max_speed = 2; //the maximum hsp you can accelerate to when in a normal aerial state
                jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
                air_accel = 1.5;
                prat_fall_accel = 1; //multiplier of air_accel while in pratfall
                air_friction = 0;
                max_djumps = 1;
                double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
                
                max_fall = 8; //maximum fall speed without fastfalling
                fast_fall = 11; //fast fall speed
                gravity_speed = .5;
                hitstun_grav = .5;
                knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                
                land_time = 4; //normal landing frames
                prat_land_time = 20;
                wave_land_time = 15;
                wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
                wave_friction = .04; //grounded deceleration when wavelanding
                
                
                land_sound = noone;
                landing_lag_sound = noone;
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
                
                ai_moving_right = false;
                ai_moving_left = true;
            break;
            case EN_EVENT.UPDATE:
	            if (state == PS_DEAD)
	            		break;
	            		
				num_sprite_sets = custom_args % 2 == 1 ? 1 : 3;
	            		
            	if (custom_args < 2 || array_length(waypoints) == 0) {
            		enemy_class  = 0;
	                gravity_speed = .5;
	                hitstun_grav = .5;
	                target_behavior = TR.NEAR;
	                waypoint_index = -1;
                	super_armor = false;
            	}
            	else {
            		enemy_class = 1;
	                gravity_speed = 0;
	                hitstun_grav = .5;
                	target_behavior = TR.NEAR;
                	super_armor = true;
            	}
            	
	    		if (custom_args < 2) {
	                char_name = "Koopa";
	                spr_name = (custom_args) ? "enemy_koopa_red" : "enemy_koopa";
	            	sprite_index = enemy_sprite_get(spr_name, "idle");
	            	char_icon = (!custom_args) ? sprite_get("enemy_koopa_icon") : sprite_get("enemy_koopa_red_icon")
	    		}
	    		else {
	                char_name = "Koopa Paratroopa";
	                spr_name = (custom_args % 2 == 1) ? "enemy_pkoopa_red" : "enemy_pkoopa";
	            	sprite_index = enemy_sprite_get(spr_name, "idle");
	            	char_icon = (!custom_args % 2 == 1) ? sprite_get("enemy_pkoopa_icon") : sprite_get("enemy_pkoopa_red_icon")
	    		}
            	
                //AI Routine
                if (instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
                    var t_dist = point_distance(x, y, ai_target.x, ai_target.y);
                    var t_xd = abs(ai_target.x - x);
                    var t_yd = abs(ai_target.y - y);
                    if (!committed) {
            			player_hit_cooldown = 60;
		            	if (alive_time <= 2) {
		            		spr_dir = -1;
		            	}
		            	
		            	if (custom_args < 2) {
		            		enemy_class  = 0;
	                		standard_collision(true);
	                    	if (art_state != PS_ATTACK_GROUND && art_state != PS_ATTACK_AIR) {
			                    if (custom_args % 2 == 1 && !free) {
			                    	standard_on_ledge();
			                    }
	                    	}
	                        if (spr_dir == 1) {
	                            right_down = true;
	                            left_down = false;
	                        } 
	                        if (spr_dir == -1) {
	                            right_down = false;
	                            left_down = true;
	                        } 
	                        
	                        hsp = walk_speed * spr_dir
		            	}
		            	else {
		            		//Bouncing
		            		if (array_length(waypoints) <= 0) {
			            		standard_collision(true);
		                    	if (art_state != PS_ATTACK_GROUND && art_state != PS_ATTACK_AIR) {
				                    if (custom_args % 2 == 1) {
				                    	standard_on_ledge();
				                    }
		                    	}
		                        if (spr_dir == 1) {
		                            right_down = true;
		                            left_down = false;
		                        } 
		                        if (spr_dir == -1) {
		                            right_down = false;
		                            left_down = true;
		                        } 
		                        if (!free)
		                        	vsp = -12;
	                        
	                        	hsp = walk_speed * spr_dir
		            		}
		            		else {
		            			if (waypoint_index == -1) waypoint_index = 0;
		            			
						        var next_waypoint = (waypoint_index + 1) % array_length(waypoints);
						        if (next_waypoint < array_length(waypoints)) {
						            var new_pos = [xstart + waypoints[waypoint_index].x, ystart + waypoints[waypoint_index].y]
						            var next_pos = [xstart + waypoints[next_waypoint].x, ystart + waypoints[next_waypoint].y]
						            var dist = point_distance(new_pos[0], new_pos[1], next_pos[0], next_pos[1]);
						            var dir = point_direction(new_pos[0], new_pos[1], next_pos[0], next_pos[1]);
						            hsp += lengthdir_x(0.05, dir);
						            vsp += lengthdir_y(0.05, dir);
						            hsp = clamp(hsp, -walk_speed, walk_speed);
						            vsp = clamp(vsp, -walk_speed, walk_speed);
						            if abs(point_distance(x, y, next_pos[0], next_pos[1])) <= walk_speed* 2 {
						                waypoint_index = next_waypoint;
						            }
						        }
		            		}
		            	}
	                    
	                    if (standard_stomp_detection()) {
	                    	if (art_state != PS_ATTACK_GROUND && art_state != PS_ATTACK_AIR) {
		                    	sound_stop(sound_get("sfx_stomp"));
		                    	sound_play(sound_get("sfx_stomp"));
		                    	
				            	if (custom_args < 2) {
			                    	next_attack = AT_EXTRA_1;
			                    	hsp = 0;
				            	}
				            	else {
				            		custom_args -= 2;
				            		custom_args = max(0, custom_args);
	                        		hsp = walk_speed * spr_dir
				            	}
	                    	}
	                    }
	                    else {
	                    	if (art_state != PS_ATTACK_GROUND && art_state != PS_ATTACK_AIR) {
		                    	var temp_player = standard_player_detection();
		                    	
		                    	if (instance_exists(temp_player)) {
		                    		standard_player_hit(temp_player);
		                    	}
	                    	}
	                    }
                    }
                }
                else {
	                if (hitstun > 0 && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
	                	hsp *= is_free ? 0.95 : 0.85;
	                }
                }
            break;
            case EN_EVENT.ATTACK_UPDATE:
            	if (attack == AT_EXTRA_1) {
            		if (window == 1 || window == 2) { //Shell not moving
	                	hsp *= is_free ? 0.95 : 0.85;
            			player_hit_cooldown = 60;
	            		var temp_player = standard_stomp_detection();
	                	if (instance_exists(temp_player)) {
	                    	sound_stop(sound_get("sfx_kick"));
	                    	sound_play(sound_get("sfx_kick")); 
	                		window = 3;
	                		window_timer = 0;
	                    }
	                    else {
	                    	temp_player = standard_player_detection();
	                    	
	                    	if (instance_exists(temp_player)) {
		                    	sound_stop(sound_get("sfx_kick"));
		                    	sound_play(sound_get("sfx_kick"));
							    if (temp_player.x < x) {
							    	spr_dir = 1;
							        ai_moving_right = true;
							        ai_moving_left = false;
							    } 
							    else {
							    	spr_dir = -1;
							        ai_moving_right = false;
							        ai_moving_left = true;
							    } 
		                		window = 3;
		                		window_timer = 0;
	                    	}
	                    	
	                    }
            		}
            		else { //Shell moving
            			if (player_hit_cooldown > 0)
            				player_hit_cooldown --;
	                    standard_collision(false);
						var enemy = collision_nearest_enemy(x, y, 64);
						if (instance_exists(enemy)) {
							var block2 = spr_dir < 0  ? collision_rectangle(bbox_left + hsp, bbox_top, bbox_left - hsp, bbox_bottom - 2, enemy, 0, 1)
								: collision_rectangle(bbox_right - hsp, bbox_top, bbox_right + hsp, bbox_bottom - 2, enemy, 0, 1);
								if (block2) {
								with (enemy) {
									if (get_article_script(id) == 6) {
										percent += 5;
										kb_angle = 45;
										kb_power = 6;
										hit_by_proj = true;
										if (percent < hitpoints_max) {
											with (other) {
												hit_by_proj = false;
												percent += 5;
												kb_angle = 135;
												kb_power = 6;
											}
										}
									}
								}
							}
						}
						if (get_gameplay_time() % 2 == 0) {
						var block_near = collision_nearest_block(x, y, 35);
							if (instance_exists(block_near)) {
								with (block_near) {
									if (state != 1 && block_type[0] != 2) {
								        state = 1;
								        state_timer = 0;
								        invisible = false;
								        sound_stop(sound_get("sfx_bump"));
								        sound_play(sound_get("sfx_bump"));
									}
								}
							}		
						}
						if (!free)
							hsp = 7 * spr_dir
                    	if (player_hit_cooldown <= 0) {
		            		var temp_player = standard_stomp_detection();
		                	if (instance_exists(temp_player)) {
		                    	sound_stop(sound_get("sfx_stomp"));
		                    	sound_play(sound_get("sfx_stomp"));
			                    hsp = 0;
		                		window = 1;
		                		window_timer = 0;
		                	}
	                    	temp_player = standard_player_detection();
	                    	
	                    	if (instance_exists(temp_player)) {
		                    	standard_player_hit(temp_player);
	                    	}
	                    	
	                    }
            		}
            	}
            break;
            case EN_EVENT.ANIMATION:
            	if (custom_args % 2 == 1) {
	            	if (art_state == PS_ATTACK_AIR || art_state == PS_ATTACK_GROUND) {
	            		if (attack == AT_EXTRA_1) {
            				sprite_index = enemy_sprite_get(spr_name, "shell");
	            		}
	            	}
            	}
        		current_sprite_set = find_room_type()
				var num_frames = image_number / num_sprite_sets;
				var offset = num_frames * current_sprite_set;
            	if (art_state != PS_ATTACK_AIR && art_state != PS_ATTACK_GROUND) {
            		image_index = state_timer * walk_anim_speed;
            		if (art_state == PS_DEAD) {
	                	spr_name = (custom_args) ? "enemy_koopa_red" : "enemy_koopa";
            			sprite_index = enemy_sprite_get(spr_name, "death");
            		}
            		else
            			sprite_index = enemy_sprite_get(spr_name, "idle");
					image_index = image_index % num_frames + offset;
            	}
            	else {
            		if (window == 2) {
            			image_index = state_timer * walk_anim_speed;
						image_index = image_index % num_frames + offset;
            		}
            		else {
            			image_index = image_index + offset;
            		}
            	}
            break;
            case EN_EVENT.GOT_HIT:
            	hit_by_proj = (last_hitbox.type == 2) || ((art_state == PS_ATTACK_AIR || art_state == PS_ATTACK_GROUND) && window != 3)
            	
    			if (percent >= hitpoints_max && !hit_by_proj) {
	                percent = hitpoints_max - 1;
            		if (art_state != PS_ATTACK_AIR && art_state != PS_ATTACK_GROUND) {
	                	sound_stop(sound_get("sfx_kick"));
	                	sound_play(sound_get("sfx_kick"));
		            	if (custom_args < 2) {
		                	art_state = PS_IDLE;
		                	next_attack = AT_EXTRA_1;
		                	window = 3;
		                	window_timer = 0;
		                	was_dead = true;
		                	hitstun = 0;
		                	state_timer = 3;
            				player_hit_cooldown = 60;
					        if !is_free && kb_angle > 180 && kb_angle < 360 vsp = kb_power*sin(kb_angle);
					        else if !is_free vsp = -abs(kb_power*dsin(kb_angle));
					        else vsp = -kb_power*dsin(kb_angle);
					    	hsp = kb_power*dcos(kb_angle);
		    				if hsp != 0 spr_dir = sign(hsp);
		    				old_hsp = hsp;
		    				old_vsp = vsp;
		    				y += 3;
		            	}
		            	else {
	                		percent = 0;
		            		custom_args -= 2;
		            		custom_args = max(0, custom_args);
		            	}
                	}
                	else {
                		hitstun = 0;
	                	art_state = PS_IDLE;
	                	next_attack = AT_EXTRA_1;
	                	window = 3;
	                	window_timer = 0;
		                	hitstun = 3;
		                	state_timer = 3;
            			player_hit_cooldown = 60;
				        if !is_free && kb_angle > 180 && kb_angle < 360 vsp = kb_power*sin(kb_angle);
				        else if !is_free vsp = -abs(kb_power*dsin(kb_angle));
				        else vsp = -kb_power*dsin(kb_angle);
				    	hsp = kb_power*dcos(kb_angle);
				    	y += 3;
	    				if hsp != 0 spr_dir = sign(hsp);
	    				old_hsp = hsp;
	    				old_vsp = vsp;
                	}
            	}
            break;
            case EN_EVENT.DEATH:
            	standard_death();
            	
            break;
            case EN_EVENT.SET_ATTACK:
            	if (was_dead) {
            		window = 3;
            		window_timer = 0;
            	}
            	user_event(7);
            break;
        }
    break;
    case EN.BBILL:
    case EN.FIRE:
        switch (art_event) {
            case EN_EVENT.INIT:
            	if (enem_id == EN.FIRE) {
	                char_name = "Fire";
	                spr_name = "enemy_fire";
                	collision_box = enemy_sprite_get(spr_name, "idle");
            	}
            	else {
	                char_name = "Bullet Bill";
	                spr_name = "enemy_bbill";
                	collision_box = sprite_get("enemy_goomba_mask");
            	}
                
            	sprite_index = enemy_sprite_get(spr_name, "idle");
                hitpoints_max = 5;
                
                mask_index =  collision_box; // Collision Mask
                hurtbox_spr =  collision_box; // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
                
                ignores_walls = true;
                can_be_grounded = false;
                
                //Animation Actions
                char_height = 25;
                char_arrow = sprite_get("char_arrow");
                char_icon = sprite_get("enemy_bbill_icon")
                anim_speed = .02;
                idle_anim_speed = .05;
                crouch_anim_speed = .1;
                walk_anim_speed = .1;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                enemy_class = 1;
                
                //Movement Variables
                walk_speed = 4;
                walk_accel = 4;
                walk_turn_time = 6;
                initial_dash_time = 10;
                initial_dash_speed = 6.5;
                dash_speed = 6;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = 0;
                moonwalk_accel = 1.4;
                
                jump_start_time = 5;
                jump_speed = 12;
                short_hop_speed = 8;
                djump_speed = 10;
                leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
                max_jump_hsp = 2; //the maximum hsp you can have when jumping from the ground
                air_max_speed = 2; //the maximum hsp you can accelerate to when in a normal aerial state
                jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
                air_accel = 1.5;
                prat_fall_accel = 1; //multiplier of air_accel while in pratfall
                air_friction = 0;
                max_djumps = 1;
                double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
                
                max_fall = 8; //maximum fall speed without fastfalling
                fast_fall = 11; //fast fall speed
                gravity_speed = 0;
                hitstun_grav = .5;
                knockback_adj = 0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                
                land_time = 4; //normal landing frames
                prat_land_time = 20;
                wave_land_time = 15;
                wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
                wave_friction = .04; //grounded deceleration when wavelanding
                
                //parry animation frames
                dodge_startup_frames = 1;
                dodge_active_frames = 1;
                dodge_recovery_frames = 4;
                
                //tech animation frames
                tech_active_frames = 3;
                tech_recovery_frames = 1;
                
                //tech roll animation frames
                techroll_startup_frames = 2;
                techroll_active_frames = 2;
                techroll_recovery_frames = 2;
                techroll_speed = 10;
                
                //airdodge animation frames
                air_dodge_startup_frames = 1;
                air_dodge_active_frames = 3;
                air_dodge_recovery_frames = 3;
                air_dodge_speed = 7.5;
                
                
                //roll animation frames
                roll_forward_startup_frames = 2;
                roll_forward_active_frames = 2;
                roll_forward_recovery_frames = 2;
                roll_back_startup_frames = 2;
                roll_back_active_frames = 2;
                roll_back_recovery_frames = 2;
                roll_forward_max = 9; //roll speed
                roll_backward_max = 9;
                
                
                land_sound = noone;
                landing_lag_sound = noone;
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
                
                ai_moving_right = false;
                ai_moving_left = true;
            break;
            case EN_EVENT.UPDATE:
                //AI Routine
                can_be_grounded = false;
                ignores_walls = true;
                if (instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
                    var t_dist = point_distance(x, y, ai_target.x, ai_target.y);
                    var t_xd = abs(ai_target.x - x);
                    var t_yd = abs(ai_target.y - y);
                    if (!committed) {
		            	if (alive_time <= 2) {
		            		if (is_array(custom_args)) {
		            			shoot_dir = custom_args[0]; 
		            			no_stomp = custom_args[1]; 
		            			speed_mult = custom_args[2]; 
		            		}
		            		else {
		            			shoot_dir = 180;
		            			no_stomp = false;
		            			speed_mult = 1; 
		            		}
            				if (enem_id == EN.FIRE) {
		            			no_stomp = true;
			            	}
		            	}
		            	if (alive_time == 2) {
            				if (enem_id == EN.FIRE) {
		                    	sound_stop(sound_get("sfx_bossfire"));
		                    	sound_play(sound_get("sfx_bossfire"));
            				}
            				else {
		                    	sound_stop(sound_get("sfx_thwomp"));
		                    	sound_play(sound_get("sfx_thwomp"));
            				}
		            	}
        				if (enem_id == EN.FIRE) {
        					invincible = 2;
        				}
		            	joy_pad_idle = false;
		            	joy_dir = shoot_dir
		            	walk_speed = 4 * speed_mult
		            	hsp = lengthdir_x(walk_speed, joy_dir);
		            	vsp = lengthdir_y(walk_speed, joy_dir);
	                    
	                    if (!no_stomp && standard_stomp_detection()) {
	                    	if (art_state != PS_ATTACK_GROUND && art_state != PS_ATTACK_AIR) {
		                    	sound_stop(sound_get("sfx_stomp"));
		                    	sound_play(sound_get("sfx_stomp"));
		                    	percent += hitpoints_max;
		                    	kb_angle = 270;
		                    	kb_power = 3;
		                    	
	                    	}
	                    }
	                    else {
	                    	var temp_player = standard_player_detection();
	                    	
	                    	if (instance_exists(temp_player)) {
	                    		standard_player_hit(temp_player);
	                    	}
                    	}
                    }
                }
                else {
	                if (hitstun > 0)
	                	hsp *= is_free ? 0.95 : 0.85;
                }
            break;
            case EN_EVENT.ANIMATION:
        		sprite_index = enemy_sprite_get(spr_name, "idle");
        		if (art_state != PS_DEAD) {
        			if (enem_id != EN.FIRE)
        				image_angle = shoot_dir - 90;
        		}
        		spr_dir = (angle_difference(shoot_dir, 180) < 90) ? -1 : 1;
            	
            break;
            case EN_EVENT.DEATH:
				image_angle += 25 * spr_dir;
                standard_death()
            break;
            case EN_EVENT.SET_ATTACK:
            	user_event(7);
            break;
        }
    break;
    case EN.PPLANT:
        switch (art_event) {
            case EN_EVENT.INIT:
                char_name = "Piranha Plant";
                spr_name = "enemy_pplant";
                
            	sprite_index = enemy_sprite_get(spr_name, "idle");
                hitpoints_max = 5;
                
                collision_box = asset_get("empty_sprite");
                mask_index =  collision_box; // Collision Mask
                hurtbox_spr =  asset_get("ex_guy_hurt_box"); // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
		        y_s = y + 64;
                
                ignores_walls = true;
                can_be_grounded = false;
                disable_movement = true;
                
                //Animation Actions
                char_height = 25;
                char_arrow = sprite_get("char_arrow");
                char_icon = sprite_get("enemy_pplant_icon")
                anim_speed = .02;
                idle_anim_speed = .1;
                crouch_anim_speed = .1;
                walk_anim_speed = .25;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                enemy_class = 1;
                rise_timer = 0;
                
                //Movement Variables
                walk_speed = 4;
                walk_accel = 4;
                walk_turn_time = 6;
                initial_dash_time = 10;
                initial_dash_speed = 6.5;
                dash_speed = 6;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = 0;
                moonwalk_accel = 1.4;
                
                jump_start_time = 5;
                jump_speed = 12;
                short_hop_speed = 8;
                djump_speed = 10;
                leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
                max_jump_hsp = 2; //the maximum hsp you can have when jumping from the ground
                air_max_speed = 2; //the maximum hsp you can accelerate to when in a normal aerial state
                jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
                air_accel = 1.5;
                prat_fall_accel = 1; //multiplier of air_accel while in pratfall
                air_friction = 0;
                max_djumps = 1;
                double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
                
                max_fall = 8; //maximum fall speed without fastfalling
                fast_fall = 11; //fast fall speed
                gravity_speed = 0;
                hitstun_grav = 0;
                knockback_adj = 0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                
                land_time = 4; //normal landing frames
                prat_land_time = 20;
                wave_land_time = 15;
                wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
                wave_friction = .04; //grounded deceleration when wavelanding
                
                land_sound = noone;
                landing_lag_sound = noone;
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
                
                ai_moving_right = false;
                ai_moving_left = true;
            break;
            case EN_EVENT.UPDATE:
                //AI Routine
                if (instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
                    var t_dist = point_distance(x, y, ai_target.x, ai_target.y);
                    var t_xd = abs(ai_target.x - x);
                    var t_yd = abs(ai_target.y - y);
                    if (!committed) {
		            	if (alive_time <= 2) {
		            		rise_timer = 118;
		            	}
		            	hsp = 0;
		            	vsp = 0;
		            	rise_timer++
		            	if (rise_timer >= 0 && rise_timer < 120) {
		            		y = y_s + 64;
		            		if (rise_timer == 119) {
		            			if (t_dist < 128) {
		            				rise_timer = 118;
		            			}
		            		}
		            		invincible = 2;
		            	}
		            	else if (rise_timer >= 120 && rise_timer < 135) {
		            		y = ease_linear(y_s + 64, y_s, rise_timer - 120, 15)
		            	}
		            	else if (rise_timer >= 135 && rise_timer < 240) {
		            		y = y_s;
		            	}
		            	else if (rise_timer >= 240 && rise_timer < 255) {
		            		y = ease_linear(y_s, y_s + 64, rise_timer - 240, 15)
		            	}
		            	else
		            		rise_timer = 0;
		            	if (rise_timer > 120) {	
            				mask_index =  sprite_get("enemy_goomba_mask"); // Collision Mask
	                    	if (art_state != PS_ATTACK_GROUND && art_state != PS_ATTACK_AIR) {
		                    	var temp_player = standard_player_detection();
		                    	
		                    	if (instance_exists(temp_player)) {
		                    		standard_player_hit(temp_player);
		                    	}
	                    	}
            				mask_index =  collision_box; // Collision Mask
		            	}
		            	super_armor = true;
                    }
                }
                else {
                	hsp = 0;
                	vsp = 0;
                    right_down = false;
                    left_down = false;
                }
            break;
            case EN_EVENT.ANIMATION:
            	num_sprite_sets = 3;
        		current_sprite_set = find_room_type()
				var num_frames = image_number / num_sprite_sets;
				var offset = num_frames * current_sprite_set;
            	if (art_state != PS_ATTACK_AIR && art_state != PS_ATTACK_GROUND) {
            		image_index += idle_anim_speed;
            		sprite_index = enemy_sprite_get(spr_name, "idle");
					image_index = image_index % num_frames + offset;
            	}
            	else {
            		image_index = image_index + offset;
            	}
            	
            break;
            case EN_EVENT.DEATH:
	            if (state_timer == 2) {
			    	sound_stop(sound_get("sfx_kick"));
			    	sound_play(sound_get("sfx_kick"));
	            	spawn_hit_fx(floor(x - 16), floor(y - 32), obj_stage_main.fx_puff);
	            	destroyed = true;
	            }
            break;
            case EN_EVENT.SET_ATTACK:
            	user_event(7);
            break;
        }
       break;
    case EN.SPINY:
    case EN.PTOOIE:
        switch (art_event) {
            case EN_EVENT.INIT:
            	if (enem_id == EN.SPINY) {
	                char_name = "Spiny";
	                spr_name = "enemy_spiny";
                	char_icon = sprite_get("enemy_spiny_icon")
                	collision_box = sprite_get("enemy_goomba_mask");
	                walk_speed = 2;
	                walk_accel = 2;
            	}
            	else{
	                char_name = "Ptooie";
	                spr_name = "enemy_ptooie";
                	char_icon = sprite_get("enemy_ptooie_icon")
                	collision_box = sprite_get("enemy_koopa_mask");
	                walk_speed = 4;
	                walk_accel = 4;
            	}
                
            	sprite_index = enemy_sprite_get(spr_name, "idle");
                hitpoints_max = 5;
                mask_index =  collision_box; // Collision Mask
                hurtbox_spr =  collision_box; // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
				
				big = false;
				
				num_sprite_sets = 1;
				current_sprite_set = 0;
				
                //Animation Actions
                char_height = 25;
                char_arrow = sprite_get("char_arrow");
                char_icon = sprite_get("enemy_spiny_icon")
                anim_speed = .02;
                idle_anim_speed = .1;
                crouch_anim_speed = .1;
                walk_anim_speed = .1;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                
                //Movement Variables
                walk_speed = 2;
                walk_accel = 2;
                walk_turn_time = 6;
                initial_dash_time = 10;
                initial_dash_speed = 6.5;
                dash_speed = 6;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = 0;
                moonwalk_accel = 1.4;
                
                jump_start_time = 5;
                jump_speed = 12;
                short_hop_speed = 8;
                djump_speed = 10;
                leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
                max_jump_hsp = 2; //the maximum hsp you can have when jumping from the ground
                air_max_speed = 2; //the maximum hsp you can accelerate to when in a normal aerial state
                jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
                air_accel = 1.5;
                prat_fall_accel = 1; //multiplier of air_accel while in pratfall
                air_friction = 0;
                max_djumps = 1;
                double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
                
                max_fall = 8; //maximum fall speed without fastfalling
                fast_fall = 11; //fast fall speed
                gravity_speed = .5;
                hitstun_grav = .5;
                knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                
                land_time = 4; //normal landing frames
                prat_land_time = 20;
                wave_land_time = 15;
                wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
                wave_friction = .04; //grounded deceleration when wavelanding
                
                //parry animation frames
                dodge_startup_frames = 1;
                dodge_active_frames = 1;
                dodge_recovery_frames = 4;
                
                //tech animation frames
                tech_active_frames = 3;
                tech_recovery_frames = 1;
                
                //tech roll animation frames
                techroll_startup_frames = 2;
                techroll_active_frames = 2;
                techroll_recovery_frames = 2;
                techroll_speed = 10;
                
                //airdodge animation frames
                air_dodge_startup_frames = 1;
                air_dodge_active_frames = 3;
                air_dodge_recovery_frames = 3;
                air_dodge_speed = 7.5;
                
                
                //roll animation frames
                roll_forward_startup_frames = 2;
                roll_forward_active_frames = 2;
                roll_forward_recovery_frames = 2;
                roll_back_startup_frames = 2;
                roll_back_active_frames = 2;
                roll_back_recovery_frames = 2;
                roll_forward_max = 9; //roll speed
                roll_backward_max = 9;
                
                
                land_sound = noone;
                landing_lag_sound = noone;
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
                
                ai_moving_right = false;
                ai_moving_left = true;
            break;
            case EN_EVENT.UPDATE:
                //AI Routine
                if (instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
                    var t_dist = point_distance(x, y, ai_target.x, ai_target.y);
                    var t_xd = abs(ai_target.x - x);
                    var t_yd = abs(ai_target.y - y);
                    if (!committed) {
		            	if (alive_time <= 4) {
		            		if (is_array(custom_args)) {
		            			hsp = custom_args[0];
		            			vsp = custom_args[1];
		            			next_attack = AT_EXTRA_1;
		            			spr_dir = hsp < 0 ? -1 : 1;
		            			jump_with_player = false;
		            		}
		            		else {
		            			spr_dir = -1;
		            			jump_with_player = custom_args;
		            		}
	                        if (spr_dir == 1) {
	                            ai_moving_right = true;
	                            ai_moving_left = false;
	                        } 
	                        if (spr_dir == -1) {
	                            ai_moving_right = false;
	                            ai_moving_left = true;
	                        } 
		            	}
		            	if (alive_time == 4) {
		            		if ("out_of_block" in self) {
		            			vsp = -2;
		            		}
		            	}
		            	
		            	
		            	if (enem_id = EN.SPINY) {
			            	if (!big && obj_stage_main.am_mario_syobon) {
								var nearest_shroom = collision_nearest_enemy(x, y, 64);
								if (instance_exists(nearest_shroom) && nearest_shroom.num == 10 && nearest_shroom.item_id == 0 && nearest_shroom.follow_player == noone) {
									big = true;
									instance_destroy(nearest_shroom);
	                				sound_play(sound_get("sfx_powerup"));
								}
			            	}
			            	if (big) {
			            		//Check for terrain
								var terrain = terrain_detection();
								if (instance_exists(terrain)) {
									with (terrain) {
										if (!("num" in self) || (num != 15 && num != 17)) break;
										if (!visible) break;
										sound_stop(sound_get("sfx_break"));
								        sound_play(sound_get("sfx_break"));
								        var brick1 = instance_create(round(x), round(y), "obj_stage_article", 18)
								        brick1.sprite_index = sprite_get("brickblock_break");
								        brick1.image_index = 0;
								        brick1.hsp = -2;
								        brick1.vsp = -4;
								        var brick2 = instance_create(round(x+16), round(y), "obj_stage_article", 18)
								        brick2.sprite_index = sprite_get("brickblock_break");
								        brick2.image_index = 1;
								        brick2.hsp = 2;
								        brick2.vsp = -4;
								        var brick3 = instance_create(round(x), round(y+16), "obj_stage_article", 18)
								        brick3.sprite_index = sprite_get("brickblock_break");
								        brick3.image_index = 2;
								        brick3.hsp = -4;
								        brick3.vsp = -2;
								        var brick4 = instance_create(round(x+16), round(y+16), "obj_stage_article", 18)
								        brick4.sprite_index = sprite_get("brickblock_break");
								        brick4.image_index = 3;
								        brick4.hsp = 4;
								        brick4.vsp = -2;
								        instance_destroy(id);
									}
								}
			            	}
			            	spr_name = big ? "enemy_spiny_big" : "enemy_spiny"
			                collision_box = big ?  sprite_get("enemy_goomba_mask_big") : sprite_get("enemy_goomba_mask");
		            	}
		            	standard_collision(true)
                        if (jump_with_player) {
                        	if (t_xd < 256 && ai_target.y <= y && ai_target.vsp < 0 && !free) {
                        		vsp = -12;
                        		y += vsp;
                        	}
                        }
                        
                        if (spr_dir == 1) {
                            right_down = true;
                            left_down = false;
                        } 
                        if (spr_dir == -1) {
                            right_down = false;
                            left_down = true;
                        } 
                        
                        hsp = walk_speed * spr_dir
                    }
                	var temp_player = standard_player_detection();
                	if (instance_exists(temp_player)) {
                		standard_player_hit(temp_player);
                	}
                	
	                    
                }
                else {
	                if (hitstun > 0)
	                	hsp *= is_free ? 0.95 : 0.85;
                    right_down = false;
                    left_down = false;
                }
            break;
            case EN_EVENT.ATTACK_UPDATE:
            	if (attack == AT_EXTRA_1) {
            		if (window == 1 && !free) {
            			window = 2;
            			window_timer = 0;
            		}
            	}
            break;
            case EN_EVENT.ANIMATION:
        	if (art_state != PS_ATTACK_AIR && art_state != PS_ATTACK_GROUND) {
        		if (art_state == PS_DEAD)
        			sprite_index = enemy_sprite_get(spr_name, "death");
        		else
        			sprite_index = enemy_sprite_get(spr_name, "idle");
        	}
            break;
            case EN_EVENT.DEATH:
                standard_death()
            break;
            case EN_EVENT.SET_ATTACK:
            	user_event(7);
            break;
        }
	break;
    case EN.PODOBOO:
        switch (art_event) {
            case EN_EVENT.INIT:
                char_name = "Podoboo";
                spr_name = "enemy_podoboo";
            	char_icon = asset_get("empty_sprite")
            	collision_box = asset_get("enemy_bbill_mask"); // Collision Mask
                walk_speed = 2;
                walk_accel = 2;
                
            	sprite_index = enemy_sprite_get(spr_name, "idle");
                hitpoints_max = 99;
                
                mask_index =  asset_get("enemy_bbill_mask"); // Collision Mask
                hurtbox_spr =  sprite_get("enemy_bbill_mask"); // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
				
				num_sprite_sets = 1;
				current_sprite_set = 0;
				
                //Animation Actions
                char_height = 25;
                char_arrow = sprite_get("char_arrow");
                char_icon = sprite_get("enemy_spiny_icon")
                anim_speed = .02;
                idle_anim_speed = .1;
                crouch_anim_speed = .1;
                walk_anim_speed = .1;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                
                //Movement Variables
                walk_speed = 2;
                walk_accel = 2;
                walk_turn_time = 6;
                initial_dash_time = 10;
                initial_dash_speed = 6.5;
                dash_speed = 6;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = 0;
                moonwalk_accel = 1.4;
                
                jump_start_time = 5;
                jump_speed = 12;
                short_hop_speed = 8;
                djump_speed = 10;
                leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
                max_jump_hsp = 2; //the maximum hsp you can have when jumping from the ground
                air_max_speed = 2; //the maximum hsp you can accelerate to when in a normal aerial state
                jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
                air_accel = 1.5;
                prat_fall_accel = 1; //multiplier of air_accel while in pratfall
                air_friction = 0;
                max_djumps = 1;
                double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
                
                max_fall = 8; //maximum fall speed without fastfalling
                fast_fall = 11; //fast fall speed
                gravity_speed = .5;
                hitstun_grav = .5;
                knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                
                land_time = 4; //normal landing frames
                prat_land_time = 20;
                wave_land_time = 15;
                wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
                wave_friction = .04; //grounded deceleration when wavelanding
                
                //parry animation frames
                dodge_startup_frames = 1;
                dodge_active_frames = 1;
                dodge_recovery_frames = 4;
                
                //tech animation frames
                tech_active_frames = 3;
                tech_recovery_frames = 1;
                
                //tech roll animation frames
                techroll_startup_frames = 2;
                techroll_active_frames = 2;
                techroll_recovery_frames = 2;
                techroll_speed = 10;
                
                //airdodge animation frames
                air_dodge_startup_frames = 1;
                air_dodge_active_frames = 3;
                air_dodge_recovery_frames = 3;
                air_dodge_speed = 7.5;
                
                
                //roll animation frames
                roll_forward_startup_frames = 2;
                roll_forward_active_frames = 2;
                roll_forward_recovery_frames = 2;
                roll_back_startup_frames = 2;
                roll_back_active_frames = 2;
                roll_back_recovery_frames = 2;
                roll_forward_max = 9; //roll speed
                roll_backward_max = 9;
                
                
                land_sound = noone;
                landing_lag_sound = noone;
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
                
                ai_moving_right = false;
                ai_moving_left = true;
            break;
            case EN_EVENT.UPDATE:
                //AI Routine
                invincible = 3;
                can_be_grounded = false;
                ignores_walls = true;
                if (instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
                    var t_dist = point_distance(x, y, ai_target.x, ai_target.y);
                    var t_xd = abs(ai_target.x - x);
                    var t_yd = abs(ai_target.y - y);
                    if (!committed) {
		            	if (alive_time <= 2) {
		            		if (is_array(custom_args)) {
		            			shoot_dir_range_min = custom_args[0];
		            			shoot_dir_range_max = custom_args[1];
		            			shoot_dir = shoot_dir_range_min + random_func(0, shoot_dir_range_max - shoot_dir_range_min, true);
				            	hsp = lengthdir_x(16, shoot_dir);
				            	vsp = lengthdir_y(16, shoot_dir);
				            	sound_play(sound_get("sfx_podoboo"))
		            		}
		            	}
		            	joy_pad_idle = false;
	                    
                    	if (art_state != PS_ATTACK_GROUND && art_state != PS_ATTACK_AIR) {
	                    	var temp_player = standard_player_detection();
	                    	
	                    	if (instance_exists(temp_player)) {
	                    		standard_player_hit(temp_player);
	                    	}
                    	}
                    }
                }
                else {
	                if (hitstun > 0)
	                	hsp *= is_free ? 0.95 : 0.1;
                }
            break;
            case EN_EVENT.ANIMATION:
        		sprite_index = enemy_sprite_get(spr_name, "idle");
        		image_index = state_timer * idle_anim_speed;
        		if (art_state != PS_DEAD)
        			image_angle = point_direction(0, 0, hsp, vsp) - 90;
            break;
            case EN_EVENT.DEATH:
				image_angle += 25 * spr_dir;
                standard_death()
            break;
            case EN_EVENT.SET_ATTACK:
            	user_event(7);
            break;
        }
    break;
    case EN.BUSTER:
        switch (art_event) {
            case EN_EVENT.INIT:
                char_name = "Buster Beetle";
                spr_name = "enemy_buster";
            	char_icon = sprite_get("enemy_buster_icon")
            	collision_box = sprite_get("enemy_goomba_mask");
            	sprite_index = enemy_sprite_get(spr_name, "idle");
                hitpoints_max = 5;
                mask_index =  collision_box; // Collision Mask
                hurtbox_spr =  collision_box; // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
				
				grabbed_player_obj = noone;
				
				num_sprite_sets = 1;
				current_sprite_set = 0;
				
                //Animation Actions
                char_height = 25;
                char_arrow = sprite_get("char_arrow");
                char_icon = sprite_get("enemy_buster_icon")
                anim_speed = .02;
                idle_anim_speed = .1;
                crouch_anim_speed = .1;
                walk_anim_speed = .1;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                
                //Movement Variables
                walk_speed = 1;
                walk_accel = 1;
                walk_turn_time = 6;
                initial_dash_time = 10;
                initial_dash_speed = 6.5;
                dash_speed = 6;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = 0;
                moonwalk_accel = 1.4;
                
                jump_start_time = 5;
                jump_speed = 12;
                short_hop_speed = 8;
                djump_speed = 10;
                leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
                max_jump_hsp = 1; //the maximum hsp you can have when jumping from the ground
                air_max_speed = 1; //the maximum hsp you can accelerate to when in a normal aerial state
                jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
                air_accel = 1.5;
                prat_fall_accel = 1; //multiplier of air_accel while in pratfall
                air_friction = 0;
                max_djumps = 1;
                double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
                
                max_fall = 8; //maximum fall speed without fastfalling
                fast_fall = 11; //fast fall speed
                gravity_speed = .5;
                hitstun_grav = .5;
                knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                
                land_time = 4; //normal landing frames
                prat_land_time = 20;
                wave_land_time = 15;
                wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
                wave_friction = .04; //grounded deceleration when wavelanding
                
                //parry animation frames
                dodge_startup_frames = 1;
                dodge_active_frames = 1;
                dodge_recovery_frames = 4;
                
                //tech animation frames
                tech_active_frames = 3;
                tech_recovery_frames = 1;
                
                //tech roll animation frames
                techroll_startup_frames = 2;
                techroll_active_frames = 2;
                techroll_recovery_frames = 2;
                techroll_speed = 10;
                
                //airdodge animation frames
                air_dodge_startup_frames = 1;
                air_dodge_active_frames = 3;
                air_dodge_recovery_frames = 3;
                air_dodge_speed = 7.5;
                
                
                //roll animation frames
                roll_forward_startup_frames = 2;
                roll_forward_active_frames = 2;
                roll_forward_recovery_frames = 2;
                roll_back_startup_frames = 2;
                roll_back_active_frames = 2;
                roll_back_recovery_frames = 2;
                roll_forward_max = 9; //roll speed
                roll_backward_max = 9;
                
                
                land_sound = noone;
                landing_lag_sound = noone;
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
                
                ai_moving_right = false;
                ai_moving_left = true;
            break;
            case EN_EVENT.UPDATE:
                //AI Routine
                if (instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
                    var t_dist = point_distance(x, y, ai_target.x, ai_target.y);
                    var t_xd = abs(ai_target.x - x);
                    var t_yd = abs(ai_target.y - y);
                    if (!committed) {
		            	if (alive_time <= 4) {
		            		if (is_array(custom_args)) {
		            			hsp = custom_args[0];
		            			vsp = custom_args[1];
		            			next_attack = AT_EXTRA_1;
		            			spr_dir = hsp < 0 ? -1 : 1;
		            		}
		            		else
		            			spr_dir = -1;
	                        if (spr_dir == 1) {
	                            ai_moving_right = true;
	                            ai_moving_left = false;
	                        } 
	                        if (spr_dir == -1) {
	                            ai_moving_right = false;
	                            ai_moving_left = true;
	                        } 
		            	}
		            	if (alive_time == 4) {
		            		if ("out_of_block" in self) {
		            			vsp = -2;
		            		}
		            	}
		            	
		            	standard_collision(true)
                        
                        
                        if (spr_dir == 1) {
                            right_down = true;
                            left_down = false;
                        } 
                        if (spr_dir == -1) {
                            right_down = false;
                            left_down = true;
                        } 
                        
                        hsp = walk_speed * spr_dir
	            	
                    	var temp_player = standard_player_detection();
                    	
                    	if (instance_exists(temp_player)) {
                    		grabbed_player_obj = temp_player;
		            		next_attack = AT_JAB;
                    	}
                    	
                    	var enemy_near = collision_nearest_enemy(x, y, 64);
                    	
                    	if (instance_exists(enemy_near) && enemy_near.num == 10 && enemy_near.use_type != -1) {
                    		grabbed_player_obj = enemy_near;
		            		next_attack = AT_JAB;
                    	}
	                    
                    }
                }
                else {
	                if (hitstun > 0)
	                	hsp *= is_free ? 0.95 : 0.85;
                    right_down = false;
                    left_down = false;
                }
            break;
            case EN_EVENT.ATTACK_UPDATE:
            	if (attack == AT_JAB) {
            		if (window == 1 && window_timer == 1) {
            			spr_dir = -spr_dir;
            		}
            		if (instance_exists(grabbed_player_obj)) {
	        			if (window_timer <= 1) {
							grabbed_player_relative_x = grabbed_player_obj.x - x;
							grabbed_player_relative_y = grabbed_player_obj.y - y;
						}
						var pull_to_x = 0
						var pull_to_y = 0;	
            			grabbed_player_obj.hitstop = 2;
			    		grabbed_player_obj.hitpause = true;
						
						if (window < 2 || (window == 2 && window_timer <= 1)) { 
			    			pull_to_x = 0 * spr_dir;
			    			pull_to_y = -24;
							//if this is the first frame of a window, store the grabbed player's relative position.
			    			grabbed_player_obj.x = x + ease_circOut( floor(grabbed_player_relative_x), floor(pull_to_x * (spr_dir * image_xscale)), min(window_timer, 24), 24);
			    			grabbed_player_obj.y = y + ease_circOut( floor(grabbed_player_relative_y), floor(pull_to_y* image_yscale), min(window_timer, 24), 24);
			    	
	            		}
	            		
						if (window >= 2 && window_timer > 1) { 
							if (grabbed_player_obj.object_index != oPlayer) {
								grabbed_player_obj.hsp = lengthdir_x(7 * spr_dir, 45);
								grabbed_player_obj.vsp = lengthdir_y(7, 45);
							}
                    		if ("num" in grabbed_player_obj && grabbed_player_obj.num == 10) {
                    			grabbed_player_obj.landed = false;
                    			grabbed_player_obj.dir = spr_dir;
                    		}
							grabbed_player_obj = noone;
							}
							
						}
						else if (!instance_exists(grabbed_player_obj) || (window_timer >= 2 && grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND)) {
							grabbed_player_obj = noone; 
						}
	            	}
            break;
            case EN_EVENT.ANIMATION:
        	if (art_state != PS_ATTACK_AIR && art_state != PS_ATTACK_GROUND) {
        		if (art_state == PS_DEAD)
        			sprite_index = enemy_sprite_get(spr_name, "death");
        		else
        			sprite_index = enemy_sprite_get(spr_name, "idle");
        	}
            break;
            case EN_EVENT.DEATH:
                standard_death()
            break;
            case EN_EVENT.SET_ATTACK:
            	user_event(7);
            break;
        }
	break;
    case EN.THWOMP:
        switch (art_event) {
            case EN_EVENT.INIT:
                char_name = "Thwomp";
                spr_name = "enemy_thwomp";
            	char_icon = asset_get("empty_sprite")
            	collision_box = sprite_get("enemy_thwomp_mask"); // Collision Mask
            	sprite_index = enemy_sprite_get(spr_name, "idle");
                hitpoints_max = 99;
                dropping = 0;
                drop_timer = 0;
                
                mask_index =  sprite_get("enemy_thwomp_mask"); // Collision Mask
                hurtbox_spr =  sprite_get("enemy_thwomp_mask"); // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
				
				num_sprite_sets = 1;
				current_sprite_set = 0;
				
                //Animation Actions
                char_height = 25;
                char_arrow = sprite_get("char_arrow");
                char_icon = sprite_get("enemy_spiny_icon")
                anim_speed = .02;
                idle_anim_speed = .1;
                crouch_anim_speed = .1;
                walk_anim_speed = .1;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                
                //Movement Variables
                walk_turn_time = 6;
                initial_dash_time = 10;
                initial_dash_speed = 6.5;
                dash_speed = 6;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = 0;
                moonwalk_accel = 1.4;
                
                jump_start_time = 5;
                jump_speed = 12;
                short_hop_speed = 8;
                djump_speed = 10;
                leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
                max_jump_hsp = 2; //the maximum hsp you can have when jumping from the ground
                air_max_speed = 2; //the maximum hsp you can accelerate to when in a normal aerial state
                jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
                air_accel = 1.5;
                prat_fall_accel = 1; //multiplier of air_accel while in pratfall
                air_friction = 0;
                max_djumps = 1;
                double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
                
                max_fall = 8; //maximum fall speed without fastfalling
                fast_fall = 11; //fast fall speed
                gravity_speed = 0;
                hitstun_grav = 0;
                knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                
                land_time = 4; //normal landing frames
                prat_land_time = 20;
                wave_land_time = 15;
                wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
                wave_friction = .04; //grounded deceleration when wavelanding
                
                //parry animation frames
                dodge_startup_frames = 1;
                dodge_active_frames = 1;
                dodge_recovery_frames = 4;
                
                //tech animation frames
                tech_active_frames = 3;
                tech_recovery_frames = 1;
                
                //tech roll animation frames
                techroll_startup_frames = 2;
                techroll_active_frames = 2;
                techroll_recovery_frames = 2;
                techroll_speed = 10;
                
                //airdodge animation frames
                air_dodge_startup_frames = 1;
                air_dodge_active_frames = 3;
                air_dodge_recovery_frames = 3;
                air_dodge_speed = 7.5;
                
                
                //roll animation frames
                roll_forward_startup_frames = 2;
                roll_forward_active_frames = 2;
                roll_forward_recovery_frames = 2;
                roll_back_startup_frames = 2;
                roll_back_active_frames = 2;
                roll_back_recovery_frames = 2;
                roll_forward_max = 9; //roll speed
                roll_backward_max = 9;
                
                
                land_sound = noone;
                landing_lag_sound = noone;
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
            break;
            case EN_EVENT.UPDATE:
                //AI Routine
                invincible = 3;
                if (instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
                    var t_dist = point_distance(x, y, ai_target.x, ai_target.y);
                    var t_xd = abs(ai_target.x - x);
                    var t_yd = abs(ai_target.y - y);
                    if (!committed) {
						var player_under = collision_rectangle(bbox_left, bbox_bottom - 4, bbox_right, bbox_bottom, oPlayer, 1, 1);
						
						var player_sides = collision_rectangle(bbox_left, bbox_bottom - 4, bbox_right, bbox_bottom, oPlayer, 1, 1);
						
						if (dropping == 0) {
							vsp = 0;
							gravity_speed = 0;
							x = xstart;
							y = ystart;
							if (t_xd < 128) {
								dropping = 1;
							}
						}
						else if (dropping == 1) {
							gravity_speed = 0.5;
							var terrain = terrain_detection();
							if (instance_exists(terrain)) {
								free = true;
								with (terrain) {
									if (!("num" in self) || (num != 15 && num != 17)) break;
									if (!visible) break;
									sound_stop(sound_get("sfx_break"));
							        sound_play(sound_get("sfx_break"));
							        var brick1 = instance_create(round(x), round(y), "obj_stage_article", 18)
							        brick1.sprite_index = sprite_get("brickblock_break");
							        brick1.image_index = 0;
							        brick1.hsp = -2;
							        brick1.vsp = -4;
							        var brick2 = instance_create(round(x+16), round(y), "obj_stage_article", 18)
							        brick2.sprite_index = sprite_get("brickblock_break");
							        brick2.image_index = 1;
							        brick2.hsp = 2;
							        brick2.vsp = -4;
							        var brick3 = instance_create(round(x), round(y+16), "obj_stage_article", 18)
							        brick3.sprite_index = sprite_get("brickblock_break");
							        brick3.image_index = 2;
							        brick3.hsp = -4;
							        brick3.vsp = -2;
							        var brick4 = instance_create(round(x+16), round(y+16), "obj_stage_article", 18)
							        brick4.sprite_index = sprite_get("brickblock_break");
							        brick4.image_index = 3;
							        brick4.hsp = 4;
							        brick4.vsp = -2;
							        instance_destroy(id);
								}
							}
							
							if (!free) {
								dropping = 2;
								drop_timer = 0;
							}
						}
						else if (dropping == 2) {
							drop_timer ++;
							if (drop_timer == 1) {
								sound_stop(sound_get("sfx_thwomp"));
								sound_play(sound_get("sfx_thwomp"));
							}
							if (drop_timer >= 60) {
								dropping = 3;
								drop_timer = 0;
							}
						}
						else {
							gravity_speed = 0;
							vsp = -2;
							if (y <= ystart) {
								dropping = 0;
							}
						}
                    	var temp_player = standard_player_detection();
                    	
                    	if (instance_exists(temp_player)) {
                    		standard_player_hit(temp_player);
                    	}
                    }
                }
                else {
	                if (hitstun > 0)
	                	hsp *= is_free ? 0.95 : 0.1;
                }
            break;
            case EN_EVENT.ANIMATION:
        		sprite_index = enemy_sprite_get(spr_name, "idle");
        		image_index = dropping == 0 || dropping == 3 ? 0 : 1;
            break;
            case EN_EVENT.DEATH:
				image_angle += 25 * spr_dir;
                standard_death()
            break;
            case EN_EVENT.SET_ATTACK:
            	user_event(7);
            break;
        }
    break;
    case EN.BOWSER:
        switch (art_event) {
            case EN_EVENT.INIT:
                char_name = "Bowser";
                spr_name = "enemy_bowser";
            	char_icon = sprite_get("enemy_bowser_icon")
            	collision_box = sprite_get("enemy_bowser_mask");
            	sprite_index = enemy_sprite_get(spr_name, "idle");
                hitpoints_max = 25;
                mask_index =  collision_box; // Collision Mask
                hurtbox_spr =  collision_box; // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
				
				move_timer = 0;
				jump_timer = 0;
				fire_timer = 0;
				hammer_timer = 0;
				
				move_freq = 96;
				jump_freq = 120;
				fire_freq = 152;
				hammer_freq = 188;
				
				num_sprite_sets = 1;
				current_sprite_set = 0;
				
                //Animation Actions
                char_height = 52;
                char_arrow = sprite_get("char_arrow");
                char_icon = sprite_get("enemy_bowser_icon")
                anim_speed = .02;
                idle_anim_speed = .1;
                crouch_anim_speed = .1;
                walk_anim_speed = .1;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                
                //Movement Variables
                walk_speed = 1;
                walk_accel = 1;
                walk_turn_time = 6;
                initial_dash_time = 10;
                initial_dash_speed = 6.5;
                dash_speed = 6;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = 0;
                moonwalk_accel = 1.4;
                
                jump_start_time = 5;
                jump_speed = 12;
                short_hop_speed = 8;
                djump_speed = 10;
                leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
                max_jump_hsp = 1; //the maximum hsp you can have when jumping from the ground
                air_max_speed = 1; //the maximum hsp you can accelerate to when in a normal aerial state
                jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
                air_accel = 1.5;
                prat_fall_accel = 1; //multiplier of air_accel while in pratfall
                air_friction = 0;
                max_djumps = 1;
                double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
                
                max_fall = 8; //maximum fall speed without fastfalling
                fast_fall = 11; //fast fall speed
                gravity_speed = .5;
                hitstun_grav = .5;
                knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                
                land_time = 4; //normal landing frames
                prat_land_time = 20;
                wave_land_time = 15;
                wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
                wave_friction = .04; //grounded deceleration when wavelanding
                
                //parry animation frames
                dodge_startup_frames = 1;
                dodge_active_frames = 1;
                dodge_recovery_frames = 4;
                
                //tech animation frames
                tech_active_frames = 3;
                tech_recovery_frames = 1;
                
                //tech roll animation frames
                techroll_startup_frames = 2;
                techroll_active_frames = 2;
                techroll_recovery_frames = 2;
                techroll_speed = 10;
                
                //airdodge animation frames
                air_dodge_startup_frames = 1;
                air_dodge_active_frames = 3;
                air_dodge_recovery_frames = 3;
                air_dodge_speed = 7.5;
                
                
                //roll animation frames
                roll_forward_startup_frames = 2;
                roll_forward_active_frames = 2;
                roll_forward_recovery_frames = 2;
                roll_back_startup_frames = 2;
                roll_back_active_frames = 2;
                roll_back_recovery_frames = 2;
                roll_forward_max = 9; //roll speed
                roll_backward_max = 9;
                
                
                land_sound = noone;
                landing_lag_sound = noone;
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
                
                ai_moving_right = false;
                ai_moving_left = true;
            break;
            case EN_EVENT.UPDATE:
                //AI Routine
                super_armor = true;
                if (instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
                    var t_dist = point_distance(x, y, ai_target.x, ai_target.y);
                    var t_xd = abs(ai_target.x - x);
                    var t_yd = abs(ai_target.y - y);
                    if (!committed) {
		            	if (alive_time <= 4) {
            				spr_dir = -1;
		            		if (obj_stage_main.am_mario_syobon)
		            			next_attack = AT_EXTRA_2;
		            		else
		            			next_attack = AT_EXTRA_1;
		            	}
                    }
	        
	        		if (obj_stage_main.am_mario_syobon) {
	                    var shroom_near = collision_nearest_enemy(x,y, 64)
	                	if (instance_exists(shroom_near) && shroom_near.num == 10 && shroom_near.item_id == 4) {
	                		instance_destroy(shroom_near);
	                		percent = hitpoints_max;
							kb_angle = 90;
							kb_power = 6;
	                	}
	        		}
	        		
                	var temp_player = standard_player_detection();
                	
                	if (instance_exists(temp_player)) {
                		standard_player_hit(temp_player);
                	}
                }
                else {
	                if (hitstun > 0)
	                	hsp *= is_free ? 0.95 : 0.85;
	                else
	                	hsp = 0;
                    right_down = false;
                    left_down = false;
                }
            break;
            case EN_EVENT.ATTACK_UPDATE:
            	if (attack == AT_EXTRA_1) {
            		spr_dir = -1;
					
					if (window < 3) {
						//Moving
						if (move_timer >= 0 && move_timer <= move_freq) {
							hsp = -2 * spr_dir
						}
						
						if (move_timer >= move_freq && move_timer <= move_freq*2) {
							hsp = 2 * spr_dir
						}
						
						if (move_timer >= move_freq*2) {
							move_timer = 0;
						}
						
						//Jumping
						if (jump_timer >= jump_freq && !free) {
							vsp = -8;
							jump_timer = 0;
						}
						
						//Fire
						if (fire_timer >= fire_freq * 0.5 && fire_timer <= fire_freq) {
							window = 2;
						}
						if (fire_timer >= fire_freq) {
							window = 1;
							sound_stop(sound_get("sfx_bossfire"));
							sound_play(sound_get("sfx_bossfire"));
					        var hitb = create_hitbox(AT_EXTRA_1,1,floor(x+64*spr_dir),floor(y-32));
					        if not "hit_owner" in hitb hitb.hit_owner = id;
					        if not "team" in hitb hitb.team = team;
					        fire_timer = 0;
						}
						
						//Hammer
						if (hammer_timer >= 0 && hammer_timer <= hammer_freq / 4) {
							if (hammer_timer % 6 == 0) {
						        var hitb = create_hitbox(AT_EXTRA_1,2,floor(x),floor(y-96));
						        if not "hit_owner" in hitb hitb.hit_owner = id;
						        if not "team" in hitb hitb.team = team;
							}
						}
						
						if (hammer_timer >= hammer_freq) {
							hammer_timer = 0;
						}
						
						if (window_timer >= 29) {
							window_timer = 0;
						}
	            		
						move_timer ++;
						jump_timer ++;
						fire_timer ++;
						hammer_timer ++;
					}
					else {
						spr_dir = 1;
						hsp = 0;
						if (window == 3)
							vsp = 0
						grav = window == 3 ? 0 : 0.5;
						
						if (window_timer >= 29) {
							window_timer = 0;
						}
					}
            	}
            	if (attack == AT_EXTRA_2) {
            		if (window == 1) {
            			spr_dir = -1;
            			
            			hsp = 0;
            			vsp = 0;
            			if (x_dist < 240) {
            				window = 2;
            				vsp = -8;
            				hsp = -4*spr_dir;
            			}
            		}
            		else if (window == 2) {
						with (obj_stage_article) {
							if (num == 4) {
								if (collision_rectangle(bbox_left-4, bbox_top-4, bbox_right+4, bbox_bottom + 4, other, 0, 1)) {
									trigger_obj_type = other.id;
									action_id = 24; //Yes this is hardcoded.
								}
							}
						}
						if (!free) {
							window = 3;
							window_timer = 0;
						}
            		}
            		else {
            			hsp = 0;
            			vsp = 0;
            		}
            	}
            break;
            case EN_EVENT.ANIMATION:
            
			with (pHitBox) {
				if (("hit_owner" in id) && instance_exists(hit_owner) && hit_owner == other.id) {
					var collision = instance_place(x, y, pHurtBox);
					if (instance_exists(collision)) {
						if (("am_mario_health" in collision.playerID)) {
							if (!collision.playerID.super_armor && collision.playerID.soft_armor == 0 
								&& (!collision.playerID.invincible || collision.playerID.am_mario_invincible > 0) 
								&& !collision.playerID.hurtboxID.dodging && (("am_mario_health" in collision.playerID) && collision.playerID.am_mario_state == 0))
            				{
								collision.playerID.am_mario_health --;
								if (collision.playerID.am_mario_health == 1) {
									collision.playerID.am_mario_state = 3;
									collision.playerID.am_mario_state_timer = 0;
								}
								if (collision.playerID.am_mario_health <= 0) {
									collision.playerID.am_mario_state = 1;
									collision.playerID.am_mario_state_timer = 0;
								}
            				}
						}
					}
				}
			}

        	if (art_state != PS_ATTACK_AIR && art_state != PS_ATTACK_GROUND) {
        		if (art_state == PS_DEAD)
        			sprite_index = enemy_sprite_get(spr_name, "death");
        		else
        			sprite_index = enemy_sprite_get(spr_name, "idle");
        	}
            break;
            case EN_EVENT.DEATH:
    			if (state_timer == 2) {
                		sound_play(sound_get("sfx_boss_dead2"));
    			}
                standard_death()
            break;
            case EN_EVENT.SET_ATTACK:
            	user_event(7);
            break;
        }
       break;
    case EN.TOAD:
        switch (art_event) {
            case EN_EVENT.INIT:
                char_name = "Toad";
                spr_name = "toad";
            	char_icon = sprite_get("toad_icon")
            	collision_box = sprite_get("enemy_koopa_mask");
            	sprite_index = enemy_sprite_get(spr_name, "idle");
                hitpoints_max = 1;
                mask_index =  collision_box; // Collision Mask
                hurtbox_spr =  collision_box; // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
				
				grabbed_player_obj = noone;
				
				num_sprite_sets = 1;
				current_sprite_set = 0;
				
                //Animation Actions
                char_height = 52;
                char_arrow = sprite_get("char_arrow");
                anim_speed = .02;
                idle_anim_speed = .1;
                crouch_anim_speed = .1;
                walk_anim_speed = .1;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                
                //Movement Variables
                walk_speed = 1;
                walk_accel = 1;
                walk_turn_time = 6;
                initial_dash_time = 10;
                initial_dash_speed = 6.5;
                dash_speed = 6;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = 0;
                moonwalk_accel = 1.4;
                
                jump_start_time = 5;
                jump_speed = 12;
                short_hop_speed = 8;
                djump_speed = 10;
                leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
                max_jump_hsp = 1; //the maximum hsp you can have when jumping from the ground
                air_max_speed = 1; //the maximum hsp you can accelerate to when in a normal aerial state
                jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
                air_accel = 1.5;
                prat_fall_accel = 1; //multiplier of air_accel while in pratfall
                air_friction = 0;
                max_djumps = 1;
                double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
                
                max_fall = 8; //maximum fall speed without fastfalling
                fast_fall = 11; //fast fall speed
                gravity_speed = .5;
                hitstun_grav = .5;
                knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                
                land_time = 4; //normal landing frames
                prat_land_time = 20;
                wave_land_time = 15;
                wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
                wave_friction = .04; //grounded deceleration when wavelanding
                
                //parry animation frames
                dodge_startup_frames = 1;
                dodge_active_frames = 1;
                dodge_recovery_frames = 4;
                
                //tech animation frames
                tech_active_frames = 3;
                tech_recovery_frames = 1;
                
                //tech roll animation frames
                techroll_startup_frames = 2;
                techroll_active_frames = 2;
                techroll_recovery_frames = 2;
                techroll_speed = 10;
                
                //airdodge animation frames
                air_dodge_startup_frames = 1;
                air_dodge_active_frames = 3;
                air_dodge_recovery_frames = 3;
                air_dodge_speed = 7.5;
                
                
                //roll animation frames
                roll_forward_startup_frames = 2;
                roll_forward_active_frames = 2;
                roll_forward_recovery_frames = 2;
                roll_back_startup_frames = 2;
                roll_back_active_frames = 2;
                roll_back_recovery_frames = 2;
                roll_forward_max = 9; //roll speed
                roll_backward_max = 9;
                
                
                land_sound = noone;
                landing_lag_sound = noone;
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
                
                ai_moving_right = false;
                ai_moving_left = true;
            break;
            case EN_EVENT.UPDATE:
                //AI Routine
                super_armor = true;
                if (instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
		            	if (alive_time <= 4) {
		            		invincible = 9999;
		            	}
                }
            break;
            case EN_EVENT.ANIMATION:
        	if (art_state != PS_ATTACK_AIR && art_state != PS_ATTACK_GROUND) {
        		if (art_state == PS_DEAD)
        			sprite_index = enemy_sprite_get(spr_name, "death");
        		else
        			sprite_index = enemy_sprite_get(spr_name, "idle");
        	}
            break;
            case EN_EVENT.DEATH:
				image_angle += 25 * spr_dir;
                standard_death()
            break;
        }
	break;
}

#define find_room_type() 
for (var i = 0; i < array_length(obj_stage_main.am_mario_ug_rooms); i++) {
	if (obj_stage_main.action_manager.room_id == obj_stage_main.am_mario_ug_rooms[i])
		return 1;
}
for (var i = 0; i < array_length(obj_stage_main.am_mario_ca_rooms); i++) {
	if (obj_stage_main.action_manager.room_id  == obj_stage_main.am_mario_ca_rooms[i])
		return 2;
}
return 0;

#define standard_collision(_hit_enemies)
var block = hit_wall;
if (block) {
	spr_dir = -spr_dir;
    if (spr_dir == 1) {
        ai_moving_right = true;
        ai_moving_left = false;
    } 
    if (spr_dir == -1) {
        ai_moving_right = false;
        ai_moving_left = true;
    } 
}


if (_hit_enemies) {
	var enemy = collision_nearest_enemy(x, y, 64);
	if (instance_exists(enemy)) {
		var block2 = spr_dir < 0  ? collision_rectangle(bbox_left + hsp, bbox_top, bbox_left - 1, bbox_bottom - 2, enemy, 0, 1)
			: collision_rectangle(bbox_right + 1, bbox_top, bbox_right + hsp, bbox_bottom - 2, enemy, 0, 1);
		if (block2) {
			spr_dir = -spr_dir;
		    if (spr_dir == 1) {
		        ai_moving_right = true;
		        ai_moving_left = false;
		    } 
		    if (spr_dir == -1) {
		        ai_moving_right = false;
		        ai_moving_left = true;
		    }
		}
	}
}
#define standard_on_ledge()

var off_r = !position_meet(bbox_right + 2, bbox_bottom + 4)
var off_l = !position_meet(bbox_left - 2, bbox_bottom + 4)

if ((off_r && hsp > 0) || (off_l && hsp < 0)) {
	spr_dir = -spr_dir;
    if (spr_dir == 1) {
        ai_moving_right = true;
        ai_moving_left = false;
    } 
    if (spr_dir == -1) {
        ai_moving_right = false;
        ai_moving_left = true;
    }
}


#define standard_player_hit(_player)
if (!("am_mario_health" in _player)) return false;

if (_player.am_mario_invincible > 0) {
	percent += hitpoints_max;
	kb_angle = 45;
	kb_power = 6;
}
else {
	_player.am_mario_health --;
	if (_player.am_mario_health == 1) {
		_player.am_mario_state = 3;
		_player.am_mario_state_timer = 0;
	}
	if (_player.am_mario_health <= 0) {
		_player.am_mario_state = 1;
		_player.am_mario_state_timer = 0;
	}
}
return true;

#define standard_player_detection()
var player_under = collision_rectangle(bbox_left, bbox_bottom - 4, bbox_right, bbox_bottom, oPlayer, 1, 1);

if (instance_exists(player_under)) {
    with (player_under) {
        if (state != PS_DEAD && state != PS_SPAWN) {
        	var hbox_here = instance_place(x, y, pHitBox);
        	if (instance_exists(hbox_here)) {
        		if hbox_here.type != 2 && hbox_here.player_id == id
        			hbox_here = noone;
        	}
        	if (!instance_exists(hbox_here) && !super_armor && soft_armor == 0 && (!invincible || am_mario_invincible > 0) && !hurtboxID.dodging && (("am_mario_health" in self) && am_mario_state == 0))
            	{
					if (am_mario_invincible > 0) {
						with (other) {
							percent += hitpoints_max;
							kb_angle = 45;
							kb_power = 6;
						}
						break;
					}
					return id;
            	}
        }
    }
}

return noone;


#define terrain_detection()
var block_dist = distance_to_object(obj_stage_article_solid);
if (block_dist > 64) return;

with (obj_stage_article_solid) {
	if (num == 15 || num == 17) {
		if (collision_rectangle(bbox_left-4, bbox_top-4, bbox_right+4, bbox_bottom + 4, other, 0, 1))
			return id;
	}
}
return noone;


#define standard_stomp_detection()
if (distance_to_object(oPlayer) > 64) return noone;
var player_under = collision_rectangle(bbox_left, bbox_top - 2, bbox_right, bbox_top, oPlayer, 1, 1);

if (instance_exists(player_under)) {
    with (player_under) {
        if (vsp <= 0) continue;
        if (state != PS_DEAD && state != PS_SPAWN) {
        	standard_stomp(id);
            return id;
        }
    }
}

return noone;

#define standard_stomp(_player)
_player.vsp = _player.jump_down ? -12 : -6;

#define standard_death()
invincible = 100;
physics_range = -1;
ignores_walls = true;
ignores_ground = true;
sprite_index = enemy_sprite_get(spr_name,"death");
mask_index = asset_get("empty_sprite")
if hitpause > 1 {
    state_timer = 0;
} else {
    image_index += 0.35;
    if (state_timer == 2) {
    	sound_stop(sound_get("sfx_kick"));
    	sound_play(sound_get("sfx_kick"));
        kb_power *= 2;
        if !is_free && kb_angle > 180 && kb_angle < 360 vsp = kb_power*sin(kb_angle);
        else if !is_free vsp = -abs(kb_power*dsin(kb_angle));
        else vsp = -kb_power*dsin(kb_angle);
        hsp = kb_power*dcos(kb_angle);
        if hsp != 0 spr_dir = -sign(hsp);
    }
    if (state_timer % 8 == 0) {
    	//spawn_hit_fx(x, y - char_height, fx_enemy_death)
    }
    old_hsp = hsp;
    old_vsp = vsp;
    //hitstun--;
    if !is_free vsp = -8 * knockback_adj;
    if (state_timer >= 180) {
        destroyed = true;
    }
}
// with oPlayer if state == PS_RESPAWN print("[ue6] completed check");
//DO NOT EDIT BELOW
#define arc_calc_x_speed(x1, y1, x2, y2, vspd, g)
var dX = x2 - x1;
var dY = y2 - y1;
if (dX == 0) {
	return 0;
}
var t = (abs(vspd) / g) + sqrt(abs(vspd * vspd) / (g * g) - (dY / g));
return dX / t;
#define enemy_sprite_get(_name,_sprite) //Get the sprite of this article
return sprite_get(string(_name)+"_"+string(_sprite));

#define place_meet(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("solid_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_solid,true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("jumpthrough_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_platform,true,true));*/
return (place_meet_solid(__x,__y) || 
        place_meet_plat(__x,__y));

#define position_meet(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("solid_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_solid,true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("jumpthrough_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_platform,true,true));;*/

return (position_meeting(__x,__y,asset_get("par_block")) || 
        position_meeting(__x,__y,asset_get("par_jumpthrough")));    
#define place_meet_solid(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("solid_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_solid,true,true));*/
return (place_meeting(__x,__y,asset_get("par_block"))); 
#define place_meet_plat(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("jumpthrough_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_platform,true,true));*/
return (place_meeting(__x,__y,asset_get("par_jumpthrough")))
  
#define get_plat(__x,__y)
var _plat = instance_place(__x,__y,obj_stage_article_platform);
if instance_exists(_plat) return _plat;
else return instance_place(__x,__y,asset_get("jumpthrough_32_obj"));

#define collision_nearest_enemy(_x,_y, max_dist)

with (obj_stage_article) {
    if id == other.id continue;
	if (distance_to_object(other) > max_dist) continue;
    if (num != 6 && num != 10) continue;
    if (!can_be_grounded) continue;
	if distance_to_point(_x,_y) <= max_dist {
    	return id;
	}
}

return noone;

#define collision_nearest_block(_x,_y, max_dist)
var dist = distance_to_object(obj_stage_article_solid) 
if (dist > max_dist) return noone;

with (obj_stage_article_solid) {
    if (num != 17) continue;
    var old_mask = mask_index;
    mask_index = sprite_get("brickblock");
	if distance_to_point(_x,_y) <= max_dist {
		mask_index = old_mask;
    	return id;
	}
	mask_index = old_mask;
}

return noone;

#define set_state(_state)
next_state = _state;
return _state;