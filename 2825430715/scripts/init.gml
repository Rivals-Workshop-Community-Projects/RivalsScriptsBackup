hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

snapdamage = 0

cheapmode = 0
noparryedit = 0

pleasework = 0

potbuster = 0
potbusterx = 0
astate = 0
aattack = 0
awindow = 0
atimer = 0
ahsp = 0
avsp = 0
adir = 0
fakeinvi = 0

hurted = 0
hitted = 0

svsp = 0
shsp = 0

triggercutscene = 0
alreadydead = 0

taunted  = 0

gotstone = 0
stoned = 0

Kanosbeatbox = 0

threshold = 150
thresholdNEO = 0

beatbox = 0

hasmind = 0
hasbody = 0
hasbalance = 0
snapplayer = 0

teletime = 0
telex = 0
teley = 0
fvsp = 0
fhsp = 0
countered = 0
attacking = 0

portalx = x 
portaly = y

char_height = 80.112;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 1;
walk_turn_time = 4;
initial_dash_time = 12;
initial_dash_speed = 6;
dash_speed = 5
dash_turn_time = 6;
dash_turn_accel = .5;
dash_stop_time = 4;
dash_stop_percent = .0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;
djump_speed = 12;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = 0.8; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 40; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 12;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .6;
hitstun_grav = .51;
knockback_adj = 0.9;//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = .8; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 0;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 7;
techroll_recovery_frames = 3;
techroll_speed = 22;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 9;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 7;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 7;
roll_back_recovery_frames = 3;
roll_forward_max = 22; //roll speed
roll_backward_max = 22;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

stoneb = hit_fx_create( sprite_get( "stoneb" ), 4*5);
stonem = hit_fx_create( sprite_get( "stonem" ), 4*5);
stonef = hit_fx_create( sprite_get( "stonef" ), 4*5);
introfx = hit_fx_create( sprite_get( "intro" ), 6*12);

ptp = hit_fx_create( sprite_get( "portalpunch" ), 7*3);

deathfx = hit_fx_create( sprite_get( "deathfx" ), 30);

ptg = hit_fx_create( sprite_get( "portalgrab" ), 7*3);

adfx = hit_fx_create( sprite_get( "adfx" ), 10);
rollfx = hit_fx_create( sprite_get( "rollfx" ), 10);
wavefx = hit_fx_create( sprite_get( "wavefx" ), 10);
fspecfx = hit_fx_create( sprite_get( "fspecfx" ), 10);

ptgone = hit_fx_create( sprite_get( "ptgone" ), 6);
dtb = hit_fx_create( sprite_get( "dtilt_blow" ), 20);

i2 = hit_fx_create( sprite_get( "inkpar6" ), 16);
sprite_change_offset("inkpar6", 46, 92);
SC = hit_fx_create( sprite_get( "SC" ), 20 );
sprite_change_offset("SC", 100, 100);


upBpar = hit_fx_create( sprite_get( "uspecialpar" ), 20 );


if has_rune("A") {
    knockback_adj /= 1.15
    print(knockback_adj)
}

if has_rune("B") {
    knockback_adj /= 1.15
    print(knockback_adj)
}

if has_rune("C") {
    knockback_adj /= 1.15
    print(knockback_adj)
}

