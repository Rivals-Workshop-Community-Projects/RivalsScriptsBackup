crouch_counter = 0;
isWalle = true; //for other walle players to detect
fspecCooldown = 0;

timer = 0;

always_holding_rock = false;

//fspec trail
max_fspec = 1;
fspec_count = 0;
fspec_trail_vfx = hit_fx_create(sprite_get("fspecial_proj_strong_trail"), 12);
fspec_trail_arrays = array_create(1, (array_create(20, undefined)));
fspec_id_array = array_create(1, undefined) //used to match fspec proj id to array num

//kirby
kirbyability = 16;
swallowed = 0;
enemykirby = undefined;

//codec
trummelcodecneeded = false;
trummelcodec_id = noone;

switch get_player_color(player) {
    case 19:
    taunt_sound = sound_get("cool_mixtape");
    break;
    
    default:
    taunt_sound = sound_get("tauntsong");
    break;
}
//taunt_sound = asset_get("sfx_syl_dspecial_howl")
taunt_type = 1; //1 = song, 2 = sound

taunt_played = false; //var toggles so sound/song plays only on 1 frame
sound_taunt = false;

compactID = undefined; //id of player being compacted
compactTimer = 0; //level of compactness until cube is full
compactThreshhold = 30; //above value, cubes will explode
compactMax = 60; //max level of compactness
compactJunk = false; //true if hit junk, speeds up compacting time
cubeDist = 100000000000; //distance to nearest cube
cubeNearest = undefined; //id of nearest cube
holdingCube = false; //true if holding cube
throwHsp = 0; //hsp of throwing cube
throwVsp = 0;
bounceHsp = 0; //hsp of cube when bounce of enemy
bounceVsp = 0;

absorbedCube = false; //dspecial cube absorb

cubeCooldownMax = 60;
cubeCooldown = cubeCooldownMax;

heldPower = 0; //power of held cube
heldExplode = false; //inherits willExplode
heldExplodeMax = 600;
heldExplodeTimer = 600; //inherits explodeTimer
heldExplodeThreshhold = 120; //number of frame as which ticking starts

fspec_had_airdodge = undefined; //notes whether you had airdodge before using fspecial

counterDmg = undefined; //damage before hit in counter;

smoke_vfx = hit_fx_create(sprite_get("cube_smoke_vfx"), 32);

cubeCounter = 0;
trashCounter = 0;

walljump_orig = undefined;

hurtbox_spr = sprite_get("walle_hurtbox");
crouchbox_spr = sprite_get("walle_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .15;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_speed_orig = walk_speed;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7.5;
initial_dash_speed_orig = initial_dash_speed;
dash_speed = 7.0;
dash_speed_orig = dash_speed;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
wall_frames = 2;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = 0.5;
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

max_jump_hsp_orig = max_jump_hsp;

land_time = 4; //normal landing frames
prat_land_time = 11;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 9;
crouch_recovery_frames = 3;

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
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 1;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_gus");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
