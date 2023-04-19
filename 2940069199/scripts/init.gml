hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 59;
idle_anim_speed = .1;
crouch_anim_speed = .15;
walk_anim_speed = .125;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 4.25;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 7.5;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.6;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .13; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 5;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
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
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 4;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_cla");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//VFX

VFX_small_bling = hit_fx_create( sprite_get( "VFX_small_bling" ),25);
VFX_medium_bling = hit_fx_create( sprite_get( "VFX_medium_bling" ),35);
VFX_plat_despawn = hit_fx_create( sprite_get( "plat_despawn" ),35);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

mic = noone
comet = noone
Dance = 0
awesome = false;

cur_tetramino = noone
tetrimino = 0;
T_Direction_1 = noone
T_1X = 0
T_1Y = 0
T_Direction_2 = noone
T_2X = 0
T_2Y = 0
T_Direction_3 = noone
T_3X = 0
T_3Y = 0
tetris_hit = false;

uspecial_air = false
fspecial_hit_comet = false
clinged_player = false
sound_timer = false
music_suppress = false

//#region Synced Variable

// Synced Variable Stuff -Should run to reset these valus on game load
/* Synced Variable should account for these. We have 32 bits to work with.
1. Color Shift - 2 bits - Off / Extra 1 / Extra 2
2. Dino's button - Should Switch - 1 bit
3. Results portrait - Awesome -  1 bit
*/


//This function takes the bit lengths you put in the previous function, in the same order, and outputs an array with the values you put in (assuming you put in the correct bit lengths), also in the same order.
//split_var = split_synced_var(bit_length_1, bit_length_2...);
split_var = split_synced_var(2,1,1);

color_shift = 0; // Declare variable
should_switch = 0; // Declare variable
awesome = 0; // Declare variable

last_frame_color_alt = get_player_color(player);

// Synced variable overwrite
color_shift = split_var[0];
should_switch = split_var[1];
awesome = split_var[2];

// Reload on round start
manual_init_shader_call = true;
init_shader();

// Hit FX

axesmall = hit_fx_create(sprite_get("axe_hit_small"), 21);
axebig   = hit_fx_create(sprite_get("axe_hit_large"), 24);
musicsmall = hit_fx_create(sprite_get("musicsmall"), 21);
musiclarge = hit_fx_create(sprite_get("hfx_music_large"), 32)

//Hit Particle
set_hit_particle_sprite(1, sprite_get("hfx_part_music"));


#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
//print(chunk_arr);
return chunk_arr;