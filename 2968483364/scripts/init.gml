hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 58;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 8.0;
dash_speed = 7.5;
dash_turn_time = 14;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.5;

jump_start_time = 5;
jump_speed = 11.25;
short_hop_speed = 7.25;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .275;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .035;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 38;
max_fall = 12; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .035; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 3;
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

small_sprite = true;

hue = 7;
hue_speed = 1; //change this to change the speed of the hueshift

stored_dmg = 0;             //current self damage
storedmg_max = 30;          //max self damage before install change
selfdmg_val = [1, 2, 3];    //self damage values, small/medium/heavy
blue = false;               //if mokou is in install or not
blue_buffer = false;        //if mokou should change install after the next attack
blue_tick_rate = 60;        //install self damage speed

//fire colors
var col_num = get_player_color(player);
fire_col = [[get_color_profile_slot_r(col_num, 2), get_color_profile_slot_g(col_num, 2), get_color_profile_slot_b(col_num, 2)],
            [get_color_profile_slot_r(col_num, 3), get_color_profile_slot_g(col_num, 3), get_color_profile_slot_b(col_num, 3)],
            [get_color_profile_slot_r(col_num, 4), get_color_profile_slot_g(col_num, 4), get_color_profile_slot_b(col_num, 4)]];

fireblue_col = [[get_color_profile_slot_r(col_num, 8), get_color_profile_slot_g(col_num, 8), get_color_profile_slot_b(col_num, 8)],
                [get_color_profile_slot_r(col_num, 9), get_color_profile_slot_g(col_num, 9), get_color_profile_slot_b(col_num, 9)],
                [get_color_profile_slot_r(col_num, 10), get_color_profile_slot_g(col_num, 10), get_color_profile_slot_b(col_num, 10)]];

//install movement stats
blue_init_dash = [initial_dash_speed, 9];
blue_dash_speed = [dash_speed, 8.5];
blue_leave_ground_max = [leave_ground_max, 8];
blue_max_jump_hsp = [max_jump_hsp, 7.5];
blue_air_max_speed = [air_max_speed, 6];
blue_air_accel = [air_accel, .3];
blue_air_friction = [air_friction, .05];
blue_fast_fall = [fast_fall, 16];
blue_wave_land_adj = [wave_land_adj, 1.35];
blue_dmg_buff = 1.2;
blue_kb_buff = 1.2;

fspec_fresh = [1, 1, 1]; //true/false for all three hits

wing_timespeed = 5;     //uspec glide max speed
wing_timer = 0;         //uspecial and plat wing visual timer

pipebomb = noone;
HG_MOKOU_BOMB_ANGLE = 94; //custom launch angles for mokou pipebomb, synced to be the same number that muno chars use, so it works with more characters

vfx_ember = hit_fx_create(sprite_get("vfx_ember"), 16);
vfx_uspecspike = hit_fx_create(sprite_get("vfx_uspecspike"), 12);
vfx_firering = hit_fx_create(sprite_get("vfx_firering"), 16);