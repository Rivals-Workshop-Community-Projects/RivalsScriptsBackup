// ---- MODIFIED BASE STATS: LOOK ALL THE WAY AT THE BOTTOM ----

// HIT FX
fx_strongu_proj_explosion = hit_fx_create(sprite_get("strongu_proj_explosion"), 14);
fx_tornado = hit_fx_create(sprite_get("tornado"), 48);

// OWN VARS
no_of_spells = 13; // man I regret making so many spells... sooo much work damn (still worth it)

magic_overload = false; // random magic effect when magic_meter reaches 100
magic_meter = 0; // max 100
magic_timer = 0;
time_until_magic = 0;
// effect_selection = 0;
flying_object = noone;

custom_attack = false; // whether the current attack = AT_DSPECIAL_2 
spell_activated = false;
spell_activated_timer = 0;
selected_spell = -1; //set attack in update.gml?
can_nope = true;
nope_timer = 0;

// Strongs
random_effect = 11; // start with basic stun effect

// Nspecial menu
menu_active = false;
for(a=1; a<3; a++){
	already_chosen[a] = -1;
}

for(i=1; i<no_of_spells; i++){
    spell_list[i] = i;
}
for(i=1; i<5; i++){
    menu_spell[i] = i;
}

oil_timer = -1;
oil_active = false;
oil_deactivated = false;
turbospeed_timer = -1;
turbospeed_active = false;
turbospeed_deactivated = false;
turbojump_timer = -1;
turbojump_active = false;
turbojump_deactivated = false;

// SPRITES


// SOUNDS
turbo_snd = asset_get("sfx_gem_collect");
turbojump_snd = asset_get("sfx_gus_jump");

// DEBUG
last_spell = -1;
debug_timer = 0;


// CHAR STATS
hurtbox_spr = sprite_get("custom_hurtbox");//asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("custom_crouch_hurtbox");//asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 74;
idle_anim_speed = .1;
crouch_anim_speed = .01;
walk_anim_speed = .1;
dash_anim_speed = .333;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6;
dash_speed = 5;
dash_turn_time = 10;
dash_turn_accel = 1.0;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 0.8;

jump_start_time = 5;
jump_speed = 9; //7
short_hop_speed = 5.6; // excatly enough for hopping on that piggy
djump_speed = 7;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 2;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 7;
walljump_time = 32;
max_fall = 7; //maximum fall speed without fastfalling
fast_fall = 9; //fast fall speed
gravity_speed = .3;
hitstun_grav = .5;
knockback_adj = 1.10; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10; //?? balance?
wave_land_time = 7;
wave_land_adj = 1.10; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .08; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 2;
crouch_recovery_frames = 1;

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
air_dodge_startup_frames = 3;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 9;

//roll animation frames
roll_forward_startup_frames = 4;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 4;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;




// HERE IS THE BOTTOM
char_height_base = char_height;
idle_anim_speed_base = idle_anim_speed;
crouch_anim_speed_base = crouch_anim_speed;
walk_anim_speed_base = walk_anim_speed;
dash_anim_speed_base = dash_anim_speed;
pratfall_anim_speed_base = pratfall_anim_speed;

walk_speed_base = walk_speed;
walk_accel_base = walk_accel;
walk_turn_time_base = walk_turn_time;
initial_dash_time_base = initial_dash_time;
initial_dash_speed_base = initial_dash_speed;
dash_speed_base = dash_speed;
dash_turn_time_base = dash_turn_time;
dash_turn_accel_base = dash_turn_accel;
dash_stop_time_base = dash_stop_time;
dash_stop_percent_base = dash_stop_percent; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction_base = ground_friction;
moonwalk_accel_base = moonwalk_accel;

jump_start_time_base = jump_start_time;
jump_speed_base = jump_speed;
short_hop_speed_base = short_hop_speed; // excatly enough for hopping on that piggy
djump_speed_base = djump_speed;
leave_ground_max_base =leave_ground_max; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp_base = max_jump_hsp; //the maximum hsp you can have when jumping from the ground
air_max_speed_base = air_max_speed; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change_base = jump_change; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel_base = air_accel;
prat_fall_accel_base = prat_fall_accel; //multiplier of air_accel while in pratfall
air_friction_base = air_friction;
max_djumps_base = max_djumps;
double_jump_time_base = double_jump_time; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp_base = walljump_hsp;
walljump_vsp_base = walljump_vsp;
walljump_time_base = walljump_time;
max_fall_base = max_fall; //maximum fall speed without fastfalling
fast_fall_base = fast_fall; //fast fall speed
gravity_speed_base = gravity_speed;
hitstun_grav_base = hitstun_grav;
knockback_adj_base = knockback_adj; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time_base = land_time; //normal landing frames
prat_land_time_base = prat_land_time;
wave_land_time_base = wave_land_time;
wave_land_adj_base = wave_land_adj; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction_base = wave_friction; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames_base = crouch_startup_frames;
crouch_active_frames_base = crouch_active_frames;
crouch_recovery_frames_base = crouch_recovery_frames;

//parry animation frames
dodge_startup_frames_base = dodge_startup_frames;
dodge_active_frames_base = dodge_active_frames;
dodge_recovery_frames_base = dodge_recovery_frames;

//tech animation frames
tech_active_frames_base = tech_active_frames;
tech_recovery_frames_base = tech_recovery_frames;

//tech roll animation frames
techroll_startup_frames_base = techroll_startup_frames
techroll_active_frames_base = techroll_active_frames;
techroll_recovery_frames_base = techroll_recovery_frames;
techroll_speed_base = techroll_speed;

//airdodge animation frames
air_dodge_startup_frames_base = air_dodge_startup_frames;
air_dodge_active_frames_base = air_dodge_active_frames;
air_dodge_recovery_frames_base = air_dodge_recovery_frames;
air_dodge_speed_base = air_dodge_speed;

//roll animation frames
roll_forward_startup_frames_base = roll_forward_startup_frames;
roll_forward_active_frames_base = roll_forward_active_frames;
roll_forward_recovery_frames_base = roll_forward_recovery_frames;
roll_back_startup_frames_base = roll_back_startup_frames;
roll_back_active_frames_base = roll_back_active_frames;
roll_back_recovery_frames_base = roll_back_recovery_frames;
roll_forward_max_base = roll_forward_max; //roll speed
roll_backward_max_base = roll_backward_max;

//visual offsets for when you're in Ranno's bubble
bubble_x_base = bubble_x;
bubble_y_base = bubble_y;



/* backup or something I guess
initial_dash_time_base = initial_dash_speed;
dash_speed_base = dash_speed;
jump_speed_base = jump_speed;
short_hop_speed_base = short_hop_speed;
djump_speed_base = djump_speed;
leave_ground_max_base = leave_ground_max; 
max_jump_hsp_base = max_jump_hsp; 
air_max_speed_base = air_max_speed;
jump_change_base = jump_change; 
air_accel_base = air_accel;
air_friction_base = air_friction;
gravity_speed_base = gravity_speed;
max_fall_base = max_fall;
fast_fall_base = fast_fall;
wave_land_time_base = wave_land_time;
wave_land_adj_base = wave_land_adj; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction_base = wave_friction; //grounded deceleration when wavelanding