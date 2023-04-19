hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .3;
pratfall_anim_speed = .15;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 5;
initial_dash_time = 8;
initial_dash_speed = 6.25;
dash_speed = 5.75;
dash_turn_time = 12;
dash_turn_accel = 1.3;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .28;
prat_fall_accel = 0.60; //multiplier of air_accel while in pratfall
air_friction = .055;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 10;
walljump_time = 7;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
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
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_abs");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Custom section ----------------------------------------------------

//Crouch Bubble Hitfx
crouch_bubble = noone;
hsp_at_start_of_double_jump = 0;

//init.gml - Maw's command grab variables
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.
player_location_start_of_grab_x = 0;
player_location_start_of_grab_y = 0;
pull_to_x = 0;
pull_to_y = 0;

//Fspecial Variable
ganoncide_preventor_available_flag = true; // Flag used to detect ganoncide and prevent it, but only one time before touching ground
fspecial_recovery_enabled_flag = false;
grabbed_player_obj_spr_angle=0;
grabbed_player_obj_draw_x = 0;
grabbed_player_obj_draw_y = 0;

//Dspecial Variables
djump_given_back_flag = false;
height_changed_flag = false;
fall_through_timer = 0;
fall_through_flag = false;

//Status Effect
electric_buff_water_attack_threshold = 9;
water_buff_electric_attack_threshold = 15;
water_buff_electric_attack_flag = false;
electric_buff_water_attack_flag = false;
element_debug_draw = true;
element_draw = true;
hitfx_consume_water_obj = noone;
hitfx_cooldown_obj = noone;
hitfx_water_dust_obj_1 = noone;
hitfx_water_dust_obj_2 = noone;
hitfx_mark_consume_obj = noone;
hitfx_mark_disperse_obj = noone;

// HitFX
hitfx_large_elec = hit_fx_create(sprite_get("hitfx_large_elec"),12);
hitfx_large_water = hit_fx_create(sprite_get("hitfx_large_water"),20);
hitfx_water_paw = hit_fx_create(sprite_get("hitfx_water_paw"),25);
hitfx_elec_paw = hit_fx_create(sprite_get("hitfx_elec_paw"),25);
hitfx_consume_water = hit_fx_create(sprite_get("consume_water"),45);
hitfx_consume_elec = hit_fx_create(sprite_get("consume_elec"),30);
hitfx_bubbles = hit_fx_create(sprite_get("bubbles"),30);
hitfx_cooldown = hit_fx_create(sprite_get("cooldown_electricity"),60);
hitfx_water_dust = hit_fx_create(sprite_get("hitfx_water_dust"),14);
hitfx_mark_consume = hit_fx_create(sprite_get("hitfx_mark_consume"),90);
hitfx_mark_disperse = hit_fx_create(sprite_get("hitfx_mark_disperse"),40);

hfx_dspecial_floor = hit_fx_create(sprite_get("hfx_dspecial_floor"),30);
hfx_uspecial_jumpfx = hit_fx_create(sprite_get("hfx_uspecial_jumpfx"),16);
hfx_electric_dash = hit_fx_create(sprite_get("hfx_electric_dash"),24);
hfx_electric_directional_arrow = hit_fx_create(sprite_get("hfx_electric_directional_arrow"),24);

// Hit Particles
set_hit_particle_sprite(1,sprite_get("hit_particle1")); // General Body
set_hit_particle_sprite(2,sprite_get("hit_particle2")); // Paw specifc
set_hit_particle_sprite(3,sprite_get("hit_particle3")); // Water
set_hit_particle_sprite(4,sprite_get("hit_particle4")); // Electric
set_hit_particle_sprite(5,sprite_get("hit_particle5")); // Water + Electric

// Hit Particle List
hp_general = 1;
hp_paw = 2;
hp_water = 3;
hp_electric = 4;
hp_waterelectric = 5;

// intro Code
intro_sound_played_flag = false;
intro_animation_frames_before_start = 0;
intro_animation_strip_frames = 0;
intro_animation_speed = 0;

//Results variable 
countPlayers = 0;

//Alt Color Variable
color_select_alt_name = "";
color_picker_alt_index = 0;

// Platform Code
article_platform_id = noone;

// Final Smash Compat
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 96;
fs_charge = 0;
AT_FINAL_SMASH_GRAB = 49;
AT_FINAL_SMASH_THROW = 48;
cinetmatic_timer = 0;
play_final_smash_grab_cintematic_flag = false;

//fs_portrait_x = OFFSET HERE
//`fs_char_portrait_override = sprite_get('MY PORTRAIT OVERRIDE SPRITE");`
//`fs_char_attack_index = AT_ATTACK_INDEX_OF_YOUR_CHOICE;`

/* Disabled for now
// Lukaru After Images code for Amateratsu Alt
// Other code affected is in Colors / Init Shader / Pre draw / update
if(get_player_color(player) == 25 || get_player_color(player) == 22){ // Amateratsu // Genesis 8 Skin
    // afterimage
    afterImageTimer = 0;
    afterImageMax = 6;
    afterImage = array_create(afterImageMax, -1);
}
*/
// Other Compat Stuff
// Compatibility Stuff -----------------------------------------------
Hikaru_Title = "Dance in the rain with me";
arena_title = "The Eye of the Storm";
battle_text = "*They took everything from me."; // Opening line of "Lost at Birth" by Public Enemy
pot_compat_variable = sprite_get("compat_pot");
pot_compat_text = "Stormy Sushi"

//Dialogue Buddy by Ducky! get it at https://steamcommunity.com/workshop/filedetails/discussion/2557293251/3062995463267073852/
diag_portrait=sprite_get("dialogue_buddy"); // This will allow you to put any custom portrait onto the dialogue buddy!

kinniku_front = sprite_get("kinniku_front");
kinniku_behind = sprite_get("kinniku_behind");

//#region Synced Variable

// Synced Variable Stuff
/* Synced Variable should account for these. We have 32 bits to work with.
1. Color Shift - 2 bits - Off / Extra 1 / Extra 2
2. Status of Win Quotes Enabled - 1 bit
3. Status of Round Start Dialog Enabled - 1 bit 
*/
//This function takes the bit lengths you put in the previous function, in the same order, and outputs an array with the values you put in (assuming you put in the correct bit lengths), also in the same order.
//split_var = split_synced_var(bit_length_1, bit_length_2...);
split_var = split_synced_var(2,1,1);
//print(split_var);

color_shift = 0; // Declare variable
flag_win_quote_enabled = 0; // Declare variable
flag_round_start_dialog = 0; // Declare variable

// Synced variable overwrite
color_shift = split_var[0];
flag_win_quote_enabled = split_var[1];
flag_round_start_dialog = split_var[2];

/*
print("color_shift: " + string(color_shift) + string(get_gameplay_time())); // Color_Shift;
print("flag_win_quote_enabled: " + string(flag_win_quote_enabled) + string(get_gameplay_time())); // WinQuote
print("flag_round_start_dialog: "+ string(flag_round_start_dialog) + string(get_gameplay_time())); // Round Start Dialog
*/

// Reload on round start
manual_init_shader_call = true;
last_frame_color_alt = get_player_color(player);
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
