///

if !hitpause {
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}

if state == PS_PRATFALL {
	can_fast_fall = true
}

if free {
	 move_cooldown[AT_NSPECIAL] = 0
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
	move_cooldown[AT_NSPECIAL_2] = 0
	sound_stop(drip_sound)
	  move_cooldown[AT_NAIR] = 0
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
jump_speed = 12;
short_hop_speed = 7;
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

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);

set_num_hitboxes(AT_DTILT, 2);


set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 110);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 110);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, .9);
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
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6);
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
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 20);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 0);


set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 14);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_holy_lightning"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, true);

///Nspecial

if get_player_color(player) == 10 {
	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecialf"));
}
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
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
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 100);
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
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));



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
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 50);
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
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
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
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 4)
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
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20);
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
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1);
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
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE_FLIPPER, 0 );
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, 0.5);
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
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 8);
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
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1);
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

if isyellow {
	
	if attacking {
		
	}
	
	
	if get_gameplay_time() < 120 {
		visible = false
	}
	
	if get_gameplay_time() == 60 {
	sound_play(asset_get("sfx_clairen_swing_mega_instant"))
	sound_play(asset_get("sfx_ori_bash_use"))
	sound_play(asset_get("sfx_bird_nspecial"))
    }
    
   	if get_gameplay_time() == 70 {
   		       			sound_play(asset_get("mfx_star"))
	spawn_hit_fx(x, y-30, 304)
	sound_play(asset_get("sfx_clairen_swing_mega_instant"))
	sound_play(asset_get("sfx_ori_bash_use"))
	sound_play(asset_get("sfx_bird_nspecial"))
    }
    
       	if get_gameplay_time() == 80 {
       			sound_play(asset_get("mfx_star"))
	spawn_hit_fx(x, y-30, 302)
	sound_play(asset_get("sfx_clairen_swing_mega_instant"))
	sound_play(asset_get("sfx_ori_bash_use"))
	sound_play(asset_get("sfx_bird_nspecial"))
    }
    
    
           	if get_gameplay_time() == 90 {
           			sound_play(asset_get("mfx_star"))
	spawn_hit_fx(x, y-30, 306)
	sound_play(asset_get("sfx_clairen_swing_mega_instant"))
	sound_play(asset_get("sfx_ori_bash_use"))
	sound_play(asset_get("sfx_bird_nspecial"))
    }
    
               	if get_gameplay_time() == 100 {
               			sound_play(asset_get("mfx_star"))
	spawn_hit_fx(x, y-30, 302)
	sound_play(asset_get("sfx_clairen_swing_mega_instant"))
	sound_play(asset_get("sfx_ori_bash_use"))
	sound_play(asset_get("sfx_bird_nspecial"))
    }
    
               	if get_gameplay_time() == 110 {
               			sound_play(asset_get("mfx_star"))
	spawn_hit_fx(x, y-30, 304)
	sound_play(asset_get("sfx_clairen_swing_mega_instant"))
	sound_play(asset_get("sfx_ori_bash_use"))
	sound_play(asset_get("sfx_bird_nspecial"))
    }
    
    if get_gameplay_time() == 120 {
    	visible = true
	sound_play(asset_get("mfx_star"))
	spawn_hit_fx(x, y-30, 305)
	set_attack(AT_NSPECIAL)
	window = 1
	window_timer = 1
    }
    
	if get_gameplay_time() > 60 && get_gameplay_time() < 86 {
		spawn_hit_fx (x - (600 - (get_gameplay_time()-60)*30)*spr_dir , y + 200 - (get_gameplay_time() - 60)*10, saillusion)
	}
	
	if get_gameplay_time() > 70 && get_gameplay_time() < 96 {
		spawn_hit_fx (x - (600 - (get_gameplay_time()-70)*30)*spr_dir , y - 200 + (get_gameplay_time() - 70)*10, saillusion)
	}
	
	if get_gameplay_time() > 80 && get_gameplay_time() < 106 {
		spawn_hit_fx (x - (600 - (get_gameplay_time()-80)*30)*spr_dir , y - 10, saillusion)
	}
	
	
	if get_gameplay_time() > 90 && get_gameplay_time() < 116 {
		spawn_hit_fx (x - (600 - (get_gameplay_time()-90)*30)*spr_dir , y - 100 + (get_gameplay_time() - 90)*5 , saillusion)
	}
	
		if get_gameplay_time() > 100 && get_gameplay_time() < 126 {
		spawn_hit_fx (x - (600 - (get_gameplay_time()-100)*30)*spr_dir , y + 100 - (get_gameplay_time() - 100)*5 , saillusion)
	}
	
}


if move_cooldown[AT_EXTRA_1] > 0 {
	

	if get_gameplay_time() % 10 == 5  { spawn_hit_fx(floor(x),floor(y) - 30,bh3) }
	
	if get_gameplay_time() % 10 == 0 { spawn_hit_fx(floor(x),floor(y) - 30,bh2) }
	
	create_hitbox(AT_NSPECIAL,2,floor(x),floor(y) - 30)
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

if triggercutscene != 0 {
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
		sound_play(sound_get("SpaceCut"),false,noone,1)
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
  		}

  	    }
  		
  	}
  	
  	if other.alreadydead = 1 {
  		if x + hsp > room_width or x - hsp < 0 or y - vsp < 0 or y + vsp > room_height {
  			set_player_stocks(player, 2)
  			other.move_cooldown[AT_USPECIAL_GROUND] = 999
  		} else {
  			set_player_stocks(player, 1)
  		}
  	}
  
  }
}

}