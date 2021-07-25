hurtbox_spr = sprite_get("lode_hurtbox");
air_hurtbox_spr = sprite_get("lode_hurtbox_air");
crouchbox_spr = sprite_get("lode_crouchhurtbox");
hitstun_hurtbox_spr = -1;

hook_jump_mult = 0.8;
direc = 0;
direc_sided = 0;
anim_offset = 0;
hook = noone;
hook_speed = 15;
hitten = 0;

height = bbox_top - bbox_bottom;

positive_kb_modifier = 0.85;
negative_kb_modifier = 1.20;

tail_r = get_color_profile_slot_r(get_player_color(player), 5);
tail_g = get_color_profile_slot_g(get_player_color(player), 5);
tail_b = get_color_profile_slot_b(get_player_color(player), 5);

time_charge_starts = 0;
charge = 0; //Current electric charge.
acorn = noone;  //id of acorn article.
acorn_max_hold_time = 35;
acorn_time_created = 0;

max_nut_count = 1;
nut_count = 0;

ds_time_start = 0;  //The time that down special started.
ds_discharge_time = 36;    //How long the player needs to hold the button to discharge.
ds_hit_list = noone;    //List of enemies along the line for down special's discharge.
ds_crackle_sound = asset_get("sfx_absa_cloud_crackle");   //Sound played per cycle of dspceial.
ds_charge_sound = asset_get("sfx_absa_cloud_pop"); //Sound played when player's charge is set.
ds_discharge_sound = asset_get("sfx_absa_boltcloud");   //Sound played during discharge.

us_num_directions = 32; //Number of directions you can aim with up special.
us_magnetism = 23;    //Number of degrees difference between where you're aiming and the direction to the acorn in order to automatically aim at the acorn.

field_pos_open_sound = sound_get("Open+");
field_pos_open_length = 85;    //Number of frames the positive open sound lasts.
field_pos_close_sound = sound_get("Close+");
field_pos_active_sound = sound_get("Live+");
field_neg_open_sound = sound_get("Open-");
field_neg_open_length = 86;    //Number of frames the negative open sound lasts.
field_neg_close_sound = sound_get("Close-");
field_neg_active_sound = sound_get("Live-");

Sweet = hit_fx_create( sprite_get( "SweetHit" ), 30);
sprite_change_offset("SweetHit", 45, 45);

char_height = 59; //59
idle_anim_speed = .17;
crouch_anim_speed = .15;
walk_anim_speed = .08;
dash_anim_speed = .2;
pratfall_anim_speed = .1;

walk_speed = 3;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 13;
initial_dash_speed = 6;
dash_speed = 5.5;
dash_turn_time = 12;
dash_turn_accel = .80;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 1;
moonwalk_accel = 1.2;

jump_start_time = 5;
jump_speed = 10.50;
short_hop_speed = 6;
djump_speed = 10.99;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .6;
hitstun_grav = .50;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 11;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 7;
crouch_recovery_frames = 2;

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
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
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

// Kirby Functionality
kirbyability = 5;
newicon = 0;
swallowed = 0;
enemykirby = noone;

//trummel & alto
trummelcodecneeded = false;
trummelcodec_id = noone;
sans_speech = 0;

//tco
tcoart = sprite_get("sanstcoart");

feri_costume = sprite_get("feri_costume_load");