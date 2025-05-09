hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .125;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7.25; // Like Mollo
dash_speed = 7; // Ori / Orcane
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 4;
jump_speed = 10.99;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35; // Clairen
prat_fall_accel = .9; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.05; //Ranno Weight

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 1.30; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .065; //grounded deceleration when wavelanding

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
techroll_speed = 9;

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
roll_back_recovery_frames = 2;
roll_forward_max = 7.5; //roll speed
roll_backward_max = 7.5;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//init.gml - Maw's command grab variables
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.
pull_to_x = 0;
pull_to_y = 0;
grabbed_player_obj_spr_angle = 0;
player_location_start_of_grab_x = 0;
player_location_start_of_grab_y = 0;

// Custom Variables
double_jump_backward_flag = false;
hsp_at_start_of_double_jump = 0;
djump_given_back_flag = false;
emergency_fspec_given_back_flag = false;
uspecial_stall_lockout_flag = false;
uspecial_stall_counter = 0;
moved_up = false;

// Idle 2
idle_2_game_frames_per_anim_frame = 20;
idle_2_number_of_frames_in_strip = 20;
idle_2_start_timer = 5 * 60; // When Idle should start
idle_2_current_timer = 0; // Timer for tracking the idle_2 timer without distrubing state_timer
idle_2_total_length = 0;
idle_2_total_length = idle_2_number_of_frames_in_strip * idle_2_game_frames_per_anim_frame; // Number of frames * how long each frame will be in game frames

// Clone
clone_object_ID = noone;
clone_walk_direction = 0;
clone_dspecial_hit = false; 
clone_dspecial_assist = false;
clone_uspecial_player_throwing_clone = false;
clone_uspecial_clone_throwing_player = false;
clone_fspecial_player_throwing_clone = false;
clone_fspecial_clone_throwing_player = false;

//VFX / HFX
vfx_smoke = hit_fx_create(sprite_get("vfx_smoke"),10);
vfx_fire_paw = hit_fx_create(sprite_get("vfx_fire_paw"),28);
vfx_fire_large = hit_fx_create(sprite_get("vfx_fire_large"),28);
vfx_fire_medium = hit_fx_create(sprite_get("vfx_fire_medium"),20);
vfx_fire_directional = hit_fx_create(sprite_get("vfx_fire_directional"),20);
vfx_fire_dash = hit_fx_create(sprite_get("vfx_fire_dash"),12);
vfx_fire_dash_upwards = hit_fx_create(sprite_get("vfx_fire_dash_upwards"),12);
vfx_dthrow_fire = hit_fx_create(sprite_get("vfx_dthrow_fire"),27);
vfx_clone_fast_fall = hit_fx_create(sprite_get("clone_fast_fall_shine"),12);

vfx_smoke_object = 0;
vfx_dash_fire_object = 0;

// Hit Particles
set_hit_particle_sprite(1,sprite_get("hit_particle1")); // Fire Small
set_hit_particle_sprite(2,sprite_get("hit_particle2")); // Fire Large
set_hit_particle_sprite(3,sprite_get("hit_particle3")); // Fire Disperse

hp_fire_small = 1;
hp_fire_large = 2;
hp_fire_disperse = 3;

plat_exists = false;
plat_despawn_timer = 10;
plat_x = 0;
plat_y = 0;

// WISP Section
wisp_object_ID = noone;
wisp_returned = false;

// Random Clone Text
num_clone_text_names = 14 + 1;
clone_text_list = ["Real Roekoko",
"Not a Trick",
"Not a Clone",
"Forsburn Clone",
"Roka-cola",
"R O E K O K O",
"r03k0K0",
"Kokororo",
"^-.-^",
"Real Faker",
"THIS ONE",
"Generic Name",
"Kiriko",
"Ivan",
"Clone Goon" //14
];

// intro Code
intro_sound_played_flag = false;

// Rainbow code from Dinos
color_r = 255;
color_b = 0;
color_g = 0;
color_type = 0;
color_timer = 1; //Edit this value to change the speed of rainbow
last_frame_color_alt = get_player_color(player);

// Final Smash Compat
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 96;
fs_charge = 0;
AT_FINAL_STRONG_START_UP = 49;
AT_FINAL_STRONG_THROW = 48;
final_strong_window_loops = 3;
//cinetmatic_timer = 0;
//play_final_smash_grab_cintematic_flag = false;
//fs_portrait_x = OFFSET HERE
//`fs_char_portrait_override = sprite_get('MY PORTRAIT OVERRIDE SPRITE");`
//`fs_char_attack_index = AT_ATTACK_INDEX_OF_YOUR_CHOICE;`


// CLone Skins Section
clone_spawn_sprite = 0;
clone_idle_sprite = 0;
clone_idle_flourish_sprite = 0;
clone_crouch_sprite = 0;
clone_crouch_idle_sprite = 0;
clone_walk_sprite = 0;
clone_walk_turn_sprite = 0;
clone_dash_sprite = 0;
clone_dash_turn_sprite = 0;
clone_dash_start_sprite = 0;
clone_dash_stop_sprite = 0;
clone_jumpstart_sprite = 0;
clone_jump_sprite = 0;
clone_doublejump_sprite = 0;
clone_doublejump_backward_sprite = 0;
clone_land_sprite = 0;
clone_taunt_sprite = 0;
clone_hurt_sprite = 0;
clone_landing_lag_sprite = 0;
clone_waveland_sprite = 0;

