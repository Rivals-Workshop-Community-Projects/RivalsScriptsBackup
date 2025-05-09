// Fuck you Zak
hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 64;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .14;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 6.5;
dash_speed = 6;
dash_turn_time = 12;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .65;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5;
djump_speed = 9;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 8;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .4;
hitstun_grav = .45;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
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
techroll_startup_frames = 2;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("sfx_landinglag");
landing_lag_sound = sound_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_ell");
jump_sound = sound_get("sfx_jump");
djump_sound = sound_get("sfx_djump");
air_dodge_sound = asset_get("sfx_quick_dodge");
hover_sound = sound_get("sfx_hover");

car_start = sound_get("sfx_car_start");
car_loop = sound_get("sfx_car_loop");
car_start_time = 0;


if (get_synced_var(player) < 7){
    voice_on = 1;
    }
    if (get_synced_var(player) >= 7){
    voice_on = 0;
}
voice_chance = 0;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


dir_flipped = false;

//float shenanigans
floating = 0;
floatTimer = 0;
jumpTimer = 0;
floatMax = 60; //MODIFIABLE
jumpMax = 5; //MODIFIABLE
gravSet = 0; //MODIFIABLE
vspSet = 0; //MODIFIABLE
hspSet = -1; //MODIFIABLE
float_max_speed = 4;

air_time = 0;
can_fspecial = true;
can_fspec_jump = true;

cannon = noone;

in_cannon = false;

cannonball = noone;
cannonball_charge = 0;
chargesound = noone;

has_mech = true;
hit_mechless = false;
clowncar = noone;

cannon_cooldown = 0;
cannonball_cooldown = 0;
hud_col = c_white;

set_victory_theme(sound_get("mus_junior_wins"));
set_victory_bg(sprite_get("victory_bg"));