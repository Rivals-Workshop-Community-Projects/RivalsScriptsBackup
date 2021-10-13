hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;
set_victory_theme(sound_get("mus_rob_victory"))

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.5 ;
walk_accel = 0.12;
walk_turn_time = 3;
initial_dash_time = 9;
initial_dash_speed = 7.2 ;
dash_speed = 5.8 ;
dash_turn_time = 9;
dash_turn_accel = 2;
dash_stop_time = 9;
dash_stop_percent = 0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.2 ;

jump_start_time = 5;
jump_speed = 9 ;
short_hop_speed = 6;
djump_speed = 8.5 ;
leave_ground_max = 4.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .32; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 24; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 9.5;
walljump_time = 12;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12.5; //fast fall speed
gravity_speed = .4;
hitstun_grav = .38;
knockback_adj = 1.04; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 1;
air_dodge_speed = 6.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_gus");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

laser_choice = 0
laser_angle = 0
laser = noone
laser_new = noone
gyro = noone
reflect_timer = 0
laser_bounce = false
laser_saved_vsp = 0
gyro_charge = 8
pickup_able = false
laser_charging = 0
random_color = 0
lariat_count = 0
gyro_pickup = true
gas = 15
gas_sfx = noone
saved_hsp = 0

laser_trail = hit_fx_create(sprite_get("laser_trail"), 12)
laser_trail_blue = hit_fx_create(sprite_get("laser_trail_blue"), 12)
laser_fx_small = hit_fx_create(sprite_get("laser_fx_small"), 16)
laser_gyrobounce_fx = hit_fx_create(sprite_get("laser_gyrobounce_fx"), 16)
fire_hfx = hit_fx_create(sprite_get("fire_hfx"), 20)

useskins = false

//Halloween Stuff
halloween_end = hit_fx_create( sprite_get( "halloween_end" ), 18);

if(get_player_color(player) == 16){
	halloween = true
}else{
	halloween = false
}

//Animation


if(get_player_color(player) > 7){
	//CCS
	spr_charselect = sprite_get("famicom_charselect");
	
	//Ground
	spr_idle = sprite_get("famicom_idle");
	spr_crouch = sprite_get("famicom_crouch");
	spr_walk = sprite_get("famicom_walk");
	spr_walkturn = sprite_get("famicom_walkturn");
	spr_dash = sprite_get("famicom_dash");
	spr_dashstart = sprite_get("famicom_dashstart");
	spr_dashstop = sprite_get("famicom_dashstop");
	spr_dashturn = sprite_get("famicom_dashturn");

	//Air
	spr_jumpstart = sprite_get("famicom_jumpstart");
	spr_jump = sprite_get("famicom_jump");
	spr_doublejump = sprite_get("famicom_doublejump");
	spr_walljump = sprite_get("famicom_walljump");
	spr_pratfall = sprite_get("famicom_pratfall");
	spr_land = sprite_get("famicom_land");
	spr_landinglag = sprite_get("famicom_landinglag");

	//Dodge
	spr_parry = sprite_get("famicom_parry");
	spr_roll_forward = sprite_get("famicom_roll_forward");
	spr_roll_backward = sprite_get("famicom_roll_backward");
	spr_airdodge = sprite_get("famicom_airdodge");
	spr_airdodge_waveland = sprite_get("famicom_waveland");
	spr_tech = sprite_get("famicom_tech");

	//Hurt
	spr_hurt = sprite_get("famicom_hurt");
	spr_bighurt = sprite_get("famicom_bighurt");
	spr_hurtground = sprite_get("famicom_hurtground");
	spr_uphurt = sprite_get("famicom_uphurt");
	spr_downhurt = sprite_get("famicom_downhurt");
	spr_bouncehurt = sprite_get("famicom_bouncehurt");
	spr_spinhurt = sprite_get("famicom_spinhurt");

	//Attack
	spr_jab = sprite_get("famicom_jab");
	spr_dattack = sprite_get("famicom_dattack");
	spr_ftilt = sprite_get("famicom_ftilt");
	spr_dtilt = sprite_get("famicom_dtilt");
	spr_utilt = sprite_get("famicom_utilt");
	spr_nair = sprite_get("famicom_nair");
	spr_fair = sprite_get("famicom_fair");
	spr_bair = sprite_get("famicom_bair");
	spr_uair = sprite_get("famicom_uair");
	spr_dair = sprite_get("famicom_dair");
	spr_fstrong = sprite_get("famicom_fstrong");
	spr_ustrong = sprite_get("famicom_ustrong");
	spr_dstrong = sprite_get("famicom_dstrong");
	spr_nspecial = sprite_get("famicom_nspecial");
	spr_fspecial = sprite_get("famicom_fspecial");
	spr_uspecial = sprite_get("famicom_uspecial");
	spr_dspecial = sprite_get("famicom_dspecial");
	spr_taunt = sprite_get("famicom_taunt");
	
	spr_uthrow = sprite_get("famicom_uthrow");
	spr_fthrow = sprite_get("famicom_fthrow");
	spr_dthrow = sprite_get("famicom_dthrow");

	useskins = true;
}