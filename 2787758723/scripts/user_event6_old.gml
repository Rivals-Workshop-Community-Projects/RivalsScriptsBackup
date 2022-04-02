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
    BBILL
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
                
                stomp = false;
				                
				num_sprite_sets = 3;
				current_sprite_set = 0;
				
                //Animation Actions
                char_height = 25;
                char_arrow = sprite_get("char_arrow");
                char_icon = sprite_get("enemy_goomba_icon")
                anim_speed = .02;
                idle_anim_speed = .15;
                crouch_anim_speed = .1;
                walk_anim_speed = .25;
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
		            			y -= 4
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
		            			vsp = -8;
		            		}
		            	}
	                    standard_collision(true)
	                    hsp = walk_speed * spr_dir 
	                    
		            	if (!stomp) {
		                    if (standard_stomp_detection()) {
		                    	if (!stomp) {
			                    	sound_stop(sound_get("sfx_stomp"));
			                    	sound_play(sound_get("sfx_stomp"));
			                    	stomp = true;
		                    	}
		                    }
		                    else {
		                    	if (!stomp) {
			                    	var temp_player = standard_player_detection();
			                    	
			                    	if (instance_exists(temp_player)) {
			                    		standard_player_hit(temp_player);
			                    	}
		                    	}
		                    }
	                    }
		            	else {
		            		grav = 0;
		            		hsp = 0;
		            		invincible = 100;
							collision_box = asset_get("empty_sprite")
							window_timer++;
		            		
		            		if (window_timer >= 29) {
		            			destroyed = true;
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
        		current_sprite_set = find_room_type()
				var num_frames = image_number / num_sprite_sets;
				var offset = num_frames * current_sprite_set;
            	if (!stomp) {
            		if (art_state == PS_DEAD)
            			sprite_index = enemy_sprite_get(spr_name, "death");
            		else
            			sprite_index = enemy_sprite_get(spr_name, "idle");
					image_index = image_index % num_frames + offset;
            	}
            	else {
            		image_index = offset;
            		sprite_index = enemy_sprite_get(spr_name, "dead2");
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
                char_name = "Koopa";
                spr_name = "enemy_koopa";
            	sprite_index = enemy_sprite_get(spr_name, "idle");
                
                hitpoints_max = 5;
                hit_by_proj = false;
                player_hit_cooldown = 0;
                was_dead = false;
				num_sprite_sets = 3;
				current_sprite_set = 0;
				in_shell = false;
                
                collision_box = sprite_get("enemy_goomba_mask");
                mask_index =  collision_box; // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
                
                //Animation Actions
                char_height = 25;
                char_arrow = sprite_get("char_arrow");
                char_icon = sprite_get("enemy_koopa_icon")
                anim_speed = .02;
                idle_anim_speed = .15;
                crouch_anim_speed = .1;
                walk_anim_speed = .25;
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
            if (state == PS_DEAD)
            		break;
                //AI Routine
                if (instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
                    var t_dist = point_distance(x, y, ai_target.x, ai_target.y);
                    var t_xd = abs(ai_target.x - x);
                    var t_yd = abs(ai_target.y - y);
                    if (!committed) {
                    	player_hit_cooldown = 0;
		            	if (alive_time <= 2) {
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
	                    standard_collision(true)
	                    if (!in_shell) {
		                    hsp = walk_speed * spr_dir;
		                    
		                    if (standard_stomp_detection()) {
		                    	if (!in_shell) {
			                    	sound_stop(sound_get("sfx_stomp"));
			                    	sound_play(sound_get("sfx_stomp"));
			                    	in_shell = true;
			                    	hsp = 0;
		                    	}
		                    }
		                    else {
		                    	if (!in_shell) {
			                    	var temp_player = standard_player_detection();
			                    	
			                    	if (instance_exists(temp_player)) {
			                    		standard_player_hit(temp_player);
			                    	}
		                    	}
		                    }
	                    }
	                    else {
	                    	window_timer++;
	                    	
	                    	if (window == 1 && window_timer > 450) { //Shell not moving
	                    		window++;
	                    		window_timer = 0;
	                    	}
	                    	if (window == 2 && window_timer > 180) { //Shell not moving
	                    		in_shell = false
	                    		window = 1;
	                    		window_timer = 0;
	                    	}
	                    	if (window == 1 || window == 2) { //Shell not moving
				        		hsp *= is_free ? 0.92 : 0.66;
		            			player_hit_cooldown = 60;
			            		var temp_player = standard_stomp_detection();
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
								if (instance_exists(enemy) && place_meeting(x, y, enemy)) {
									with (enemy) {
										if (get_article_script(id) == 6) {
											percent += 5;
											kb_angle = 45;
											kb_power = 6;
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
		            			hsp = 7 * spr_dir
			            		var temp_player = standard_stomp_detection();
			                	if (instance_exists(temp_player)) {
			                    	sound_stop(sound_get("sfx_stomp"));
			                    	sound_play(sound_get("sfx_stomp"));
				                    hsp = 0;
			                		window = 1;
			                		window_timer = 0;
			                    }
			                    else {
			                    	if (player_hit_cooldown <= 0) {
				                    	temp_player = standard_player_detection();
				                    	
				                    	if (instance_exists(temp_player)) {
					                    	standard_player_hit(temp_player);
				                    	}
			                    	}
			                    }
                    		}
	                    }
                    }
                }
                else {
	                if (hitstun > 0) {
	                	hsp *= is_free ? 0.95 : 0.1;
	                }
                }
            break;
            case EN_EVENT.ANIMATION:
        		current_sprite_set = find_room_type()
				var num_frames = image_number / num_sprite_sets;
				var offset = num_frames * current_sprite_set;
            	if (!in_shell) {
            		if (art_state == PS_DEAD)
            			sprite_index = enemy_sprite_get(spr_name, "death");
            		else
            			sprite_index = enemy_sprite_get(spr_name, "idle");
					image_index = image_index % num_frames + offset;
            	}
            	else {
            		image_index = offset;
            		sprite_index = enemy_sprite_get(spr_name, "shell");
            	}
            break;
            case EN_EVENT.GOT_HIT:
            	hit_by_proj = (last_hitbox.type == 2) || ((in_shell && window != 3))
            	
    			if (percent >= hitpoints_max && !hit_by_proj) {
	                percent = hitpoints_max - 1;
	                hitstun = 0;
            		if (!in_shell) {
	                	sound_stop(sound_get("sfx_kick"));
	                	sound_play(sound_get("sfx_kick"));
	                	art_state = PS_IDLE;
	            		in_shell = true;
				        if !is_free && kb_angle > 180 && kb_angle < 360 vsp = kb_power*sin(kb_angle);
				        else if !is_free vsp = -abs(kb_power*dsin(kb_angle));
				        else vsp = -kb_power*dsin(kb_angle);
				    	hsp = kb_power*dcos(kb_angle);
	    				if hsp != 0 spr_dir = -sign(hsp);
                	}
                	else {
	                	art_state = PS_IDLE;
	            		in_shell = true;
	                	was_dead = true;
				        if !is_free && kb_angle > 180 && kb_angle < 360 vsp = kb_power*sin(kb_angle);
				        else if !is_free vsp = -abs(kb_power*dsin(kb_angle));
				        else vsp = -kb_power*dsin(kb_angle);
				    	hsp = kb_power*sign(dcos(kb_angle));
	    				if hsp != 0 spr_dir = sign(hsp);
                	}
            	}
            break;
            case EN_EVENT.DEATH:
            	if (!hit_by_proj) {
            		if (!was_dead) {
	                	sound_stop(sound_get("sfx_kick"));
	                	sound_play(sound_get("sfx_kick"));
	            		art_state = PS_IDLE;
	            		in_shell = true;
	                	was_dead = true;
                		percent = hitpoints_max - 1;
				        if !is_free && kb_angle > 180 && kb_angle < 360 vsp = kb_power*sin(kb_angle);
				        else if !is_free vsp = -abs(kb_power*dsin(kb_angle));
				        else vsp = -kb_power*dsin(kb_angle);
				    	hsp = 6;
            		}
            	}
            	else {
            		standard_death();
            	}
            break;
        }
    break;
    case EN.BBILL:
        switch (art_event) {
            case EN_EVENT.INIT:
                char_name = "Bullet Bill";
                spr_name = "enemy_bbill";
                
            	sprite_index = enemy_sprite_get(spr_name, "idle");
                hitpoints_max = 5;
                
                collision_box = sprite_get("enemy_goomba_mask");
                mask_index =  collision_box; // Collision Mask
                hurtbox_spr =  collision_box; // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
                
                ignores_walls = true;
                can_be_grounded = false;
                
                //Animation Actions
                char_height = 25;
                char_arrow = sprite_get("char_arrow");
                char_icon = sprite_get("enemy_goomba_icon")
                anim_speed = .02;
                idle_anim_speed = .15;
                crouch_anim_speed = .1;
                walk_anim_speed = .25;
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
		            			shoot_dir = 0;
		            			no_stomp = false;
		            			speed_mult = 1; 
		            		}
		            	}
		            	joy_pad_idle = false;
		            	joy_dir = shoot_dir
		            	walk_speed = 4 * speed_mult
		            	hsp = lengthdir_x(walk_speed, joy_dir);
		            	vsp = lengthdir_y(walk_speed, joy_dir);
	                    
	                    if (!no_stomp && standard_stomp_detection()) {
							percent += 5;
							kb_angle = 135;
							kb_power = 6;
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
	                	hsp *= is_free ? 0.95 : 0.1;
                }
            break;
            case EN_EVENT.ANIMATION:
            	if (art_state != PS_DEAD) {
            		sprite_index = enemy_sprite_get(spr_name, "idle");
            		image_index = state_timer * idle_anim_speed;
            		image_angle = shoot_dir - 90;
            		
            		spr_dir = (angle_difference(shoot_dir, 180) < 90) ? 1 : -1;
            	}
            break;
            case EN_EVENT.DEATH:
				image_angle += 5 * spr_dir;
                standard_death()
            break;
        }
    break;
}

#define find_room_type() 
for (var i = 0; i < array_length(obj_stage_main.am_mario_ug_rooms); i++) {
	if (obj_stage_main.room_manager.cur_room == obj_stage_main.am_mario_ug_rooms[i])
		return 1;
}
for (var i = 0; i < array_length(obj_stage_main.am_mario_ca_rooms); i++) {
	if (obj_stage_main.room_manager.cur_room == obj_stage_main.am_mario_ca_rooms[i])
		return 2;
}
return 0;

#define standard_collision(_hit_enemies)

var block = hsp < 0  ? collision_rectangle(bbox_left + hsp, bbox_top, bbox_left, bbox_bottom - 2, asset_get("par_block"), 1, 1)
	: collision_rectangle(bbox_right, bbox_top, bbox_right + hsp, bbox_bottom - 2,  asset_get("par_block"), 1, 1);
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
		var block2 = spr_dir < 0  ? collision_rectangle(bbox_left + hsp, bbox_top, bbox_left - hsp, bbox_bottom - 2, enemy, 0, 1)
			: collision_rectangle(bbox_right - hsp, bbox_top, bbox_right + hsp, bbox_bottom - 2, enemy, 0, 1);
		if (block2) {
			with (enemy) {
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
        if (state != PS_DEAD || state != PS_RESPAWN) {
        	if (!super_armor && soft_armor == 0 && (!invincible || am_mario_invincible > 0) && !hurtboxID.dodging && (("am_mario_health" in self) && am_mario_state == 0))
            	return id;
        }
    }
}

return noone;

#define standard_stomp_detection()
var player_under = collision_rectangle(bbox_left, bbox_top - 2, bbox_right, bbox_top, oPlayer, 1, 1);

if (instance_exists(player_under)) {
    with (player_under) {
        if (vsp <= 0) continue;
        if (state != PS_DEAD || state != PS_RESPAWN) {
        	standard_stomp(id);
            return id;
        }
    }
}

return noone;

#define collision_nearest_block(_x,_y, _max_dist)
var dist = _max_dist;
var inst = noone;
with (obj_stage_article_solid) {
	if (num != 17) continue;
	if (num == 17 && !in_render) continue;
    if (point_distance(x, y, _x, _y) < dist && state == 1) {
		inst = id;
		break;
    }
}
return inst;

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
    if (y >= view_get_yview() + view_get_hview() + char_height) {
        destroyed = true;
    }
    if (x <= view_get_xview() - 128 || x >= view_get_xview() + view_get_wview() + 128) {
        destroyed = true;
    }
    if (state_timer >= 90) {
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
return (place_meeting(__x,__y,asset_get("solid_32_obj")) || 
        place_meeting(__x,__y,obj_stage_article_solid) || 
        place_meeting(__x,__y,asset_get("jumpthrough_32_obj")) || 
        place_meeting(__x,__y,obj_stage_article_platform));
#define position_meet(__x,__y) //get place_meeting for the usual suspects
return (position_meeting(__x,__y,asset_get("solid_32_obj")) || 
        position_meeting(__x,__y,obj_stage_article_solid) || 
        position_meeting(__x,__y,asset_get("jumpthrough_32_obj")) || 
        position_meeting(__x,__y,obj_stage_article_platform));
#define place_meet_solid(__x,__y) //get place_meeting for the usual suspects
return (place_meeting(__x,__y,asset_get("solid_32_obj")) || 
        place_meeting(__x,__y,obj_stage_article_solid));
#define place_meet_plat(__x,__y) //get place_meeting for the usual suspects
return (place_meeting(__x,__y,asset_get("jumpthrough_32_obj")) || 
        place_meeting(__x,__y,obj_stage_article_platform));
#define get_plat(__x,__y)
var _plat = instance_place(__x,__y,obj_stage_article_platform);
if instance_exists(_plat) return _plat;
else return instance_place(__x,__y,asset_get("jumpthrough_32_obj"));
#define collision_nearest_enemy(_x,_y, max_dist)
var dist = max_dist;
var inst = noone;
with (obj_stage_article) {
	if (num != 6 && num != 10) continue;
	if (num == 6 && !in_render) continue;
    if (place_meeting(_x, _y, id)) {
    	if (id != other.id) {
    		inst = id;
    		break;
    	}
    }
}
return inst;
#define set_state(_state)
next_state = _state;
return _state;