clone_dspecial_sprite = 0;
//dspecial_hurt_sprite = 0; // Enable for hurtbox editing
clone_dspecial_up_sprite = 0;
//dspecial_up_hurt_sprite = 0; // Enable for hurtbox editing
clone_dspecial_down_sprite = 0;
//dspecial_down_hurt_sprite = 0; // Enable for hurtbox editing
clone_dthrow_partial_sprite = 0;
clone_dthrow_full_sprite = 0;
clone_dthrow_team_sprite = 0;
clone_fspecial_sprite = 0;
clone_fspecial_2_sprite = 0;
clone_fspecial_air_sprite = 0;
clone_uspecial_sprite = 0;
clone_uspecial_2_sprite = 0;
clone_nspecial_sprite = 0;
clone_utilt_sprite = 0; // Used for clone assist attack

clone_airdash_forward_sprite = 0;
clone_airdash_backward_sprite = 0;
clone_airdash_upward_sprite = 0;
clone_airdash_downward_sprite = 0;

clone_wisp_idle_sprite = 0;
clone_wisp_travel_sprite = 0;

clone_plat_clone_assist_sprite = 0;

// Woodcock Compat for training mode.
if(get_match_setting(SET_PRACTICE)){
    //print("In Training Mode - Initiaizing Woodcock variables");
    // Attack Indexes
    AG_MUNO_ATTACK_EXCLUDE = 80;
    AG_MUNO_ATTACK_REFRESH = 81;
    AG_MUNO_ATTACK_NAME = 82;
    AG_MUNO_ATTACK_FAF = 83;
    AG_MUNO_ATTACK_ENDLAG = 84;
    AG_MUNO_ATTACK_LANDING_LAG = 85;
    AG_MUNO_ATTACK_MISC = 86;
    AG_MUNO_ATTACK_MISC_ADD = 87;
    
    //Hitbox Indexes
    HG_MUNO_HITBOX_EXCLUDE = 80;
    HG_MUNO_HITBOX_NAME = 81;
    HG_MUNO_HITBOX_ACTIVE = 82;
    HG_MUNO_HITBOX_DAMAGE = 83;
    HG_MUNO_HITBOX_BKB = 84;
    HG_MUNO_HITBOX_KBG = 85;
    HG_MUNO_HITBOX_ANGLE = 86;
    HG_MUNO_HITBOX_PRIORITY = 87;
    HG_MUNO_HITBOX_GROUP = 88;
    HG_MUNO_HITBOX_BHP = 89;
    HG_MUNO_HITBOX_HPG = 90;
    HG_MUNO_HITBOX_MISC = 91;
    HG_MUNO_HITBOX_MISC_ADD = 92;
}

// Other Compat Stuff
// Compatibility Stuff -----------------------------------------------
Hikaru_Title = "We're twin tailed troublemakers";
arena_title = "The Twin-tailed Troublemaker";
battle_text = "*Let's have some fun!"; //
pot_compat_variable = sprite_get("compat_pot");
pot_compat_text = "Roka-cola!";
mamizou_transform_spr = sprite_get("compat_mamizou"); //Replace "X" with your sprite.

//#region Synced Variable

// Synced Variable Stuff -Should run to reset these valus on game load
/* Synced Variable should account for these. We have 32 bits to work with.
1. Color Shift - 2 bits - Off / Extra 1 / Extra 2
2. Status of Win Quotes Enabled - 1 bit
3. Status of Round Start Dialog Enabled - 1 bit
4. Swap Nspec / Dspec - 1 bit
5. Portrait to use - 2 bits
6. Alt Outfit Bit enable - 1 bit
*/

//This function takes the bit lengths you put in the previous function, in the same order, and outputs an array with the values you put in (assuming you put in the correct bit lengths), also in the same order.
//split_var = split_synced_var(bit_length_1, bit_length_2...);
split_var = split_synced_var(2,1,1,1,2,1);

color_shift = 0; // Declare variable
flag_win_quote_enabled = 0; // Declare variable
flag_round_start_dialog = 0; // Declare variable
swap_nspec_dspec_input = 0; // Declare Variable

// Synced variable overwrite
color_shift = split_var[0];
flag_win_quote_enabled = split_var[1];
flag_round_start_dialog = split_var[2];
swap_nspec_dspec_input = split_var[3];
portrait_to_use = split_var[4];
alt_outfit_enabled = split_var[5];

//Results variable 
countPlayers = 0;
/*
print("color_shift: " + string(color_shift) + string(get_gameplay_time())); // Color_Shift;
print("flag_win_quote_enabled: " + string(flag_win_quote_enabled) + string(get_gameplay_time())); // WinQuote
print("flag_round_start_dialog: "+ string(flag_round_start_dialog) + string(get_gameplay_time())); // Round Start Dialog
print("swap_nspec_dspec_input: "+ string(swap_nspec_dspec_input) + string(get_gameplay_time())); // Round Start Dialog
*/

// Reload on round start
manual_init_shader_call = true;
init_shader();
//#endregion


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
