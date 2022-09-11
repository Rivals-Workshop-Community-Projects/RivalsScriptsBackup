voice = get_synced_var(player);

turnabout = false;
turnabout_timer = 0;
turnabout_timer_pause = 0;
turnabout_timer_max = 1800; //25 sec

evidence_count = 0;
good_evidence_count = 0;
bad_evidence_count = 0;
turnabout_ready = false;    //good_evidence_count = 3

good_evidence_percent = 0;
bad_evidence_percent = 0;   //percentage to get evidence types
food_evidence_percent = 0;
evidence_roll = 0;          //roll for evidence type 

evidence1_status = 0;       //0none, 1good, 2bad, 3food
evidence1 = 0;              //0none, 1-6good, 7-16bad, 17-18food
evidence2_status = 0; 
evidence2 = 0; 
evidence3_status = 0; 
evidence3 = 0;              //evidence to throw on use of fspecial, 
throw_evidence = 0;         //pick the first bad piece of evidence to throw 
parry_evidence = 0;         //pick the first good piece of evidence to lose on parry
evidence_proj_sprite = 0;   //evidence_proj"__"_strip4

evidence_box_index = 0;     //for dspecial gui
evidence_box_icon = 0;      //for dspecial gui

dspecial_random_index = 2;  //so the while script in dspecial doesn't crash the game

key_dir = 0;
ustrong_launch_dir = 0;
ustrong_parried = 0;

uspecial_angle = 90;
uspecial_old_hsp = hsp;
uspecial_old_vsp = vsp;

cornered_segment = 0;
cornered_timer = 0;
cornered_disabled = 0;
turnaboutID = noone;
cornered_sound = noone;
song_type = 0;

strong_notif_timer = 120;
special_error_cooldown = 0; //60

camera_x = 0;
camera_y = 0;

hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .15;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 6.25;
dash_speed = 5.5;
dash_turn_time = 11;
dash_turn_accel = 1.3;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .65;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 6.5;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .08; //grounded deceleration when wavelanding

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
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 3;
techroll_speed = 7.5;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 3;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//ustrong_gavel_slam_fx = hit_fx_create(sprite_get("ustrong_gavel_slam_fx"), 36);
uspecial_explosion = hit_fx_create(sprite_get("uspecial_explosion"), 32);
nair2_explosion = hit_fx_create(sprite_get("nair2_explosion"), 15);

// afterimages (thanks karu :3)
afterimage_array = 0;
afterimage_colour = make_colour_rgb(41, 152, 255);
//afterimage_colour = GetColourPlayer(0);

Hikaru_Title = "The Ace Attorney";
arena_title = "The Ace Attorney";
arena_short_name = "P. Wright";
steve_death_message = "The Court found Steve guilty";
TCG_Kirby_Copy = 11; //Mike

AT_JAB2 = 39;
AT_FTILT2 = 40;
AT_UTILT2 = 42;
AT_DTILT2 = 43;
AT_NAIR2 = 44;
AT_FAIR2 = 45;
AT_BAIR2 = 46;
AT_UAIR2 = 47;
AT_DAIR2 = 48;
AT_NSPECIAL_2_AIR = 49;

#define GetColourPlayer(_index)
{
    return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),get_color_profile_slot_g(get_player_color(player), _index),get_color_profile_slot_b(get_player_color(player), _index));
}
