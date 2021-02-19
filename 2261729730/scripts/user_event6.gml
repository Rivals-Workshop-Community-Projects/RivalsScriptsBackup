//Custom AI Behavior. see article6 code for details.
//Enemy Enum (edit this for custom enemy declarations)
enum EN {
	TKNIGHT,
	TTANK,
	TTANKMINI
};

//Enum Declarations, DO NOT EDIT
enum TR {
    NEAR,
    MID,
    FAR,
    RANDOM,
    LOW,
    HIGH
}

//Event Enum, DO NOT EDIT
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
//

//Put custom enemy behavior here.
switch (enem_id) {
    case EN.TKNIGHT:
        switch (art_event) {
        	case EN_EVENT.INIT:
        		//Custom Variables
        		ai_ftilt_timer = 0;
        		ai_attack_times = 0;
        		ai_max_timer = 0;
        		ai_chosen_attack = -1;
        		
        		// Inherited variables
        		sprite_name = "tknight"
				collision_box = asset_get("ex_guy_hurt_box");
				hurtbox_spr = collision_box; //Hurtbox Sprite
				
        		hitpoints_max = obj_stage_main.hard_mode ? 272 : 176;
        		multiplayer_damage_reduction = true;
				is_boss = 1; //If this enemy's a boss, it will show the healthbar on the hud.
				boss_intro_mode = 1; //0 = no intro; 1 = has intro. Requires done_intro to be set to true to start the fight.

        		//Animation Actions
				char_height = 52;
				char_arrow = sprite_get("char_arrow");
				char_name = "Tinker Knight"; //The name of this enemy
				char_title = "The Schemer"
				char_icon = sprite_get("tknight_portrait"); //The icon to show on the HUD.
				//Contributed by Harbige
				char_healthbar = sprite_get("char_healthbar");
				char_hud_color = make_color_rgb(22, 114, 148);
				char_hud_color2 = make_color_rgb(0, 64, 88);
				//
				anim_speed = .02;
				idle_anim_speed = .15;
				crouch_anim_speed = .1;
				walk_anim_speed = .25;
				dash_anim_speed = .2;
				pratfall_anim_speed = .25;
				
				//Movement Variables
				walk_speed = 6;
				walk_accel = 1.5;
				walk_turn_time = 6;
				initial_dash_time = 10;
				initial_dash_speed = 6.5;
				dash_speed = 6;
				dash_turn_time = 10;
				dash_turn_accel = 2;
				dash_stop_time = 4;
				dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
				ground_friction = .7;
				moonwalk_accel = 1.4;
				
				jump_start_time = 5;
				jump_speed = 12;
				short_hop_speed = 8;
				djump_speed = 10;
				leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
				max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
				air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
				jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
				air_accel = .3;
				prat_fall_accel = 1; //multiplier of air_accel while in pratfall
				air_friction = .03;
				max_djumps = 1;
				double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
				
				max_fall = 9; //maximum fall speed without fastfalling
				fast_fall = 11; //fast fall speed
				gravity_speed = .5;
				hitstun_grav = .5;
				knockback_adj = 0.5; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
				
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
				
				has_air_dodge = 1;
				
				//roll animation frames
				roll_forward_startup_frames = 2;
				roll_forward_active_frames = 2;
				roll_forward_recovery_frames = 2;
				roll_back_startup_frames = 2;
				roll_back_active_frames = 2;
				roll_back_recovery_frames = 2;
				roll_forward_max = 9; //roll speed
				roll_backward_max = 9;
				
				roll_dir = 0;
				
				land_sound = asset_get("sfx_land_heavy");
				landing_lag_sound = asset_get("sfx_land_heavy");
				waveland_sound = asset_get("sfx_waveland_syl");
				jump_sound = asset_get("sfx_jumpground");
				djump_sound = asset_get("sfx_jumpair");
				air_dodge_sound = asset_get("sfx_quick_dodge");
				death_sound = asset_get("sfx_death2");
        	break
        	case EN_EVENT.UPDATE:
    			with asset_get("pHitBox") if "hit_owner" in self && hit_owner == other.id {
    				if (attack == AT_JAB && hbox_num == 1) {
    					if (!place_meeting(x, y, pHurtBox)) {
	    					for (var i = 0; i < array_length(can_hit); i++)
	    						can_hit[i] = true;
    					}
    					if (hitbox_timer >= 60) {
    						var dir = point_direction(x, y, other.x, other.y - 24)
    						hsp += lengthdir_x(0.5, dir)
    						vsp += lengthdir_y(0.5, dir)
    					}
    					hsp = clamp(hsp, -6, 6);
    					vsp = clamp(vsp, -6, 6);
    				}	
    			}
    			
    			//Attacks
        		if (state == PS_IDLE) {
        			if (state_timer <= 2) {
        				ai_max_timer = (3 + random_func(enem_id + 30, 20, true)) * (obj_stage_main.hard_mode ? 1 : 2)
        			}
        			else {
	    				if (state_timer >= ai_max_timer) { 
        					spr_dir = target_dir;
        					if (ai_chosen_attack == -1) {
        						next_attack = AT_JAB;
        						ai_chosen_attack = 0;
        					}
        					else {
	        					var possible_attacks = ds_list_create();
	        					ds_list_add(possible_attacks, AT_JAB, AT_FTILT, AT_DTILT);
    							ds_list_remove(possible_attacks, attack)
	        					next_attack = ds_list_find_value(possible_attacks, random_func(enem_id + 4, ds_list_size(possible_attacks), true))
        						ds_list_destroy(possible_attacks)
        					}
	    				}
    				}
        		}
        		
        		//Instantly die to mobile gear (Lol!)
        		if (place_meeting(x, y, asset_get("mobile_gear_obj")) && state != PS_DEAD && !invincible) {
        			percent = hitpoints_max;
        		}
        		
        		//Reset variables
        		if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
        			ai_ftilt_timer = 0;
        			ai_attack_times = 0;
        		}
        	
        		//Stay in view
		    	if (x > view_get_xview() + view_get_wview()) {
		    		x = view_get_xview() + view_get_wview();
		    		if (state == PS_HITSTUN || state == PS_HITSTUN_LAND || state == PS_TUMBLE) {
		    			hsp = -hsp;
		    		}
		    	}
		    	if (x < view_get_xview()) {
		    		x = view_get_xview();
		    		if (state == PS_HITSTUN || state == PS_HITSTUN_LAND || state == PS_TUMBLE) {
		    			hsp = -hsp;
		    		}
		    	}
			    
        	break;
        	case EN_EVENT.ANIMATION:
        		if (state == PS_SPAWN) {
        			invincible = true;
        			if (state_timer <= 240) {
        				sprite_index = sprite_get("tknight_intro")
        				with obj_stage_main music_stop();
    					image_index += 8 / 60;
    					if (image_index >= 8)
    					image_index = 0;
        			}
        			if (state_timer == 240) {
        				image_index = 8;
        			}
        			if (state_timer == 248) {
        				image_index = 9;
        			}
        			if (state_timer >= 256 && state_timer < 292) {
        				image_index = state_timer %  4 < 2 ? 10 : 11;
        			}
        			if (state_timer == 292) {
        				image_index = 11;
        			}
        			
        			if (state_timer == 320) {
        				vsp = -10;
        				spr_dir = -1;
        				with obj_stage_main music_play_file("music_loop");
        				show_healthbar = true;
        			}
        			if (state_timer >= 320) {
        				if (!is_free) {
	        				sprite_index = sprite_get("tknight_idle")
        					image_index += idle_anim_speed;
        				}
        				else {
	        				sprite_index = sprite_get("tknight_jump") 
	        				image_index = ease_linear(0,image_number,floor(vsp+jump_speed), jump_speed*2);
        				}
        			}
        			
        			if (state_timer == 400) {
        				done_intro = true;
        			}
        		}
        	break;
        	case EN_EVENT.ATTACK_UPDATE:
        		if (attack == AT_JAB) {
        			var wrench = noone;
        			if (window == 4) {
        				super_armor = true;
		    			with asset_get("pHitBox") if "hit_owner" in self && hit_owner == other.id {
		    				if (attack == AT_JAB && hbox_num == 1 && hitbox_timer >= 2) {
		    					if (place_meeting(x, y, other)) {
		    						destroyed = true
		    						other.window = 5;
		    						other.window_timer = 0;
		    					}
		    					wrench = id;
		    				}	
		    			}
		    			if (!instance_exists(wrench)) {
		    				window = 10;
		    				window_timer = 0;
		    			}
        				var dir = spr_dir;
        				if (instance_exists(wrench))
        					dir = sign(wrench.x - x);
						if (dir == 0)
						    dir = 1;
        				hsp = clamp(hsp + walk_accel*dir, -dash_speed, dash_speed);
        			}
        			if (window == 5)
        				super_armor = true;
        		}
        		
        		if (attack == AT_DTILT) {
        			var at_max = obj_stage_main.hard_mode ? 7 : 5
        			with asset_get("pHitBox") if "hit_owner" in self && hit_owner == other.id {
	    				if (attack == AT_DTILT && hbox_num == 1 && hitbox_timer == 1 && instance_exists(other.ai_target)) {
	    					hsp = arc_calc_x_speed(x, y, other.ai_target.x, other.ai_target.y, vsp, grav);
	    				}	
	    			}
	    			spr_dir = target_dir;
        			if (window == 3 && window_timer == 18) {
        				ai_attack_times++;
        				if (ai_attack_times < at_max) {
        					window = 1;
        					window_timer = 0;
        				}
        				else {
        					ai_attack_times = 0;
        				}
        				
        			}
        		}
        		
        		if (attack == AT_FTILT) {
        			var at_spd = obj_stage_main.hard_mode ? 10 : 8
        			var at_max = obj_stage_main.hard_mode ? 120 : 90
        			ai_ftilt_timer ++;
        			with asset_get("pHitBox") if "hit_owner" in self && hit_owner == other.id {
	    				if (attack == AT_FTILT && (hbox_num == 1 || hbox_num == 2) && hitbox_timer == 1) {
	    					hsp = -6 + random_func(6, 12, false);
	    				}	
	    			}
    				spr_dir = target_dir;
    				hsp = clamp(hsp + 0.5*spr_dir, -at_spd, at_spd);
	    			if (ai_ftilt_timer >= at_max) {
	    				ai_ftilt_timer = 0;
    					window = 2;
    					window_timer = 0;
	    			}
        		}
        	break;
        	case EN_EVENT.DEATH:
        		boss_death();
        		if (state_timer < 4) {
        			with obj_stage_main music_stop();
        			sprite_index = enemy_sprite_get(sprite_name, "bighurt")
        		}
        		if (state_timer == 4) {
        			vsp = -12;
        			hsp = -8 * spr_dir;
        			y -= 2;
        		}
        		if (state_timer > 4 && state_timer <= 6) {
        			if (is_free) {
        				sprite_index = enemy_sprite_get(sprite_name, "bighurt")
        				state_timer = 5;
        			}
        			else
        				sprite_index = enemy_sprite_get(sprite_name, "hurt")
        		}
        		if (state_timer >= 60 && state_timer < 112) {
    				sprite_index = sprite_get("tknight_idle")
					image_index += idle_anim_speed;
        		}
        		if (state_timer == 112) {
        			vsp = -12;
        			with (obj_stage_main)
        				other.hsp = arc_calc_x_speed(other.x, other.y, get_marker_x(1) - 128, get_marker_y(1), other.vsp, other.gravity_speed);
        			spr_dir = -1;
        		}
        		if (state_timer >= 112 && state_timer < 160) {
        			if (is_free) {
	        			state_timer = 113;
	        			air_friction = 0;
	    				sprite_index = sprite_get("tknight_jump") 
	    				image_index = ease_linear(0,image_number,floor(vsp+jump_speed), jump_speed*2);
        			}
        			else {
        				if (state_timer == 115)
        					hsp = 0;
        				air_friction = 0.03;
	    				sprite_index = sprite_get("tknight_idle")
						image_index += idle_anim_speed;
        			}
        		}
        		if (state_timer == 160) {
        			sprite_index = enemy_sprite_get(sprite_name, "land");
        			image_index = 0;
        		}
        		if (state_timer == 192) {
	    			sprite_index = sprite_get("tknight_jump") 
        			image_index = 0;
        			gravity_speed = 0;
        			vsp = -24;
        			shake_camera(20, 8);
        			sound_play(sound_get("sfx_sk_jump_08"));
        		}
        		if (state_timer > 192) {
        			if (y <= -32) {
        				vsp = 0;
        			}
        		}
        		if (state_timer >= 240) {
        			destroyed = true;
        			create_enemy(x, view_get_yview() - 144, EN.TTANK);
        		}
        	break;
        	case EN_EVENT.SET_ATTACK:
                with (obj_stage_main) {
                	switch (other.attack) {
                		case AT_JAB:
	                	set_attack_value(AT_JAB, AG_SPRITE, sprite_get("tknight_jab"));
						set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("tknight_jab_hurt"));
						
						set_attack_value(AT_JAB, AG_NUM_WINDOWS, 8);
						set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 12);
						set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 4);
						set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
						set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 10);
						
						set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
						set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 4);
						
						set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 30);
						set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
						set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 5);
						
						set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 9);
						set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 12);
						set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 4);
						set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 8);
						
						set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 9);
						set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 12);
						set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 6);
						set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED_TYPE, 1);
						set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_JAB, 5, AG_WINDOW_SFX, asset_get("sfx_land"));
						set_window_value(AT_JAB, 5, AG_WINDOW_SFX_FRAME, 1);
						
						set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 8);
						set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 13);
						set_window_value(AT_JAB, 6, AG_WINDOW_HSPEED, 12);
						set_window_value(AT_JAB, 6, AG_WINDOW_HSPEED_TYPE, 2);
						set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_JAB, 6, AG_WINDOW_SFX, asset_get("sfx_gus_dirt"));
						set_window_value(AT_JAB, 6, AG_WINDOW_SFX_FRAME, 1);
						
						set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 12);
						set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 14);
						
						set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 24);
						set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 2);
						set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 15);
						
						
						set_num_hitboxes(AT_JAB, 2);
						set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 2);
						set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
						set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 160);
						set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 29);
						set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -24);
						set_hitbox_value(AT_JAB, 1, HG_WIDTH, 56);
						set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 56);
						set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 3);
						set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 6);
						set_hitbox_value(AT_JAB, 1, HG_ANGLE, 110);
						set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
						set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.5);
						set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
						set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.5);
						set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_metal_hit_weak"));
						set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 3);
						set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
						set_hitbox_value(AT_JAB, 1, HG_HIT_LOCKOUT, 8);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_SPRITE, sprite_get("tknight_wrench"));
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_MASK, -1);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_HSPEED, obj_stage_main.hard_mode ? 12 :  7);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
						
						set_hitbox_value(AT_JAB, 2, HG_WINDOW, 6);
						set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 8);
						set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 25);
						set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -21);
						set_hitbox_value(AT_JAB, 2, HG_WIDTH, 118);
						set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 42);
						set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
						set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
						set_hitbox_value(AT_JAB, 2, HG_ANGLE, 55);
						set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 6);
						set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.9);
						set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
						set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.8);
						set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
						set_hitbox_value(AT_JAB, 2, HG_HIT_LOCKOUT, 3);
						set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
						break;
						
	                	case AT_DTILT:
	                	set_attack_value(AT_DTILT, AG_CATEGORY, 2);
						set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("tknight_dtilt"));
						set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("tknight_dtilt_hurt"));
						
						set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
						set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 12);
						set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
						set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
						set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 10);
						
						set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
						set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
						
						set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 24);
						set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
						set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
						
						
						set_num_hitboxes(AT_DTILT, 1);
						set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 2);
						set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
						set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 120);
						set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 29);
						set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -24);
						set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 56);
						set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 56);
						set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
						set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
						set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 110);
						set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
						set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
						set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
						set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.5);
						set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_metal_hit_weak"));
						set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 3);
						set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);
						set_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT, 8);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("tknight_wrench"));
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_MASK, -1);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_HSPEED, 0);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_VSPEED, -10);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GRAVITY, 0.3);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
						break;
	                	
	                	case AT_FTILT:
	                	set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("tknight_ftilt"));
						set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("tknight_ftilt_hurt"));
						
						set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 1);
						
						set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 9);
						set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 12);
						set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
						set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
						set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 2);
						
						set_num_hitboxes(AT_FTILT, 2);
						set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 2);
						set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 1);
						set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 6);
						set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 120);
						set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 0);
						set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -48);
						set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 56);
						set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 56);
						set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 3);
						set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
						set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 110);
						set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
						set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
						set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 5);
						set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.5);
						set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_metal_hit_weak"));
						set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 3);
						set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, -1);
						set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 8);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("tknight_wrench"));
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_MASK, -1);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_HSPEED, 0);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_VSPEED, -10);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_GRAVITY, 0.3);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
	
	                	break;
                	}
                }
        	break;
        }
    break;
    case EN.TTANK:
       switch (art_event) {
       		case EN_EVENT.INIT:
        		//Custom Variables
        		ai_attack_times = 0;
        		ai_nspecial_attack_type = 0;
        		ai_fspecial_timer = 0;
        		ai_max_timer = 10;
        		ai_wait_time = 0;
        		ai_approach_chance = 0;
        		ai_approached = false;
        		ai_attack_group = 0;
        		ai_moving = 0;
        		fx_explosion = hit_fx_create(asset_get("mech_explosion_hit_large"), 28);
        		can_fallthrough = true;
        		
        		//The sprite's really big, but I still gotta do the scaling myself :pensive:
        		image_xscale = 2;
        		image_yscale = 2;
        		
        		depth = 9;
        		
        		// Inherited variables
        		sprite_name = "ttank"
				collision_box = sprite_get("ttank_collision");
				hurtbox_spr = sprite_get("ttank_hurt");
				
        		hitpoints_max = obj_stage_main.hard_mode ? 580 : 480;
        		multiplayer_damage_reduction = true;
				is_boss = 1; //If this enemy's a boss, it will show the healthbar on the hud.
				boss_intro_mode = 1; //0 = no intro; 1 = has intro. Requires done_intro to be set to true to start the fight.

        		//Animation Actions
				char_height = 160;
				char_arrow = sprite_get("char_arrow");
				char_name = "Tinker Tank"; //The name of this enemy
				char_title = "The Destroyer"
				char_icon = sprite_get("ttank_portrait"); //The icon to show on the HUD.
        		with obj_stage_main music_play_file("music_loop2");
        		
				//Contributed by Harbige
				char_healthbar = sprite_get("char_healthbar");
				char_hud_color = make_color_rgb(22, 114, 148);
				char_hud_color2 = make_color_rgb(0, 64, 88);
				//
				anim_speed = .02;
				idle_anim_speed = .15;
				crouch_anim_speed = .1;
				walk_anim_speed = .15;
				dash_anim_speed = .2;
				pratfall_anim_speed = .25;
				
				//Movement Variables
				walk_speed = 1;
				walk_accel = 1;
				walk_turn_time = 600;
				initial_dash_time = 10;
				initial_dash_speed = 6.5;
				dash_speed = 6;
				dash_turn_time = 10;
				dash_turn_accel = 2;
				dash_stop_time = 4;
				dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
				ground_friction = 0.8;
				moonwalk_accel = 1.4;
				
				jump_start_time = 5;
				jump_speed = 12;
				short_hop_speed = 8;
				djump_speed = 10;
				leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
				max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
				air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
				jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
				air_accel = .3;
				prat_fall_accel = 1; //multiplier of air_accel while in pratfall
				air_friction = 0.4;
				max_djumps = 1;
				double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
				
				max_fall = 20; //maximum fall speed without fastfalling
				fast_fall = 11; //fast fall speed
				gravity_speed = .5;
				hitstun_grav = .5;
				knockback_adj = 0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
				
				land_time = 30; //normal landing frames
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
				
				has_air_dodge = 1;
				
				//roll animation frames
				roll_forward_startup_frames = 2;
				roll_forward_active_frames = 2;
				roll_forward_recovery_frames = 2;
				roll_back_startup_frames = 2;
				roll_back_active_frames = 2;
				roll_back_recovery_frames = 2;
				roll_forward_max = 9; //roll speed
				roll_backward_max = 9;
				
				roll_dir = 0;
				
				land_sound = asset_get("sfx_land_heavy");
				landing_lag_sound = asset_get("sfx_land_heavy");
				waveland_sound = asset_get("sfx_waveland_syl");
				jump_sound = asset_get("sfx_jumpground");
				djump_sound = asset_get("sfx_jumpair");
				air_dodge_sound = asset_get("sfx_quick_dodge");
				death_sound = asset_get("sfx_death2");
        	break;
        	case EN_EVENT.UPDATE:
        		spr_dir = -1;
        		//Special platform
        		with (obj_stage_article_platform) {
        			if (num == 1) {
        				if (("parent" in self) && !instance_exists(parent)) {
        					instance_destroy();
        					continue;
        				}
        			}
        		}

				if (vsp > 0 && place_meeting(x, y + vsp + 6, asset_get("par_jumpthrough"))) {
				    y += vsp + 12;
				}

        		//Hitbox update
        		with asset_get("pHitBox") if "hit_owner" in self && hit_owner == other.id {
    				if (attack == AT_JAB && hbox_num == 1) {
    					visible = (hitbox_timer > 1)
    					if (hitbox_timer >= 45 && hitbox_timer <= 140 && instance_exists(other.ai_target)) {
    						var dir = point_direction(x, y, other.ai_target.x, other.ai_target.y - 24)
    						hsp += lengthdir_x(0.5, dir)
    						vsp += lengthdir_y(0.5, dir)
    					}
    					hsp = clamp(hsp, -4, 4);
    					vsp = clamp(vsp, -4, 4);
    					image_angle = darctan2(-vsp, hsp)
    					spr_dir = 1;
    					through_platforms = 4;
    					if (!free || in_hitpause) {
    						with (other) {
    							var my_hit = spawn_hit_fx(other.x, other.y, fx_explosion)
    							my_hit.depth = -4;
						        sound_play(asset_get("sfx_ell_explosion_medium"));
    						}
    						destroyed = true;
    					}
    				}	
    				if (attack == AT_DTILT && hbox_num == 1) {
    					if (!place_meeting(x, y, pHurtBox)) {
	    					for (var i = 0; i < array_length(can_hit); i++)
	    						can_hit[i] = true;
    					}
    					if (hitbox_timer >= length - 1) {
    						with (other) {
    							var my_hit = spawn_hit_fx(other.x, other.y, fx_explosion)
    							my_hit.depth = -4;
						        sound_play(asset_get("sfx_ell_explosion_medium"));
    						}
    					}
    					if (hitbox_timer >= length / 1.5) {
	    					//Stay in view
					    	if (x > view_get_xview() + view_get_wview() && hsp > 0) {
					    		x = view_get_xview() + view_get_wview()
					    		hsp = -hsp;
					    	}
					    	if (x < view_get_xview() && hsp < 0) {
					    		x -= view_get_xview()
					    		hsp = -hsp;
					    	}
    					}
    					if (!free && vsp >= 0) {
    						vsp = -12
    					}
    					spr_dir = hsp == 0 ? 1 : -1;
    				}
    				
    				if (attack == AT_NSPECIAL && hbox_num == 1) {
    					visible = (hitbox_timer > 1)
    					vsp = 4;
    					image_angle = darctan2(-vsp, hsp)
    					spr_dir = 1;
    					through_platforms = 4;
    					if (!free || in_hitpause) {
    						with (other) {
    							var my_hit = spawn_hit_fx(other.x, other.y, fx_explosion)
    							my_hit.depth = -4;
						        sound_play(asset_get("sfx_ell_explosion_medium"));
    						}
    						destroyed = true;
    					}
    				}
    				if (attack == AT_NSPECIAL && hbox_num == 2) {
    					visible = (hitbox_timer > 1)
    					image_angle = darctan2(-vsp, hsp)
    					spr_dir = 1;
    					through_platforms = 4;
    				}
    				if (attack == AT_FTILT && hbox_num == 1) {
    					if (!place_meeting(x, y, pHurtBox)) {
	    					for (var i = 0; i < array_length(can_hit); i++)
	    						can_hit[i] = true;
    					}
    					if (!("my_plat" in self)) {
    						my_plat = instance_create(x, y, "obj_stage_article_platform", 1);
    						my_plat.visible = false;
    						my_plat.sprite_index = sprite_get("ttank_missile_big_mask");
    						my_plat.mask_index = sprite_get("ttank_missile_big_mask");
    						my_plat.spr_dir = spr_dir;
    						my_plat.image_xscale = spr_dir;
    					}
    					else {
    						if (instance_exists(my_plat)) {
	    						my_plat.x = x;
	    						my_plat.y = y - 6;
	    						my_plat.hsp = round(hsp);
	    						my_plat.vsp = round(vsp);
	    						if (hitbox_timer >= length-1)
	    							instance_destroy(my_plat);
    						}
    					}
    					if (instance_exists(other.ai_target)) {
	    					if (hitbox_timer == 2) {
	    						vsp = other.ai_target.y < y ? -4 : 4;
	    					}
	    					if (hitbox_timer == 3) {
	    						var dir = point_direction(x, y, other.ai_target.x, other.ai_target.y - 24)
	    						dir = clamp(dir, 100, 260)
	    						vsp = lengthdir_y(4, dir)
	    					}
    					}
    					if (hitbox_timer > 36) {
    						vsp *= (1 - 0.2)
    					}
    					hsp = clamp(hsp, -4, 4);
    					vsp = clamp(vsp, -4, 4);
    					through_platforms = 4;
    				}
    			}
    			//Player pushing
    			if (state != PS_DEAD) {
					with (asset_get("oPlayer")) {
					    if (place_meeting(x, y, other)) {
					        if (x < other.x) {
					            x -= 4;
					        }
					        if (x > other.x) {
					            x += 4;
					        }
					    }
					}
    			}
        		//Attacks
        		if (!committed && player_controller == 0 && hitstun <= 0) {
        			if (state == PS_IDLE) {
	        			if (ai_moving != 0) {
	        				if (hitpause > 0)
	        					hsp = 0
	        				else
	        					hsp = walk_speed * ai_moving;
	        				if (state_timer == 1) {
	        					ai_wait_time = 60 + random_func(enem_id + 30, 150, true)
	        					sound_play(sound_get("sfx_sk_rockbig_land"));
	        				}
	        				if (state_timer == ai_wait_time) {
	        					hsp = 0;
	        					state_timer = 0;
	        					ai_moving = 0;
	        				}
	        			}
	        			else {
		        			if (state_timer == 3) {
		        				ai_max_timer = ((20 + random_func(enem_id + 30, 40, true)) * (obj_stage_main.hard_mode ? 1 : 2))
		        				ai_approach_chance = random_func(enem_id + 32, 10, true)
		        			}
		    				if (state_timer == ai_max_timer) { 
		    					if ((!ai_approached && ai_approach_chance <= 6) || ai_approached) {
		        					var possible_attacks = ds_list_create();
		        					if (ai_attack_group == 0)
		        						ds_list_add(possible_attacks, AT_NSPECIAL, AT_JAB, AT_UTILT);
		        					else if (ai_attack_group == 1)
		        						ds_list_add(possible_attacks, AT_DTILT, AT_FTILT, AT_USPECIAL);
		        					else
		        						ds_list_add(possible_attacks, AT_FSPECIAL, AT_DSPECIAL);
		        					next_attack = ds_list_find_value(possible_attacks, random_func(enem_id + 4, ds_list_size(possible_attacks), true))
		    						ds_list_destroy(possible_attacks)
		    						ai_attack_group ++;
		    						if (ai_attack_group > 2)
		    							ai_attack_group = 0;
		    						ai_approached = false;
		    					}
		    					else {
		    						state_timer = 0;
		    						ai_approached = true;
		    						if (x < get_marker_x(2) + 192) {
		    							ai_moving = 1;
		    						}
		    						else if (x > room_width - 304) {
		    							ai_moving = -1;
		    						}
		    						else {
		    						
		    							ai_moving = (random_func(enem_id + 12, 10, true) < 5 ? -1 : 1);
		    						}
		    					}
		    				}
	        			}
        			}
        		}
        		
        	break;
        	case EN_EVENT.ATTACK_UPDATE:
        		if (attack == AT_JAB)
        		{
        			var max_missile_num = obj_stage_main.hard_mode ? 5 : 3;
        			if (window == 1) {
        				ai_attack_times = 0;
        			}
        			if (window == 3) {
        				if (window_timer == 1) {
    						spawn_hit_fx(x+ (29 * 2 * spr_dir), y - 144 * 2, 13)
        				}
        			}
        			if (window == 4) {
        				if (window_timer == 17) {
        					ai_attack_times ++;
        					if (ai_attack_times < max_missile_num) {
        						window = 2;
        						window_timer = 0;
        					}
        				}
        			}
        		}
        		if (attack == AT_UTILT) {
        			if (window == 2 && window_timer == 1) {
        				if (x < get_marker_x(2) + 320) {
							hsp = 1 + random_func(enem_id + 12, 1, true);
						}
						else if (x > room_width - 304) {
							hsp = -1 - random_func(enem_id + 12, 1, true);
						}
						else {
							hsp = -2 + random_func(enem_id + 12, 2, true);
						}
        			}
        			if (window == 4 && window_timer == 1) {
        				shake_camera(40, 40);
        				sound_play(sound_get("sfx_sk_rockbig_destroy"));
        			}
        		}
        		if (attack == AT_FTILT) {
        			var max_missile_num = obj_stage_main.hard_mode ? 5 : 3;
        			if (window == 1) {
        				ai_attack_times = 0;
        			}
        			if (window == 3) {
        				if (window_timer == 1) {
        					shake_camera(4, 4);
							var my_hit = spawn_hit_fx(x - (73 * 2 * spr_dir), y - 76 * 2, 143)
							my_hit.depth = -6;
        				}
        			}	
        			if (window == 4) {
        				if (window_timer == 60) {
        					ai_attack_times ++;
        					if (ai_attack_times < max_missile_num) {
        						window = 3;
        						window_timer = -1;
        					}
        				}
        			}
        		}
        		if (attack == AT_DTILT) {
        			var max_missile_num = obj_stage_main.hard_mode ? 4 : 2;
        			if (window == 1) {
        				ai_attack_times = 0;
        			}
        			if (window == 3) {
        				if (window_timer == 1) {
        					shake_camera(4, 4);
	        				var hitb = create_hitbox(AT_DTILT, 1, round(x) - (73 * 2 * spr_dir), round(y) - 76 * 2);
					        if not "hit_owner" in hitb hitb.hit_owner = id;
					        if not "team" in hitb hitb.team = team;
							hitb.hsp = (2 + random_func_2(enem_id + 20, 4, false)) * spr_dir;
							hitb.vsp = -6 - random_func_2(enem_id + 20, 4, false);
							var my_hit = spawn_hit_fx(x - (73 * 2 * spr_dir), y - 76 * 2, 143)
							my_hit.depth = -6;
        				}
        			}	
        			if (window == 4) {
        				if (window_timer == 60) {
        					ai_attack_times ++;
        					if (ai_attack_times < max_missile_num) {
        						window = 3;
        						window_timer = -1;
        					}
        				}
        			}
        		}
        		if (attack == AT_USPECIAL) {
        			var max_missile_num = obj_stage_main.hard_mode ? 2 : 1;
        			if (window == 1) {
        				ai_attack_times = 0;
        			}
        			if (window == 4) {
        				if (window_timer == 1) {
        					shake_camera(4, 4);
							var my_hit = spawn_hit_fx(x - (73 * 2 * spr_dir), y - 76 * 2, 143)
							my_hit.depth = -6;
							var my_enemy = create_enemy(x - (73 * 2 * spr_dir), y - 76 * 2, EN.TTANKMINI);
        				}
        			}	
        			if (window == 5) {
        				if (window_timer == 60) {
        					ai_attack_times ++;
        					if (ai_attack_times < max_missile_num) {
        						window = 3;
        						window_timer = -1;
        					}
        				}
        			}
        		}
        		if (attack == AT_DSPECIAL) {
        			var max_missile_num = obj_stage_main.hard_mode ? 5 : 3;
        			if (window == 1) {
        				ai_attack_times = 0;
        			}
        			if (window == 4) {
        				if (window_timer == 1) {
							var hitb = create_hitbox(AT_DSPECIAL, 1, round(x) + (2 * spr_dir), round(y) - 146 * 2);
					        if not "hit_owner" in hitb hitb.hit_owner = id;
					        if not "team" in hitb hitb.team = team;
					        var dir = 225
					        if (instance_exists(ai_target))
						        dir = point_direction(hitb.x, hitb.y, ai_target.x, ai_target.y - 24);
					        hitb.hsp = lengthdir_x(8, dir);
					        hitb.vsp = lengthdir_y(8, dir);
        				}
        			}	
        			if (window == 5) {
        				if (window_timer == 40) {
        					ai_attack_times ++;
        					if (ai_attack_times < max_missile_num) {
        						window = 3;
        						window_timer = 0;
        					}
        				}
        			}
        		}
        		if (attack == AT_NSPECIAL)
        		{	
        			var max_missile_num = obj_stage_main.hard_mode ? 12 : 7;
        			if (window == 1) {
        				ai_attack_times = 0;
        			}
        			if (window == 3) {
        				if (window_timer == 1) {
	        				var hitb = create_hitbox(AT_NSPECIAL, 2, round(x) + ((29 + random_func(enem_id + 12, 16, true)) * 2 * spr_dir), round(y) - 144 * 2);
					        if not "hit_owner" in hitb hitb.hit_owner = id;
					        if not "team" in hitb hitb.team = team;
							var my_hit = spawn_hit_fx( round(x) + ((29 + random_func(enem_id + 12, 16, true)) * 2 * spr_dir) ,round(y) - 144 * 2, 13)
							my_hit.depth = -6;
        				}
        			}
        			if (window == 4) {
        				if (window_timer == 6) {
        					ai_attack_times ++;
        					if (ai_attack_times < max_missile_num) {
        						window = 3;
        						window_timer = 0;
        					}
        					else {
        						ai_nspecial_attack_type = random_func(enem_id + 24, 10, true);
        					}
        				}
        			}
        			if (window == 5) {
    					var min_width = 64;
    					var max_width = (room_width / 2) + 128
    					var total_width = max_width - min_width;
        				if (ai_nspecial_attack_type <= 5) {
        					if (window_timer == 0) {
        						var missile_x = min_width + (total_width * (ai_attack_times / max_missile_num))
		        				var hitb = create_hitbox(AT_NSPECIAL, 1, round(missile_x), round(view_get_yview()) - 48);
						        if not "hit_owner" in hitb hitb.hit_owner = id;
						        if not "team" in hitb hitb.team = team;
						        ai_attack_times --;
	        				}
	        				
	        				if (ai_attack_times <= 0) {
	        					window = 6;
	        					window_timer = 0;
	        					ai_attack_times = 0;
	        				}
        				}
        				else {
        					
        					if (window_timer == 0) {
        						var missile_x = min_width + (total_width * (1 - random_func(enem_id + 20, 1, false)))
		        				var hitb = create_hitbox(AT_NSPECIAL, 1, round(missile_x), round(view_get_yview()) - 48);
						        if not "hit_owner" in hitb hitb.hit_owner = id;
						        if not "team" in hitb hitb.team = team;
						        ai_attack_times --;
	        				}
	        				
	        				if (ai_attack_times <= 0) {
	        					window = 6;
	        					window_timer = 0;
	        					ai_attack_times = 0;
	        				}
        				}
        			}
        		}
        		
        		if (attack == AT_FSPECIAL)
        		{
        			var at_charge_speed = obj_stage_main.hard_mode ? 10 : 8;
        			var at_charge_time = obj_stage_main.hard_mode ? 96 : 128;
        			if (window == 1) {
        				ai_fspecial_timer = 0;
        			}
        			if (window == 2) {
        				ai_fspecial_timer ++;
        				
        				if (ai_fspecial_timer == 1) {
        					sound_play(sound_get("sfx_sk_laser_big"))
        				}
        				if (ai_fspecial_timer <= 30) {
        					x = ease_linear(x, room_width - 144, ai_fspecial_timer, 30);
        				}
        				if (ai_fspecial_timer > 30 && ai_fspecial_timer <= 128) {
        					x += ai_fspecial_timer % 2 == 0 ? -4 : 4;
        				}
        				if (ai_fspecial_timer == at_charge_time) {
        					hsp = -12 * spr_dir;
        				}
        				if (ai_fspecial_timer >= at_charge_time) {
        					hsp *= 0.7;	
        				}
        				if (ai_fspecial_timer >= at_charge_time + 32 && window_timer == 9) {
        					ai_fspecial_timer = 0;
        					window = 3;
        					window_timer = 0;
        				}
        			}
        			
        			if (window == 3) {
        				ai_fspecial_timer ++;
        				if (ai_fspecial_timer == 1) {
        					shake_camera(20, 40);
        					sound_play(sound_get("sfx_rockbig_liftoff"));
        				}
        				if (ai_fspecial_timer <= 144) {
        					hsp = at_charge_speed * spr_dir;
        					if (x < -320 && hsp < 0) {
        						x = -320;
        						hsp = 0;
        					}
        					if (x >= room_width + 272 && hsp > 0) {
        						gravity_speed = 0;
        						x = room_width + 272;
        						hsp = 0;
        					}
        				}
        				if (ai_fspecial_timer == 144) {
        					window = 4;
        					window_timer = 0;
        					ai_fspecial_timer = 0;
        					hsp = 0;
        				}
        			}
        			
        			if (window == 4) {
        				ai_fspecial_timer ++;
        				if (ai_fspecial_timer == 1) {
        					x = room_width + 320;
        					spr_dir = -1
        				}
        				if (ai_fspecial_timer >= 1) {
        					hsp = at_charge_speed * spr_dir;
        					if (x <= get_marker_x(1) - 128) {
        						window = 5;
        						window_timer = 0;
        					}
        				}
        			}
        		}
        	break;
        	case EN_EVENT.ANIMATION:
        		if (state == PS_IDLE) {
        			if (ai_moving != 0) {
			    		sprite_index =enemy_sprite_get(sprite_name, "walk");
	        			if (hsp > 0)
	        				idle_anim_speed = -0.15
	        			else
	        				idle_anim_speed = 0.15;
        			}
        			else {
			    		sprite_index =enemy_sprite_get(sprite_name, "idle");
	        				idle_anim_speed = 0.15;
        			}	
        		}
        		if (state == PS_SPAWN) {
        			invincible = 2;
        			if (state_timer == 2) {
        				vsp = 9
        			}
        			if (state_timer <= 4) {
	        			if (is_free) {
		    				sprite_index =enemy_sprite_get(sprite_name, "jump");
		    				image_index = ease_linear(0,image_number,floor(vsp+jump_speed), jump_speed*2);
	        				state_timer = 3;
	        			}
	        			else {
							y -= 4;
		    				sprite_index =enemy_sprite_get(sprite_name, "land");
	        				image_index = 0;
	        			}
        			}
        			if (state_timer == 6) {
        				shake_camera(40, 40);
        				sound_play(sound_get("sfx_sk_rockbig_destroy"));
        				
        				var plat1 = instance_create(get_marker_x(2) - 192, -16, "obj_stage_article_platform", 7);
        				plat1.target_y = get_marker_y(2) - 96;
        				plat1.target_time = 130
        				
        				var plat2 = instance_create(get_marker_x(2) - 420, -16, "obj_stage_article_platform", 7);
        				plat2.target_y = get_marker_y(2) - 192;
        				plat2.target_time = 110
        				
        				var plat2 = instance_create(get_marker_x(2) - 192, -16, "obj_stage_article_platform", 7);
        				plat2.target_y = get_marker_y(2) - 288;
        				plat2.target_time = 90
        				
        				show_healthbar = true;
        			}
        			if (state_timer == 12) {
        				image_index = 1;
        			}
        			if (state_timer == 18) {
        				image_index = 2;
        			}
        			if (state_timer == 24) {
        				image_index = 3;
        			}
        			if (state_timer >= 80) {
        				sprite_index = enemy_sprite_get(sprite_name, "idle")
        				image_index += idle_anim_speed;
        			}
        			if (state_timer == 144) {
        				done_intro = true;
        			}
        		}
        	break;
        	case EN_EVENT.DEATH:
        		boss_death();
        		if (state_timer == 4) {
        			with obj_stage_main music_stop();
        			sprite_index = enemy_sprite_get(sprite_name, "dead")
        			sound_play(sound_get("sfx_sk_boss_die"));
        			var sfx_play = false
        			with (obj_stage_article) {
        				if (num == 6) {
        					if (enem_id == EN.TTANKMINI) {
		    					destroyed = true;
		    					if (!sfx_play) {
		    						sound_play(sound_get("sfx_explode_small"))
		    						sfx_play = true;
		    					}
								var my_hit = spawn_hit_fx(x, y - 24, 143)
								my_hit.depth = -6;
        					}
        				}
        			}
        		}
        		if (state_timer >= 4) {
        			image_index += 0.4;
        		}
			    var rand_x = 208 - random_func_2(enem_id + 30, 384, true);
			    var rand_y = random_func_2(enem_id + 32, 320, true) * -1;
    			if (state_timer >= 30 && state_timer < 180) {
			        if (state_timer % 20 == 0) {
        				shake_camera(18, 5)
			            sound_play(sound_get("sfx_explode_small"));
			            spawn_hit_fx(x + rand_x, y + rand_y, 143);
			        }
			    }
			    if (state_timer >= 180 && state_timer < 240) {
			        if (state_timer % 10 == 0) {
        				shake_camera(18, 5)
			            sound_play(sound_get("sfx_explode_small"));
			            spawn_hit_fx(x + rand_x, y + rand_y, 143);
			        }
			    }
			    if (state_timer >= 240 && state_timer < 300) {
			        if (state_timer % 5 == 0) {
        				shake_camera(18, 5)
			            sound_play(sound_get("sfx_explode_small"));
			            spawn_hit_fx(x + rand_x, y + rand_y, 143);
			        }
			    }
			    if (state_timer == 240) {
        			sound_play(sound_get("sfx_tinkertank_death"));
			    }
			    if (state_timer == 300) {
        			sound_play(sound_get("sfx_rockbig_liftoff"));
        			shake_camera(60, 30)
			    	var i = 0;
			    	while (i <= 9) {
			    		var my_part = instance_create(x, y, "obj_stage_article", 8);
				    	if (i <= 8) {
				    		my_part.sprite_index = sprite_get("ttank_parts");
				    		my_part.image_index = i;
				    		my_part.img_spd = 0;
				    		my_part.image_xscale = -2;
				    		my_part.image_yscale = 2;
				    		my_part.hsp = random_func_2(i, 8, true) * (i % 2 == 0 ? 1 : -1);
				    		my_part.vsp = -8 - random_func_2(i, 12, true)
			    		}
			    		else {
				    		my_part.sprite_index = sprite_get("tknight_spinhurt");
				    		my_part.x = x - 15 * 2;
				    		my_part.y = y - 144 * 2;
				    		my_part.img_spd = 0.35;
				    		my_part.vsp = -14;
				    		my_part.depth = -2;
				    		my_part.spr_dir = -1;
			    		}
			    		i++;
			    	}
			    	visible = false;
			    }
			    if (state_timer == 500) {
			    	obj_stage_main.end_battle = true;
			    	destroyed = true;
			    }
        	break
        	case EN_EVENT.SET_ATTACK:
                with (obj_stage_main) {
                	switch (other.attack) {
                		case AT_JAB:
	                	set_attack_value(AT_JAB, AG_CATEGORY, 2);
						set_attack_value(AT_JAB, AG_SPRITE, sprite_get("ttank_jab"));
						set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("ttank_hurt"));
						
						set_attack_value(AT_JAB, AG_NUM_WINDOWS, 5);
						set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 15);
						set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 4);
						
						set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 16);
						set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 3);
						
						set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 3);
						set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
						set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_JAB, 3, AG_WINDOW_SFX, sound_get("sfx_tinkertank_missile_small"));
						set_window_value(AT_JAB, 3, AG_WINDOW_SFX_FRAME, 1);
						
						set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 45);
						set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 4);
						set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
						
						set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 24);
						set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 3);
						set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 8);
						
						
						set_num_hitboxes(AT_JAB, 1);
						set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 2);
						set_hitbox_value(AT_JAB, 1, HG_WINDOW, 3);
						set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 320);
						set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 29 * 2);
						set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -144 * 2);
						set_hitbox_value(AT_JAB, 1, HG_WIDTH, 80);
						set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 80);
						set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
						set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
						set_hitbox_value(AT_JAB, 1, HG_ANGLE, 85);
						set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
						set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.5);
						set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
						set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.5);
						set_hitbox_value(AT_JAB, 1, HG_HIT_LOCKOUT, 10);
						set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, other.fx_explosion);
						set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_ell_explosion_medium"));
						set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 3);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_SPRITE, sprite_get("ttank_missile_small"));
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_MASK, -1);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ANIM_SPEED, 0.35);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_VSPEED, -4);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_DESTROY_EFFECT, other.fx_explosion);
	                	break;
	                	case AT_FTILT:
	                	set_attack_value(AT_FTILT, AG_CATEGORY, 2);
						set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ttank_ftilt"));
						set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ttank_hurt"));
						
						set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 5);
						set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 18);
						set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 6);
						
						set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 24);
						set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 6);
						set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 6);
						set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_ell_steam_release"));
						set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 1);
						
						set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 3);
						set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 12);
						set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, sound_get("sfx_tinkertank_missile_big"));
						set_window_value(AT_FTILT, 3, AG_WINDOW_SFX_FRAME, 1);
						
						set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 72);
						set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 5);
						set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 13);
						
						set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 24);
						set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
						set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 18);
						
						set_num_hitboxes(AT_FTILT, 1);
						set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 2);
						set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
						set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 360);
						set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, -24 * 2);
						set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -74 * 2);
						set_hitbox_value(AT_FTILT, 1, HG_WIDTH, -80 * 2);
						set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, -16 * 2);
						set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
						set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
						set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
						set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 65);
						set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 6);
						set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.6);
						set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
						set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.6);
						set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX,  asset_get("sfx_ell_big_missile_ground"));
						set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 3);
						set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 60);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("ttank_missile_big"));
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_MASK, sprite_get("ttank_missile_big_mask"));
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_HSPEED, 4);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_UNBASHABLE, 1);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
						set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_UNBASHABLE, 1);
						

	                	break;
	                	case AT_UTILT:
	                	set_attack_value(AT_UTILT, AG_CATEGORY, 2);
						set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("ttank_utilt"));
						set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("ttank_hurt"));
						
						set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 5);
						set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 25);
						set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 5);
						
						set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 15);
						set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
						set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
						set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -16);
						set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
						set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
						
						set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 8);
						set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 5);
						set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
						set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
						set_window_value(AT_UTILT, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.04);
						
						set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 5);
						set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 9);
						
						set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 24);
						set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
						set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 10);
						
						
						set_num_hitboxes(AT_UTILT, 4);
						set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
						set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
						set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 8);
						set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 0);
						set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -72 * 2);
						set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 176 * 2);
						set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 144 * 2);
						set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
						set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 4);
						set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 14);
						set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 75);
						set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 5);
						set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.3);
						set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
						set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.3);
						set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 304);
						set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
						set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 3);
						set_hitbox_value(AT_UTILT, 1, HG_HIT_LOCKOUT, 12);
						set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, -1);
						
						set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
						set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 4);
						set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
						set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 0);
						set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -30 * 2);
						set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 176 * 2);
						set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 64 * 2);
						set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2);
						set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 4);
						set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 21);
						set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 56);
						set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 12);
						set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.3);
						set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 12);
						set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.3);
						set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 304);
						set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_kragg_rock_pillar"));
						set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 3);
						set_hitbox_value(AT_UTILT, 2, HG_HIT_LOCKOUT, 3);
						set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, -1);
						
						set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 2);
						set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 4);
						set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 120);
						set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 63 * 2);
						set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -48 * 2);
						set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 78 * 2);
						set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 48 * 2);
						set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 2);
						set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
						set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 14);
						set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
						set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 7);
						set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.6);
						set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 7);
						set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.6);
						set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
						set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 3);
						set_hitbox_value(AT_UTILT, 3, HG_EXTRA_HITPAUSE, 18);
						set_hitbox_value(AT_UTILT, 3, HG_DRIFT_MULTIPLIER, 1);
						set_hitbox_value(AT_UTILT, 3, HG_SDI_MULTIPLIER, 1);
						set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_SPRITE, sprite_get("ttank_shock"));
						set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_MASK, -1);
						set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_ANIM_SPEED, 0.25);
						set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_HSPEED, 12);
						set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
						set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
						set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
						set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_UNBASHABLE, 1);
						set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
						set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
						
						set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 2);
						set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 4);
						set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 120);
						set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -63 * 2);
						set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -48 * 2);
						set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 78 * 2);
						set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 48 * 2);
						set_hitbox_value(AT_UTILT, 4, HG_SHAPE, 2);
						set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
						set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 14);
						set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 90);
						set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 7);
						set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.6);
						set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 7);
						set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.6);
						set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
						set_hitbox_value(AT_UTILT, 4, HG_ANGLE_FLIPPER, 3);
						set_hitbox_value(AT_UTILT, 4, HG_EXTRA_HITPAUSE, 18);
						set_hitbox_value(AT_UTILT, 4, HG_DRIFT_MULTIPLIER, 1);
						set_hitbox_value(AT_UTILT, 4, HG_SDI_MULTIPLIER, 1);
						set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_SPRITE, sprite_get("ttank_shock"));
						set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_MASK, -1);
						set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_ANIM_SPEED, 0.25);
						set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_HSPEED, -12);
						set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
						set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
						set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
						set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_UNBASHABLE, 1);
						set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
						set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
	                	break;
	                	case AT_DTILT:
	                	set_attack_value(AT_DTILT, AG_CATEGORY, 2);
						set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("ttank_dtilt"));
						set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("ttank_hurt"));
						
						set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 5);
						set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 18);
						set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 5);
						
						set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 24);
						set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
						set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get(""));
						set_window_value(AT_DTILT, 2, AG_WINDOW_SFX_FRAME, 1);
						
						set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 3);
						set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
						set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_DTILT, 3, AG_WINDOW_SFX, sound_get("sfx_tinkertank_ball"));
						set_window_value(AT_DTILT, 3, AG_WINDOW_SFX_FRAME, 1);
						
						set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 80);
						set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
						set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
						
						set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 23);
						set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
						set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 10);
						
						
						set_num_hitboxes(AT_DTILT, 1);
						set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 2);
						set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 280);
						set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, -73 * 2);
						set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -76 * 2);
						set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 80 * 2);
						set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 80 * 2);
						set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
						set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 9);
						set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 75);
						set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
						set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.6);
						set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 8);
						set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.5);
						set_hitbox_value(AT_DTILT, 1, HG_HIT_LOCKOUT, 60);
						set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("ttank_bomb"));
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_MASK, -1);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GRAVITY, 0.45);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_UNBASHABLE, 1);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 143);
						set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
	                	break;
	                	case AT_NSPECIAL:
	                	set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
						set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("ttank_nspecial"));
						set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("ttank_hurt"));
						
						set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);
						set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 15);
						set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
						
						set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 16);
						set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
						
						set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 3);
						set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
						set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_tinkertank_missile_small"));
						set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);
						
						set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 24);
						set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
						set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
						
						set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 9);
						set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, obj_stage_main.hard_mode ? 16 : 12);
						set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
						
						set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 24);
						set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
						set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
						
						
						set_num_hitboxes(AT_NSPECIAL, 2);
						set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
						set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 320);
						set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 29 * 2);
						set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -167 * 2);
						set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 80);
						set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 80);
						set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
						set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 85);
						set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
						set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
						set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
						set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);
						set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 10);
						set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, other.fx_explosion);
						set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ell_explosion_medium"));
						set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 3);
						set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("ttank_missile_small"));
						set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
						set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.35);
						set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -4);
						set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
						set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
						set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, other.fx_explosion);
						
						set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
						set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 320);
						set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 80);
						set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 80);
						set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
						set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("ttank_missile_small"));
						set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
						set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.35);
						set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -4);
						set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
						set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
						set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
						set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
	                	break;
	                	case AT_FSPECIAL:
                		set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
						set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("ttank_fspecial"));
						set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("ttank_hurt"));
						set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
						
						set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
						set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 25);
						set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
						
						set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
						set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 10);
						set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
						set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
						
						set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 9);
						set_window_value(AT_FSPECIAL, 3, AG_WINDOW_INVINCIBILITY, 1);
						set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 10);
						set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
						set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
						
						set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 9);
						set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 10);
						set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
						set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);
						
						set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 44);
						set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
						set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
						
						
						set_num_hitboxes(AT_FSPECIAL, 2);
						set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
						set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
						set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 10);
						set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -2 * 2);
						set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -64 * 2);
						set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 112 * 2);
						set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 128 * 2);
						set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
						set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 4);
						set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 30);
						set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 55);
						set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
						set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
						set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 7);
						set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
						set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
						set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 60);
						set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 304);
						set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
						set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 3);
						set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 1);
						set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
						set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 1);
						set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
						
						set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
						set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
						set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
						set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 10);
						set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 81 * 2);
						set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -88 * 2);
						set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 162 * 2);
						set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 48 * 2);
						set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
						set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 5);
						set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 40);
						set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
						set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
						set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1.1);
						set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 10);
						set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 1.1);
						set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 304);
						set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
						set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
						set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_LOCKOUT, 60);
						set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
						set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 1);
						set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);

	                	break;
	                	case AT_DSPECIAL:
	                	set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
						set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("ttank_dspecial"));
						set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("ttank_hurt"));
						
						set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6);
						set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 22);
						set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
						
						set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 15);
						set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
						
						set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 10);
						set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
						set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
						set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
						set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 8);
						
						set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 3);
						set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
						
						set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 48);
						set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
						set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
						
						set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 24);
						set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
						set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 12);
						
						
						set_num_hitboxes(AT_DSPECIAL, 1);
						set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
						set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 120);
						set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 1 * 2);
						set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -146 * 2);
						set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 56);
						set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 56);
						set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
						set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6);
						set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 110);
						set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
						set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
						set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 5);
						set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);
						set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_metal_hit_weak"));
						set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 3);
						set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);
						set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 8);
						set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("tknight_wrench"));
						set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
						set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
						set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
						set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
						set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

	                	break;	
	                	case AT_USPECIAL:
	                	set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
						set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("ttank_ftilt"));
						set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("ttank_hurt"));
						
						set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
						set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 18);
						set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
						
						set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 24);
						set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
						set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
						set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ell_steam_release"));
						set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);
						
						set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 24);
						set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
						set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
						set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_ell_steam_release"));
						set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);
						
						set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 3);
						set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 12);
						set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, sound_get("sfx_tinkertank_cannon"));
						set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);
						
						set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 72);
						set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
						set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);
						
						set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 24);
						set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
						set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 18);
						
						set_num_hitboxes(AT_USPECIAL, 0);
						

	                	break;
                	}
                }
               break;
       }
    break;
    case EN.TTANKMINI:
        switch (art_event) {
        	case EN_EVENT.INIT:
        		//Custom Variables
        		ai_explode_timer = 0;
        		ai_explode_max = 300;
        		ai_moving_left = false;
        		ai_moving_right = false;
        		ai_move_now = 0;
        		
        		// Inherited variables
        		sprite_name = "ttankmini"
				collision_box = asset_get("ex_guy_hurt_box");
				hurtbox_spr = collision_box; //Hurtbox Sprite
				physics_range = -1;
				depth = -1;
				
        		hitpoints_max = obj_stage_main.hard_mode ? 20 : 12;
        		multiplayer_damage_reduction = false;

        		//Animation Actions
				char_height = 52;
				char_arrow = sprite_get("char_arrow");
				char_name = "Mini Tinker Tank"; //The name of this enemy
				char_icon = sprite_get("ttankmini_icon"); //The icon to show on the HUD. 
				//Contributed by Harbige
				char_healthbar = sprite_get("char_healthbar");
				char_hud_color = make_color_rgb(22, 114, 148);
				//
				anim_speed = .02;
				idle_anim_speed = .15;
				crouch_anim_speed = .1;
				walk_anim_speed = .25;
				dash_anim_speed = .2;
				pratfall_anim_speed = .25;
				
				//Movement Variables
				walk_speed = 2;
				walk_accel = 0.5;
				walk_turn_time = 6;
				initial_dash_time = 10;
				initial_dash_speed = 6.5;
				dash_speed = 6;
				dash_turn_time = 10;
				dash_turn_accel = 2;
				dash_stop_time = 4;
				dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
				ground_friction = .7;
				moonwalk_accel = 1.4;
				
				jump_start_time = 5;
				jump_speed = 12;
				short_hop_speed = 8;
				djump_speed = 10;
				leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
				max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
				air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
				jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
				air_accel = .3;
				prat_fall_accel = 1; //multiplier of air_accel while in pratfall
				air_friction = 0.01;
				max_djumps = 1;
				double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
				
				max_fall = 9; //maximum fall speed without fastfalling
				fast_fall = 11; //fast fall speed
				gravity_speed = .5;
				hitstun_grav = .5;
				knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
				
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
				
				has_air_dodge = 1;
				
				//roll animation frames
				roll_forward_startup_frames = 2;
				roll_forward_active_frames = 2;
				roll_forward_recovery_frames = 2;
				roll_back_startup_frames = 2;
				roll_back_active_frames = 2;
				roll_back_recovery_frames = 2;
				roll_forward_max = 9; //roll speed
				roll_backward_max = 9;
				
				roll_dir = 0;
				
				land_sound = asset_get("sfx_land_heavy");
				landing_lag_sound = asset_get("sfx_land_heavy");
				waveland_sound = asset_get("sfx_waveland_syl");
				jump_sound = asset_get("sfx_jumpground");
				djump_sound = asset_get("sfx_jumpair");
				air_dodge_sound = asset_get("sfx_quick_dodge");
				death_sound = asset_get("sfx_death2");
        	break
        	case EN_EVENT.UPDATE:
    			//Attacks
    			left_down = ai_moving_left && !is_free;
    			right_down = ai_moving_right && !is_free;
        		if (!committed && instance_exists(ai_target) && hitpause <= 0 && !is_free) {
    				ai_explode_timer ++
    				if (ai_explode_timer >= ai_explode_max)
    				{
    					next_attack = AT_FTILT;
    				}
    				
    				if (ai_explode_timer % 60 == 29 + random_func_2(enem_id + 20, 60, true)) {
    					next_attack = AT_JAB;
    					spr_dir = ai_target.x > x ? 1 : -1;
    				}
    				
    				if (ai_explode_timer % 60 == 30) {
    					ai_move_now = random_func_2(enem_id + 20, 120, true)
    				}
    				if (ai_explode_timer % 120 <= 60) {
						ai_moving_right = false;
						ai_moving_left = false;
    					if (ai_move_now <= 60) {
	    					if (ai_target.x > x) {
	    						ai_moving_right = true;
	    						ai_moving_left = false;
	    					}
	    					else {
	    						ai_moving_right = false;
	    						ai_moving_left = true;
	    					}
    					}
    				}
        		}
        		
        		if (is_free) {
        			if (ai_explode_timer < 2 && state_timer == 2) {
        				hsp = -6;
        				vsp = -8;
        			}
        		}
        	break;
        	case EN_EVENT.ATTACK_UPDATE:
        		if (attack == AT_JAB) {
        			move_cooldown[AT_JAB] = 45;
        			if (window == 4 && window_timer == 1) {
						var hitb = create_hitbox(AT_JAB, 1, round(x), round(y) - 48);
				        if not "hit_owner" in hitb hitb.hit_owner = id;
				        if not "team" in hitb hitb.team = team;
				        var dir = 0
				        if (instance_exists(ai_target))
					        dir = point_direction(hitb.x, hitb.y, ai_target.x, ai_target.y - 24);
				        hitb.hsp = lengthdir_x(8, dir);
				        hitb.vsp = lengthdir_y(8, dir);
        			}
        		}
        		if (attack == AT_FTILT) {
        			super_armor = true;
        			if (state_timer >= 60) {
    					destroyed = true;
    					sound_play(sound_get("sfx_explode_small"))
						var my_hit = spawn_hit_fx(x, y - 24, 143)
						my_hit.depth = -6;
        			}
        		}
        	break;
        	case EN_EVENT.DEATH:
        		standard_death();
        	break;
        	case EN_EVENT.SET_ATTACK:
                with (obj_stage_main) {
                	switch (other.attack) {
                		case AT_JAB:
	                	set_attack_value(AT_JAB, AG_SPRITE, sprite_get("ttankmini_jab"));
						set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
						
						set_attack_value(AT_JAB, AG_NUM_WINDOWS, 5);
						set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 8);
						set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
						
						set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 12);
						set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 4);
						set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
						set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_ell_steam_release"));
						
						set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 6);
						set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
						set_window_value(AT_JAB, 3, AG_WINDOW_SFX, sound_get("sfx_tinkertank_cannon"));
						set_window_value(AT_JAB, 3, AG_WINDOW_SFX_FRAME, 4);
						
						set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 3);
						set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
						set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
						
						set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 24);
						set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
						set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 6);
						
						set_num_hitboxes(AT_JAB, 1);
						set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 2);
						set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 160);
						set_hitbox_value(AT_JAB, 1, HG_WIDTH, 16);
						set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 16);
						set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
						set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 5);
						set_hitbox_value(AT_JAB, 1, HG_ANGLE, 76);
						set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
						set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.5);
						set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
						set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.5);
						set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_metal_hit_weak"));
						set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 3);
						set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
						set_hitbox_value(AT_JAB, 1, HG_HIT_LOCKOUT, 8);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_SPRITE, sprite_get("ttankmini_bullet"));
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_MASK, -1);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
						set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
						break;
                		case AT_FTILT:
	                	set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ttankmini_ftilt"));
						set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
						
						set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 1);
						
						set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 9);
						set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
						set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
						
						set_num_hitboxes(AT_FTILT, 0);
						break;
                	}
                }
        	break;
        }
    break;
}

