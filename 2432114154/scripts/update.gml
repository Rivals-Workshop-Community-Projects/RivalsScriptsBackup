///

if get_gameplay_time() == 120 && get_player_color(player) == 28 {
	

	
	set_color_profile_slot( 28, 0, 0, 241, 255 );
    set_color_profile_slot( 28, 1, 26, 36, 22 );
    set_color_profile_slot( 28, 2, 39, 59, 32 );
    set_color_profile_slot( 28, 3, 116, 173, 36 );
    set_color_profile_slot( 28, 4, 53, 73, 26 );
    set_color_profile_slot( 28, 5, 24, 33, 36 );
    set_color_profile_slot( 28, 6, 255, 255, 255 );
    set_color_profile_slot( 28, 7, 178, 177, 182 );
    
	cfx = spawn_hit_fx(x,y,304)
	cfx.pause = 4
	
	if string_lower(get_player_name(player)) == "cam" {
		sound_stop(sound_get("Fstrong"))
		sound_play(sound_get("Fstrong"),false,noone,1,1.4)
		set_color_profile_slot( 28, 0, 255, 126, 0 ); //Energy
        set_color_profile_slot( 28, 1, 158, 158, 158 ); //Top shading
        set_color_profile_slot( 28, 2, 201, 201, 201 ); //Top
        set_color_profile_slot( 28, 3, 168, 0, 67 ); //Pattern1
        set_color_profile_slot( 28, 4, 103, 164, 224 ); //Pattern2
        set_color_profile_slot( 28, 5, 26, 61, 102 ); //Dark parts
        set_color_profile_slot( 28, 6, 148, 99, 87 ); //Fur
        set_color_profile_slot( 28, 7, 133, 75, 60 ); //Fur shading
	}
	
	if string_lower(get_player_name(player)) == "blue" {
		sound_stop(sound_get("Fstrong"))
		sound_play(sound_get("Fstrong"),false,noone,1,1.4)
		set_color_profile_slot( 28, 0, 0, 241, 255 ); //Energy
        set_color_profile_slot( 28, 1, 191, 100, 127 ); //Top shading
        set_color_profile_slot( 28, 2, 245, 169, 184 ); //Top
        set_color_profile_slot( 28, 3, 255, 220, 255 ); //Pattern1
        set_color_profile_slot( 28, 4, 255, 200, 240 ); //Pattern2
        set_color_profile_slot( 28, 5, 91, 206, 250 ); //Dark parts
        set_color_profile_slot( 28, 6, 255, 255, 255 ); //Fur
        set_color_profile_slot( 28, 7, 178, 177, 182 ); //Fur shading
	}
	

	
	init_shader()
}

