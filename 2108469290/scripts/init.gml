hurtbox_spr = sprite_get("stabd_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

Hikaru_Title = "Unfaded Will"

nname = "Saji Sakamoto"
ncode1 = "The voidfox warrior from folk tale."
ncode2 = "[Saji] is a imaginary hero spirit that got put into"
ncode3 = "a puppet body by Zetta Ashikaga for research purpose."

hhalo = 0

lockplayer = -4
fcharge = 0
fcharged = 0

introhit = 0

halo = 0

lowesty = 0
lockon = 0
lockontime = 180

char_height = 70;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .13;
dash_anim_speed = .28;
pratfall_anim_speed = .25;

intro = 0
introtimer = -1

ustronghit = 0
walk_speed = 3;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.8;
dash_speed = 6.2
dash_turn_time = 10;
dash_turn_accel = .5;
dash_stop_time = 10;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 7;
djump_speed = 13;
leave_ground_max = 4.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .26;
prat_fall_accel = 0.9; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 3;
walljump_vsp = 11;
walljump_time = 14;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8.5; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .6;
hitstun_grav = .55;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 2;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 4;
techroll_active_frames = 1;
techroll_recovery_frames = 2;
techroll_speed = 1;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 4;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 4 ;
roll_back_active_frames = 1;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_land_light");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


SC = hit_fx_create( sprite_get( "SC" ), 16 );
sprite_change_offset("SC", 100, 100);

ai = hit_fx_create( sprite_get( "ai" ), 7 );
sprite_change_offset("ai", 48, 92);

ai3 = hit_fx_create( sprite_get( "ai3" ), 7 );
sprite_change_offset("ai3", 48, 92);

summon = hit_fx_create( sprite_get( "summon" ), 12 );
sprite_change_offset("summon", 50, 50);
esp = hit_fx_create( sprite_get( "esp" ), 9 );
sprite_change_offset("esp", 32, 32);

set_victory_theme(sound_get("Fstrong"));
darken = hit_fx_create( sprite_get( "darken" ), 10);
sprite_change_offset("darken", 1000, 1000);
lighten = hit_fx_create( sprite_get( "lighten" ), 8);
sprite_change_offset("lighten", 1000, 1000);