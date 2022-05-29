dash_fx = hit_fx_create( sprite_get("fspecial_dash"), 6)
leak_proj = -4;
miku_clone = -4;
clone_attack_hold = false;
clone_attack_hold_type = 0;

//Rioku's Neutral Strong code
//Strong buffer stuff so you can have a neutral strong press
strong_buffer = 0;
strong_pressed = false;
strong_was_pressed = false;

if (object_index != oTestPlayer){ //Code to stop crashing in test player
	if (!custom_clone) {
		custom_clone = false;
		clone_player = instance_create(x,y, "oPlayer");
		clone_player.clone_owner = id
		clone_player.x = x;
		clone_player.y = y;
	} else {
		clone_attack = 0;
		clone_active = 0;
		custom_clone = true;
	}
} else {
	clone_player = -4;
}

color_r = 255;
color_b = 0;
color_g = 0;
color_type = 0;
color_timer = 1;

b_reversed_nspecial = false;

sfx_veg_light1 = asset_get("sfx_syl_nspecial_flowerhit");
sfx_veg_light2 = asset_get("sfx_syl_ustrong_part3")
sfx_veg_med1 = asset_get("sfx_syl_ustrong");
sfx_veg_med2 = asset_get("sfx_syl_ustrong_part3");
sfx_veg_heavy1 = sound_get("veg_heavy");
sfx_veg_heavy2 = asset_get("sfx_syl_dstrong");
sfx_wet_light = sound_get("splat3");
sfx_wet_med = sound_get("splat1");
sfx_wet_heavy = sound_get("splat2");


set_victory_bg( sprite_get( "bg" ));
set_victory_theme( sound_get( "victory" ));

//

hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56; //56
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 4.5; 
walk_accel = .5;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 8.5;
dash_speed = 7.5;
dash_turn_time = 6;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .30; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .75;
moonwalk_accel = 3;

//MIKU IS LACKING JUMP STATS RIGHT NOW--------------------------------------

jump_start_time = 5;
jump_speed = 10.5; //10.5
short_hop_speed = 5.5;
djump_speed = 10.5; //10.5
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4; //.25
prat_fall_accel = .2; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9; 
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5; //5
hitstun_grav = .5;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, 1> = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 1;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
//
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;







