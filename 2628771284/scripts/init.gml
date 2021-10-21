hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 25;
idle_anim_speed = .1;
crouch_anim_speed = 0.090;
walk_anim_speed = .10;
dash_anim_speed = .125;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = .25;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 2;
dash_turn_accel = 1;
dash_stop_time = 9;
dash_stop_percent = 0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9.50; //9
short_hop_speed = 6;
djump_speed = 9.50;
leave_ground_max = 3; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 3; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 2; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 1;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
djump_accel = 0;
djump_accel_start_time = 6;
djump_accel_end_time = 19;
walljump_hsp = 4;
walljump_vsp = 7;
walljump_time = 32;
wall_frames = 2;
max_fall = 11; //8 maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .4; //.4
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 4;
wave_land_time = 5;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 10;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 3;
dodge_active_frames = 2;
dodge_recovery_frames = 1;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 2;
air_dodge_speed = 10;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
waveland_sound = sound_get("land");


//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

set_victory_theme( sound_get("victorytheme"));

redthingmess = hit_fx_create( sprite_get( "redthingmess" ), 10 );
redthingsplash = hit_fx_create( sprite_get( "redthingsplash" ), 10 );
ouchiemama = hit_fx_create( sprite_get( "ouchiemama" ), 150 );
ouchiemamachaos = hit_fx_create( sprite_get( "ouchiemamachaos" ), 150 );
ouchiemamatwo = hit_fx_create( sprite_get( "ouchiemamatwo" ), 150 );
ouchiemamatwochaos = hit_fx_create( sprite_get( "ouchiemamatwochaos" ), 150 );


// Debug variables
debug=false;

playtest = (object_index == oTestPlayer);
dir_array=ds_list_create();
dir_array[| 0]=[ 5, 0, 0, 0, 0]

proj=1; //which version of super kiss is performed(1=normal, 0=super)
grabbedid=noone;
mash=0;
//face the enemy
looking=spr_dir;
noturn=false; //False to turn to enemy when possible
deactivate_turn=0;
//soft/hard attack variables
attack_input = 0; //how many frames youre holding the button to change to strong version
special_input = 0;

///input system variables

//[D]U
command[6,1]=0; //hold time
command[6,0]=false; //command state
//[B]F
command[5,1]=0; //hold time
command[5,0]=false; //command state
//DPF
command[4,3]=0;
command[4,2]=0;
command[4,1]=0;
command[4,0]=0;
//HCB
command[3,3]=1;
command[3,2]=0;
command[3,1]=0;
command[3,0]=0;
//QCB
command[2,3]=1;
command[2,2]=0;
command[2,1]=0;
command[2,0]=0;
//HCF
command[1,3]=1;
command[1,2]=0;
command[1,1]=0;
command[1,0]=0;
//QCF
command[0,3]=1; //command direction
command[0,2]=0; //command state time
command[0,1]=0; //command state max time
command[0,0]=0; //command state

//used to detect which direction is the player facing at the start of the command
// start_dir[4] = 1     //hcb
// start_dir[3] = 1     //hcf
// start_dir[2] = 1     //dp
// start_dir[1] = 1     //qcb
// start_dir[0] = 1     //qcf

// // commands
// hcb = 0
// hcb_timer = 0
// hcb_temp = 0

// hcf = 0
// hcf_timer = 0
// hcf_temp = 0

// dp = 0
// dp_timer = 0
// dp_temp = 0

// qcb = 0
// qcb_timer = 0
// qcb_temp = 0

// qcf = 0
// qcf_timer = 0
// qcf_temp = 0

// qcfs = 0
// qcfs_timer = 0
// qcfs_temp = 0

// cBackFwd = 0
// cBackFwd_done = 0

// cDownUp = 0
// cDownUp_done = 0

//crawl
is_crawling = false;

// entrance
 has_enter = false;
 
 
chargedash = 0;