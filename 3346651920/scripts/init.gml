hurtbox_spr = sprite_get("_hurtbox");
crouchbox_spr = sprite_get("_hurtbox_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 122;
idle_anim_speed = 0;
crouch_anim_speed = 0;
walk_anim_speed = 0.08;
dash_anim_speed = 0.18;
pratfall_anim_speed = 0.2;

walk_speed = 2.25;//2
walk_accel = 0.1;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = 5;
dash_speed = 5.5;//5
dash_turn_time = 8;
dash_turn_accel = 1.5;
dash_stop_time = 8;//6
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9.7;
short_hop_speed = 6.5;//6
djump_speed = 8;
leave_ground_max = 3;//2.5 //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 3;//2 //the maximum hsp you can have when jumping from the ground
air_max_speed = 3;//3 //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 2;//2 //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.25;//0.25
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.06;//0.04
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 15;//13 //fast fall speed
gravity_speed = 0.5;
hitstun_grav = 0.5;
knockback_adj = 1;//1.1 //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
//hes a slender slim boy but he is tall

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.02; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 2;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 1;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_med2");
waveland_sound = asset_get("sfx_syl_ustrong_part3");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//!!!

DAY_ONE_MODE = false;

//!!!

day_one_special_intro = false;

fsp_did = false;

// stage edges
stage_x_left = get_stage_data( SD_X_POS );
stage_x_right = room_width - stage_x_left;

//mawralgrab
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

fst_hit = false;
nsp_hit = false;

jab_timer = 0; //for limiting minimum duration
jab_timer_min = 20;//20 //time til you can end jab
jab_timer_staticstart = 12; //time til static start hurting
jab_end_timer = 0;
static_wait = 2;
slender_staticheavy_sound_id = -4;
slender_staticmedium_sound_id = -4;
slender_staticheavy_volume = 0;
slender_staticmedium_volume = 0;
dist_m_static = 140;
dist_h_static = 110;
gimme_20_dollars = false; //try turning this on

dsp_distance = 0;
dsp_timer = 0; //for limiting min/max duration
dsp_timer_min = 16;//30
dsp_timer_max = 120;
dsp_end_timer = 0;
dsp_orig_dir = 1;
dsp_real_cd = 0;
dsp_air_max_distance = 165; //
dsp_air_try_cd = 0; //dsp air attempt cooldown
dsp_air_try_cd_max = 30; //dsp air attempt cooldown
dsp_air_try_cd_timer = 0; //for vfx
dsp_air_try_cd_timer_max = 20;

sl_prev_vsp = 0;
sl_prev_vsp_old = 0;
sl_prev_hsp = 0;
sl_prev_hsp_old = 0;
sl_prev_state = 0;
sl_prev_prev_state = 0;
sl_prev_prev_prev_state = 0; //what
sl_prev_state_cat = 0;
sl_prev_state_timer = 0;
sl_prev_attack = 0;
sl_prev_window = 0;
sl_prev_window_timer = 0;
sl_prev_spr_dir = 1;
sl_prev_strong_charge = 0;

static_hitpause = -4;

background_drawer_id = -4;
slender_playercounting = 0;

natdev = false;

set_victory_bg( sprite_get("_victorybg") )
set_victory_theme( sound_get("_victorytheme") );


//compat land

steve_death_message = "death.attack.void";
arena_title = "The Folklore";
battle_text = "* It's too dark to see around you.";












