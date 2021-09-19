hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//Custom Player Variables
jet_charge = false;
jet_used = 0;
jet_timer = 0;
jet_timer_mode = 0;

nspec_hitfx = hit_fx_create(sprite_get("nspecial_projhit"), 20);
fspec_hitfx = hit_fx_create(sprite_get("fspec_burst"), 12);
uspec_hitfx = hit_fx_create(sprite_get("uspec_fire"), 12);
ustrong_hitfx = hit_fx_create(sprite_get("ustrong_flame"), 15);
uspec_burst_hitfx = hit_fx_create(sprite_get("uspec_burst"), 20);
dspec_flame = hit_fx_create(sprite_get("dspecial_fire"), 30);
burst_flame = hit_fx_create(sprite_get("jetburst"), 20);
fspec_used = false;

grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

// //Init.gml
// bTut_Tips = true; // This is to enable the feature for your character.
// bTut_tips_total = 1; //How many tips you want to show for your character. You can add as many as you want.

// bTut_tips_title[0] = "Wavedashing";
// bTut_tips_desc[0] = "When pressing dodge/shield immediately after jumping, within 5 pixels above/below a platform, the game will stick you to it. With it, you can use your airdodge momentum to travel across the stage!";

// bTut_Missions = true; // This is to enable the feature for your character.
// bTut_mssn_total = 2;  //How many trials you want to make for your character. You can add as many as you want.
// bTut_mssn_title[0] = "Showing Tech / Mechanics";
// bTut_mssn_desc[0]  = "No Need to Hit Opponent";
// bTut_mssn_title[1] = "Variable Specific Combo";
// bTut_mssn_desc[1]  = "This is an example if let's say your character needs to be at 100 meter for this combo!";

char_height = 62;
idle_anim_speed = .09;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 6;
djump_speed = 11.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .5; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
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
