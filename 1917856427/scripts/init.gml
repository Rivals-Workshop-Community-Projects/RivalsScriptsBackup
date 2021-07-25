hurtbox_spr = sprite_get("hurtbox_idle");
crouchbox_spr = sprite_get("hurtbox_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

GAUGE_NAME_CURRENT = 0;
BZ = 0;
MUS_NOTE = 0;
TIMED = 0;
HITD = 0;
hue = 0;
introTimer = -4;
introTimer2 = 0;
EXTRA_TIME = 0;
trigger = 0;
dedraw = false;
g7skin = 0;
multihitpro = 0;
grabbedid = noone;
dichal=0
fast_fallc = 0;
shine_hit = 0;
timedpress = 0;
setwindowt = 1;
canbp = false;
used_aird = false;
//trummel support
trummelcodecneeded = false;
trummelcodec_id = noone;

//TCO support
tcoart = sprite_get("tco");

char_height = 52;
idle_anim_speed = .160;
walk_anim_speed = .125;
crouch_anim_speed = 1.1;
dash_anim_speed = .25;
pratfall_anim_speed = .15;
walk_speed = 3.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .50;
moonwalk_accel = 1.6;

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 7;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .33;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
wall_frames = 3; //anim frames before you leave the wall
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .56;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 18;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

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
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

large_plasma_hfx = hit_fx_create(sprite_get("PLASMA_FX"), 30);
large_clock_hfx = hit_fx_create(sprite_get("hfx_clock_large"), 30);
smash_hfx = hit_fx_create(sprite_get("smash"), 60);
smashmirror_hfx = hit_fx_create(sprite_get("smashmirror"), 60);


//god of destruction support
kirbyability = 16;
swallowed = 0;


//SONGS
currentsong = sound_get("liztheme")

getcharactertheme = 0;

/*if (get_player_color( player ) == 12) {
g7skin = 1
}