///



if state == PS_PRATFALL {
	can_fast_fall = true
}

if inkshield_buildup >= 300 {
	inkshield = 300
     sound_play(sound_get("RI"))	
     spawn_hit_fx (x, y - 32, 302)
	inkshield_buildup = 0
	knockback_adj = 0.5
}

if inkshield_buildup < 0 {
	inkshield_buildup = 0
}
if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
} else {
	attacking = false
}


if !instance_exists(hit_player_obj){

hit_player_obj = self

}




if get_gameplay_time() == 2 {
    	if hit_player_obj == self {
		var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id	
		}	
}


 if cheapmode == 0 {
 
 with(asset_get("oPlayer")){ 
 	if url != "2273636433" && url != "1870768156"
	&& url != "1869351026" && url != "2443363942" &&
	(string_count("nald", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("%", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("sand", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("psy", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("ultra", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("god", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("boss", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("ui ", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("ssg", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("melee", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("OP ", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("accurate", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or string_count("Jo", string_lower( get_char_info(player, INFO_STR_NAME) )) > 0
	or url == "2159023588"
	or url == "1980469422"
	){
       other.cheapmode = 1 
     }    
 }
 }     
       
if cheapmode = 1 && ((down_down && taunt_down && get_gameplay_time() < 300) or "ai_target" in self){
	cheapmode = 2
	sound_play(sound_get("SpaceCut"))
	sound_play(sound_get("RI"))
	shake_camera(6,12)
	spawn_hit_fx(x,y - 50, SC)
}        

if cheapmode = 2 {
	if hitpause {
		histop = 0
	}
        ink = 300
        inkshield = 300
        knockback_adj = 0
        set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 1);
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 1);
        set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 1);
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 1);
        set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 1);
        set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 1);
            move_cooldown[AT_NSPECIAL] = 0
            move_cooldown[AT_FSPECIAL] = 0
                if state == PS_PRATFALL {
                	set_state (PS_IDLE)
                }
        
        if get_gameplay_time() % 6 == 0 && (down_down) {
        	
        	
        	if summon%5 = 0 {
                create_hitbox(AT_DSPECIAL, 1, x + 200 - random_func(1,400,true), y - 30)
            }
            
            if summon%5 = 1 {
                create_hitbox(AT_DSPECIAL, 4, x + 200 - random_func(1,400,true), y - 30)
            }
            
            if summon%5 = 2 {
                create_hitbox(AT_DSPECIAL, 3, x + 200 - random_func(1,400,true), y - 30)
            }
            
            if summon%5 = 3 {
                create_hitbox(AT_DSPECIAL, 2, x + 200 - random_func(1,400,true), y - 30)
            }
            
            if summon%5 = 4 {
                create_hitbox(AT_DSPECIAL, 5, x + 200 - random_func(1,400,true), y - 30)
            }
            
            
            
            summon += 1 + random_func(1, 4, true) 
            
}
        if get_gameplay_time() % 120 == 0 && (down_down) {
        	sasdh = instance_create(x + 80*spr_dir,y,"oPlayer");
    	shake_camera(6,12)
    	sound_play(sound_get("counterhit")) 	
    	sound_play(asset_get("sfx_bird_downspecial")) 
    	sound_play(asset_get("sfx_orca_absorb")) 
    	spawn_hit_fx(x,y - 30,306)
    	spawn_hit_fx(x,y - 30,305)
        }
        
        if get_gameplay_time() % 16 == 0 && ("ai_target"  in self) {
        	
        	
        	if summon%5 = 0 {
                create_hitbox(AT_DSPECIAL, 1, x + 200 - random_func(1,400,true), y - 30)
            }
            
            if summon%5 = 1 {
                create_hitbox(AT_DSPECIAL, 4, x + 200 - random_func(1,400,true), y - 30)
            }
            
            if summon%5 = 2 {
                create_hitbox(AT_DSPECIAL, 3, x + 200 - random_func(1,400,true), y - 30)
            }
            
            if summon%5 = 3 {
                create_hitbox(AT_DSPECIAL, 2, x + 200 - random_func(1,400,true), y - 30)
            }
            
            if summon%5 = 4 {
                create_hitbox(AT_DSPECIAL, 5, x + 200 - random_func(1,400,true), y - 30)
            }
            
            
            
            summon += 1 + random_func(1, 4, true) 
            
        }    
                if get_gameplay_time() % 120 == 0 {
        	
        	if summon%5 = 0 {
                create_hitbox(AT_DSPECIAL, 1, x + 62*spr_dir, y - 30)
            }
            
            if summon%5 = 1 {
                create_hitbox(AT_DSPECIAL, 4, x + 62*spr_dir, y - 30)
            }
            
            if summon%5 = 2 {
                create_hitbox(AT_DSPECIAL, 3, x + 62*spr_dir, y - 30)
            }
            
            if summon%5 = 3 {
                create_hitbox(AT_DSPECIAL, 2, x + 62*spr_dir, y - 30)
            }
            
            if summon%5 = 4 {
                create_hitbox(AT_DSPECIAL, 5, x + 62*spr_dir, y - 30)
            }
            
            
            
            summon += 1 + random_func(1, 4, true) 
            
        }   
        
    }
		
   
    
if !isyellow {  
	
if inkshield < 0 {
	knockback_adj = 1.05
}


if get_gameplay_time() <= 29 {
	set_attack (AT_EXTRA_1)
	window = 0
	window_timer = 0
	visible = false
}

if get_gameplay_time() <= 80 {
	draw_indicator = false
}
if get_gameplay_time() == 30 {
	visible = true
}

if get_gameplay_time() == 34 {
	sound_play(asset_get("sfx_orca_soak"))
}

if get_gameplay_time() == 48 {
	sound_play(asset_get("sfx_waterhit_heavy2"))
}

if get_gameplay_time() == 70 {
	sound_play(asset_get("sfx_bird_downspecial"))
	sound_play(asset_get("sfx_waterwarp"))
}



if hitpause {
	move_cooldown[AT_EXTRA_1] += 1
}


if !free or state == PS_WALL_JUMP {
	move_cooldown[AT_USPECIAL] = 0
}
if hit_player_obj.state_cat == SC_HITSTUN && hit_player_obj.free && move_cooldown[AT_EXTRA_1] = 0 && ink < 300 {
	if get_gameplay_time() % 8 == 0 {
		create_hitbox (AT_NSPECIAL, 8, floor(hit_player_obj.x), floor(hit_player_obj.y - 40) )
	}
}

if ink > 300 {
	ink = 300
}
if ink < 0 {
	ink = 0
}

if (state == PS_PRATLAND or state == PS_WALL_JUMP)  && visible = false {
	visible = true
	spawn_hit_fx (x, y + 4, i1)
      spawn_hit_fx (x, y + 4, i2)
} 

if state == PS_PRATFALL && visible = false {
	invincible = true
    fall_though = true
	 if (y > room_height/2 + 400){
    	vsp = -20
    	visible = true
     }
}
if inkshield > 0 && !hitpause && move_cooldown[AT_EXTRA_1] == 0{
	
	inkshield -= 1

}
if inkshield == 0 {
	sound_play(asset_get("sfx_ori_bash_projectile"));
	spawn_hit_fx (x, y - 32, 27)
	inkshield = -1
}

if !instance_exists(hit_player_obj){

hit_player_obj = self

}



if state == PS_DASH_START {
    hsp /= 1.6
    if state_timer == 11 {
        sound_play(sound_get("SpaceCut2"));
    }
}

if state == PS_DASH_TURN {
    hsp /= 2
    if state_timer == 3 {
        set_state (PS_DASH)
        state_timer = 0
        sound_play(sound_get("SpaceCut2"));
    }
}

if state == PS_DASH{
    
    if state_timer % 5 == 0 or state_timer == 3 {
        spawn_hit_fx (x - 6*spr_dir , y - 5 +  random_func(1, 10, true), i1)
    }
}

if state == PS_AIR_DODGE {
	if state_timer < 12  {
		draw_indicator = false
		if state_timer % 4 == 0 {
        spawn_hit_fx (x, y - 5 +  random_func(1, 10, true), i1)
		}
    }
}
if state == PS_WAVELAND{
    if state_timer == 4 {
        spawn_hit_fx (x, y + 4, i1)
    }
}



if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
   
if state_timer == 1 {
	 spawn_hit_fx (x, y + 4, i2)
    sound_play(asset_get("sfx_orcane_fspecial"));
}
	 
	 if state_timer < 10 {
	 draw_indicator = false	
	 hsp = -4 * spr_dir
	 }
	 
	 if state_timer < 18 {
	     draw_indicator = false
	 }
	 
	 if state_timer > 14 {
	     hsp = 0
	 }
	 

}
}


if get_player_color(player) >= 99 && isyellow == false {
	
	isyellow = true
	inkshield = 0
	ink = 0
	roll_forward_max = 8; //roll speed
    roll_backward_max = 8;
    
walk_speed = 4.5;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 11;
initial_dash_speed = 8.5;
dash_speed = 8;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.7;
moonwalk_accel = 1.0;

jump_start_time = 5;
jump_speed = 15.3;
short_hop_speed = 9.37;
djump_speed = 17.49;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.30;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 11;
walljump_time = 10;
wall_frames = 2;
max_fall = 11.70; //maximum fall speed without fastfalling
fast_fall = 14.21; //fast fall speed
gravity_speed = 0.90;
hitstun_grav = 0.60;
knockback_adj = 1.14; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.08; //grounded deceleration when wavelanding


//tech roll animation frames

techroll_speed = 10;

//airdodge animation frames

air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;

roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");



///JAB 

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 0);

set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 1);

set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 0);

///Utilt
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 8);

set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .2);

///Dtilt 

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);