if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
} else {
	attacking = false
	move_cooldown[AT_NSPECIAL_2] = 0
	sound_stop(drip_sound)
	  move_cooldown[AT_NAIR] = 0
}

 if cheapmode == 0 && get_gameplay_time() < 60 {
 
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
 
 
 if cheapmode == 1 && get_gameplay_time() < 600 {
 	if taunt_pressed or get_player_damage(player) > 50 or state == PS_RESPAWN {
 		cheapmode = 3 
        shake_camera(10,10)
        spawn_hit_fx(x,y - 40,SC)
    		sound_play(sound_get("Fstrong"),false,noone,1,1.5)
    		sound_play(sound_get("RZ"),false,noone,.7,.2)
    		sound_play(sound_get("RI"),false,noone,1,1)
    		sound_play(sound_get("drip"),false,noone,1,1)
    		gotstone += 70
    		stoned = 1
 	}
 }


 if cheapmode == 3 && triggercutscene == 0 {
 	
 	with oPlayer  {
 		super = 0 
 	}
 	
   if state == PS_RESPAWN {
 				state_timer = 120
 				visible = true 
 				with oPlayer  {
 					if self != other {
 						set_player_stocks(other.player, get_player_stocks(player) + 1)
 					    end_match()
 					}
 				}
   }
   
 	if abs(spr_dir) != 1 {
 		spr_dir = 1
 	}
 	invincible = true 
 	invince_time = 4
 
  with asset_get("pHitBox") {
 	nearbyhitbox = collision_circle( x-12, y-12, 84, other, true, true ) 
	
	    
    if nearbyhitbox != noone && player_id != other.id && hit_priority != 0 {
    	hit_priority = 0
        player_id.old_vsp = vsp 
        player_id.old_hsp = hsp 
        player_id.hitpause = true 
        player_id.hitstop = 29

    	with other {
    		hit_player_obj = other.player_id
    	    if UIdodge <= 5 {
    	    	spawn_hit_fx(x - 10*spr_dir,y + 6,i1)
    	    	uifx = spawn_hit_fx(x,y - 30,306)
    	    	uifx.pause = 4
    	    	UIdodge = 20
    	    	UInum ++
    	    }
    	}
    	
    	
    }
 }
 	 
 	if UIdodge > 0 {
 		spawn_hit_fx(x - 10*spr_dir,y + 6,i1)
 		if UInum % 2 == 0 {
 			x -= 4
 		} else { 
 		    x += 4	
 		}
 		UIdodge --
 		
 	  if UIdodge == 19 {
 	  	vsp -= 6 + random_func(1,5,true)
 	  	if UInum % 2 == 0 {
 	  		spawn_hit_fx(x - 10*spr_dir - 4,y + 6,i1)
 			x -= 10
 		} else { 
 			spawn_hit_fx(x - 10*spr_dir + 4,y + 6,i1)
 		    x += 10
 		}
 		switch UInum % 16 {
 			case 0 :
 			case 8 :
 			sound_play(sound_get("drip"),false,noone,1,1)
 			sound_play(sound_get("RZ"),false,noone,.7,1)
 			break;
 			case 1 :
 			case 9 :
 			sound_play(sound_get("drip"),false,noone,1,.9)
 			sound_play(sound_get("RZ"),false,noone,.7,.9)
 			break;
 			case 2 :
 			case 10 :
 			sound_play(sound_get("drip"),false,noone,1,1.05)
 			sound_play(sound_get("RZ"),false,noone,.7,1.05)
 			break;
 			case 3 :
 			case 11 :
 			sound_play(sound_get("drip"),false,noone,1,1)
 			sound_play(sound_get("RZ"),false,noone,.7,1)
 			break;
 			case 4 :
 			sound_play(sound_get("drip"),false,noone,1,.9)
 			sound_play(sound_get("RZ"),false,noone,.7,.9)
 			break;
 			case 5 :
 			sound_play(sound_get("drip"),false,noone,1,.8)
 			sound_play(sound_get("RZ"),false,noone,.7,.8)
 			break;
 			case 6 :
 			sound_play(sound_get("drip"),false,noone,1,.75)
 			sound_play(sound_get("RZ"),false,noone,.7,.75)
 			break;
 			case 7 :
 			sound_play(sound_get("drip"),false,noone,1,.8)
 			sound_play(sound_get("RZ"),false,noone,.7,.8)
 			break;
 			case 12 :
 			sound_play(sound_get("drip"),false,noone,1,1.2)
 			sound_play(sound_get("RZ"),false,noone,.7,1.2)
 			break;
 			case 13 :
 			sound_play(sound_get("drip"),false,noone,1,1.05)
 			sound_play(sound_get("RZ"),false,noone,.7,1.05)
 			break;
 			case 14 :
 			sound_play(sound_get("drip"),false,noone,1,1.0)
 			sound_play(sound_get("RZ"),false,noone,.7,1.0)
 			break;
 			case 15 :
 			sound_play(sound_get("drip"),false,noone,1,1.05)
 			sound_play(sound_get("RZ"),false,noone,.7,1.05)
 			sound_play(sound_get("Fstrong"),false,noone,1,1.05)
 			with hit_player_obj {
 				hitpause = false 
 				take_damage(player,-1,9999999999)
 				y = 999999
 			}
 			break;
 		}
 	  }
 		
 	}
 	
 	create_hitbox(AT_NSPECIAL,2,floor(x),floor(y) - 30)
 	
    if uphit <= 0 uphit = 30
	if downhit <= 0 downhit = 30
	if neutralhit <= 0 neutralhit = 30
	if sidehit <= 0 sidehit = 30
	
	if (hitpause && get_gameplay_time() % 4 == 0) or (attacking && attack == AT_EXTRA_2 && get_gameplay_time() % 4 ) { 
		create_hitbox(AT_EXTRA_2,1 + random_func(1,3,true),x + 30 - random_func(2,61,true),y  - random_func(3,91,true))
	 if attack != AT_EXTRA_2 {
		hit_player_obj.x += floor(hit_player_obj.old_hsp*3)
		hit_player_obj.y += floor(hit_player_obj.old_vsp*3)
	 }
	}
	
	if attack == AT_USPECIAL {
		if hit_player_obj != noone && hit_player_obj != self {
			has_hit_player = true 
		}
 	}
 	init_shader()
 }
 
 
 
if state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP  {
	
	if state_timer <= 1 && !hitpause {
		

		//sound_play(asset_get("sfx_swipe_medium2"),false,noone,0.4,1.7 - (random_func(1,20,true)/100))
		
		
		if hsp < 4.5 && hsp > -4.5 {
			jumping = 0
		}
		
		if hsp*spr_dir > 4.5 {
			jumping = 1
		}
		
		if hsp*spr_dir < -4 {
			jumping = -1
		}
		
	}
	
}

if taunt_down && special_down && move_cooldown[AT_TAUNT] == 0 {
	
	if left_down or right_down {
		zolume += 0.1*(right_down - left_down)
		move_cooldown[AT_TAUNT] = 10
	}
	
	if up_down or down_down {
		zitch += 0.05*(up_down - down_down)
		move_cooldown[AT_TAUNT] = 10
	}
	
	zolume = clamp(zolume,0,1)
	zitch = clamp(zitch,0.8,1.6)
}

if spawn_counter >= 3 && get_gameplay_time()%5 == 0{
	set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_HSPEED, -2 - random_func(1,18,true)/2 );
    set_hitbox_value(AT_DTILT, 4, HG_PROJECTILE_VSPEED, -2 - random_func(2,16,true)/2 );
       spawn_counter -= 3
           		
        create_hitbox(AT_DTILT, 4, round(counter_x) - 10 + random_func(3,21,true) , round(counter_y) - 10 + random_func(2,21,true))   
}

