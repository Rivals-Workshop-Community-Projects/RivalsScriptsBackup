hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("crouch_hb");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 50;
idle_anim_speed = 0.085;
crouch_anim_speed = 0.04;
pratfall_anim_speed = 0.25;

walk_anim_speed = 0.1;
walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;

initial_dash_time = 10;//14
initial_dash_speed = 6;

dash_anim_speed = 0.12;
dash_speed = 5.5;
dash_turn_time = 8;
dash_turn_accel = 2;
dash_stop_time = 4;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 5.5;
djump_speed = 9.5;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.3;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9.5; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = 0.5;
hitstun_grav = 0.5;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.25; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 2;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 5;
techroll_recovery_frames = 4;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 1;
roll_back_active_frames = 5;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

wall_frames = 1;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("step");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


natdev = false;

alt_init = false;

//walkstuff
walksound = false;
dashsound = false;
dashvolume_max = 0.4;
dashvolume_min = 0.2;
dashvolume_inc = 0.05;
dashvolume = dashvolume_max;

//crouchstuff
crouch_timer = 0;
crouch_timer_max = 10;

//
AG_IASA = 70 //1 or 0, true or false

//vfx stuff
effectequip = hit_fx_create( sprite_get("equip"), 21 );
effectequip_faded = hit_fx_create( sprite_get("equip_faded"), 21 );
door_fade = hit_fx_create( sprite_get("door_fade"), 16 );

//gameplay stuff
landinghbchange = false;
uair_timer = 0;
uair_timer_max = 90;

fsp_angle_str = 0;
fsp_angle_move_a = 0;
fsp_angle_move_b = 0;
fsp_used = false;
fsp_timer = 0;
fsp_timer_max = 80;
fsp_dir_lock = 1;
fsp_jump_storage = -1;

pratfall_queue = false;

door_storage = -4;
hit_only_once_storage = false;
jabparry_queue = false;

ground_detector = -4;
grounddetected = false;
dsp_orig_y = 0;

//mawralgrab
grabbed_player_obj = noone;
grabbed_player_relative_x = 0;
grabbed_player_relative_y = 0;
nsp_hit = false;
nsp_djump_healed = false;

//cosmetic stuff
cat_rand = 0;
in_effect_tracker = false;
in_effect_tracker_prev = false;
no_equip_sound = false;
no_equip_indicate_timer = 0;
general_init_check = 0;
has_mirror = false;
extra_col = 0;







