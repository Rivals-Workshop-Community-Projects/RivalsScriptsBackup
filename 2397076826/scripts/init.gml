
hurtbox_spr = sprite_get("stabd_box");
crouchbox_spr = sprite_get("stabdb_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

Hikaru_Title = "Wacko Crazy"

nname = "Ase"
ncode1 = "The personification of [REDACTED]"
ncode2 = "Unknown abilities."
ncode3 = "Unknown motives."

fspechit = 0
fspechit2 = 0
AClone = noone
cloneinv = 0

sword = 0


	shsp = 0
    svsp = 0
    
attacking = 0

clonetime = 0
cloneout = 0
clonex = 0
cloney = 0
clonedir = 1

lstrong = 0
lstx = 0
lsty = 0

ogx = 0
ogy = 0

iaijump = 0
strongdown = 0

smark = 0 
maxdraw = 0
angledraw = 0
hitdmg = 0

char_height = 90;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .2;
dash_anim_speed = .3;
pratfall_anim_speed = .4;


ustronghit = 0
walk_speed = 4.5;
walk_accel = 0.4;
walk_turn_time = 3;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 7
dash_turn_time = 4;
dash_turn_accel = .5;
dash_stop_time = 15;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .2;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 6.8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .26;
prat_fall_accel = 0.9; //multiplier of air_accel while in pratfall
air_friction = .052;
max_djumps = 1;
double_jump_time = 44; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 10;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8.5; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .45;
hitstun_grav = .52;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 0.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 8;
crouch_recovery_frames = 0;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 4;

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
air_dodge_speed = 20;

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
waveland_sound = asset_get("sfx_waveland_eta");   
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

set_hit_particle_sprite( 1, sprite_get( "spark" ));

            cpar1 = hit_fx_create( sprite_get( "cpar1" ), 15 );
            cpar2 = hit_fx_create( sprite_get( "cpar2" ), 20 );
            
SC = hit_fx_create( sprite_get( "SC" ), 14 );
sprite_change_offset("SC", 76, 80);

apar = hit_fx_create( sprite_get( "angelpar" ), 18 );
apar2 = hit_fx_create( sprite_get( "angelpar2" ), 18 );

sprite_change_offset("cpar1", 50, 50);
sprite_change_offset("cpar2", 50, 50);

darken = hit_fx_create( sprite_get( "darken" ), 10);
sprite_change_offset("darken", 1000, 1000);
lighten = hit_fx_create( sprite_get( "lighten" ), 8);
sprite_change_offset("lighten", 1000, 1000);