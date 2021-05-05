hurtbox_spr = sprite_get("hurtbox")
crouchbox_spr = sprite_get("crouch_hurtbox")
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = 11 / 60;
crouch_anim_speed = .1;
walk_anim_speed = 12 / 60
dash_anim_speed = 12 / 60;
pratfall_anim_speed = .3; pratfall_anim_speed_ref = pratfall_anim_speed;

walk_speed = 2;
walk_accel = 0.15;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 5.75 + has_rune("J") * 1;
dash_speed = 5.5 + has_rune("J") * 1;
dash_turn_time = 12;
dash_turn_accel = 0.85;
dash_stop_time = 6;
dash_stop_percent = .3; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 7;
djump_speed = 13.5;
leave_ground_max = 4 + has_rune("J"); //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4 + has_rune("J"); //the maximum hsp you can have when jumping from the ground
air_max_speed = 3.5 + has_rune("J"); //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25 + has_rune("J") * 0.15;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .035;
max_djumps = 1 + has_rune("C");
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8.5;
walljump_time = 28;
wall_frames = 2;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; fast_fall_ref = fast_fall  //fast fall speed
gravity_speed = .7;
hitstun_grav = .53;
knockback_adj = 0.9; // THE touhou heavy     the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 8;
wave_land_time = 8;
wave_land_adj = 1.2 + has_rune("J") * 0.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

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
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames =3 ;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("enter_water")
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


// intro
need_intro = true;
intro_im = 0;
intro_spd = 12 / 60;

intro_frame_skip = 0;

intro_last_image = 0;
intro_last_time = 0;

// uspe
can_uspe = true; // only refresh when touching the ground (and dying)

inside_water = false;

// dspe
x_cursor = 0;
y_cursor = 0;

aimed_id = noone;

is_aimable = false;

// bair
grab_id = noone;

// Fspecial
x_hand = 0; //reference to the player
y_hand = 0; // reference to the game

spd_hand = 0;
acc_hand = 0.5 + has_rune("G") * 0.2
acc_hand_ref = acc_hand;

// FXs

// nothing
effect_nothing =  hit_fx_create( sprite_get("nothing"), 2);
// USPE
water_column_destroy_fx = hit_fx_create(sprite_get("water_column_destroy"), 15);
geyser_destroy_fx = hit_fx_create(sprite_get("geyser_destroy"), 15);

// dspe
missile_explode_fx = hit_fx_create(sprite_get("missile_effect"), 15);

/// bair
grab_fx = hit_fx_create( sprite_get("grab_fx"), 22);

// fspecial
fspecial_swipe_fx = hit_fx_create( sprite_get("fspecial_swipe"), 12);



// The Chosen One Support

tcoart = sprite_get("tcoart");