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
    OU, //0
    ABRAWLER, //1
    FLEYE, //2
    ROCKO, //3
    LSBIRD, //4
    ESTALK, //5
    HOP, //6
    KEI, // 7
    GUARD, //8
    SUPPLIER, //9
    NGUARD, //10
    MAGE, //11
    RYKEN = 100 //100
};
// with oPlayer if state == PS_RESPAWN print("[ue6] started check");

switch (enem_id) {
    case EN.OU:
        switch (art_event) {
            case EN_EVENT.INIT:
                sprite_name = "Ou";
                
                //Animation Actions
                char_height = 25;
                char_arrow = sprite_get("char_arrow");
                anim_speed = .02;
                idle_anim_speed = .15;
                crouch_anim_speed = .1;
                walk_anim_speed = .25;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                
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
                ground_friction = .5;
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
                knockback_adj = 1.6; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                
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
                
                
                land_sound = asset_get("sfx_land_heavy");
                landing_lag_sound = asset_get("sfx_land_heavy");
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
            break;
            case EN_EVENT.UPDATE:
                if !committed && attack_down next_attack = AT_JAB;
            break;
            case EN_EVENT.ANIMATION:
                //Custom State Stuff
                switch art_state {
                    case PS_DOUBLE_JUMP:
                        sprite_index = enemy_sprite_get(enem_id,"PS_FIRST_JUMP");
                        break;
                }
            break;
        }
    break;
    
    case EN.ABRAWLER:
        switch (art_event) {
            case EN_EVENT.INIT:
                //Initializations Here
                
                sprite_name = "abrawler";
                //player_controller = 1;
                hitpoints_max = 35;
                
                collision_box = asset_get("ex_guy_hurt_box");
                mask_index =  collision_box; // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
                
                //AI Behavior
                ai_attack_timer = 0;
                ai_move_timer = 0;
                ai_jump_timer = 0;
                ai_moving_right = false;
                ai_moving_left = false;
                ai_decision_time = 10;
                
                //NPC Varaibles
	            char_name = "Brawler";
	            show_healthbar = true;
	            team = 0;
	            patrol_type = 0;
                
                //AI Behavior Variables
                //Movement
                ai_range_low = 32; //The preferred minimum range
                ai_range_far = 160; //The preferred maximum range
                ai_move_frequency = 15;
                
                //Jumping
                ai_jump_back_frequency = 15; //How often the AI should jump back randomly.
                ai_jump_up_frequency = 10; //How often the AI should jump up randomly.
                ai_jump_fwd_frequency = 10; //How often the AI should jump forwards randomly.
                ai_jump_range_low = 64; //The preferred minimum range to jump.
                
                //Attacking
                attacks = [AT_JAB];
                
                ai_attack_frequency = 10; //How often to attack.
                ai_attack_cooldown = 0;
                ai_attack_counter = 0;
                
                able_to_crouch = false;
                able_to_shield = false;
                able_to_jump = true;
                able_to_dash = true;
                
                //Enemy Specific
                ai_hit_absorption = 0;
                ai_hit_percent = 0;
                        
                //Animation Actions
                char_height = 40;
                char_arrow = sprite_get("char_arrow");
                anim_speed = .02;
                idle_anim_speed = .15;
                crouch_anim_speed = .1;
                walk_anim_speed = .25;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                
                //Movement Variables
                walk_speed = 4.25;
                walk_accel = 1;
                walk_turn_time = 6;
                initial_dash_time = 10;
                initial_dash_speed = 6.5;
                dash_speed = 6;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = .5;
                moonwalk_accel = 1.4;
                
                jump_start_time = 5;
                jump_speed = 12;
                short_hop_speed = 8;
                djump_speed = 10;
                leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
                max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
                air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
                jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
                air_accel = 1;
                prat_fall_accel = 1; //multiplier of air_accel while in pratfall
                air_friction = .03;
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
                
                
                //roll animation frames
                roll_forward_startup_frames = 2;
                roll_forward_active_frames = 2;
                roll_forward_recovery_frames = 2;
                roll_back_startup_frames = 2;
                roll_back_active_frames = 2;
                roll_back_recovery_frames = 2;
                roll_forward_max = 9; //roll speed
                roll_backward_max = 9;
                
                
                land_sound = asset_get("sfx_land_heavy");
                landing_lag_sound = asset_get("sfx_land_heavy");
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
                fx_enemy_abyssdeath = hit_fx_create(sprite_get("fx_enemy_abyssdeath"), 16);
                fx_enemy_abyssdeath2 = hit_fx_create(sprite_get("fx_enemy_abyssdeath2"), 16);
            break;
            case EN_EVENT.UPDATE:
                //AI Routine
                if (instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
                    var t_dist = point_distance(x, y, ai_target.x, ai_target.y);
                    var t_xd = abs(ai_target.x - x);
                    var t_yd = abs(ai_target.y - y);
                    
                    right_down = ai_moving_right;
                    left_down = ai_moving_left;
                    jump_down = art_state == PS_JUMPSQUAT;
                    left_hard_pressed = false;
                    right_hard_pressed = false;
                    down_hard_pressed = false;
                    var decision_random = 0;
                    //Moving
                    ai_move_timer ++;
                    
                    if (ai_move_timer % ai_move_frequency == 0 && !committed) {
                        if (t_xd >= ai_range_low) {
                            if (t_xd >= ai_range_far) {
                                if (ai_target.x > x) right_hard_pressed = true;
                                if (ai_target.x < x) left_hard_pressed = true;
                            }
                            if (ai_target.x > x) {
                                ai_moving_right = true;
                                ai_moving_left = false;
                            } 
                            if (ai_target.x < x) {
                                ai_moving_right = false;
                                ai_moving_left = true;
                            } 
                        }
                        else {
                            ai_moving_right = false;
                            ai_moving_left = false;
                            if (ai_target.x > x && spr_dir == -1) {
                                right_down = true;
                                left_down = false; 
                            }
                            if (ai_target.x < x && spr_dir == 1) {
                                right_down = false;
                                left_down = true; 
                            }
                        }
                        if art_state == PS_DASH {
                            if (right_down && ai_target.x < x) {
                                ai_moving_right = false;
                                ai_moving_left = false;
                                if (ai_target.x > x && spr_dir == -1) {
                                    right_down = true;
                                    left_down = false; 
                                }
                                if (ai_target.x < x && spr_dir == 1) {
                                    right_down = false;
                                    left_down = true; 
                                }
                            }
                            if (left_down && ai_target.x > x) {
                                ai_moving_right = false;
                                ai_moving_left = false;
                                if (ai_target.x > x && spr_dir == -1) {
                                    right_down = true;
                                    left_down = false; 
                                }
                                if (ai_target.x < x && spr_dir == 1) {
                                    right_down = false;
                                    left_down = true; 
                                }
                            }
                        }
                    }
                
                    //Jumping
                    ai_jump_timer ++;
                    decision_random = random_func(x % 24, round(ai_decision_time), true);
                    
                    if (!is_free) {
                        if (!place_meet(x + 32 * spr_dir, y + 16)) {
                            jump_down = true;
                            if (spr_dir == 1) {
                                ai_moving_right = true;
                                ai_moving_left = false;
                            } 
                            if (spr_dir == -1) {
                                ai_moving_right = false;
                                ai_moving_left = true;
                            } 
                        }
                       
                        if (decision_random == 0 && !committed) {
                            // if (ai_target.y + 24 <= y) {
                            //Plat drop
                            if 32 < (ai_target.y-y) {
                            	down_down = true;
                            }
                            if (t_yd >= 24) {
                                var jump_random = random_func(x % 24, 100, true);
                                if (jump_random <= 25) {
                                    var jump_random2 = random_func(x % 24, 100, true);
                                    if (ai_jump_timer % (ai_jump_fwd_frequency  + decision_random) == 0 && jump_random2 <= 33) {
                                        jump_down = true;
                                        if (ai_target.x > x) {
                                            ai_moving_right = true;
                                            ai_moving_left = false;
                                        } 
                                        if (ai_target.x < x) {
                                            ai_moving_right = false;
                                            ai_moving_left = true;
                                        } 
                                    }
                                    
                                    if (ai_jump_timer % (ai_jump_up_frequency + decision_random) == 0 && jump_random2 > 33 && jump_random2 <= 66) {
                                        jump_down = true;
                                        ai_moving_right = false;
                                        ai_moving_left = false;
                                    }
                                    
                                    if (ai_jump_timer % (ai_jump_back_frequency + decision_random) == 0 && jump_random2 > 66) {
                                        jump_down = true;
                                        if (ai_target.x > x) {
                                            ai_moving_right = false;
                                            ai_moving_left = true;
                                        } 
                                        if (ai_target.x < x) {
                                            ai_moving_right = true;
                                            ai_moving_left = false;
                                        } 
                                    }
                                }
                                else {
                                    if (ai_jump_timer % ai_decision_time == 0) {
                                        down_hard_pressed = true;
                                    }
                                }
                            }
                        }
                    }
                    else {
                        jump_down = vsp < 0;
                        if (able_to_djump) {
                             if (ai_jump_timer % (ai_decision_time + decision_random) == 0) {
                                 jump_down = true;
                                if (ai_target.x > x) {
                                    ai_moving_right = true;
                                    ai_moving_left = false;
                                } 
                                if (ai_target.x < x) {
                                    ai_moving_right = false;
                                    ai_moving_left = true;
                                } 
                             }
                        }
                    }
                    
                    //Attacking
                    if (ai_attack_cooldown <= 0) {
                        ai_attack_timer ++;
                        decision_random = random_func(x % 24, round(ai_attack_frequency), true);
                        if (decision_random == 0 && !committed) {
                            var decision_random2 = random_func((id % 50) + 2, 100, true);
                            if (t_xd <= 136 && t_yd <= 64 && !is_free) {
                                if (decision_random2 <= 50)
                                    next_attack = AT_FTILT;
                                else
                                    next_attack = AT_JAB;
                                
                                if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir = -1)) {
                                    spr_dir = -spr_dir;
                                }
                                ai_attack_cooldown = 20;
                            }
                        }
                        
                        //Going into NSPECIAL
                        if (art_state != PS_HITSTUN
                        && art_state != PS_HITSTUN_LAND
                        && art_state != PS_TUMBLE) {
                            if (ai_hit_absorption >= 8 && !committed) {
                                decision_random = random_func(x % 24, 100, true);
                                if (decision_random < 50) {
                                    if (!is_free) {
                                        next_attack = AT_NSPECIAL;
                                        ai_hit_percent = percent;
                                    }
                                }
                                ai_hit_absorption = 0;
                                ai_attack_cooldown = 30;
                            }
                        }
                        
                        //Dash Attacks are more frequent.
                        decision_random = random_func(x % 24, round(ai_attack_frequency / 2), true);
                        if (decision_random == 0 && !committed && art_state == PS_DASH) {
                            if (t_xd <= 160 && t_yd <= 64 && !is_free) {
                                next_attack = AT_DATTACK;
                                ai_attack_cooldown = 15;
                            }
                        }
                        
                    }
                    else {
                        if (art_state != PS_ATTACK_GROUND && art_state != PS_ATTACK_AIR)
                            ai_attack_cooldown --;
                    }
                }
            break;
            case EN_EVENT.ATTACK_UPDATE:
                if (attack == AT_JAB) {
                    if (window == 4) {
                        if (window_timer == 3) {
                            ai_attack_counter ++;
                            if (ai_attack_counter >= 3) {
                                window = 6;
                                window_timer = 0;
                                ai_attack_counter = 0;
                            }
                        }
                    }
                    if (window == 5) {
                        if (window_timer == 5) {
                            window = 2;
                            window_timer = 0;
                        }
                    }
                }
                
                if (attack == AT_NSPECIAL) {
                     if (window < 3) {
                        super_armor = true;
                    }
                }
            break;
            case EN_EVENT.GOT_HIT:
                ai_hit_absorption = percent - ai_hit_percent;
            break;
            case EN_EVENT.DEATH:
                invincible = 100;
                sprite_index = enemy_sprite_get(enem_id,"spinhurt");
                if hitpause > 1 {
                    state_timer = 0;
                } else {
                    image_index += 0.35;
                    if (state_timer == 2) {
                        kb_power *= 1.25;
                        if !is_free && kb_angle > 3.14159 && kb_angle < 3.14159*2 vsp = kb_power*sin(kb_angle);
                        else if !is_free vsp = -abs(kb_power*dsin(kb_angle));
                        else vsp = -kb_power*dsin(kb_angle);
                        hsp = kb_power*dcos(kb_angle);
                        if hsp != 0 spr_dir = -sign(hsp);
                    }
                    if hit_wall && !ingores_walls hsp = -hsp*.7;
                    if (state_timer % 8 == 0) {
                        var test = spawn_hit_fx(round(x), round(y - char_height/2),  fx_enemy_abyssdeath);
                        test.depth = depth + 1;
                    }
                    old_hsp = hsp;
                    old_vsp = vsp;
                    //hitstun--;
                    if !is_free vsp = -8 * knockback_adj;
                    if (place_meet_solid(x + (hsp), y)) hsp = -hsp;
                    if state_timer >= 45 {
                        sound_play(sound_get("sfx_enemy_hit"));
                        spawn_hit_fx(round(x), round(y - char_height/2), fx_enemy_abyssdeath2);
                        
                        destroyed = true;
                    }
                }
            break;
            case EN_EVENT.SET_ATTACK:
                with (obj_stage_main) {
                    switch (other.attack) {
                        case AT_JAB:
                            set_attack_value(AT_JAB, AG_CATEGORY, 0);
                            set_attack_value(AT_JAB, AG_SPRITE, sprite_get("enemy_1_jab"));
                            set_attack_value(AT_JAB, AG_NUM_WINDOWS, 10);
                            set_attack_value(AT_JAB, AG_HAS_LANDING_LAG, 1);
                            set_attack_value(AT_JAB, AG_LANDING_LAG, 4);
                            set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("enemy_1_jab_hurt"));
                            
                            //Rapid Jab
                            set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 12);
                            set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
                            set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
                            set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 10);
                            
                            set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4);
                            set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);
                            
                            set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 6);
                            set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
                            set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_JAB, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
                            set_window_value(AT_JAB, 3, AG_WINDOW_SFX_FRAME, 4);
                            
                            set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
                            set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
                            
                            set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
                            set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 5);
                            set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_JAB, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
                            set_window_value(AT_JAB, 5, AG_WINDOW_SFX_FRAME, 4);
                            
                            //Uppercut
                            set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 8);
                            set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
                            set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 5);
                            set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_JAB, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
                            set_window_value(AT_JAB, 6, AG_WINDOW_SFX_FRAME, 6);
                            
                            set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 8);
                            set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 8);
                            set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED, 3);
                            set_window_value(AT_JAB, 7, AG_WINDOW_VSPEED, -10);
                            set_window_value(AT_JAB, 7, AG_WINDOW_VSPEED_TYPE, 2);
                            set_window_value(AT_JAB, 7, AG_WINDOW_CUSTOM_GRAVITY, 1);
                            
                            set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 16);
                            set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 6);
                            set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 9);
                            set_window_value(AT_JAB, 8, AG_WINDOW_CUSTOM_GRAVITY, 1);
                            
                            set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 8);
                            set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 16);
                            set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 14);
                            set_window_value(AT_JAB, 9, AG_WINDOW_CUSTOM_GRAVITY, 1);
                            
                            set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 8);
                            set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 2);
                            set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 15);
                            set_window_value(AT_JAB, 10, AG_WINDOW_CUSTOM_GRAVITY, 1);
                            set_window_value(AT_JAB, 10, AG_WINDOW_HAS_WHIFFLAG, 1);
                            
                            
                            set_num_hitboxes(AT_JAB, 3);
                            
                            set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
                            set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
                            set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
                            set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 56);
                            set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -24);
                            set_hitbox_value(AT_JAB, 1, HG_WIDTH, 70);
                            set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 32);
                            set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
                            set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 1);
                            set_hitbox_value(AT_JAB, 1, HG_ANGLE, 80);
                            set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 2);
                            set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
                            set_hitbox_value(AT_JAB, 1, HG_HIT_LOCKOUT, 4);
                            set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
                            set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 0);
                            set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
                            set_hitbox_value(AT_JAB, 1, HG_IGNORES_PROJECTILES, 0);
                            set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
                            set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_MASK, -1);
                            
                            set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_JAB, 2, HG_WINDOW, 4);
                            set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
                            set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
                            set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 56);
                            set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -24);
                            set_hitbox_value(AT_JAB, 2, HG_WIDTH, 70);
                            set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 32);
                            set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
                            set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 1);
                            set_hitbox_value(AT_JAB, 2, HG_ANGLE, 80);
                            set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 2);
                            set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
                            set_hitbox_value(AT_JAB, 2, HG_HIT_LOCKOUT, 4);
                            set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
                            set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 0);
                            set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
                            set_hitbox_value(AT_JAB, 2, HG_IGNORES_PROJECTILES, 0);
                            set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
                            set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_MASK, -1);
                            
                            set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_JAB, 3, HG_WINDOW, 7);
                            set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 12);
                            set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 56);
                            set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -60);
                            set_hitbox_value(AT_JAB, 3, HG_WIDTH, 70);
                            set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 104);
                            set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
                            set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 8);
                            set_hitbox_value(AT_JAB, 3, HG_ANGLE, 80);
                            set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 7);
                            set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.7);
                            set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 10);
                            set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.8);
                            set_hitbox_value(AT_JAB, 3, HG_HIT_LOCKOUT, 12);
                            set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
                            set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 0);
                            set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
                            set_hitbox_value(AT_JAB, 3, HG_IGNORES_PROJECTILES, 0);
                            set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
                            set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_MASK, -1);
                        break;
                        case AT_FTILT:
                            set_attack_value(AT_FTILT, AG_CATEGORY, 0);
                            set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("enemy_1_ftilt"));
                            set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 6);
                            set_attack_value(AT_FTILT, AG_HAS_LANDING_LAG, 1);
                            set_attack_value(AT_FTILT, AG_LANDING_LAG, 4);
                            set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("enemy_1_ftilt_hurt"));
                            
                            set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
                            set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
                            set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 7);
                            
                            set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
                            set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
                            set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 2);
                            
                            set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 4);
                            set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
                            set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
                            set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
                            
                            set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 8);
                            set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
                            set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
                            set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
                            set_window_value(AT_FTILT, 4, AG_WINDOW_SFX_FRAME, 7);
                            
                            set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 4);
                            set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 7);
                            set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED, 2);
                            
                            set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 13);
                            set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 4);
                            set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 8);
                            set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
                            
                            set_num_hitboxes(AT_FTILT, 2);
                            
                            set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
                            set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 4);
                            set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
                            set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 48);
                            set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -16);
                            set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 48);
                            set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 32);
                            set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
                            set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 4);
                            set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 60);
                            set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
                            set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .1);
                            set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 5);
                            set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .1);
                            set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 12);
                            set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, -1);
                            set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 0);
                            set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
                            set_hitbox_value(AT_FTILT, 1, HG_IGNORES_PROJECTILES, 0);
                            set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
                            set_hitbox_value(AT_FTILT, 1, HG_PROJECTILE_MASK, -1);
                            
                            set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 5);
                            set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 4);
                            set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
                            set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 48);
                            set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -16);
                            set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 48);
                            set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 32);
                            set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
                            set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 6);
                            set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 60);
                            set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7);
                            set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .6);
                            set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 5);
                            set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .6);
                            set_hitbox_value(AT_FTILT, 2, HG_HIT_LOCKOUT, 12);
                            set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);
                            set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 0);
                            set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
                            set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
                            set_hitbox_value(AT_FTILT, 2, HG_PROJECTILE_MASK, -1);
                        break;
                        case AT_DATTACK:
                            set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
                            set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("enemy_1_dattack"));
                            set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
                            set_attack_value(AT_DATTACK, AG_HAS_LANDING_LAG, 1);
                            set_attack_value(AT_DATTACK, AG_LANDING_LAG, 4);
                            set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("enemy_1_dattack_hurt"));
                            
                            set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
                            set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
                            set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
                            set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 5);
                            
                            set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 4);
                            set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
                            set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 10);
                            
                            set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 19);
                            set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 5);
                            set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
                            set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
                            
                            set_num_hitboxes(AT_DATTACK, 2);
                            
                            set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
                            set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 6);
                            set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 32);
                            set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -14);
                            set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 80);
                            set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 28);
                            set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
                            set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
                            set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 75);
                            set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 8);
                            set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .6);
                            set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 7);
                            set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .5);
                            set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 6);
                            set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, -1);
                            set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 0);
                            set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
                            set_hitbox_value(AT_DATTACK, 1, HG_IGNORES_PROJECTILES, 0);
                            set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
                            set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_MASK, -1);
                        break;
                        case AT_NSPECIAL:
                            set_attack_value(AT_NSPECIAL, AG_CATEGORY, 0);
                            set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("enemy_1_nspecial"));
                            set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
                            set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 1);
                            set_attack_value(AT_NSPECIAL, AG_LANDING_LAG, 4);
                            set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("enemy_1_nspecial_hurt"));
                            
                            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 36);
                            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
                            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));
                            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);
                            
                            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 4);
                            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
                            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_boss_vortex_end"));
                            set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 2);
                            
                            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 36);
                            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
                            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
                            set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
                            
                            set_num_hitboxes(AT_NSPECIAL, 2);
                            
                            set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 8);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 44);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -26);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 92);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 54);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 12);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 65);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 9);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .9);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 8);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 67);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_laser_hit"));
                            set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);
                            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
                            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
                            
                            set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 42);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 44);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, 0);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 92);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 54);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 0);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 0);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 0);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 0);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_laser_hit"));
                            set_hitbox_value(AT_NSPECIAL, 2, HG_IGNORES_PROJECTILES, 0);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("enemy_1_nspecial_fx"));
                            set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
                            set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.17);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
                            set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
                        break;
                    }
                    break;
                }
            break;
        }
    break;
    
    case EN.FLEYE:
        switch (art_event) {
            case EN_EVENT.INIT:
                //Initializations Here
                
                //player_controller = 1;
                //debug = true;
                hitpoints_max = 15;
                
                collision_box = asset_get("ex_guy_hurt_box");
                mask_index =  collision_box; // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
                enemy_class = 1;
                can_be_grounded = false;
                ignores_walls = true;
                
                //AI Behavior
                able_to_crouch = false;
                able_to_shield = false;
                able_to_jump = false;
                able_to_dash = true;
                
                //NPC Varaibles
	            char_name = "Fleye";
	            show_healthbar = true;
	            team = 0;
	            patrol_type = 0;
                
                //Enemy Specific
                ai_fly_timer = 0;
                ai_fly_distance = 256;
                ai_fly_direction = 90;
                        
                ai_attack_frequency = 45; //How often to attack.
                ai_attack_cooldown = 0;
                ai_attack_timer = 0;
                ai_swoop_timer = 0;
                ai_swoop_position = [0, 0];
                
                //Animation Actions
                char_height = 40;
                char_arrow = sprite_get("char_arrow");
                anim_speed = .02;
                idle_anim_speed = .15;
                crouch_anim_speed = .1;
                walk_anim_speed = .25;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                
                //Movement Variables
                walk_speed = 6.5;
                walk_accel = 0.3;
                walk_turn_time = 6;
                initial_dash_time = 10;
                initial_dash_speed = 6.5;
                dash_speed = 8;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = .5;
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
                gravity_speed = 0;
                hitstun_grav = .5;
                knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                
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
                
                
                land_sound = asset_get("sfx_land_heavy");
                landing_lag_sound = asset_get("sfx_land_heavy");
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
                fx_enemy_abyssdeath = hit_fx_create(sprite_get("fx_enemy_abyssdeath"), 16);
                fx_enemy_abyssdeath2 = hit_fx_create(sprite_get("fx_enemy_abyssdeath2"), 16);
            break;
            case EN_EVENT.UPDATE:
                if (instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
                   if (art_state != PS_ATTACK_GROUND && art_state != PS_ATTACK_AIR)
                        if (ai_swoop_timer > 0)
                            ai_swoop_timer --;
                        
                    var swoop_cooling_down = ai_swoop_timer > 0;
                    if (!swoop_cooling_down) {
                        if (!committed) {
                            ai_fly_timer ++;
                            
                            if (ai_fly_timer % 60 == 0) {
                                ai_fly_direction = -256 + random_func(x % 24, 512, true);
                            }
                            
                            if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir = -1)) && art_state != PS_WALK_TURN {
                                next_state = PS_WALK_TURN;
                            }
                            
                            var fly_x = ai_target.x + ai_fly_direction;
                            var fly_y = ai_target.y - 192;
                            
                            hsp = clamp(hsp + walk_accel * sign(fly_x-x), -walk_speed, walk_speed);
                            vsp = clamp(vsp + walk_accel * sign(fly_y-y), -walk_speed, walk_speed);
                            
                            if (ai_attack_cooldown <= 0) {
                                ai_attack_timer ++;
                                var decision_random = random_func(x % 24, round(ai_attack_frequency), true);
                                if (decision_random == 0 && !committed) {
                                     if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir = -1)) {
                                        spr_dir = -spr_dir;
                                    }
                                    
                                    next_attack = AT_NAIR;
                                    ai_attack_cooldown = 60;
                                }
                                
                                if (x_dist < 176 && y_dist < 176) {
                                     if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir = -1)) {
                                        spr_dir = -spr_dir;
                                    }
                                    
                                    next_attack = AT_FAIR;
                                    ai_attack_cooldown = 120;
                                }
                            }
                            else {
                                if (art_state != PS_ATTACK_GROUND && art_state != PS_ATTACK_AIR)
                                    ai_attack_cooldown --;
                            }
                        }
                    }
                    else {
                        if (ai_swoop_timer <= 30 && !committed) {
                            if (x_dist < 160 && y_dist < 160) {
                                 if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir = -1)) {
                                    spr_dir = -spr_dir;
                                }
                                ai_swoop_timer = 0;
                                next_attack = AT_DAIR;
                                ai_attack_cooldown = 60;
                            }
                        }
                    }
                
                }
            break;
            case EN_EVENT.ATTACK_UPDATE:
                if (attack == AT_NAIR) {
                    if (window == 2 && window_timer == 1) {
                        var hitb = create_hitbox(AT_NAIR, 1, x - 8 * spr_dir, y - 32);
                        var hbox_dir = point_direction(hitb.x, hitb.y, ai_target.x, ai_target.y);
                        if not "hit_owner" in hitb hitb.hit_owner = id;
                        if not "team" in hitb hitb.team = team;
                        hitb.hsp = lengthdir_x(6, hbox_dir);
                        hitb.vsp = lengthdir_y(6, hbox_dir);
                    }
                }
                if (attack == AT_FAIR) {
                    if (window == 1 && window_timer == 17) {
                         if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir = -1)) {
                            spr_dir = -spr_dir;
                        }
                        ai_swoop_position = [ai_target.x, ai_target.y];
                        var swoop_dist = point_distance(x, y, ai_swoop_position[0], ai_swoop_position[1]);
                        var swoop_dir = point_direction(x, y, ai_swoop_position[0], ai_swoop_position[1]);
                        var swoop_vel = 19;
                        
                        hsp = lengthdir_x(swoop_vel, swoop_dir);
                        vsp = lengthdir_y(swoop_vel, swoop_dir);
                        ai_swoop_timer = 90;
                    }
                    if (window == 2) {
                        ai_swoop_timer --;
                        
                        if (ai_swoop_timer <= 60) {
                            window = 3;
                            window_timer = 0;
                            hsp = 0;
                            vsp = 0;
                            
                        }
                    }
                }
            break;
            case EN_EVENT.ANIMATION:
                switch (art_state) {
                    case PS_IDLE:
                    case PS_IDLE_AIR:
                    case PS_WALK:
                    case PS_DASH:
                    case PS_DASH_START:
                    case PS_DASH_STOP:
                        sprite_index = enemy_sprite_get(enem_id,"idle");
                        break;
                    case PS_WALK_TURN:
                    case PS_DASH_TURN:
                        sprite_index = enemy_sprite_get(enem_id,"walkturn");
                        break;
                }
            break;
            case EN_EVENT.DEATH:
                invincible = 100;
                sprite_index = enemy_sprite_get(enem_id,"spinhurt");
                if hitpause > 1 {
                    state_timer = 0;
                } else {
                    image_index += 0.35;
                    if (state_timer == 2) {
                        kb_power *= 1.25;
                        if !is_free && kb_angle > 3.14159 && kb_angle < 3.14159*2 vsp = kb_power*sin(kb_angle);
                        else if !is_free vsp = -abs(kb_power*dsin(kb_angle));
                        else vsp = -kb_power*dsin(kb_angle);
                        hsp = kb_power*dcos(kb_angle);
                        if hsp != 0 spr_dir = -sign(hsp);
                    }
                    if hit_wall && !ingores_walls hsp = -hsp*.7;
                    if (state_timer % 8 == 0) {
                        var test = spawn_hit_fx(round(x), round(y - char_height/2),  fx_enemy_abyssdeath);
                        test.depth = depth + 1;
                    }
                    old_hsp = hsp;
                    old_vsp = vsp;
                    //hitstun--;
                    if !is_free vsp = -8 * knockback_adj;
                    if (place_meet_solid(x + (hsp), y) && enemy_class == 0) hsp = -hsp;
                    if state_timer >= 45 {
                        sound_play(sound_get("sfx_enemy_hit"));
                        spawn_hit_fx(round(x), round(y - char_height/2), fx_enemy_abyssdeath2);
                        destroyed = true;
                    }
                }
            break;
            case EN_EVENT.SET_ATTACK:
                with (obj_stage_main) {
                    switch (other.attack) {
                        case AT_NAIR:
                            set_attack_value(AT_NAIR, AG_CATEGORY, 1);
                            set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("enemy_2_nair"));
                            set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
                            set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
                            set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
                            set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("enemy_2_nair_hurt"));
                            
                            set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
                            set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
                            set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_abyss_hazard_burst"));
                            set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 6);
                            set_window_value(AT_NAIR, 1, AG_WINDOW_HSPEED_TYPE, 2);
                            set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
                            
                            set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
                            set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
                            
                            set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 15);
                            set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
                            set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
                            
                            set_num_hitboxes(AT_NAIR, 1);
                            
                            set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 2);
                            set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 0);
                            set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 128);
                            set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -8);
                            set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -32);
                            set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 24);
                            set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 24);
                            set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
                            set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
                            set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 55);
                            set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
                            set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .3);
                            set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
                            set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .2);
                            set_hitbox_value(AT_NAIR, 1, HG_HIT_LOCKOUT, 6);
                            set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);
                            set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 0);
                            set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
                            set_hitbox_value(AT_NAIR, 1, HG_IGNORES_PROJECTILES, 0);
                            set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("enemy_2_proj"));
                            set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_MASK, -1);
                            set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
                            set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
                            set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
                            set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
                            set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
                        break;
                        
                        case AT_FAIR:
                            set_attack_value(AT_FAIR, AG_CATEGORY, 1);
                            set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("enemy_2_fair"));
                            set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("enemy_2_fair_hurt"));
                            
                            set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
                            set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 18);
                            set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
                            set_window_value(AT_FAIR, 1, AG_WINDOW_HSPEED, -2);
                            set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
                            set_window_value(AT_FAIR, 1, AG_WINDOW_HSPEED_TYPE, 2);
                            set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
                            set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial"));
                            set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 16);
                            
                            set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 9);
                            set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 5);
                            set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
                            set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
                            set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
                            set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.6);
                            
                            set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 15);
                            set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
                            set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
                            set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
                            set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
                            set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
                            
                            
                            set_num_hitboxes(AT_FAIR, 1);
                            
                            set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
                            set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
                            set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 5);
                            set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, -6);
                            set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -15);
                            set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 84);
                            set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 82);
                            set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
                            set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 50);
                            set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
                            set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
                            set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
                            set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
                            set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.5);
                            set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
                            set_hitbox_value(AT_FAIR, 1, HG_IGNORES_PROJECTILES, 1);
                            set_hitbox_value(AT_FAIR, 1, HG_HIT_LOCKOUT, 15);
                            set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);
                            set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
                            set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_MASK, -1);
    
                        break;
                        
                        case AT_DAIR:
                            set_attack_value(AT_DAIR, AG_CATEGORY, 1);
                            set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("enemy_2_dair"));
                            set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("enemy_2_dair_hurt"));
                            set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
                            
                            set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 25);
                            set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
                            set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
                            set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 13);
                            
                            set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 5);
                            set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
                            set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 5);
                            set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
                            
                            set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 30);
                            set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
                            set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
                            set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
                            
                            
                            set_num_hitboxes(AT_DAIR, 1);
                            
                            set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
                            set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 1);
                            set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 55);
                            set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 5);
                            set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 116);
                            set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 66);
                            set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
                            set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 6);
                            set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 64);
                            set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
                            set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.4);
                            set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
                            set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.3);
                            set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
                            set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 3);
                            set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
                            set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_MASK, -1);
    
    
                        break;
                    }
                break;
            }
        }
    break;
    
    case EN.ROCKO:
        switch (art_event) {
            case EN_EVENT.INIT:
                //Initializations Here
                
                sprite_name = "rocko";
                //player_controller = 1;
                hitpoints_max = 100;
                
                collision_box = sprite_get("enemy_3_hurtbox");
                mask_index =  collision_box; // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
                
                is_boss = 1;
                char_name = "Rocko";
                
                //AI Behavior
                ai_attack_timer = 0;
                ai_move_timer = 0;
                ai_jump_timer = 0;
                ai_moving_right = false;
                ai_moving_left = false;
                ai_decision_time = 10;
                
                //AI Behavior Variables
                //Movement
                ai_range_low = 32; //The preferred minimum range
                ai_range_far = 160; //The preferred maximum range
                ai_move_frequency = 15;
                ai_move_cooldown = 0;
                ai_move_cooldown_full = 0;
                ai_stop_timer = 0;
                ai_stop_full = 0;
                
                //Attacking
                ai_attack_frequency = 20; //How often to attack.
                ai_attack_cooldown = 0;
                ai_attack_counter = 0;
                
                grabbedid = noone;
                ai_jump_type = 0; //0 = jump away; 1 = jump towards
                
                able_to_crouch = false;
                able_to_shield = false;
                able_to_jump = true;
                able_to_dash = false;
                        
                //Animation Actions
                char_height = 64;
                char_arrow = sprite_get("char_arrow");
                anim_speed = .02;
                idle_anim_speed = .3;
                crouch_anim_speed = .1;
                walk_anim_speed = .15;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                
                //Movement Variables
                walk_speed = 2.25;
                walk_accel = 0.9;
                walk_turn_time = 12;
                initial_dash_time = 10;
                initial_dash_speed = 6.5;
                dash_speed = 6;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = .5;
                moonwalk_accel = 1.4;
                
                jump_start_time = 10;
                jump_speed = 12;
                short_hop_speed = 8;
                djump_speed = 10;
                leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
                max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
                air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
                jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
                air_accel = 1;
                prat_fall_accel = 1; //multiplier of air_accel while in pratfall
                air_friction = .03;
                max_djumps = 1;
                double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
                
                max_fall = 11; //maximum fall speed without fastfalling
                fast_fall = 11; //fast fall speed
                gravity_speed = .6;
                hitstun_grav = .63;
                knockback_adj = 0.7; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                
                land_time = 10; //normal landing frames
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
                
                
                land_sound = asset_get("sfx_land_heavy");
                landing_lag_sound = asset_get("sfx_land_heavy");
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
                fx_enemy_abyssdeath = hit_fx_create(sprite_get("fx_enemy_abyssdeath"), 16);
                fx_enemy_abyssdeath2 = hit_fx_create(sprite_get("fx_enemy_abyssdeath2"), 16);
            break;
            case EN_EVENT.UPDATE:
                //AI Routine
                if (instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
                    right_down = ai_moving_right;
                    left_down = ai_moving_left;
                    jump_down = art_state == PS_JUMPSQUAT;
                    left_hard_pressed = false;
                    right_hard_pressed = false;
                    down_hard_pressed = false;
                    var decision_random = 0;
                    
                    //This enemy can't go off ledges
                    if (!is_free && hsp != 0) {
                        var off_r = !position_meet(bbox_right + 2, bbox_bottom + 4);
                        var off_l = !position_meet(bbox_left - 2, bbox_bottom + 4);
                        
                        if ((off_r && hsp > 0) || (off_l && hsp < 0)) {
                            x -= hsp;
                        }
                    }
                    
                    //Moving
                    ai_move_timer ++;
                    
                    if (ai_move_timer % ai_move_frequency == 0 && !committed) {
                        if (x_dist >= ai_range_low) {
                            if (ai_stop_timer <= ai_stop_full) {
                                if (ai_target.x > x) {
                                    ai_moving_right = true;
                                    ai_moving_left = false;
                                } 
                                if (ai_target.x < x) {
                                    ai_moving_right = false;
                                    ai_moving_left = true;
                                } 
                                ai_stop_timer ++;
                            }
                            else {
                                ai_move_cooldown ++;
                                if (ai_move_cooldown == 1) {
                                    ai_move_cooldown_full = 5 + random_func(x % 24, 25, true);
                                }
                                if (ai_move_cooldown >= ai_move_cooldown_full) {
                                    ai_stop_timer = 0;
                                    ai_move_cooldown = 0;
                                    ai_stop_full = 60 + random_func(x % 24, 240, true);
                                }
                                
                                ai_moving_right = false;
                                ai_moving_left = false;
                                if (ai_target.x > x && spr_dir == -1) {
                                    right_down = true;
                                    left_down = false; 
                                }
                                if (ai_target.x < x && spr_dir == 1) {
                                    right_down = false;
                                    left_down = true; 
                                }
                            }
                        }
                        else {
                            ai_moving_right = false;
                            ai_moving_left = false;
                            if (ai_target.x > x && spr_dir == -1) {
                                right_down = true;
                                left_down = false; 
                            }
                            if (ai_target.x < x && spr_dir == 1) {
                                right_down = false;
                                left_down = true; 
                            }
                        }
                    }
                    
                    //Attacking
                    if (ai_attack_cooldown <= 0) {
                        ai_attack_timer ++;
                        decision_random = random_func(x % 24, round(ai_attack_frequency), true);
                        if (decision_random == 0 && !committed) {
                            //The jab
                            if (x_dist <= 144 && y_dist <= 64 && !is_free) {
                                    next_attack = AT_JAB;
                                
                                if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir = -1)) {
                                    spr_dir = -spr_dir;
                                }
                                ai_attack_cooldown = 30;
                            }
                            
                            //The grab
                            if (x_dist > 64 && x_dist <= 128 && y_dist <= 64 && !is_free) {
                                next_attack = AT_FTILT;
                                
                                if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir = -1)) {
                                    spr_dir = -spr_dir;
                                }
                                ai_attack_cooldown = 50;
                            }
                            
                            decision_random = random_func(x % 24, round(ai_attack_frequency * 4), true);
                            if (decision_random == 0 && !is_free) {
                                if (x_dist > 320 && x_dist <= 400) {
                                    next_attack = AT_UTILT;
                                    ai_jump_type = 1;
                                    if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir = -1)) {
                                        spr_dir = -spr_dir;
                                    }
                                    ai_attack_cooldown = 50;
                                }
                                if (x_dist <= 112) {
                                    next_attack = AT_UTILT;
                                    ai_jump_type = 0;
                                    if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir = -1)) {
                                        spr_dir = -spr_dir;
                                    }
                                    ai_attack_cooldown = 50;
                                }
                            }
                        }
                    }
                    else {
                        if (art_state != PS_ATTACK_GROUND && art_state != PS_ATTACK_AIR)
                            ai_attack_cooldown --;
                    }
                
                }
                
                //Grabbed Player
                if(instance_exists(grabbedid)){
                	grabbedid.ungrab++;
                	if(grabbedid.ungrab == 24){
                		grabbedid.invincible = false; //Feel free to remove this line if the grab does not make the opponent invincible.
                		grabbedid.state = PS_TUMBLE;
                		grabbedid.ungrab = 0;
                		grabbedid = noone;
                	}
                }
            break;
            case EN_EVENT.ANIMATION:
                switch (art_state) {
                    case PS_ATTACK_AIR:
                    case PS_ATTACK_GROUND:
                        if (attack == AT_UTILT && window == 2) {
                            image_index = 2 + ease_linear(0,4,floor(vsp + 16), 16*2);
                        }
                    break;
                    case PS_WALK: //Because the animation event comes after the state machine, we can override the state here.
                        if (state_timer == 1)
                            image_index = 0;
                        var sound_time1 = floor(2 / walk_anim_speed);
                        var sound_time2 = floor(9 / walk_anim_speed);
                        var sound_mod = floor(14 / walk_anim_speed);
                        
                        if (state_timer % sound_mod == sound_time1 || state_timer % sound_mod == sound_time2)
                            sound_play(asset_get("sfx_kragg_rock_shatter"));
                        
                        if (image_index >= 2 && image_index < 7) || (image_index >= 9 && image_index < 14) {
                            hsp = 0;
                        }
                        else {
                            hsp = clamp(hsp + walk_accel*spr_dir, -walk_speed, walk_speed);
                        }
                            
                        if (floor(image_index) != 6 && floor(image_index) != 12) {
                            if (!is_free)
                                next_state = PS_WALK;
                        }
                    break;
                    case PS_WALK_TURN:
                        hsp = 0;
                    break;
                }
            break;
            case EN_EVENT.ATTACK_UPDATE:
                if (attack == AT_JAB) {
                     if (window < 3) {
                        super_armor = true;
                    }
                }
                if (attack == AT_FTILT) {
                        
                    with (pHitBox) {
                        if "hit_owner" in self && hit_owner == other.id {
                            if attack == AT_FTILT && hbox_num == 1 {
                                var grab = instance_place(x, y, oPlayer);
                                if (grab != noone) {
                                    if (!grab.super_armor && !grab.invincible) {
                                        other.grabbedid = grab;
                            	        other.grabbedid.ungrab = 0;
                                    }
                                }
                            }
                        }
                    }
                        
                    if (window < 3) {
                        super_armor = true;
                        
                        if (instance_exists(grabbedid)) {
                            window = 4;
                            window_timer = 0;
                        }
                    }
                    
                    if (window == 3 && !instance_exists(grabbedid)) {
                        if (window_timer == 34) {
                            window = 7;
                            window_timer = 0;
                        }
                    }
                    
                    if (window == 4 && instance_exists(grabbedid)) {
                        var window_mult = 3 / 30;
                        grabbedid.depth = depth + 1;
                        
                        if (floor((window_timer - 1) * window_mult) == 0) {
                            grabbedid.x = x + spr_dir * 88;
                            grabbedid.y = y - 80;
                            grabbedid.spr_dir = -spr_dir;
                        }
                        
                       if (floor((window_timer - 1) * window_mult) == 1) {
                            grabbedid.x = x + spr_dir * 86;
                            grabbedid.y = y - 78;
                            grabbedid.spr_dir = -spr_dir;
                        }
                        
                        if (floor((window_timer - 1) * window_mult) == 2) {
                            grabbedid.x = x + spr_dir * 64;
                            grabbedid.y = y - 78;
                            grabbedid.spr_dir = -spr_dir;
                        }
                    }
                    if (window == 5 && instance_exists(grabbedid)) {
                        var window_mult = 4 / 24;
                        grabbedid.depth = depth - 1;
                        
                        if (floor((window_timer - 1) * window_mult) == 0) {
                            grabbedid.x = x - spr_dir * 32;
                            grabbedid.y = y - 72;
                            grabbedid.spr_dir = spr_dir;
                        }
                        
                        if (floor((window_timer - 1) * window_mult) == 1) {
                            grabbedid.x = x - spr_dir * 96;
                            grabbedid.y = y - 64;
                            grabbedid.spr_dir = spr_dir;
                        }
                        
                        if (floor((window_timer - 1) * window_mult) == 2) {
                            grabbedid.x = x - spr_dir * 100;
                            grabbedid.y = y - 62;
                            grabbedid.spr_dir = spr_dir;
                        }
                        
                        if (floor((window_timer - 1) * window_mult) == 3) {
                            grabbedid.x = x - spr_dir * 102;
                            grabbedid.y = y - 60;
                            grabbedid.spr_dir = spr_dir;
                        }
                    }
                    
                    if (instance_exists(grabbedid)) {
                        grabbedid.ungrab = 0;
                        grabbedid.invincible = true;
                        grabbedid.wrap_time = 6000;
                        grabbedid.state = PS_WRAPPED;
                    }
                    
                    if(window == 6 && instance_exists(grabbedid)) { 
                        if (window_timer == 1) {
                            var grab_kb_value = 10;
                            var grab_kb_scale = 1;
                            var grab_kb_ang = 45;
                            var grab_hitstun_value = 25;
                            var grab_hitstun_scale = 0.8;
                            var grab_damage = get_player_damage(grabbedid.player);
                            
                            var grab_kb_power = grab_kb_value+grab_damage*0.12*grab_kb_scale*grabbedid.knockback_adj;
                            var grab_hitstun = grab_kb_value*4*((grabbedid.knockback_adj-1)*0.6+1)+grab_damage*0.12*grab_kb_scale*4*0.65*grabbedid.knockback_adj;
                            
                            if grab_kb_ang > 3.14159 && grab_kb_ang < 3.14159*2 
                                grabbedid.vsp = grab_kb_power*sin(grab_kb_ang);
                            else if !is_free grabbedid.vsp = -abs(grab_kb_power*dsin(grab_kb_ang));
                            else grabbedid.vsp = -grab_kb_power*dsin(grab_kb_ang);
                            grabbedid.hsp = grab_kb_power*dcos(grab_kb_ang)* spr_dir;
                            if grabbedid.hsp != 0 grabbedid.spr_dir = sign(grabbedid.hsp);
                            
                            grabbedid.hitstun = grab_hitstun;
                            grabbedid.hitstun_full = grab_hitstun;
                            grabbedid.ungrab = 0;
                            grabbedid.state = PS_HITSTUN;
                            grabbedid.x = x + spr_dir * 96;
                            grabbedid.y = y - 112;
                            grabbedid.invincible = false;
                            grabbedid = noone;
                        }
                    }
                }
                if (attack == AT_UTILT) {
                     if (window < 3) {
                        super_armor = true;
                    }
                    
                    if (window == 1) {
                        if (window_timer == 17) {
                            if (ai_jump_type == 0) {
                                vsp = -16;
                                hsp = -12 * spr_dir;
                            }
                            else {
                                vsp = -16;
                                hsp = arc_calc_x_speed(x, y, ai_target.x, ai_target.y, vsp, gravity_speed);
                            }
                        }
                    }
                }
            break;
            case EN_EVENT.DEATH:
                invincible = 100;
                sprite_index = enemy_sprite_get(enem_id,"spinhurt");
                if hitpause > 1 {
                    state_timer = 0;
                } else {
                    image_index += 0.35;
                    if (state_timer == 2) {
                        kb_power *= 1.25;
                        if !is_free && kb_angle > 3.14159 && kb_angle < 3.14159*2 vsp = kb_power*sin(kb_angle);
                        else if !is_free vsp = -abs(kb_power*dsin(kb_angle));
                        else vsp = -kb_power*dsin(kb_angle);
                        hsp = kb_power*dcos(kb_angle);
                        if hsp != 0 spr_dir = -sign(hsp);
                    }
                    if hit_wall && !ingores_walls hsp = -hsp*.7;
                    if (state_timer % 8 == 0) {
                        var test = spawn_hit_fx(round(x), round(y - char_height/2),  fx_enemy_abyssdeath);
                        test.depth = depth + 1;
                    }
                    old_hsp = hsp;
                    old_vsp = vsp;
                    //hitstun--;
                    if !is_free vsp = -8 * knockback_adj;
                    if (place_meet_solid(x + (hsp), y)) hsp = -hsp;
                    if state_timer >= 45 {
                        sound_play(sound_get("sfx_enemy_hit"));
                        spawn_hit_fx(round(x), round(y - char_height/2), fx_enemy_abyssdeath2);
                        destroyed = true;
                    }
                }
            break;
            case EN_EVENT.SET_ATTACK:
                with (obj_stage_main) {
                    switch (other.attack) {
                        case AT_JAB:
                            set_attack_value(AT_JAB, AG_SPRITE, sprite_get("enemy_3_jab"));
                            set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("enemy_3_jab_hurt"));
                            
                            set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
                            set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 18);
                            set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 4);
                            set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
                            set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 16);
                            
                            set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 5);
                            set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 4);
                            set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 6);
                            set_window_value(AT_JAB, 2, AG_WINDOW_HITPAUSE_FRAME, 5);
                            
                            set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 45);
                            set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 9);
                            set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 5);
                            set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
                            
                            
                            set_num_hitboxes(AT_JAB, 1);
                            set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
                            set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 6);
                            set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 124);
                            set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -63);
                            set_hitbox_value(AT_JAB, 1, HG_WIDTH, 96);
                            set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 60);
                            set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
                            set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
                            set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 10);
                            set_hitbox_value(AT_JAB, 1, HG_ANGLE, 50);
                            set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 10);
                            set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 1);
                            set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 20);
                            set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 1);
                            set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 197);
                            set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
                            set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
                            set_hitbox_value(AT_JAB, 1, HG_EXTRA_CAMERA_SHAKE, 1);
                            set_hitbox_value(AT_JAB, 1, HG_HIT_LOCKOUT, 6);
                            set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
                        break;
                        case AT_FTILT:
                            set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("enemy_3_ftilt"));
                            set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("enemy_3_ftilt_hurt"));
                            set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 6);
                            
                            set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 24);
                            set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 6);
                            set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pull"));
                            set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 22);
                            
                            set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
                            set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 6);
                            set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 6);
                            set_window_value(AT_FTILT, 2, AG_WINDOW_HITPAUSE_FRAME, 5);
                            
                            set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 35);
                            set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
                            set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
                            set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
                            
                            set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 30);
                            set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
                            set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 12);
                            set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_land"));
                            
                            set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 24);
                            set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 4);
                            set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 15);
                            set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_FTILT, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
                            set_window_value(AT_FTILT, 5, AG_WINDOW_SFX_FRAME, 10);
                            
                            set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 42);
                            set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 6);
                            set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 19);
                            
                            set_num_hitboxes(AT_FTILT, 1);
                            set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
                            set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 4);
                            set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 110);
                            set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -50);
                            set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 72);
                            set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 76);
                            set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
                            set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
                            set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
                            set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
                            set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
                            set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 305);
                            set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
                            set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -48);
                            set_hitbox_value(AT_FTILT, 1, HG_IGNORES_PROJECTILES, 1);
                            set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 1);
                        break;
                        case AT_UTILT:
                            set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("enemy_3_utilt"));
                            set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("enemy_3_utilt_hurt"));
                            set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 6);
                            set_attack_value(AT_UTILT, AG_OFF_LEDGE, 1);
                            
                            set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 24);
                            set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
                            set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pull"));
                            set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 22);
                            set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
                            
                            set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 8);
                            set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
                            set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
                            set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
                            set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.03);
                            set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
                            
                            set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 35);
                            set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
                            set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));
                            set_window_value(AT_UTILT, 3, AG_WINDOW_SFX_FRAME, 1);
                            set_window_value(AT_UTILT, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
                            
                            set_num_hitboxes(AT_UTILT, 2);
                            set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 3);
                            set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
                            set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 0);
                            set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -23);
                            set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 182);
                            set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 48);
                            set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
                            set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
                            set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 10);
                            set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 40);
                            set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
                            set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0.9);
                            set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 10);
                            set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0.8);
                            set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 193);
                            set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_kragg_spike"));
                            set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 3);
                            set_hitbox_value(AT_UTILT, 1, HG_EXTRA_CAMERA_SHAKE, 1);
                            set_hitbox_value(AT_UTILT, 1, HG_IGNORES_PROJECTILES, 1);
                            set_hitbox_value(AT_UTILT, 1, HG_HIT_LOCKOUT, 4);
                            set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, -1);
                            
                            set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
                            set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 4);
                            set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 0);
                            set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -32);
                            set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 144);
                            set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 64);
                            set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2);
                            set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
                            set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 8);
                            set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 60);
                            set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
                            set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.9);
                            set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 8);
                            set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.8);
                            set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 193);
                            set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_kragg_spike"));
                            set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 3);
                            set_hitbox_value(AT_UTILT, 2, HG_EXTRA_CAMERA_SHAKE, 1);
                            set_hitbox_value(AT_UTILT, 2, HG_IGNORES_PROJECTILES, 1);
                            set_hitbox_value(AT_UTILT, 2, HG_HIT_LOCKOUT, 4);
                            set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, -1);
                        break;
                    }
                }
            break;
        }
    break;
    
    case EN.LSBIRD:
    	switch(art_event) {
    		case EN_EVENT.INIT:
                sprite_name = "laserbird";
    			hitpoints_max = 35;
                
                collision_box = asset_get("ex_guy_hurt_box");
                mask_index =  collision_box; // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
                enemy_class = 0;
                can_be_grounded = true;
                ignores_walls = false;
                
                //AI Behavior
                able_to_crouch = false;
                able_to_shield = false;
                able_to_jump = true;
                able_to_dash = true;
                        
                ai_attack_frequency = 45; //How often to attack.
                ai_attack_cooldown = 0;
                ai_attack_timer = 0;
                
                //NPC Varaibles
	            char_name = "Laser Bird";
	            show_healthbar = true;
	            team = 0;
	            patrol_type = 0;
                
                //Animation Actions
                char_height = 30;
                char_arrow = sprite_get("char_arrow");
                anim_speed = .02;
                idle_anim_speed = .3;
                crouch_anim_speed = .1;
                walk_anim_speed = .25;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                
                //Movement Variables
                walk_speed = 7;
                walk_accel = 0.3;
                walk_turn_time = 3;
                initial_dash_time = 10;
                initial_dash_speed = 5.5;
                dash_speed = 5;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = .5;
                moonwalk_accel = 1.4;
                
                jump_start_time = 6;
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
                
                max_fall = 8; //maximum fall speed without fastfalling
                fast_fall = 10; //fast fall speed
                gravity_speed = .5;
                hitstun_grav = .5;
                knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
                
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
                
                
                land_sound = asset_get("sfx_land");
                landing_lag_sound = asset_get("sfx_land");
                waveland_sound = asset_get("sfx_waveland_wra");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
                fx_enemy_abyssdeath = hit_fx_create(sprite_get("fx_enemy_abyssdeath"), 16);
                fx_enemy_abyssdeath2 = hit_fx_create(sprite_get("fx_enemy_abyssdeath2"), 16);
            break;
            case EN_EVENT.UPDATE:
                //AI Routine
                if (!committed && instance_exists(ai_target) && player_controller == 0 && hitstun <= 0) {
                    var t_dist = point_distance(x, y, ai_target.x, ai_target.y);
                    var t_xd = abs(ai_target.x - x);
                    var t_yd = abs(ai_target.y - y);
                    
                    // right_down = ai_moving_right;
                    // left_down = ai_moving_left;
                    left_hard_pressed = false;
                    right_hard_pressed = false;
                    down_hard_pressed = false;
                    
                    var to_player = sign(ai_target.x - x);
                    if (t_yd < 144) {
	                    if(to_player == -1) {
	                    	if(spr_dir == 1) {
	                    		left_down = true;
	                    	}
	                    }
	                    else if(spr_dir == -1) {
	                    	right_down = true;
	                    }
                    }
                    
                    if(!committed && to_player == spr_dir && t_xd < 450) {                    
                    	if (!is_free) {
                    		if(art_state == PS_IDLE) {
	                        	jump_down = true;
                    		}
                    		if(art_state == PS_JUMPSQUAT && t_xd < 270)
                    		{
		                    	right_hard_pressed = to_player == -1;
		                    	left_hard_pressed = to_player == 1;
                    		}
	                    }
	                    else {
	                    	if (ai_target.free || state_timer > 4) {
	                    		next_attack = AT_NSPECIAL_2;
	                    	}
	                    }
                    }
                }
            break;
            case EN_EVENT.ANIMATION:
				if(art_state == PS_FIRST_JUMP && abs(hsp) > 1 && sign(hsp) != spr_dir) {
					sprite_index = enemy_sprite_get(enem_id,"jump_back");
				}
				if(art_state == PS_ATTACK_AIR && abs(hsp) > 1 && sign(hsp) != spr_dir) {
					sprite_index = enemy_sprite_get(enem_id,"nspecial_back");
				}
            break;
            case EN_EVENT.SET_ATTACK:
            	with(obj_stage_main)
            	{
            		switch(other.attack) {
                        case AT_NSPECIAL_2:
                            set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 0);
                            set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("enemy_4_nspecial"));
                            set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
                            set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 1);
                            set_attack_value(AT_NSPECIAL_2, AG_LANDING_LAG, 4);
                            set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("enemy_4_nspecial_hurt"));
                            
                            set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 14);
                            set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
                            
                            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
                            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
                            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);
                            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));
                            set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 0);
                            
                            set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 21);
                            set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);
                            
                            set_num_hitboxes(AT_NSPECIAL_2, 2);
                            
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 2);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 100);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 44);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -20);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 48);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 10);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 2);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 1);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 3);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 361);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 0.5);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 20);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 0);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("enemy_bird_laser"));
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 20);
                            set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
            		}
            	}
        	break;
        	case EN_EVENT.ATTACK_UPDATE:
        		if(vsp > 0)
        		{
        			vsp = fast_fall;
        		}
    		break;
            case EN_EVENT.DEATH:
	            invincible = 100;
	                sprite_index = enemy_sprite_get(enem_id,"spinhurt");
	                if hitpause > 1 {
	                    state_timer = 0;
	                } else {
	                    image_index += 0.35;
	                    if (state_timer == 2) {
	                        kb_power *= 1.25;
	                        if !is_free && kb_angle > 3.14159 && kb_angle < 3.14159*2 vsp = kb_power*sin(kb_angle);
	                        else if !is_free vsp = -abs(kb_power*dsin(kb_angle));
	                        else vsp = -kb_power*dsin(kb_angle);
	                        hsp = kb_power*dcos(kb_angle);
	                        if hsp != 0 spr_dir = -sign(hsp);
	                    }
	                    if hit_wall && !ingores_walls hsp = -hsp*.7;
	                    if (state_timer % 8 == 0) {
	                        var test = spawn_hit_fx(round(x), round(y - char_height/2),  fx_enemy_abyssdeath);
	                        test.depth = depth + 1;
	                    }
	                    old_hsp = hsp;
	                    old_vsp = vsp;
	                    //hitstun--;
	                    if !is_free vsp = -8 * knockback_adj;
	                    if (place_meet_solid(x + (hsp), y)) hsp = -hsp;
	                    if state_timer >= 45 {
	                        sound_play(sound_get("sfx_enemy_hit"));
	                        spawn_hit_fx(round(x), round(y - char_height/2), fx_enemy_abyssdeath2);
	                        
	                        destroyed = true;
	                    }
	                }
            	// destroyed = true;
        	break;
    	}
    break;
    case EN.ESTALK:
    	switch(art_event) {
    		case EN_EVENT.INIT:
    			//Initializations Here
                
                sprite_name = "estalk";
                //player_controller = 1;
                hitpoints_max = 35;
                
                collision_box = asset_get("ex_guy_hurt_box");
                mask_index =  collision_box; // Collision Mask
                colis_width = bbox_right - bbox_left;
                colis_height = bbox_bottom - bbox_top;
                
                //AI Behavior
                ai_attack_timer = 0;
                ai_move_timer = 0;
                ai_jump_timer = 0;
                ai_moving_right = false;
                ai_moving_left = false;
                ai_decision_time = 10;
                
                //NPC Varaibles
	            char_name = "Abyssal Stalk";
	            show_healthbar = true;
	            team = 0;
	            patrol_type = 0;
                
                //AI Behavior Variables
                //Movement
                ai_range_low = 32; //The preferred minimum range
                ai_range_far = 200; //The preferred maximum range
                ai_move_frequency = 0;
                
                //Jumping
                ai_jump_back_frequency = 0; //How often the AI should jump back randomly.
                ai_jump_up_frequency = 0; //How often the AI should jump up randomly.
                ai_jump_fwd_frequency = 0; //How often the AI should jump forwards randomly.
                ai_jump_range_low = 0; //The preferred minimum range to jump.
                
                //Attacking
                attacks = [AT_NTHROW];
                
                ai_attack_frequency = 20; //How often to attack.
                ai_attack_cooldown = 0;
                ai_attack_counter = 0;
                
                able_to_crouch = false;
                able_to_shield = false;
                able_to_jump = false;
                able_to_dash = false;
                
                //Enemy Specific
                ai_hit_absorption = 0;
                ai_hit_percent = 0;
                        
                //Animation Actions
                char_height = 40;
                char_arrow = sprite_get("char_arrow");
                anim_speed = .02;
                idle_anim_speed = .15;
                crouch_anim_speed = .1;
                walk_anim_speed = .25;
                dash_anim_speed = .2;
                pratfall_anim_speed = .25;
                full_time = 20;
                anim_type = 0; //0 is cycle; 1 is once per state
                
                //Movement Variables
                walk_speed = 4.25;
                walk_accel = 1;
                walk_turn_time = 6;
                initial_dash_time = 10;
                initial_dash_speed = 6.5;
                dash_speed = 6;
                dash_turn_time = 10;
                dash_turn_accel = 2;
                dash_stop_time = 4;
                dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
                ground_friction = .5;
                moonwalk_accel = 1.4;
                
                jump_start_time = 5;
                jump_speed = 12;
                short_hop_speed = 8;
                djump_speed = 10;
                leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
                max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
                air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
                jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
                air_accel = 1;
                prat_fall_accel = 1; //multiplier of air_accel while in pratfall
                air_friction = .03;
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
                
                
                //roll animation frames
                roll_forward_startup_frames = 2;
                roll_forward_active_frames = 2;
                roll_forward_recovery_frames = 2;
                roll_back_startup_frames = 2;
                roll_back_active_frames = 2;
                roll_back_recovery_frames = 2;
                roll_forward_max = 9; //roll speed
                roll_backward_max = 9;
                
                
                land_sound = asset_get("sfx_land_heavy");
                landing_lag_sound = asset_get("sfx_land_heavy");
                waveland_sound = asset_get("sfx_waveland_syl");
                jump_sound = asset_get("sfx_jumpground");
                djump_sound = asset_get("sfx_jumpair");
                air_dodge_sound = asset_get("sfx_quick_dodge");
                death_sound = asset_get("sfx_death2");
                fx_enemy_abyssdeath = hit_fx_create(sprite_get("fx_enemy_abyssdeath"), 16);
                fx_enemy_abyssdeath2 = hit_fx_create(sprite_get("fx_enemy_abyssdeath2"), 16);
    		break;
    		case EN_EVENT.ANIMATION:
    		break;
    		case EN_EVENT.PRE_DRAW:
    		break;
    		case EN_EVENT.POST_DRAW:
    		break;
    		case EN_EVENT.UPDATE:
    		break;
    		case EN_EVENT.DEATH:
    		break;
    		case EN_EVENT.SET_ATTACK:
    		break;
    		case EN_EVENT.ATTACK_UPDATE:
    		break;
    		case EN_EVENT.GOT_HIT:
    		break;
    		case EN_EVENT.GOT_PARRIED:
    		break;
    		case EN_EVENT.HIT_PLAYER:
    		break;
    		case EN_EVENT.PARRY:
    		break;
    	}
    break;
    case EN.HOP:
    	switch(art_event) {
    		case EN_EVENT.INIT:
    		//Initializations Here
                
            sprite_name = "estalk";
            //player_controller = 1;
            hitpoints_max = 35;
            
            collision_box = asset_get("ex_guy_hurt_box");
            mask_index =  collision_box; // Collision Mask
            colis_width = bbox_right - bbox_left;
            colis_height = bbox_bottom - bbox_top;
            
            //AI Behavior
            ai_attack_timer = 0;
            ai_move_timer = 0;
            ai_jump_timer = 0;
            ai_moving_right = false;
            ai_moving_left = false;
            ai_decision_time = 10;
            
            //NPC Varaibles
            char_name = "Hopper";
            show_healthbar = true;
            team = 0;
            patrol_type = 0;
            
            //AI Behavior Variables
            //Movement
            ai_range_low = 32; //The preferred minimum range
            ai_range_far = 200; //The preferred maximum range
            ai_move_frequency = 0;
            
            //Jumping
            ai_jump_back_frequency = 0; //How often the AI should jump back randomly.
            ai_jump_up_frequency = 0; //How often the AI should jump up randomly.
            ai_jump_fwd_frequency = 0; //How often the AI should jump forwards randomly.
            ai_jump_range_low = 0; //The preferred minimum range to jump.
            
            //Attacking
            attacks = [AT_NSPECIAL_AIR];
            
            ai_attack_frequency = 20; //How often to attack.
            ai_attack_cooldown = 0;
            ai_attack_counter = 0;
            
            able_to_crouch = false;
            able_to_shield = false;
            able_to_jump = false;
            able_to_dash = false;
            
            //Enemy Specific
            ai_hit_absorption = 0;
            ai_hit_percent = 0;
                    
            //Animation Actions
            char_height = 40;
            char_arrow = sprite_get("char_arrow");
            anim_speed = .02;
            idle_anim_speed = .15;
            crouch_anim_speed = .1;
            walk_anim_speed = .25;
            dash_anim_speed = .2;
            pratfall_anim_speed = .25;
            full_time = 20;
            anim_type = 0; //0 is cycle; 1 is once per state
            
            //Movement Variables
            walk_speed = 4.25;
            walk_accel = 1;
            walk_turn_time = 6;
            initial_dash_time = 10;
            initial_dash_speed = 6.5;
            dash_speed = 6;
            dash_turn_time = 10;
            dash_turn_accel = 2;
            dash_stop_time = 4;
            dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
            ground_friction = .5;
            moonwalk_accel = 1.4;
            
            jump_start_time = 5;
            jump_speed = 12;
            short_hop_speed = 8;
            djump_speed = 10;
            leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
            max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
            air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
            jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
            air_accel = 1;
            prat_fall_accel = 1; //multiplier of air_accel while in pratfall
            air_friction = .03;
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
            
            
            //roll animation frames
            roll_forward_startup_frames = 2;
            roll_forward_active_frames = 2;
            roll_forward_recovery_frames = 2;
            roll_back_startup_frames = 2;
            roll_back_active_frames = 2;
            roll_back_recovery_frames = 2;
            roll_forward_max = 9; //roll speed
            roll_backward_max = 9;
            
            
            land_sound = asset_get("sfx_land_heavy");
            landing_lag_sound = asset_get("sfx_land_heavy");
            waveland_sound = asset_get("sfx_waveland_syl");
            jump_sound = asset_get("sfx_jumpground");
            djump_sound = asset_get("sfx_jumpair");
            air_dodge_sound = asset_get("sfx_quick_dodge");
            death_sound = asset_get("sfx_death2");
            fx_enemy_abyssdeath = hit_fx_create(sprite_get("fx_enemy_abyssdeath"), 16);
            fx_enemy_abyssdeath2 = hit_fx_create(sprite_get("fx_enemy_abyssdeath2"), 16);
    		break;
    		case EN_EVENT.ANIMATION:
    		break;
    		case EN_EVENT.PRE_DRAW:
    		break;
    		case EN_EVENT.POST_DRAW:
    		break;
    		case EN_EVENT.UPDATE:
    		break;
    		case EN_EVENT.DEATH:
    		break;
    		case EN_EVENT.SET_ATTACK:
    		break;
    		case EN_EVENT.ATTACK_UPDATE:
    		break;
    		case EN_EVENT.GOT_HIT:
    		break;
    		case EN_EVENT.GOT_PARRIED:
    		break;
    		case EN_EVENT.HIT_PLAYER:
    		break;
    		case EN_EVENT.PARRY:
    		break;
    	}
    break;
    case EN.KEI:
    	switch(art_event) {
    		case EN_EVENT.INIT:
    		//Initializations Here
            
            sprite_name = "Kei";
            //player_controller = 1;
            hitpoints_max = 35;
            
            
            collision_box = asset_get("ex_guy_hurt_box");
            mask_index =  collision_box; // Collision Mask
            colis_width = bbox_right - bbox_left;
            colis_height = bbox_bottom - bbox_top;
           
            //AI Behavior
            ai_attack_timer = 0;
            ai_move_timer = 0;
            ai_jump_timer = 0;
            ai_moving_right = false;
            ai_moving_left = false;
            ai_decision_time = 10;
            
            invincible = -1;
            
            //NPC Varaibles
            char_name = "Kei";
            show_healthbar = false;
            team = 1;
            patrol_type = 0;
            waypoint_index = -1;
            // waypoints = [{x: 0, y: 0}];
            
            //AI Behavior Variables
            //Movement
            ai_range_low = 32; //The preferred minimum range
            ai_range_far = 200; //The preferred maximum range
            ai_move_frequency = 20;
            
            //Jumping
            ai_jump_back_frequency = 0; //How often the AI should jump back randomly.
            ai_jump_up_frequency = 0; //How often the AI should jump up randomly.
            ai_jump_fwd_frequency = 0; //How often the AI should jump forwards randomly.
            ai_jump_range_low = 0; //The preferred minimum range to jump.
            
            //Attacking
            attacks = [];
            
            ai_attack_frequency = 20; //How often to attack.
            ai_attack_cooldown = 0;
            ai_attack_counter = 0;
            
            able_to_crouch = false;
            able_to_shield = false;
            able_to_jump = false;
            able_to_dash = false;
            
            //Enemy Specific
            ai_hit_absorption = 0;
            ai_hit_percent = 0;
                    
            //Animation Actions
            char_height = 40;
            char_arrow = sprite_get("char_arrow");
            anim_speed = .02;
            idle_anim_speed = .15;
            crouch_anim_speed = .1;
            walk_anim_speed = .25;
            dash_anim_speed = .2;
            pratfall_anim_speed = .25;
            full_time = 20;
            anim_type = 0; //0 is cycle; 1 is once per state
            
            //Movement Variables
            walk_speed = 6.5;
            walk_accel = 1;
            walk_turn_time = 6;
            initial_dash_time = 10;
            initial_dash_speed = 6.5;
            dash_speed = 6;
            dash_turn_time = 10;
            dash_turn_accel = 2;
            dash_stop_time = 4;
            dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
            ground_friction = .5;
            moonwalk_accel = 1.4;
            
            jump_start_time = 5;
            jump_speed = 12;
            short_hop_speed = 8;
            djump_speed = 10;
            leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
            max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
            air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
            jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
            air_accel = 1;
            prat_fall_accel = 1; //multiplier of air_accel while in pratfall
            air_friction = .03;
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
            
            
            //roll animation frames
            roll_forward_startup_frames = 2;
            roll_forward_active_frames = 2;
            roll_forward_recovery_frames = 2;
            roll_back_startup_frames = 2;
            roll_back_active_frames = 2;
            roll_back_recovery_frames = 2;
            roll_forward_max = 9; //roll speed
            roll_backward_max = 9;
            
            
            land_sound = asset_get("sfx_land_heavy");
            landing_lag_sound = asset_get("sfx_land_heavy");
            waveland_sound = asset_get("sfx_waveland_syl");
            jump_sound = asset_get("sfx_jumpground");
            djump_sound = asset_get("sfx_jumpair");
            air_dodge_sound = asset_get("sfx_quick_dodge");
            death_sound = asset_get("sfx_death2");
            fx_enemy_abyssdeath = hit_fx_create(sprite_get("fx_enemy_abyssdeath"), 16);
            fx_enemy_abyssdeath2 = hit_fx_create(sprite_get("fx_enemy_abyssdeath2"), 16);
    		break;
    		case EN_EVENT.ANIMATION:
                // switch (art_state) {
                //     case PS_IDLE:
                //     case PS_IDLE_AIR:
                //     case PS_WALK:
                //     case PS_DASH:
                //     case PS_DASH_START:
                //     case PS_DASH_STOP:
                //         sprite_index = enemy_sprite_get(enem_id,"idle");
                //         break;
                //     case PS_WALK_TURN:
                //     case PS_DASH_TURN:
                //         sprite_index = enemy_sprite_get(enem_id,"walkturn");
                //         break;
                // }
    		break;
    		case EN_EVENT.PRE_DRAW:
    		break;
    		case EN_EVENT.POST_DRAW:
    		break;
    		case EN_EVENT.UPDATE:
    			if team == 1 target_behavior = TR.WAYPOINT;
    			else target_behavior = TR.NEAR;
    			//AI Routine
	            if (player_controller == 0 && hitstun <= 0) {
	                right_down = ai_moving_right;
	                left_down = ai_moving_left;
	                jump_down = art_state == PS_JUMPSQUAT;
	                left_hard_pressed = false;
	                right_hard_pressed = false;
	                down_hard_pressed = false;
	                var decision_random = 0;
	                
	                //This enemy can't go off ledges
	                // if (!is_free && hsp != 0) {
	                //     var off_r = !position_meet(bbox_right + 2, bbox_bottom + 4);
	                //     var off_l = !position_meet(bbox_left - 2, bbox_bottom + 4);
	                    
	                //     if ((off_r && hsp > 0) || (off_l && hsp < 0)) {
	                //         x -= hsp;
	                //     }
	                // }
	                
	                //Moving
	                if ai_target == noone {
	                	ai_moving_right = false;
	                	ai_moving_left = false;
	                	break;
	                }
	                if (ai_target.x > x) {
                        ai_moving_right = true;
                        ai_moving_left = false;
                    } 
                    if (ai_target.x < x) {
                        ai_moving_right = false;
                        ai_moving_left = true;
                    } 
                    
	                if x_dist < waypoint_r && y_dist < waypoint_r {
	                	ai_moving_right = false;
	                	ai_moving_left = false;
	                	break;
	                }
	            }
    			break;
    		case EN_EVENT.DEATH:
    		break;
    		case EN_EVENT.SET_ATTACK:
    		break;
    		case EN_EVENT.ATTACK_UPDATE:
    		break;
    		case EN_EVENT.GOT_HIT:
    			// waypoint_index += 1;
    			// waypoint_index = waypoint_index % array_length(waypoints);
    		break;
    		case EN_EVENT.GOT_PARRIED:
    		break;
    		case EN_EVENT.HIT_PLAYER:
    		break;
    		case EN_EVENT.PARRY:
    		break;
    	}
    	break;
     case EN.GUARD:
     case EN.NGUARD:
    	switch(art_event) {
    		case EN_EVENT.INIT:
    		//Initializations Here
    		
    		if enem_id == EN.NGUARD {
            	enem_type = EN.NGUARD;
            	enem_id = EN.GUARD; //Use GUARD sprites
            	sprite_name = "nguard";
            	hitpoints_max = 120;
            	char_name = "Night Guard";
            }
            else {
            	enem_type = EN.GUARD;
            	sprite_name = "guard";
            	hitpoints_max = 60;
            	char_name = "Guard";
            }
            
            collision_box = asset_get("ex_guy_hurt_box");
            mask_index =  collision_box; // Collision Mask
            colis_width = bbox_right - bbox_left;
            colis_height = bbox_bottom - bbox_top;
            
            //AI Behavior
            ai_attack_timer = 0;
            ai_move_timer = 0;
            ai_jump_timer = 0;
            ai_moving_right = false;
            ai_moving_left = false;
            ai_decision_time = 10;
            
            //NPC Varaibles
            // char_name = "Guard";
            show_healthbar = false;
            team = 1;
            patrol_type = 0;
            waypoint_index = -1;
           
            
            if enem_type == EN.GUARD {
	            attached_articles = [
	            	[4,0,-4,0,0,[2,0,0,144,0,32,64,[0,1,1,0]],[0,0]]
	            	];
	            	// ai_move_timer = 120+random_func(x % 24, ai_move_frequency, true); //Randomize movement start
            } else {
            	attached_articles = [
	            	[4,-1,-5,0,0,[3,0,0,1,0,180,100,[0,0,1,1]],[0,0]],
	            	// [4,-1,-4,0,0,[3,0,0,1,sprite_get("enemy_10_vision"),128,64,[0,0,1,1]],[0,0]],
	            	[12, 0.5, 0, 0, -20, [sprite_get("enemy_10_vision"), 20, 0, 1, 0, 0, 0, 0], [0,0]],
	            	];
	            	//Night guards always in front
	            	og_depth = -9;
            		depth = -9;
            		// ai_move_timer = 120+random_func(x % 24, ai_move_frequency, true); //Randomize movement start
            }
            
            //AI Behavior Variables
            //Movement
            ai_range_low = 42; //The preferred minimum range
            ai_range_far = 64; //The preferred maximum range
            ai_move_frequency = 300;
            
            
            ai_move_timer = ai_move_frequency - 10; //Randomize movement
            
            // var _a = random_func((x) % 24, 1, true);
            // spr_dir = (_a == 1)-(_a == 0);
            init_x = x;
            //Init AI target random movement
            if team == 1 {
            	ai_target = {
					x: init_x+random_func((x) % 24, 600, true)-300,
					y: y
				};
            }
			
            
            //Jumping
            ai_jump_back_frequency = 70; //How often the AI should jump back randomly.
            ai_jump_up_frequency = 20; //How often the AI should jump up randomly.
            ai_jump_fwd_frequency = 10; //How often the AI should jump forwards randomly.
            ai_jump_range_low = 64; //The preferred minimum range to jump.
            
            //Attacking
            attacks = [AT_FSPECIAL_AIR, AT_FSPECIAL];
            
            ai_attack_frequency = 20; //How often to attack.
            ai_attack_cooldown = 0;
            ai_attack_counter = 0;
            
            able_to_crouch = false;
            able_to_shield = false;
            able_to_jump = true;
            able_to_dash = true;
            
            //Enemy Specific
            ai_hit_absorption = 0;
            ai_hit_percent = 0;
                    
            //Animation Actions
            char_height = 40;
            char_arrow = sprite_get("char_arrow");
            anim_speed = .02;
            idle_anim_speed = .1;
            crouch_anim_speed = .1;
            walk_anim_speed = .25;
            dash_anim_speed = .2;
            pratfall_anim_speed = .25;
            full_time = 20;
            anim_type = 0; //0 is cycle; 1 is once per state
            
            //Movement Variables
            walk_speed = 3;
            walk_accel = 1;
            walk_turn_time = 1;
            initial_dash_time = 1;
            initial_dash_speed = 6;
            dash_speed = 7;
            dash_turn_time = 1;
            dash_turn_accel = 2;
            dash_stop_time = 1;
            dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
            ground_friction = .5;
            moonwalk_accel = 1.4;
            
            jump_start_time = 5;
            jump_speed = 10;
            short_hop_speed = 7;
            djump_speed = 8;
            leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
            max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
            air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
            jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
            air_accel = 1;
            prat_fall_accel = 1; //multiplier of air_accel while in pratfall
            air_friction = .03;
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
            
            
            //roll animation frames
            roll_forward_startup_frames = 2;
            roll_forward_active_frames = 2;
            roll_forward_recovery_frames = 2;
            roll_back_startup_frames = 2;
            roll_back_active_frames = 2;
            roll_back_recovery_frames = 2;
            roll_forward_max = 9; //roll speed
            roll_backward_max = 9;
            
            
            land_sound = asset_get("sfx_land_heavy");
            landing_lag_sound = asset_get("sfx_land_heavy");
            waveland_sound = asset_get("sfx_waveland_syl");
            jump_sound = asset_get("sfx_jumpground");
            djump_sound = asset_get("sfx_jumpair");
            air_dodge_sound = asset_get("sfx_quick_dodge");
            death_sound = asset_get("sfx_death2");
            fx_enemy_abyssdeath = hit_fx_create(sprite_get("fx_enemy_abyssdeath"), 16);
            fx_enemy_abyssdeath2 = hit_fx_create(sprite_get("fx_enemy_abyssdeath2"), 16);
    		break;
    		case EN_EVENT.ANIMATION:
                switch (art_state) {
                    case PS_DASH_START:
                    case PS_DASH_STOP:
                        sprite_index = enemy_sprite_get(enem_id,"dash");
                        break;
                    case PS_WALK_TURN:
                    case PS_DASH_TURN:
                        sprite_index = enemy_sprite_get(enem_id,"walk");
                        break;
                    // case PS_HITSTUN:
                    // 	sprite_index = enemy_sprite_get(enem_id,"hurt");
                    // 	break;
                }
    		break;
    		case EN_EVENT.PRE_DRAW:
    		break;
    		case EN_EVENT.POST_DRAW:
    		break;
    		case EN_EVENT.UPDATE:
    			if team != 1 {
    				target_behavior = TR.LOW;
    				ai_move_frequency = 30;
    				with oPlayer if state == PS_DEAD || state == PS_RESPAWN other.team = 1; //Sacrifice made
    			} else {
    				ai_move_frequency = 300;
    			}
    			
    			//AI Routine
                if (player_controller == 0 && hitstun <= 0) {
                    var t_dist = point_distance(x, y, ai_target.x, ai_target.y);
                    var t_xd = abs(ai_target.x - x);
                    var t_yd = abs(ai_target.y - y);
                    
                    right_down = ai_moving_right;
                    left_down = ai_moving_left;
                    jump_down = art_state == PS_JUMPSQUAT;
                    left_hard_pressed = false;
                    right_hard_pressed = false;
                    down_hard_pressed = false;
                    var decision_random = 0;
                    
                    //Moving
                    ai_move_timer++;
                    
                    if team == 1 {
                    	var _colis_check = instance_position(x+32*sign(ai_target.x - x),y-2, obj_stage_article_solid);
                    	if _colis_check != noone {
                    		// print("TURJN");
                    		ai_move_timer = ai_move_frequency;
                    		ai_target.x = 2*x-ai_target.x; //Flip to other size
                    	}
                    }
                    
                    
                    
                    if (ai_move_timer % ai_move_frequency == 0 && !committed) {
                    	if team == 1 {
		    				ai_target = {
		    					x: init_x+random_func(x % 24, 600, true)-300,
		    					y: y
		    				};
		    			}
                    	ai_move_timer = random_func(x % 24, ai_move_frequency-60, true); //Randomize movement, with a base of 60 frames between spins
                        if (t_xd >= ai_range_low) {
                            if (team != 1 && t_xd >= ai_range_far) { //If agro'd
                                if (ai_target.x > x) right_hard_pressed = true;
                                if (ai_target.x < x) left_hard_pressed = true;
                            }
                            if (ai_target.x > x) {
                                ai_moving_right = true;
                                ai_moving_left = false;
                            } 
                            if (ai_target.x < x) {
                                ai_moving_right = false;
                                ai_moving_left = true;
                            } 
                        }
                        else {
                            ai_moving_right = false;
                            ai_moving_left = false;
                            if (ai_target.x > x && spr_dir == -1) {
                                right_down = true;
                                left_down = false; 
                            }
                            if (ai_target.x < x && spr_dir == 1) {
                                right_down = false;
                                left_down = true; 
                            }
                        }
                        if art_state == PS_DASH {
                            if (right_down && ai_target.x < x) {
                                ai_moving_right = false;
                                ai_moving_left = false;
                                if (ai_target.x > x && spr_dir == -1) {
                                    right_down = true;
                                    left_down = false; 
                                }
                                if (ai_target.x < x && spr_dir == 1) {
                                    right_down = false;
                                    left_down = true; 
                                }
                            }
                            if (left_down && ai_target.x > x) {
                                ai_moving_right = false;
                                ai_moving_left = false;
                                if (ai_target.x > x && spr_dir == -1) {
                                    right_down = true;
                                    left_down = false; 
                                }
                                if (ai_target.x < x && spr_dir == 1) {
                                    right_down = false;
                                    left_down = true; 
                                }
                            }
                        }
                    }
                
                    //Jumping
                    ai_jump_timer ++;
                    decision_random = random_func(x % 24, round(ai_decision_time), true);
                    
                    if team != 1 {
	                    if (!is_free) {
	                        if (!place_meet(x + 32 * spr_dir, y + 16)) {
	                            jump_down = true;
	                            if (spr_dir == 1) {
	                                ai_moving_right = true;
	                                ai_moving_left = false;
	                            } 
	                            if (spr_dir == -1) {
	                                ai_moving_right = false;
	                                ai_moving_left = true;
	                            } 
	                        }
	                        if (decision_random == 0 && !committed) {
	                            if (ai_target.y + 24 <= y) {
	                                var jump_random = random_func(x % 24, 100, true);
	                                if (jump_random <= 25) {
	                                    var jump_random2 = random_func(x % 24, 100, true);
	                                    if (ai_jump_timer % (ai_jump_fwd_frequency  + decision_random) == 0 && jump_random2 <= 33) {
	                                        jump_down = true;
	                                        if (ai_target.x > x) {
	                                            ai_moving_right = true;
	                                            ai_moving_left = false;
	                                        } 
	                                        if (ai_target.x < x) {
	                                            ai_moving_right = false;
	                                            ai_moving_left = true;
	                                        } 
	                                    }
	                                    
	                                    if (ai_jump_timer % (ai_jump_up_frequency + decision_random) == 0 && jump_random2 > 33 && jump_random2 <= 66) {
	                                        jump_down = true;
	                                        ai_moving_right = false;
	                                        ai_moving_left = false;
	                                    }
	                                    
	                                    if (ai_jump_timer % (ai_jump_back_frequency + decision_random) == 0 && jump_random2 > 66) {
	                                        jump_down = true;
	                                        if (ai_target.x > x) {
	                                            ai_moving_right = false;
	                                            ai_moving_left = true;
	                                        } 
	                                        if (ai_target.x < x) {
	                                            ai_moving_right = true;
	                                            ai_moving_left = false;
	                                        } 
	                                    }
	                                }
	                                else {
	                                    if (ai_jump_timer % ai_decision_time == 0) {
	                                        down_hard_pressed = true;
	                                    }
	                                }
	                            }
	                        }
	                    }
	                    else {
	                        jump_down = vsp < 0;
	                        if (able_to_djump) {
	                             if (ai_jump_timer % (ai_decision_time + decision_random) == 0) {
	                                 jump_down = true;
	                                if (ai_target.x > x) {
	                                    ai_moving_right = true;
	                                    ai_moving_left = false;
	                                } 
	                                if (ai_target.x < x) {
	                                    ai_moving_right = false;
	                                    ai_moving_left = true;
	                                } 
	                             }
	                        }
	                    }
                    }
                    
                    //Attacking
                    if (team != 1 && ai_attack_cooldown <= 0) {
                        ai_attack_timer ++;
                        decision_random = random_func(floor(x) % 24, round(ai_attack_frequency), true);
                        if (decision_random == 0 && !committed) {
                            if (t_xd <= 136 && t_yd <= 64) {
                                if !is_free next_attack = AT_FSPECIAL;
                                else next_attack = AT_FSPECIAL_AIR;
                                if ((ai_target.x < x && spr_dir == 1) || (ai_target.x > x && spr_dir = -1)) {
                                    spr_dir = -spr_dir;
                                }
                                ai_attack_cooldown = 20;
                            }
                        }
                       
                        
                    }
                    else {
                        if (art_state != PS_ATTACK_GROUND && art_state != PS_ATTACK_AIR)
                            ai_attack_cooldown --;
                    }
                }
                
                
    			if alive_time == 1 {
    				var _a = random_func_2(floor(x) % 200, 10, true);
            		left_down = (_a < 5);
            		right_down = (_a >= 5);
    			}
                
	            // if (player_controller == 0 && hitstun <= 0) {
	            //     right_down = ai_moving_right;
	            //     left_down = ai_moving_left;
	            // 	if team != 1 {
	            // 		right_hard_pressed = ai_moving_right;
	            // 		left_hard_pressed = ai_moving_left;
	            // 	}
	            //     jump_down = art_state == PS_JUMPSQUAT;
	                
	            //     down_hard_pressed = false;
	            //     var decision_random = 0;
	                
	            //     //This enemy can't go off ledges
	            //     // if (!is_free && hsp != 0) {
	            //     //     var off_r = !position_meet(bbox_right + 2, bbox_bottom + 4);
	            //     //     var off_l = !position_meet(bbox_left - 2, bbox_bottom + 4);
	                    
	            //     //     if ((off_r && hsp > 0) || (off_l && hsp < 0)) {
	            //     //         x -= hsp;
	            //     //     }
	            //     // }
	                
	            //     //Moving
	            //     if ai_target == noone {
	            //     	jump_down = true;
	            //     	break;
	            //     }
	            //     if (ai_target.x > x) {
             //           ai_moving_right = true;
             //           ai_moving_left = false;
             //       } 
             //       if (ai_target.x < x) {
             //           ai_moving_right = false;
             //           ai_moving_left = true;
             //       } 
                    
	            //     if x_dist < 32 && y_dist < 32 {
	            //     	ai_moving_right = false;
	            //     	ai_moving_left = false;
	            //     	break;
	            //     }
	            // }
    		break;
    		case EN_EVENT.DEATH:
    			invincible = 100;
                sprite_index = enemy_sprite_get(enem_id,"hurt");
                if hitpause > 1 {
                    state_timer = 0;
                } else {
                    image_index += 0.35;
                    if (state_timer == 2) {
                        kb_power *= 1.25;
                        if !is_free && kb_angle > 3.14159 && kb_angle < 3.14159*2 vsp = kb_power*sin(kb_angle);
                        else if !is_free vsp = -abs(kb_power*dsin(kb_angle));
                        else vsp = -kb_power*dsin(kb_angle);
                        hsp = kb_power*dcos(kb_angle);
                        if hsp != 0 spr_dir = -sign(hsp);
                    }
                    if hit_wall && !ingores_walls hsp = -hsp*.7;
                    if (state_timer % 8 == 0) {
                        // var test = spawn_hit_fx(round(x), round(y - char_height/2),  fx_enemy_abyssdeath);
                        test.depth = depth + 1;
                    }
                    old_hsp = hsp;
                    old_vsp = vsp;
                    //hitstun--;
                    if !is_free vsp = -8 * knockback_adj;
                    if (place_meet_solid(x + (hsp), y)) hsp = -hsp;
                    if state_timer >= 20 {
                        sound_play(sound_get("sfx_enemy_hit"));
                        spawn_hit_fx(round(x), round(y - char_height/2), fx_enemy_abyssdeath2);
                        
                        destroyed = true;
                    }
                }
    		break;
    		case EN_EVENT.SET_ATTACK:
    			with (obj_stage_main) {
                    switch (other.attack) {
                        case AT_FSPECIAL:
                            set_attack_value(AT_FSPECIAL, AG_CATEGORY, 0);
                            set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("enemy_8_fspecial"));
                            set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
                            set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
                            set_attack_value(AT_FSPECIAL, AG_LANDING_LAG, 4);
                            set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("enemy_8_fspecial_hurt"));
                            
                            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 10);
                            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
                            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
                            set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 9);
                            
                            set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 4);
                            set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
                            
                            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 15);
                            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
                            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
                            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
                            
                            set_num_hitboxes(AT_FSPECIAL, 1);
                            
                            set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 4);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -32);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 180);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 120);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 10);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 70);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 9);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .7);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 17);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 0);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
                            set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);
                            set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
                            set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
                        	break;
                        case AT_FSPECIAL_AIR:
                            set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 0);
                            set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("enemy_8_fspecial_air"));
                            set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 3);
                            set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
                            set_attack_value(AT_FSPECIAL_AIR, AG_LANDING_LAG, 4);
                            set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("enemy_8_fspecial_hurt"));
                            
                            set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 6);
                            set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
                            set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
                            set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
                            set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 5);
                            
                            set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);
                            set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
                            set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
                            
                            set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 10);
                            set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
                            set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
                            set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
                            
                            set_num_hitboxes(AT_FSPECIAL_AIR, 1);
                            
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 4);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 0);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 32);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -32);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 180);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 64);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 1);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 6);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 40);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .5);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .4);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_LOCKOUT, 8);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 0);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_IGNORES_PROJECTILES, 0);
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
                            set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PROJECTILE_MASK, -1);
                            break;
                    }
    		 }
    		break;
    		case EN_EVENT.ATTACK_UPDATE:
    		break;
    		case EN_EVENT.GOT_HIT:
    			if hit_player_id != noone {
    				team = 0; //If hit, chase after the player!
    			}
    		break;
    		case EN_EVENT.GOT_PARRIED:
    		break;
    		case EN_EVENT.HIT_PLAYER:
    		break;
    		case EN_EVENT.PARRY:
    		break;
    	}
    	break;
    case EN.SUPPLIER:
    	switch(art_event) {
    		case EN_EVENT.INIT:
    		//Initializations Here
                
            sprite_name = "supplier";
            //player_controller = 1;
            hitpoints_max = 120;
            
            collision_box = asset_get("ex_guy_hurt_box");
            mask_index =  collision_box; // Collision Mask
            colis_width = bbox_right - bbox_left;
            colis_height = bbox_bottom - bbox_top;
            
            //AI Behavior
            ai_attack_timer = 0;
            ai_move_timer = 0;
            ai_jump_timer = 0;
            ai_moving_right = false;
            ai_moving_left = false;
            ai_decision_time = 10;
            
            //NPC Varaibles
            char_name = "Supplier";
            show_healthbar = false;
            team = 1;
            patrol_type = 0;
            
            invincible = -1;
            
            attached_articles = [
            	[4,0,0,0,0,[2,0,0,120,0,32,64,[0,1,1]],[0,0]]
            	];
            
            //AI Behavior Variables
            //Movement
            ai_range_low = 32; //The preferred minimum range
            ai_range_far = 200; //The preferred maximum range
            ai_move_frequency = 0;
            
            //Jumping
            ai_jump_back_frequency = 0; //How often the AI should jump back randomly.
            ai_jump_up_frequency = 0; //How often the AI should jump up randomly.
            ai_jump_fwd_frequency = 0; //How often the AI should jump forwards randomly.
            ai_jump_range_low = 0; //The preferred minimum range to jump.
            
            //Attacking
            attacks = [];
            
            ai_attack_frequency = 0; //How often to attack.
            ai_attack_cooldown = 0;
            ai_attack_counter = 0;
            
            able_to_crouch = false;
            able_to_shield = false;
            able_to_jump = false;
            able_to_dash = false;
            
            //Enemy Specific
            ai_hit_absorption = 0;
            ai_hit_percent = 0;
                    
            //Animation Actions
            char_height = 40;
            char_arrow = sprite_get("char_arrow");
            anim_speed = .02;
            idle_anim_speed = .1;
            crouch_anim_speed = .1;
            walk_anim_speed = .25;
            dash_anim_speed = .2;
            pratfall_anim_speed = .25;
            full_time = 20;
            anim_type = 0; //0 is cycle; 1 is once per state
            
            //Movement Variables
            walk_speed = 4.25;
            walk_accel = 1;
            walk_turn_time = 6;
            initial_dash_time = 10;
            initial_dash_speed = 6.5;
            dash_speed = 6;
            dash_turn_time = 10;
            dash_turn_accel = 2;
            dash_stop_time = 4;
            dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
            ground_friction = .5;
            moonwalk_accel = 1.4;
            
            jump_start_time = 5;
            jump_speed = 12;
            short_hop_speed = 8;
            djump_speed = 10;
            leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
            max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
            air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
            jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
            air_accel = 1;
            prat_fall_accel = 1; //multiplier of air_accel while in pratfall
            air_friction = .03;
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
            
            
            //roll animation frames
            roll_forward_startup_frames = 2;
            roll_forward_active_frames = 2;
            roll_forward_recovery_frames = 2;
            roll_back_startup_frames = 2;
            roll_back_active_frames = 2;
            roll_back_recovery_frames = 2;
            roll_forward_max = 9; //roll speed
            roll_backward_max = 9;
            
            land_sound = asset_get("sfx_land_heavy");
            landing_lag_sound = asset_get("sfx_land_heavy");
            waveland_sound = asset_get("sfx_waveland_syl");
            jump_sound = asset_get("sfx_jumpground");
            djump_sound = asset_get("sfx_jumpair");
            air_dodge_sound = asset_get("sfx_quick_dodge");
            death_sound = asset_get("sfx_death2");
            fx_enemy_abyssdeath = hit_fx_create(sprite_get("fx_enemy_abyssdeath"), 16);
            fx_enemy_abyssdeath2 = hit_fx_create(sprite_get("fx_enemy_abyssdeath2"), 16);
    		break;
    		case EN_EVENT.ANIMATION:
    		break;
    		case EN_EVENT.PRE_DRAW:
    		break;
    		case EN_EVENT.POST_DRAW:
    		break;
    		case EN_EVENT.UPDATE:
    		break;
    		case EN_EVENT.DEATH:
    			instance_destroy();
    			exit;
    		break;
    		case EN_EVENT.SET_ATTACK:
    		break;
    		case EN_EVENT.ATTACK_UPDATE:
    		break;
    		case EN_EVENT.GOT_HIT:
    		break;
    		case EN_EVENT.GOT_PARRIED:
    		break;
    		case EN_EVENT.HIT_PLAYER:
    		break;
    		case EN_EVENT.PARRY:
    		break;
    	}
    	break;
    case EN.MAGE:
    	switch(art_event) {
    		case EN_EVENT.INIT:
    		//Initializations Here
            
            sprite_name = "Mage";
            //player_controller = 1;
            hitpoints_max = 55;
            
            collision_box = asset_get("ex_guy_hurt_box");
            mask_index =  collision_box; // Collision Mask
            colis_width = bbox_right - bbox_left;
            colis_height = bbox_bottom - bbox_top;
           
            //AI Behavior
            ai_attack_timer = 0;
            ai_move_timer = 0;
            ai_jump_timer = 0;
            ai_moving_right = false;
            ai_moving_left = false;
            ai_decision_time = 10;
            
            invincible = -1;
            
            //NPC Varaibles
            char_name = "Mage";
            show_healthbar = false;
            team = 1;
            patrol_type = 0;
            waypoint_index = -1;
            spr_dir = -1;
            // waypoints = [{x: 0, y: 0}];
            
            //AI Behavior Variables
            //Movement
            ai_range_low = 32; //The preferred minimum range
            ai_range_far = 200; //The preferred maximum range
            ai_move_frequency = 20;
            
            //Jumping
            ai_jump_back_frequency = 0; //How often the AI should jump back randomly.
            ai_jump_up_frequency = 0; //How often the AI should jump up randomly.
            ai_jump_fwd_frequency = 0; //How often the AI should jump forwards randomly.
            ai_jump_range_low = 0; //The preferred minimum range to jump.
            
            //Attacking
            attacks = [AT_NSPECIAL];
            
            ai_attack_frequency = 20; //How often to attack.
            ai_attack_cooldown = 0;
            ai_attack_counter = 0;
            
            able_to_crouch = false;
            able_to_shield = false;
            able_to_jump = false;
            able_to_dash = false;
            
            //Enemy Specific
            ai_hit_absorption = 0;
            ai_hit_percent = 0;
                    
            //Animation Actions
            char_height = 40;
            char_arrow = sprite_get("char_arrow");
            anim_speed = .02;
            idle_anim_speed = .07;
            crouch_anim_speed = .1;
            walk_anim_speed = .25;
            dash_anim_speed = .2;
            pratfall_anim_speed = .25;
            full_time = 20;
            anim_type = 0; //0 is cycle; 1 is once per state
            
            //Movement Variables
            walk_speed = 6.5;
            walk_accel = 1;
            walk_turn_time = 6;
            initial_dash_time = 10;
            initial_dash_speed = 6.5;
            dash_speed = 6;
            dash_turn_time = 10;
            dash_turn_accel = 2;
            dash_stop_time = 4;
            dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
            ground_friction = .5;
            moonwalk_accel = 1.4;
            
            jump_start_time = 5;
            jump_speed = 12;
            short_hop_speed = 8;
            djump_speed = 10;
            leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
            max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
            air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
            jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
            air_accel = 1;
            prat_fall_accel = 1; //multiplier of air_accel while in pratfall
            air_friction = .03;
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
            
            
            //roll animation frames
            roll_forward_startup_frames = 2;
            roll_forward_active_frames = 2;
            roll_forward_recovery_frames = 2;
            roll_back_startup_frames = 2;
            roll_back_active_frames = 2;
            roll_back_recovery_frames = 2;
            roll_forward_max = 9; //roll speed
            roll_backward_max = 9;
            
            
            land_sound = asset_get("sfx_land_heavy");
            landing_lag_sound = asset_get("sfx_land_heavy");
            waveland_sound = asset_get("sfx_waveland_syl");
            jump_sound = asset_get("sfx_jumpground");
            djump_sound = asset_get("sfx_jumpair");
            air_dodge_sound = asset_get("sfx_quick_dodge");
            death_sound = asset_get("sfx_death2");
            fx_enemy_abyssdeath = hit_fx_create(sprite_get("fx_enemy_abyssdeath"), 16);
            fx_enemy_abyssdeath2 = hit_fx_create(sprite_get("fx_enemy_abyssdeath2"), 16);
    		break;
    		case EN_EVENT.ANIMATION:
    		break;
    		case EN_EVENT.PRE_DRAW:
    		break;
    		case EN_EVENT.POST_DRAW:
    		break;
    		case EN_EVENT.UPDATE:
    			// if art_state != PS_ATTACK_GROUND && art_state != PS_ATTACK_AIR next_attack = AT_NSPECIAL;

    			// if team == 1 target_behavior = TR.WAYPOINT;
    			// else target_behavior = TR.NEAR;
    			// //AI Routine
	      //      if (player_controller == 0 && hitstun <= 0) {
	      //          right_down = ai_moving_right;
	      //          left_down = ai_moving_left;
	      //          jump_down = art_state == PS_JUMPSQUAT;
	      //          left_hard_pressed = false;
	      //          right_hard_pressed = false;
	      //          down_hard_pressed = false;
	      //          var decision_random = 0;
	                
	      //          //This enemy can't go off ledges
	      //          // if (!is_free && hsp != 0) {
	      //          //     var off_r = !position_meet(bbox_right + 2, bbox_bottom + 4);
	      //          //     var off_l = !position_meet(bbox_left - 2, bbox_bottom + 4);
	                    
	      //          //     if ((off_r && hsp > 0) || (off_l && hsp < 0)) {
	      //          //         x -= hsp;
	      //          //     }
	      //          // }
	                
	      //          //Moving
	      //          if ai_target == noone {
	      //          	ai_moving_right = false;
	      //          	ai_moving_left = false;
	      //          	break;
	      //          }
	      //          if (ai_target.x > x) {
       //                 ai_moving_right = true;
       //                 ai_moving_left = false;
       //             } 
       //             if (ai_target.x < x) {
       //                 ai_moving_right = false;
       //                 ai_moving_left = true;
       //             } 
                    
	      //          if x_dist < waypoint_r && y_dist < waypoint_r {
	      //          	ai_moving_right = false;
	      //          	ai_moving_left = false;
	      //          	break;
	      //          }
	      //      }
    			break;
    		case EN_EVENT.DEATH:
    			instance_destroy();
    			exit;
    		break;
    		case EN_EVENT.SET_ATTACK: //MAKE SURE ATTACKS ARE BEING SET ON THE MAIN STAGE OBJECT
    			with (obj_stage_main) {
                    switch (other.attack) {
                    	case AT_NSPECIAL:
							set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
				            set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("enemy_11_nspecial"));
				            set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 2);
				            set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 1);
				            set_attack_value(AT_NSPECIAL, AG_LANDING_LAG, 4);
				            set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("enemy_11_nspecial"));
				            
				            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 60);
				            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 10);
				            // set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
				            // set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_boss_shine"));
				            // set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
				            break;
                    }
    			}
    		break;
    		case EN_EVENT.ATTACK_UPDATE:
    			//Smoek poof!
    			if attack == AT_NSPECIAL && window_timer == 59 {
    				// visible = false;
    				destroyed = true;
    				instance_destroy();
    				exit;
    			}
    		break;
    		case EN_EVENT.GOT_HIT:
    			// waypoint_index += 1;
    			// waypoint_index = waypoint_index % array_length(waypoints);
    		break;
    		case EN_EVENT.GOT_PARRIED:
    		break;
    		case EN_EVENT.HIT_PLAYER:
    		break;
    		case EN_EVENT.PARRY:
    		break;
    	}
    	break;
   // case EN.RYKEN: //Moved to user_event7
   // break;
}

