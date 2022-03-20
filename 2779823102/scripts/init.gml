set_victory_bg( sprite_get( "bg" ));
set_victory_theme( sound_get( "bruh" ));

move_cooldown[AT_DSPECIAL] = 160 
move_cooldown[AT_USPECIAL] = 45

stock = 1000

style = 1000

time = 1000

initi = true 

canhalo = 1

hue = 0
ending = 0
phase = 0
phaseh = 0
heathdecay = 0
angle = 0

shadechange = 0

oattack = 0
attackchoosing = 0
shield = 3
shieldg = 3
hurtbox_spr = sprite_get("obahurt");
crouchbox_spr = -1
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 68;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .1;
pratfall_anim_speed = .25;

walk_speed = 5;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 1;
initial_dash_speed = 5;
dash_speed = 5;
dash_turn_time = 5;
dash_turn_accel = 1;
dash_stop_time = 1;
dash_stop_percent = 0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 11;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = 0.001; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 0;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 7.5; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .50;
hitstun_grav = .4;
knockback_adj = 3; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 999;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

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



p2 = hit_fx_create( sprite_get( "spark2" ), 12);
vbeam = hit_fx_create( sprite_get( "vbeam" ), 18*4);
hbeam = hit_fx_create( sprite_get( "hbeam" ), 18*4);
slash = hit_fx_create( sprite_get( "slash" ), 9*2);
hbgone = hit_fx_create( sprite_get( "heathbargone" ), 10*4);
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

init_shader();