set_num_hitboxes(AT_DTILT, 1);


set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);

///Ftilt 
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

///Dattack 
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 0);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));


set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .6);


///Fair 
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));


///Nair 
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair2"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair2_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_TECHABLE, 0);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -12);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 48);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 28);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_TECHABLE, 0);

///Uair 

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));


///Dair 

set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 0);

set_num_hitboxes(AT_DAIR, 14);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 53);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DAIR, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DAIR, 10, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DAIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 11, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 11, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DAIR, 11, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 11, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 11, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 11, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 11, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 11, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 11, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 11, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 11, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 11, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_DAIR, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 12, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 12, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 12, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DAIR, 12, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 12, HG_HEIGHT, 53);
set_hitbox_value(AT_DAIR, 12, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 12, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 12, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 12, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 12, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 12, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 12, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 12, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 12, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_DAIR, 13, HG_PARENT_HITBOX, 11);
set_hitbox_value(AT_DAIR, 13, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 13, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 13, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_DAIR, 14, HG_PARENT_HITBOX, 12);
set_hitbox_value(AT_DAIR, 14, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 14, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 14, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_GROUP, 6);

///Fspecial 
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial2"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, -3);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 20);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 0);


set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_holy_lightning"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);


///Nspecial

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("mfx_star"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.4);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_NSPECIAL, 1, HG_TECHABLE, 1);