user_event(7); //User event 7 - extension
// with oPlayer if state == PS_RESPAWN print("[ue6] completed check");
//DO NOT EDIT BELOW
#define create_smoke(_x, _y, _amount, _length, _dir_min, _dir_max, _spd_min, _spd_max, _frict)
var smoke = instance_create(_x, _y, "obj_stage_article",18); //Ryken's Smoke
smoke.smoke_length = _length;
smoke.smoke_particle_amount = _amount;
smoke.spr_dir = spr_dir;
smoke.smoke_spread_dir_min = _dir_min;
smoke.smoke_spread_dir_max = _dir_max;
smoke.smoke_speed_min = _spd_min;
smoke.smoke_speed_max = _spd_max;
smoke.smoke_friction = _frict;
smoke.player_id = self;

return smoke;
#define arc_calc_x_speed(x1, y1, x2, y2, vspd, g)
var dX = x2 - x1;
var dY = y2 - y1;
if (dX == 0) {
	return 0;
}
var t = (abs(vspd) / g) + sqrt(abs(vspd * vspd) / (g * g) - (dY / g));
return dX / t;
#define enemy_sprite_get(_name,_sprite) //Get the sprite of this article
return sprite_get("enemy_"+string(_name)+"_"+string(_sprite));
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
#define set_state(_state)
next_state = _state;
return _state;