hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;


dreameater_sprite = sprite_get("dreameatersouls");
shadowball_hit = false;
shadowball_hit_player = noone;
shadowball_hit_timer = 0;
display_level = 0;


char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .125;
pratfall_anim_speed = .25;

walk_speed = 5;
walk_accel = 1;
walk_turn_time = 1;
initial_dash_time = 1;
initial_dash_speed = 1;
dash_speed = 5;
dash_turn_time = 1;
dash_turn_accel = 1;
dash_stop_time = 1;
dash_stop_percent = 1; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .1;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 5;
short_hop_speed = 3;
djump_speed = -9;
djump_accel = -1.1;
djump_start_time = 4;
djump_accel_end_time = 15;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 3; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .15;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .025;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 6;
walljump_time = 32;
max_fall = 5; //maximum fall speed without fastfalling
fast_fall = 7; //fast fall speed
gravity_speed = .1;
hitstun_grav = .48;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
waveland_sound = sound_get("nothing");
jump_sound = sound_get("jump");
djump_sound = sound_get("djump");
air_dodge_sound = sound_get("nothing");
set_victory_theme( sound_get( "victory_gengar" ));
set_victory_bg( sprite_get( "bg" ));
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

u_cooldown = 0;
u_max_cool = 150;

u_dir = 90;
u_player = noone;
u_hit_proj = false;
u_player_reset = true;
nspec_speed = 10;
nspec_explode = hit_fx_create(sprite_get("explosion"),24)
explode = hit_fx_create(sprite_get("hitfx"),20);
bling = hit_fx_create(sprite_get("cursedfx"), 20);


//If your character isn't supposed to give doublejump back when uair-ing 
//out of doublejump's first frames then set this to false right here - @Danilo-PJ#3122
tap_jump_protection_enabled = true;
old_djumps = 0;
dj_state_timer = 0;

is_double_jump = false;
is_jumpsquat = false;

//Strong buffers for neutral strong input - @Rioku#2015
strong_buffer = 0;
strong_pressed = false;
strong_was_pressed = false;
