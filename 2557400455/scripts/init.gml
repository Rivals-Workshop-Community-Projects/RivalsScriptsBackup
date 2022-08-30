hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

Hikaru_Title = "Bootleg mad moon"

nname = "Reisen Fumo"
ncode1 = "Innocent looking doll that carries"
ncode2 = "power of their original image."
ncode3 = "She also possess firearms somehow."

has_grenade = 0

gun = 0
bulletnum = 0

charge_sound = sound_get("charge1")
charge_sound2 = sound_get("charge2")

shsp = 0
svsp = 0

Powx = 0
Powy = 0

nairhsp = 0

wjcap = 0

crossout = 0
crossx = -1
crossy = -1

redP = 0

char_height = 62.9;
idle_anim_speed = .13;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 3.00;
walk_accel = 0.2;
walk_turn_time = 4;
initial_dash_time = 12;
initial_dash_speed = 7.00;
dash_speed = 7.00;
dash_turn_time = 9;
dash_turn_accel = 1.50;
dash_stop_time = 4.00;
dash_stop_percent = 1.00; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.40;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 9.50;
short_hop_speed = 6.00;
djump_speed = 11.50;
leave_ground_max = 7.00; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7.00; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.00; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.25;
prat_fall_accel = 0.80; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 12;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 9.00; //maximum fall speed without fastfalling
fast_fall = 12.00; //fast fall speed
gravity_speed = 0.50;
hitstun_grav = 0.50;
knockback_adj = 1.15;//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 30;
wave_land_time = 12;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 9.00;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.50;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 10.00; //roll speed
roll_backward_max = 10.00;

land_sound = asset_get("sfx_land");
landing_lag_sound = asset_get("sfx_land_light");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

hmk = hit_fx_create( sprite_get( "hitmarker" ), 20);
sprite_change_offset("hitmarker", 50, 50);

box = hit_fx_create( sprite_get( "box" ), 5*9);
sprite_change_offset("box", 30, 30);

powerfx = hit_fx_create( sprite_get( "powerfx" ), 12);
sprite_change_offset("powerfx", 10, 10);

lighten = hit_fx_create( sprite_get( "lighten" ), 12);
sprite_change_offset("lighten", 1000, 1000);

chfx = hit_fx_create( sprite_get( "crosshairfx" ), 4*8);

bluletfx = hit_fx_create( sprite_get( "bluletfx" ), 12);


set_victory_theme(sound_get("theme"));
