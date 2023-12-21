hurtbox_spr = sprite_get("idle_hitbox");
crouchbox_spr = sprite_get("crouch_hitbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

original_char_height = 72;
char_height = original_char_height;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .125;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 9;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 16;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .25;
moonwalk_accel = 1.4;

jump_start_time = 5;
original_jump_speed = 11.50;
jump_speed = original_jump_speed;
original_short_hop_speed = 7;
short_hop_speed = original_short_hop_speed;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
original_air_max_speed = 5;
air_max_speed = original_air_max_speed; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 0;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 28;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .05; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 7;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
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
air_dodge_startup_frames = 3;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 1;
roll_back_active_frames = 6;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

empty_fx = hit_fx_create(asset_get("empty_sprite"),0);
small_hit1 = hit_fx_create(sprite_get("small_hit1"),10);
medium_hit1 = hit_fx_create(sprite_get("medium_hit1"),25);
chomp_hit1 = hit_fx_create(sprite_get("chomp_hit1"),30);
chomp_hit2 = hit_fx_create(sprite_get("chomp_hit2"),30);
claw_hit = hit_fx_create(sprite_get("claw_hit"),20);
sweetspot_hit = hit_fx_create(sprite_get("sweetspot_hit"),40);
spin_hit = hit_fx_create(sprite_get("spin_hit"),40);
big_hit = hit_fx_create(sprite_get("big_hit"),30);
splash_hit = hit_fx_create(sprite_get("splash_hit"),30);
explosion_hit_big = hit_fx_create(sprite_get("explosion_hit_big"),30);
explosion_hit_medium = hit_fx_create(sprite_get("explosion_hit_medium"),30);
explosion_hit_small = hit_fx_create(sprite_get("explosion_hit_small"),30);
explosive_crackle_small = hit_fx_create(sprite_get("explosive_crackle_small"),20);
explosive_crackle_medium = hit_fx_create(sprite_get("explosive_crackle_medium"),24);
explosive_crackle_large = hit_fx_create(sprite_get("explosive_crackle_large"),28);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Misc vars
explosive_special = false;
can_dspecial_air = true;
uspec_angle = 90;
waveland_switch_timer = 0;
idleState = 0;

// Victory
set_victory_bg( sprite_get( "resultsbackground" ));
set_victory_theme( sound_get( "soap_victory" ));


// Intro
introTimer = -4;
introTimer2 = 0;
play_sound = false;

// Bubbles!
bubble_artist = noone;
in_bubble = false;
in_bubble_jumpsquat = false;
last_djumps = 0;
last_bubble = noone;
next_size = "tiny";
soap_bubbles = ds_list_create();
overlapping_bubbles = ds_list_create();
explosive_uspec_bubbles = [noone,noone,noone];
explosive_uspec_index = 0;
permitted_bubble = noone;
permitted_index = 0;
bubble_knockback_force = 7;
inputting_jump = false;
last_hit_bubble = noone;
bubble_lockout_time = 24;
tiny_bubble_lifetime = 5*60;
small_bubble_lifetime = 10*60;
big_bubble_lifetime = 20*60;
closest_jumpable_bubble = noone;
hitbox_bubble_creation_queue = ds_list_create();
bubble_jump_ignore_timer = 0;
last_hit_bubble_size = 0;
bubble_opacity = 0.9;
bubble_list_size = 0;
bubble_jumps = -1;
close_bubbles = array_create(0);

//#region Bubble sprites

tiny_bubble_sprite = sprite_get("tiny_bubble");
small_bubble_sprite = sprite_get("small_bubble");
big_bubble_sprite = sprite_get("big_bubble");

tiny_bubble_explosion_sprite = sprite_get("tiny_bubble_explosion");
small_bubble_explosion_sprite = sprite_get("small_bubble_explosion");
big_bubble_explosion_sprite = sprite_get("big_bubble_explosion");

tiny_bubble_pop = hit_fx_create(sprite_get("tiny_bubble_pop"),30);
small_bubble_pop = hit_fx_create(sprite_get("small_bubble_pop"),30);
big_bubble_pop = hit_fx_create(sprite_get("big_bubble_pop"),30);

//#endregion Bubble Sprites

// Bubble knockback define
HG_BUBBLE_KNOCKBACK = 41;
HG_BUBBLE_ANGLE = 50;