////Uspecial 
set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);

set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial2_hurt"));


set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_burnconsume"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);

	
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.6);


set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);





set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 20);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 20);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1); 
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3); 
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 110);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 1);

/// Dspec 
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
//Fstrong 

set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong2"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong2_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 12);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 8)
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 12)
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_land_heavy"));


set_num_hitboxes(AT_FSTRONG,3);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 95);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 33);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -67);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 66);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 0.7);


/// Dstrong
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong2"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong2_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 4,  AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSTRONG, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 30);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 30);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 110);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 62);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 7 );
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -20);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -42);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 62);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 7 );
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 4, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 1);

//// Ustrong


set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong2"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong2_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HSPEED, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy1"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USTRONG,1);


set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);

}

if isyellow {
	
	if attacking {
		
	}
	
	if get_gameplay_time() == 60 {
	sound_play(asset_get("sfx_clairen_swing_mega_instant"))
	sound_play(asset_get("sfx_ori_bash_use"))
	sound_play(asset_get("sfx_bird_nspecial"))
    }
    
    if get_gameplay_time() == 80 {
    	visible = true
	sound_play(asset_get("mfx_star"))
	spawn_hit_fx(x, y-30, 305)
	set_attack(AT_NSPECIAL)
	window = 1
	window_timer = 1
    }
    
	if get_gameplay_time() > 60 && get_gameplay_time() < 80 {
		spawn_hit_fx (x - 600 + (get_gameplay_time()-60)*30 , y - 10, saillusion)
	}
	
}



if ("sasdh") in self{
with sasdh {

alt = get_player_color(player);

Rline = get_color_profile_slot_r ( alt , 0 )
Gline = get_color_profile_slot_g ( alt , 0 )
Bline = get_color_profile_slot_b ( alt , 0 )

			outline_color =  [Rline/3 + 20, Gline/3 + 20, Bline/3 + 20]
			   	
     inkshield = -1
     inkshield_buildup = -999
     ink = 0		
     temp_level = 9
     move_cooldown[AT_EXTRA_1] = 2
          other.move_cooldown[AT_EXTRA_1] = 2
     if state_cat == SC_HITSTUN && !hitpause && free {
     	state_timer -= 1
     }
     draw_indicator = false

     move_cooldown[AT_EXTRA_2] = 0

other.move_cooldown[AT_DSPECIAL] = 2

if other.state == PS_DEAD or other.state == PS_RESPAWN {
	spawn_hit_fx(x,y - 30, 304)
    y = 9999
}

}
init_shader();

}