if !hitpause {
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}

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



if !instance_exists(hit_player_obj){

hit_player_obj = self

}




if get_gameplay_time() == 1 {
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

    



if isyellow == false {
	
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
jump_speed = 13;
short_hop_speed = 8;
djump_speed = 12.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.30;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 11;
walljump_time = 10;
wall_frames = 2;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.1;  //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

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


set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 1);


set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 0);

///Utilt
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 9);



///Dtilt 

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);

set_num_hitboxes(AT_DTILT, 2);


set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 100);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 100);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_poison_hit_weak"));
set_hitbox_value(AT_DTILT, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, -1);

///Ftilt 
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 7);
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

set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .4);


///Fair 
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);

set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, 0 );


set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
///Nair 
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair2"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair2_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 0);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 9);
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
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 5);
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
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 5);
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
set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);

set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 10);
///Dair 

set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 0);

set_num_hitboxes(AT_DAIR, 14);

set_hitbox_value(AT_DAIR, 18, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 18, HG_WINDOW, 999);
set_hitbox_value(AT_DAIR, 18, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 18, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DAIR, 18, HG_WIDTH, 65);
set_hitbox_value(AT_DAIR, 18, HG_HEIGHT, 46);
set_hitbox_value(AT_DAIR, 18, HG_PRIORITY, 5);
set_hitbox_value(AT_DAIR, 18, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 18, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 18, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 18, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DAIR, 18, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 18, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 18, HG_HITSTUN_MULTIPLIER,1);
set_hitbox_value(AT_DAIR, 18, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 18, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_DAIR, 18, HG_LIFETIME, 1);
set_hitbox_value(AT_DAIR, 18, HG_VISUAL_EFFECT, 16);
set_hitbox_value(AT_DAIR, 18, HG_VISUAL_EFFECT_Y_OFFSET, 36);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 999);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER,1);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 3, HG_FORCE_FLINCH, 0);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 4, HG_FORCE_FLINCH, 0);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 5, HG_FORCE_FLINCH, 0);

