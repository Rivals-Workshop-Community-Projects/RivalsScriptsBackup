hurtbox_spr = sprite_get("hurtbox_idle");
crouchbox_spr = sprite_get("hurtbox_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

grabbed_player_obj = noone;    
grabbed_player_relative_x = 0;
grabbed_player_relative_y = 0;
        
timer = 0;
ustrong_char = noone;

flowy_active = false;
fuckingdie = false;

is_frisk = true;
cur_plr = noone;

killarticles = false;
soul_out = false;
tough_glove = hit_fx_create(sprite_get("tough_glove"),30);
ar_hit = 0;
stage_x = 0;
having_a_bad_time = false;


h= false;
flowydir = noone;

cancel = false;
buffer = 0;
notinfuckinland = false;


chosen_item = 0; //0=sandwich, 1=legendary hero, 2=tea, 3=ribbon
sandwich_used = 0;
legend_used = 0;
tea_used = 0;
ribbon_used = 0;
item_menu_active = false;
item_timer = 0;
fxspd=0;
hudspd=0;

cd_sandwich = 0;
cd_hero = 0;
cd_tea = 0;
cd_ribbon = 0;
general_cooldown = 0;

armor_active = false;
buff_active = false;
speedbuff_active = false;
extra_damage = 2;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9.45;
short_hop_speed = 6;
djump_speed = 8.75;
leave_ground_max = 7.35; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6.38; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.35;
prat_fall_accel = .65; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = 0.45;
hitstun_grav = 0.50;
knockback_adj = 1.10; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 17;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 3;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

save_hfx = hit_fx_create(sprite_get("SAVE_FX"), 30);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

