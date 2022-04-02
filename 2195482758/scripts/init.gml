hurtbox_spr = sprite_get("idle_hitbox");
crouchbox_spr = sprite_get("crouch_hitbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 80;
idle_anim_speed = .15;
crouch_anim_speed = .2;
walk_anim_speed = .125;
dash_anim_speed = 0.4;
pratfall_anim_speed = .25;
can_wall_cling = true;
clingtime = 0;

walk_speed = 4.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7; //.7
moonwalk_accel = 1.4;
wall_frames = 1;

// Custom
taunt_stall = 0;
bounce = 0;
jump_queue = 0;
is_tenru = true;

jump_start_time = 5;
max_jump_speed = 10.5;
jump_speed = 10.5;
short_hop_speed = 7;
djump_speed = 11.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .4; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
base_walljump_hsp = 5;
base_walljump_vsp = 10;
walljump_hsp = 5;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 8; //10 //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .50;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 10; // was 8
base_wave_land_adj = 1.45; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_land_adj = base_wave_land_adj; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 8;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 3;
techroll_active_frames = 7;
techroll_recovery_frames = 5;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 3;
base_air_dodge_speed = 7.5;
air_dodge_speed = base_air_dodge_speed;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 7;
roll_forward_recovery_frames = 5;
roll_back_startup_frames = 3;
roll_back_active_frames = 7;
roll_back_recovery_frames = 5;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Intro
introTimer = -6;
introTimer2 = 0;
introResetBool = false;

// Firecrackers
can_throw = false;
NSFC = noone;
firecracker_speed = 10; // 13
default_firecracker_angle = 15;
firecracker_angle = 65;
fc_bounce_timer = 34;
fc_max_hold_time = 48;
fc_count = 1;
fc_smoketimer = 6;
expl_can_hit = true;
fc_base_y = -40;
fc_base_x = 0;
fc_backspin = false;
fc_bunt = false;

fc_trail = hit_fx_create( sprite_get( "smoketrail" ), 15 );
fc_effect = hit_fx_create( sprite_get( "explosion_single" ), 7 );
party_effect = hit_fx_create( sprite_get( "party_boom" ), 28 );
party_has_moved = false;

fc_lifetime = 400; // 85 -> // 100

fc_string = "firecracker_single";

meme = sound_get("tenru_laugh");
// Slots for onscreen firecrackers
// Stores hitbox IDs
var i;
i = 9;
repeat(10)
   {
   fc_array[i] = 0;
   i -= 1;
   }
  
// Last vsp storage 
i = 9;
repeat(10)
   {
   last_fc_vsp[i] = 0;
   i -= 1;
   }
   
   
 // Last hsp storage 
i = 9;
repeat(10)
   {
   last_fc_hsp[i] = 0;
   i -= 1;
   }
   
   
// Grab stuff
grabbedid = noone;
grabbedProj = noone;
last_grabbedid = noone;
throw_dir = "whiff";
prev_hsp = 0;
prev_vsp = 0;
caught_projectile = false;
grabbedTimer = 0;
grabbed_solid = false;
can_grab_solid_fspec = true;
can_grab_plat_fspec = true;
can_grab_solid_uspec = true;
can_grab_plat_uspec = true;
base_uspecial_vsp = -9;
varying_uspecial_vsp = -9;
fspec_yoff = 0;
uspecial_ground = false;
KRAGG = false;

// Air dspecial
AT_AIR_DSPECIAL = AT_DSPECIAL_2;
from_dspecial = false;
from_uspecial = false;
landing_time = 20;
can_air_dspecial = true;
dspec_buffer = false;
dspec_big_flip = 0;

// Particles
land_dust_started = false;
land_dust_timer = -1;

// Modifiers
shorterhop_penalty = 0;
fidget_rand = 0;
do_taunt_2 = false;
leniancy_recovery = false;
whiffspin = false;
uptilt_loop = false;

// Taunt
laugh_timer = 0
screaming = false;
scream_timer = 0;

// Utilt tomfoolery
spin_timer = 0;
utilt_stick = false;

// Victory
set_victory_theme( sound_get( "tenru_victory" ));
set_victory_bg(CH_FORSBURN);

// Kirbs
kirbyability = 16;
swallowed = 0
enemykirby = undefined;
k_vars_declared = 0;




// Phone skin
currentSkin = "_pho_idle2";



// Trummel
trummelcodecneeded = false;
trummelcodec_id = noone;





// TL
toonlink_photo = sprite_get("TL");
toonlink_photo2 = 4;


// CSS
last_color = 0;
last_last_color = 0;



// Muno jank
trainingMode = 0

// Command grabbery
GrabStartX = 0;
GrabStartY = 0;
GrabEasingTimer = 0;
GrabbedId = 0;



user_event(14);


// Tenru test url
//2098340585
//Tenru main url
//2098340586