//Extra functions
#define arc_calc_x_speed(x1, y1, x2, y2, vspd, g)
var dX = x2 - x1;
var dY = y2 - y1;
if (dX == 0) {
	return 0;
}
var sq = abs(vspd * vspd) / (g * g) - (dY / g);

if (sq < 0) {
	return 0;
}
var t = (abs(vspd) / g) + sqrt(sq);
return dX / t;

#define boss_death()
invincible = 100;
if (state_timer == 1) {
	 with (obj_stage_main) {
        var death = instance_create(other.x, other.y, "obj_stage_article", 16);
        
        sound_play(sound_get("sfx_boss_dead"));
    }
    state_timer = 2;
}

#define standard_death()
invincible = 100;
ignores_walls = true;
ignores_ground = true;
sprite_index = enemy_sprite_get(sprite_name,"hurt");
if hitpause > 1 {
    state_timer = 0;
} else {
    image_index += 0.35;
    if (state_timer == 2) {
    	kb_power += 2;
        kb_power *= 2;
        if !is_free && kb_angle > 3.14159 && kb_angle < 3.14159*2 vsp = kb_power*sin(kb_angle);
        else if !is_free vsp = -abs(kb_power*dsin(kb_angle));
        else vsp = -kb_power*dsin(kb_angle);
        hsp = kb_power*dcos(kb_angle);
        if hsp != 0 spr_dir = -sign(hsp);
    }
    old_hsp = hsp;
    old_vsp = vsp;
    //hitstun--;
    if !is_free vsp = -8 * knockback_adj;
    if (state_timer >= 30) {
        destroyed = true;
    	sound_play(asset_get("sfx_ell_explosion_medium"))
    	spawn_hit_fx(x, y - char_height, 143)
    }
}


