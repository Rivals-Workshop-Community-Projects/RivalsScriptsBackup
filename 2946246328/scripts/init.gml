/*
Waluigi variables
*/
//RNG Voice
voice = 1;
should_use_voice = 0;
fspecialprat = 0;
afterimage_array = 0;
bomb_count = 0;
bomb_max = 2;

spin_count = 0;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;
groundswitch = 0;

//intro
introTimer = -4;
introTimer2 = 0;

grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 7;
initial_dash_speed = 5.8;
dash_speed = 6.0;
dash_turn_time = 9;
dash_turn_accel = 1.75;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .3;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .7;
prat_fall_accel = .8; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.05; //grounded deceleration when wavelanding

grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 1;
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

dash_sound = asset_get("sfx_dash_start");
dash_turn_sound = asset_get("sfx_land_heavy");
land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = sound_get("jump1");
wall_jump_sound =  sound_get("jump1");
air_dodge_sound = asset_get("sfx_quick_dodge");
splashfx = hit_fx_create( sprite_get( "anglarahitfx" ), 18 );
blank = hit_fx_create( sprite_get( "blank" ), 2 );
splash_dair = hit_fx_create( sprite_get( "bubble_proj" ), 20 );
sweet = hit_fx_create( sprite_get( "sweet" ), 15 );
small = hit_fx_create( sprite_get( "smallhit" ), 15 );
set_hit_particle_sprite(1, sprite_get("hitspark"))
breakfx = hit_fx_create( sprite_get( "breakfx" ), 15 );
star = hit_fx_create( sprite_get( "star" ), 15 );
big = hit_fx_create( sprite_get( "orbhitfx_large" ), 15 );
// Victory
set_victory_bg(sprite_get("victory_bg")); // victory_background.png
set_victory_theme(sound_get("victory"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//zard afterimage

//After-Image Code
afterimage_array = 0;
var col_r = get_color_profile_slot_r( get_player_color(player), 0);
var col_g = get_color_profile_slot_g( get_player_color(player), 0);
var col_b = get_color_profile_slot_b( get_player_color(player), 0);

afterimage_colour = make_color_rgb(col_r, col_g, col_b);
