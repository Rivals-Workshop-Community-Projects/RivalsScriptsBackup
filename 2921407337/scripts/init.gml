hurtbox_spr = sprite_get("idle_hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .21;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed =.25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 14;
dash_turn_accel = .75;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = 0.8; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 24;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .55;
hitstun_grav = .53;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 14;
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
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
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

// HFX
//Actual Hit Effects
hfx_small_normal = hit_fx_create( sprite_get("hitfx"), 20 );
hfx_med_normal = hit_fx_create( sprite_get("hitfx_med_normal"), 20 );
hfx_big_normal = hit_fx_create( sprite_get("hitfx_big_normal"), 20 );

hfx_electricgold = hit_fx_create( sprite_get("hfx_electricgold"), 20 );
hfx_fspecialsweet = hit_fx_create( sprite_get("hfx_fspecialsweet"), 20 );
hfx_metal = hit_fx_create( sprite_get("hfx_metal"), 20 );
hfx_claw_slash = hit_fx_create( sprite_get("hfx_claw_slash"), 20 );
hfx_chain_sweetspot = hit_fx_create( sprite_get("hfx_chain_sweetspot"), 24 );
hfx_uairsweet = hit_fx_create( sprite_get("hfx_uairsweet"), 15 );

hfx_big_lightning3 = hit_fx_create( sprite_get("hfx_big_lightning3"), 30 );
hfx_big_lightning4 = hit_fx_create( sprite_get("hfx_big_lightning4"), 30 );

// Misc Effects
hfx_spark = hit_fx_create( sprite_get("spark"), 21 );
hfx_parryfx = hit_fx_create( sprite_get("parryfx"), 15 );

//Dash and Fspecial
hfx_sl_sparkfx_large = hit_fx_create( sprite_get("sl_sparkfx_large"), 21 );
hfx_sl_sparkfx_trail = hit_fx_create( sprite_get("sl_sparkfx_trail"), 20 );
hfx_sl_sparkfx_trail_speed = 15;
hfx_sl_dash = hit_fx_create( sprite_get("hfx_sl_dash"), 24 );
fspecial_directional_arrow = hit_fx_create( sprite_get("hfx_fspecial_directional_arrow"), 30 );
fspecial_directional_arrow_obj = noone;

// Attack Specific
hfx_uspecial_jumpfx = hit_fx_create( sprite_get("hfx_uspecial_jumpfx"), 16 );
hfx_dspecial_2_floor = hit_fx_create( sprite_get("hfx_dspecial_2_floor"), 60 );
hfx_nspecial_chain_lightning = hit_fx_create( sprite_get("hfx_nspecial_chain_lightning"), 16 );
hfx_uair_sweetspot = hit_fx_create( sprite_get("hfx_uair_sweetspot"), 8 );
hfx_nspecial_dissipation = hit_fx_create( sprite_get("hfx_nspecial_dissipation"), 20 );

//Mark and SL
hfx_mark_consume = hit_fx_create( sprite_get("hfx_mark_consume"),60 );
hitfx_mark_consume_obj = noone;
hfx_mark_disperse = hit_fx_create( sprite_get("hfx_mark_disperse"),30 );
hfx_mark_disperse_obj = noone;
hfx_sl_transform = hit_fx_create( sprite_get("hfx_sl_transform"), 27 );
hfx_sl_transform_obj = noone;
hfx_sl_untransform = hit_fx_create( sprite_get("hfx_sl_untransform"), 27 );
hfx_sl_untransform_obj = noone;

//Dspecial
hfx_dspecial_thunder_middle = hit_fx_create( sprite_get("hfx_dspecial_thunder_middle"), 16 );
hfx_dspecial_thunder_bottom = hit_fx_create( sprite_get("hfx_dspecial_thunder_bottom"), 16 );
hfx_dspecial_thunder_tracer = hit_fx_create( sprite_get("hfx_dspecial_thunder_tracer"), 16 );

// Hit Particles
set_hit_particle_sprite(1,sprite_get("hit_particle1")); // Claw
set_hit_particle_sprite(2,sprite_get("hit_particle2")); // Electric
set_hit_particle_sprite(3,sprite_get("hit_particle3")); // Chain
set_hit_particle_sprite(4,sprite_get("hit_particle4")); // SL Electric

// General variables
temp_air_dash_draw_angle = 0;
hsp_at_start_of_double_jump = 0;
double_jump_backward_flag = 0;
dspecial_cloud_id = noone;
old_number_of_djumps = 0;
old_has_airdodge = false;
other_player_galaxied = false;
current_sound_obj = noone;
stage_music_suppression_timer = 0;
nair_down_detected = false; // Used in Nair 1 hitfall timing
moved_up = false; // For ledgesnap

// SL Variables
SL_damage_timer = 0;
SL_activated_by_opponent_number = -1; // Attacker's player number. Only used for stat tracking, and should be set to -1 if the damage is not from another player
SL_mode_active = false;
has_air_dash = false;
air_dash_direction = 0;
SL_num_of_frames_per_damage = 60;
SL_damage_already_ticked = false;

//init.gml - Maw's command grab variables
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.
fspecial_grab_direction = 0;

//CSS Variables
last_frame_color_alt = get_player_color(player);

//Intro Variable
intro_sound_played_flag = false;

// Final Smash Compat
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 96;
fs_charge = 0;
AT_FINAL_STRONG = 49;

final_strong_initial_x = 0;
final_strong_initial_y = 0;

//fs_portrait_x = OFFSET HERE
//`fs_char_portrait_override = sprite_get('MY PORTRAIT OVERRIDE SPRITE");`
//`fs_char_attack_index = AT_ATTACK_INDEX_OF_YOUR_CHOICE;`

// Compat Variables
pkmn_stadium_front_img = sprite_get("pkmn_stadium_front_img");
pkmn_stadium_back_img = sprite_get("pkmn_stadium_back_img");
pkmn_stadium_name_override = "Iroh"

/*
sl_idle_but_better = sprite_get("sl_idle_but_better");
sl_idle_but_better_flag = false;

The year is 2030, all ws devs characters are banned in every bracket except for anglara.

Jacklm does not play her anymore when it was revealed that bendys anglara was better once he was unbanned in the TAG war of 2027.


Iroh is still gentlemanned to frequently. He has an air dodge glitch with SL that equips him with an ak-47.
*/

//#region Synced Variable

// Synced Variable Stuff -Should run to reset these valus on game load
/* Synced Variable should account for these. We have 32 bits to work with.
1. Color Shift - 2 bits - Off / Extra 1 / Extra 2
2. Status of Win Quotes Enabled - 1 bit
*/

//This function takes the bit lengths you put in the previous function, in the same order, and outputs an array with the values you put in (assuming you put in the correct bit lengths), also in the same order.
//split_var = split_synced_var(bit_length_1, bit_length_2...);
split_var = split_synced_var(2,1);

color_shift = 0; // Declare variable
flag_win_quote_enabled = 0; // Declare variable

// Synced variable overwrite
color_shift = split_var[0];
flag_win_quote_enabled = split_var[1];

//Results variable 
countPlayers = 0;
/*
print("color_shift: " + string(color_shift) + string(get_gameplay_time())); // Color_Shift;
print("flag_win_quote_enabled: " + string(flag_win_quote_enabled) + string(get_gameplay_time())); // WinQuote
*/

// Reload on round start
manual_init_shader_call = true;
init_shader();

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