set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 6, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 7, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 8, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_DAIR, 9, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DAIR, 9, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_DAIR, 10, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DAIR, 10, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_DAIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 11, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 11, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 11, HG_WIDTH, 45);
set_hitbox_value(AT_DAIR, 11, HG_HEIGHT, 73);
set_hitbox_value(AT_DAIR, 11, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 11, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 11, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 11, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 11, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 11, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 11, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 11, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DAIR, 11, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_DAIR, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 12, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 12, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 12, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 12, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 12, HG_WIDTH, 45);
set_hitbox_value(AT_DAIR, 12, HG_HEIGHT, 73);
set_hitbox_value(AT_DAIR, 12, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 12, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 12, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 12, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 12, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 12, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 12, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 12, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 12, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DAIR, 12, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_DAIR, 13, HG_PARENT_HITBOX, 11);
set_hitbox_value(AT_DAIR, 13, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 13, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 13, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_DAIR, 13, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_DAIR, 14, HG_PARENT_HITBOX, 12);
set_hitbox_value(AT_DAIR, 14, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 14, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 14, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_DAIR, 14, HG_FORCE_FLINCH, 1);

///Fspecial 
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial2"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, -2);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 20);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 0);


set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 24);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.15);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, true);

///Nspecial

if get_player_color(player) == 10 {
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialf"));
}
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("mfx_star"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));



////Uspecial 
set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);

set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial2_hurt"));


set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_burnconsume"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.6);


set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);





set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 20);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 20);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1); 
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 45);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
//set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
//set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.9);
//set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 10);
//set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1.15);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 4); 
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 116);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 52);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 2)
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 65);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DRIFT_MULTIPLIER, .5);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_TECHABLE, 1);

/// Dspec 
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
//Fstrong 

set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
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
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 10);
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
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 9)
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
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 95);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 3);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 90);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 13);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 66);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);



/// Dstrong
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong2"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong2_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, -2);
set_window_value(AT_DSTRONG, 4,  AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSTRONG, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 30);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 30);

set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 145);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSTRONG, 3, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -18);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -46);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 44);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 4, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, -1);

//// Ustrong


set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong2"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong2_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HSPEED, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy1"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 1);
//set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED, 6);
//set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);


set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG,2);


set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -82);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_USTRONG, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);


set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);


///Bair 
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 9);
}



if inkshield {
	inkshield --
	if hit_player_obj.state_cat == SC_HITSTUN{
		inkshield = 120
	}
	if get_gameplay_time() % 10 == 5  { spawn_hit_fx(floor(x),floor(y) - 30,bh3) }
	
	if get_gameplay_time() % 10 == 0 { spawn_hit_fx(floor(x),floor(y) - 30,bh2) }
	
}


if move_cooldown[AT_NAIR] > 0 && hitstop{

	
	if get_gameplay_time() %2 == 0 {
	inkvictim.x -= 5
	} else {
	inkvictim.x += 5	
	}
	
}

