hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 66;
idle_anim_speed = .18;
crouch_anim_speed = 1 / 5;
walk_anim_speed = .18;
dash_anim_speed = .20;
pratfall_anim_speed = .25;

walk_speed = 4 + has_rune("H") * 2;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 8.5 + has_rune("H") * 2;
dash_speed = 7 + has_rune("H") * 2.5;
dash_turn_time = 12;
dash_turn_accel = 0.7;
dash_stop_time = 8;
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.3 - has_rune("F") * 0.2;
moonwalk_accel = 1.5;

jump_start_time = 5;
jump_speed = 10.1;
short_hop_speed = 5.5;
djump_speed = 8; djump_speed_ref = djump_speed;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.8 + has_rune("H") * 2.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .28;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 3 + has_rune("J") ;
double_jump_time = 44; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 7;
walljump_time = 38;
wall_frames = 2;
max_fall = 9.5; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .4;
hitstun_grav = .4;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .03; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 10;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

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
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5 

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9 ; //roll speed
roll_backward_max = 9 ;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


is_last_jump_short = false;

last_jab = 1;


// POKEMON STADIUM
pkmn_stadium_front_img = sprite_get("pokemon_sprite_front");
pkmn_stadium_back_img = sprite_get("pokemon_sprite_back");

pkmn_stadium_name_override = "Mystia"

// The Chosen One Support

tcoart = sprite_get("tcoart");

//Mt. DeDeDe Support
arena_title = "Night Sparrow Apparition"
arena_short_name = "Mystia"

// Trummel
trummelcodecneeded = false;
trummelcodec_id = noone;


// KIRBY
kirbyability = 16;
enemykirby = noone; // by doing this it will stop _my side_ from spamming error messages to the log
swallowed = 0; // changed swallowed implementation to fix error message as well

// FXs
dash_effect_down = hit_fx_create( sprite_get("dash_down"), 20);
dash_effect_up = hit_fx_create( sprite_get("dash_up"), 20);
dash_effect_front = hit_fx_create( sprite_get("dash_front"), 20);

grab_fx = hit_fx_create( sprite_get("grab_fx"), 22);

effect_nothing = hit_fx_create( sprite_get("nothing"), 2)

lamprey_destroy = hit_fx_create( sprite_get("lamprey_die"), 12)

// grab
grab_id = noone;


// 
caged_list = ds_list_create();
cage_time_list = ds_list_create();

cage_time_max = 65; // 65

fam_rot = 0;

uspecial_max = 1; //number of uspecial can use
has_uspecial = uspecial_max

fspecial_max = 1; //number of fspecial can use
has_fspecial = fspecial_max


parry_lag_ref = 1;