#define y_speed_aim(_originY, _targetY, _accel)
var dir = 0;
if (_accel > 0) dir = -1; else dir = 1;
if (dir < 0 && _targetY > _originY) || (dir > 0 && _targetY < _originY)
	_targetY = _originY + 24 * dir;
_accel = abs(_accel);

var substitution = 2 * _accel * abs(_targetY - _originY);
if (substitution <= 0)
	return 0;

var new_vsp = sqrt(substitution) * dir;
return new_vsp;

//DO NOT EDIT BELLOW
#define create_enemy(spawn_x, spawn_y, enemyID)
var e = instance_create(spawn_x, spawn_y, "obj_stage_article", 6);
e.spawn_variables[0] = enemyID;
return e;
#define enemy_sprite_get(_name,_sprite) //Get the sprite of this article
return sprite_get(string(_name)+"_"+string(_sprite));
#define place_meet(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("solid_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_solid,true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("jumpthrough_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_platform,true,true));*/
if (!ignore_solid_articles)
    return (place_meeting(__x,__y,asset_get("solid_32_obj")) || 
            place_meeting(__x,__y,obj_stage_article_solid) || 
            place_meeting(__x,__y,asset_get("jumpthrough_32_obj")) || 
            place_meeting(__x,__y,obj_stage_article_platform));