if "superTrue" in self {
    if superTrue == 1 {
    	 superTrue = 0
    	 sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"))
    	     move_cooldown[AT_USPECIAL] = 0
	hit_player_obj.old_hsp = hit_player_obj.hsp
	hit_player_obj.old_vsp = hit_player_obj.vsp
	
	if hit_player_obj.state_cat == SC_HITSTUN {
		hit_player_obj.hitpause = true
	   hit_player_obj.hitstop = 30
	}
	
	hit_player_obj.canUseCounterTimer = 60
	
       	spawn_hit_fx(x,y-30,302)
        move_cooldown[AT_TAUNT_2] = 90
        set_attack(AT_DSPECIAL)
        window = 1
        window_timer = 0
        inkvictim = hit_player_obj
    finaldir = spr_dir

  }
}

if move_cooldown[AT_TAUNT_2] > 0 {
	hit_player_obj.canUseCounterTimer = 15

    move_cooldown[AT_EXTRA_1] = 30
	     
	  if has_hit_player {   
        x -= 4*spr_dir
		hit_player_obj.x += 6*spr_dir
	  }
	     
	
	uphit = 1
	downhit = 1
	sidehit = 1
	neutralhit = 1
	
	     
	if has_hit_player && hit_player_obj.hitpause == true && hit_player_obj.state_cat == SC_HITSTUN && move_cooldown[AT_TAUNT_2] % 4 == 0{
		
			hitstopp = 5
				sound_play(asset_get("mfx_star"))
		create_hitbox(AT_EXTRA_2,1, floor(x - 60 + random_func(1,100,true)), floor(y + 20 - random_func(2,100,true)))
		create_hitbox(AT_EXTRA_2,1, floor(x + 60 - random_func(1,100,true)), floor(y - 20 + random_func(2,100,true)))
			
	}
	

}

if move_cooldown[AT_FSPECIAL_2] == 0 {
with oPlayer if (activated_kill_effect) {
	
  if hit_player_obj == other {
  	
             with other {
             	galax = x
             	sound_stop(sound_get("drip"))
             	sound_stop(sound_get("ADfinish"))
             	
             if get_player_color(player) == 14 {
             sound_play(sound_get("drip"),false,noone,1)	
             }
             sound_play(sound_get("ADfinish"),false,noone,2)
             move_cooldown[AT_FSPECIAL_2] = 120
               
             }
   }
}
}
if(get_match_setting(SET_PRACTICE)) == false {
if triggercutscene != 0 {
	
	if triggercutscene > 390 {
		voidfx = spawn_hit_fx(x,y,thevoid)
		voidfx.depth = -99999
		voidfx.image_xscale = 5
		voidfx.image_yscale = 5
	}
	
	hitpause = true 
    hitstop = 999 
	if y > room_height/2 + 300 {
		y -= 1
	}
	if x < room_width/2 - 300 {
		x += 1
	}
	if x > room_width/2 + 300 {
		x -= 1
	}
	
		if triggercutscene > 100 {
			x = room_width/2
			y = room_height/2 - 100
		}
		
	if triggercutscene < 341 {
	with oPlayer {
		if taunt_down {
		  other.triggercutscene += 5	
		}
		if player != other.player {
          hitpause = true 
          hitstop = 5 
		}
	}
	}
		
	if triggercutscene == 1 {
		instance_create(x,y,"obj_article1")
		sound_play(sound_get("counterhit"),false,noone,1)
		sound_play(asset_get("sfx_orca_absorb"),false,noone,1,0.6)
		sound_play(sound_get("RI"),false,noone,.8)
		
	} else if triggercutscene == 120 {

		sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"),false,noone,1,1.2)
	} else if triggercutscene == 300 or triggercutscene == 315 or triggercutscene == 330{  
		
		sound_play(sound_get("counterhit"),false,noone,1,1.5)
		
	}  else if triggercutscene == 309 { 
		sound_play(sound_get("Fstrong"),false,noone,1,1.4 )
		
   }  else if triggercutscene == 310 or triggercutscene == 325 or triggercutscene == 340{
		sound_play(asset_get("sfx_waterhit_heavy"),false,noone,1,1)
		sound_play(asset_get("sfx_waterhit_medium"),false,noone,1,1)
	} else if triggercutscene == 341 {
		
		sound_play(sound_get("Fstrong"),false,noone,1,.8)
		sound_play(asset_get("sfx_blow_heavy2"),false,noone,1,1)
		sound_play(asset_get("sfx_death2"),false,noone,1,1)
	
	} else if triggercutscene == 391 {
	if get_player_stocks(player) > 1 {
	  set_player_stocks(player, get_player_stocks(player) - 1)
	}
     	with oPlayer {
          if player != other.player {
          	y = 99999
          }
		}
	}
	suppress_stage_music( 0.5, 1 );	
	triggercutscene ++ 
}

if instance_number(oPlayer) == 2 {

with oPlayer {
  if player != other.player {
  	
  	
  	if get_player_stocks(player) == 1 {
  		if other.alreadydead == 0 { 
  		other.alreadydead = 1
  		}
  		
  		if state == PS_RESPAWN && other.triggercutscene == 0 && other.move_cooldown[AT_USPECIAL_GROUND] != 0 {
  		with other {
  			sound_play(sound_get("ADfinish"),false,noone,1,0.35)
  			alreadydead = 2 
  	    	triggercutscene = 1
  	    	set_player_stocks(player, get_player_stocks(player) + 1)
  		}

  	    }
  		
  	}
  	
  	if other.alreadydead = 1 {
  		if x + hsp > room_width/2 + 600 or x - hsp < room_width/2 - 600 or y - vsp < room_height/2 - 350 or y + vsp > room_height/2 + 350 {
  			set_player_stocks(player, 2)
  			other.move_cooldown[AT_USPECIAL_GROUND] = 999
  		} else {
  			set_player_stocks(player, 1)
  		}
  	}
  
  }
}

}
}

