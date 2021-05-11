hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;


psi_active = 0;
psi_check = 0;
psi_timer = 0;
psi_cooldown = 0;

offenseup = 1;
offenseupawesome = 1; //rubber band mulitplier
defenseup = false;


Down = 0;

card_count = 0;
supermeter_sound_played = false;
meter_not_full = 4;
current_shot = 1;

nspecial_jumped = false;
fspecial_spin = 5;

shot_menu = -1;
shot_cursor = -1;
menu_selection = 1;
menu_open = false;
shot_cancel_timer = 0;
shot_can_cancel = false;

chargeshot_charge = 0;
chargeshot_cancelled = false;
chargeshot_charge_reset = false;
pkfire = 0;

char_height = 45;
idle_anim_speed = .05;
crouch_anim_speed = .1;
walk_anim_speed = .080;
dash_anim_speed = .125;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.7;
walk_turn_time = 5;
initial_dash_time = 6;
initial_dash_speed = 6;
dash_speed = 5.50;
dash_turn_time = 8;
dash_turn_accel = 1;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 8.25;
short_hop_speed = 5;
djump_speed = 0;
leave_ground_max = 3; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 3; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.25; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 2; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 60; //the number of frames to play the djump animation. Can't be less than 31.
djump_accel = -1.1;
djump_accel_start_time = 6;
djump_accel_end_time = 19;
walljump_hsp = 4;
walljump_vsp = 7;
walljump_time = 32;
wall_frames = 2;
max_fall = 6; //8 maximum fall speed without fastfalling
fast_fall = 8; //fast fall speed
gravity_speed = .3; //.4
hitstun_grav = .5;
knockback_adj = 0.8; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1; 
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 8;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 8;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 10; //roll speed
roll_backward_max = 10;

land_sound = sound_get("landing");
landing_lag_sound = sound_get("landing");
waveland_sound = sound_get("landing");
jump_sound = sound_get("jump");
djump_sound = sound_get("djump");
air_dodge_sound = sound_get("airdodge");


//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

set_victory_theme( sound_get("victorytheme"));

bam = hit_fx_create( sprite_get( "bam" ), 15 );
starhit = hit_fx_create( sprite_get( "starhit" ), 35 );
pkfreezeboom = hit_fx_create( sprite_get( "pkfreezeboom" ), 25 );
pkfreezeboomm = hit_fx_create( sprite_get( "pkfreezeboomm" ), 25 );
traybreak = hit_fx_create( sprite_get( "traybreak" ), 15 );
brainshock = hit_fx_create( sprite_get( "brainshock" ), 25 );
explosion = hit_fx_create( sprite_get( "explosion" ), 25 );


// Kirby
kirbyability = 16;
swallowed = 0;

//hiiii steve...........
steve_death_message = "Steve stopped moving!"

miiverse_post = sprite_get("thankyousoup");
miiverse_post = sprite_get("miiverse2");

//UNDERTALE OMG SAN   S
battle_text = "* Kumatora.";

// entrance
 has_enter = false;