return (place_meeting(__x,__y,asset_get("solid_32_obj")) ||
        place_meeting(__x,__y,asset_get("jumpthrough_32_obj")));
#define position_meet(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("solid_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_solid,true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("jumpthrough_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_platform,true,true));;*/
if (!ignore_solid_articles)
    return (position_meeting(__x,__y,asset_get("solid_32_obj")) || 
            position_meeting(__x,__y,obj_stage_article_solid) || 
            position_meeting(__x,__y,asset_get("jumpthrough_32_obj")) || 
            position_meeting(__x,__y,obj_stage_article_platform));
return (position_meeting(__x,__y,asset_get("solid_32_obj")) ||
        position_meeting(__x,__y,asset_get("jumpthrough_32_obj")));      
#define place_meet_solid(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("solid_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_solid,true,true));*/
if (!ignore_solid_articles)
    return (place_meeting(__x,__y,asset_get("solid_32_obj")) || 
            place_meeting(__x,__y,obj_stage_article_solid));
return (place_meeting(__x,__y,asset_get("solid_32_obj")));
#define place_meet_plat(__x,__y) //get place_meeting for the usual suspects
/*return (collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,asset_get("jumpthrough_32_obj"),true,true) ||
       collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_platform,true,true));*/
if (!ignore_solid_articles)
    return (place_meeting(__x,__y,asset_get("jumpthrough_32_obj")) || 
        place_meeting(__x,__y,obj_stage_article_platform));
return (place_meeting(__x,__y,asset_get("jumpthrough_32_obj")));
#define get_plat(__x,__y)
var _plat = collision_rectangle(__x-colis_width/2,__y-colis_height,__x+colis_width/2,__y,obj_stage_article_platform,true,true);
var _plat = instance_position(__x,__y,obj_stage_article_platform);
if instance_exists(_plat) && (__y <= _plat.y + 4 && vsp >= 0) && ignores_solid_articles return _plat;
return instance_position(__x,__y,asset_get("jumpthrough_32_obj"));