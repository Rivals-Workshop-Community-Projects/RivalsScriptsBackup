hurtbox_spr = asset_get("cat_hurtbox");
crouchbox_spr = asset_get("orca_crouchbox");
air_hurtbox_spr = asset_get("ferret_hurtbox");
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = 1/6;
crouch_anim_speed = 1/6;
walk_anim_speed = 1/3;
dash_anim_speed = 1/4;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.5;
dash_speed = 6.25;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .3;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 8.75;
short_hop_speed = 4.75;
djump_speed = 8.5;
leave_ground_max = 5.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 3;
walljump_vsp = 8;
walljump_time = 8;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 11.5; //fast fall speed
gravity_speed = .35;
hitstun_grav = .45;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

wall_frames = 3;

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 8;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 4;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
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

//my stuff
previous_hsp=0;
previous_vsp=0;

previous_pos_count=30

for(var i = previous_pos_count-1;i>=0;i--){
    previous_x[i]=-1000000;
    previous_y[i]=-1000000;
}

previous_spr_dir=0;

spr_angle_temp=0;

function_secondary_output=0;

//glide stuff

stored_glide_hsp=0;
stored_glide_vsp=0;

glide_speed=0;
glide_angle=0;

glide_energy=0;
glide_energy_max=90;
glide_energy_restore=0;
glided=false;

starting_spr_angle=0;

glide_turn_method=0;
// 0 - 360
// 1 - x-axis

glide_image_index=-1;

fspecial_timer=0;

from_glide = false;

//for drawing stuff during glide
previous_tail_pos=0;
previous_tail_angle=0;

previous_ribbon_1_pos=0;
previous_ribbon_1_angle=0;

previous_ribbon_2_pos=0;
previous_ribbon_2_angle=0;

//glide stats
max_glide_speed=11;
boosted_max_glide_speed=15;
over_max_slowdown_rate=.7;

turning_coefficient=.8;
glide_gravity=.3;
glide_friction=.02;

wind_accel = .25;

//other stuff

fspecial_slide_noise = -1;
strong_emp_noise = -1;

can_fstrong = true;
can_ustrong_air = true;
//can_dstrong = true;

target_hsp = 0;
target_vsp = 0;

grabbed_by_zeph_ring = false;
grabbed_by_zeph_ring_id = noone;

strong_emp = false;

grab_offset_x = 0;
grab_offset_y = 0;

//Whether you are in Practice Mode (from otto)
playtest = (object_index == oTestPlayer);
practice = false;

//hitfx
ring_front = hit_fx_create( sprite_get( "ring_front" ), 1 );
fstrong_ring = hit_fx_create( sprite_get( "fstrong_ring" ), 16 );
ustrong_ring = hit_fx_create( sprite_get( "ustrong_ring" ), 16 );
dstrong_ring = hit_fx_create( sprite_get( "dstrong_ring" ), 16 );
uspecial_explosion = hit_fx_create( sprite_get( "uspecial_explosion" ), 25 );
uspecial_g_explosion = hit_fx_create( sprite_get( "uspecial_ground_explosion" ), 25 );
empty_effect = hit_fx_create( asset_get("empty_sprite"), 1 );
dspecial_leave = hit_fx_create( sprite_get("dspecial_leave"), 15 );

//compatabilities
plushForAmber = sprite_get("amber_plush");

//guide
secret=true;//true for enabled

taunt_infinite=false;
taunt_infinite_fake=false;
taunt_buffered = false;

guide_active=false;
guide_timer=0;
guide_state=0;
guide_frame=0;

guide_head_active=false;
guide_head_timer=0;
guide_head_state=0;
guide_head_frame=0;
guide_head_talking=false;

guide_menu_state=0;
guide_menu_timer=0;
guide_menu_alpha=0;
guide_menu_selected=0;
guide_menu_hold_delay=0;
guide_menu_hold_delay2=0;

guide_text_active=false;

guide_textbox=0;

for(var i=15;i>=0;i--){
    guide_writetext[i]="";
    guide_readtext[i]="";
}

guide_fd_active=false;

for(var i=9;i>=0;i--){
    for(var j=2;j>=0;j--;){
        guide_fd_grid[i,j]="";
    }
}

guide_fd_f_h_start[2]=0;
guide_fd_f_h_start[1]=0;
guide_fd_f_h_start[0]=0;

prev_attack = 0;