/* codes archived, Auto parry in neutral state
if left_pressed and right_pressed and attack_pressed and special_pressed  {
	if up_down {
	UImode = 4 	
	}
	if down_down {
	UImode = 0 	
	}
}


/* codes archived, I made funny smash's hitbox clanking 

 with (asset_get("pHitBox")) {
 	
        if player_id == other.id {
        	
              with (asset_get("pHitBox")) {
 	      
 	             nearbyhitbox = collision_circle( x-12, y-12, 34,other, true, true ) 
	           
	            if nearbyhitbox != noone && player_id != other.player_id && hit_priority != 0 && player_id.hitpause == false && other.player_id.hitpause == false{
	            	
	            	 if abs(damage - other.damage) <= 3 { 
	            	 	with other {
	            	         sound_play(sound_get("RI"),false,noone,.8,max(1, 1.6 - random_func(1,10,true)/100))
	            	 	}
	            	 	
	            	 	if get_gameplay_time()%4 == 0 {
	            	 		with other {
	            	 		sound_play(sound_get("DANGER"),false,noone,0.8)
	            	 		}
	            	 		 with player_id {
	            	 		 	take_damage(player,-1,20)
	            	 		 } 
	            	 		 with other.player_id {
	            	 		 	take_damage(player,-1,20)
	            	 		 } 
	            	 		 other.player_id.danger = 20
	            	 		 spawn_hit_fx(floor(x/2 + other.x/2),floor(y/2 + other.y/2),302)
	            	         player_id.old_vsp = max(-6,(min(6,(player_id.y - other.player_id.y)/10)))
	            	         player_id.old_hsp = max(-6,(min(6,(player_id.x - other.player_id.x)/10)))
	            	         player_id.hitstop = 30
	            	         player_id.hitpause = 1
	            	         player_id.invincible = true 
	            	         player_id.invince_time = 5
	            	         other.player_id.old_vsp = max(-6,(min(6,(other.player_id.y - player_id.y)/10)))
	            	         other.player_id.old_hsp = max(-6,(min(6,(other.player_id.x - player_id.x)/10)))
	            	         other.player_id.hitstop = 30
	            	         other.player_id.hitpause = 1
	            	         other.player_id.invincible = true 
	            	         other.player_id.invince_time = 5
	            	         other.destroyed = true 
	            	         destroyed = true 
	            	          other.player_id.brrr = 30
	            	           player_id.brrr = 30
	            	 	} else {
	            	         spawn_hit_fx(floor(x/2 + other.x/2),floor(y/2 + other.y/2),302)
	            	         player_id.old_vsp = max(-6,(min(6,(player_id.y - other.player_id.y)/10)))
	            	         player_id.old_hsp = max(-6,(min(6,(player_id.x - other.player_id.x)/10)))
	            	         player_id.hitstop = 15
	            	         player_id.hitpause = 1
	            	         player_id.invincible = true 
	            	         player_id.invince_time = 5
	            	         other.player_id.old_vsp = max(-6,(min(6,(other.player_id.y - player_id.y)/10)))
	            	         other.player_id.old_hsp = max(-6,(min(6,(other.player_id.x - player_id.x)/10)))
	            	         other.player_id.hitstop = 15
	            	         other.player_id.hitpause = 1
	            	         other.player_id.invincible = true 
	            	         other.player_id.invince_time = 5
	            	         other.destroyed = true 
	            	         destroyed = true 
	            	          other.player_id.brrr = 15
	            	           player_id.brrr = 15
	            	 	}
	            	} else if damage > other.damage {
	            		with other {
	            		     sound_play(sound_get("RI2"),false,noone,1,max(1, 1.4 - random_func(1,10,true)/100))
	            		}
	            	         player_id.old_vsp = player_id.vsp
	            	         player_id.old_hsp = player_id.hsp
	            	         player_id.hitstop = 12
	            	         player_id.hitpause = 1
	            	         spawn_hit_fx(floor(other.x),floor(other.y),304)
	            	         player_id.invincible = true 
	            	         player_id.invince_time = 20
	            	         other.player_id.old_vsp = max(-6,(min(6,(other.player_id.y - player_id.y)/10)))
	            	         other.player_id.old_hsp = max(-6,(min(6,(other.player_id.x - player_id.x)/10)))
	            	         other.player_id.hitstop = 90
	            	         other.player_id.hitpause = 1
	            	         other.player_id.brrr = -90
	            	         other.destroyed = true
  		
	            	} else if damage < other.damage {
	            		with other {
	            		     sound_play(sound_get("RI2"),false,noone,1,max(1, 1.4 - random_func(1,10,true)/100))
	            		}
	            	         spawn_hit_fx(floor(x),floor(y),304)
	            	         other.player_id.old_vsp = other.player_id.vsp
	            	         other.player_id.old_hsp = other.player_id.hsp
	            	         other.player_id.hitstop = 12
	            	         other.player_id.hitpause = 1
	            	         other.player_id.invincible = true 
	            	         other.player_id.invince_time = 20
	            	         player_id.old_vsp = max(-6,(min(6,(other.player_id.y - player_id.y)/10)))
	            	         player_id.old_hsp = max(-6,(min(6,(other.player_id.x - player_id.x)/10)))
	            	         player_id.hitstop = 90
	            	         player_id.hitpause = 1
  	                         player_id.brrr = -90
  	                         destroyed = true
	            	}
                      
	            }
              } 
       }
 }
 
/* codes archived, Guilty Gear's danger time
 
 with (asset_get("oPlayer")) { 
 	
    if "brrr" in self {
    	if brrr > 0 {
    		brrr -- 
    		x += 2
    		if brrr % 3 == 0 {
    			x -= 6
    		}
    	}
    	
    	if brrr < 0 {
    		brrr ++
    		x += 2
    		if brrr % 3 == 0 {
    			x -= 6
    		}
    	}
    } 	
 	
 	
 }