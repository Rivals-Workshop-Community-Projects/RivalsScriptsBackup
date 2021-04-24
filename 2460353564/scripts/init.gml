hurtbox_spr = sprite_get("hurtbox_normal");
crouchbox_spr = sprite_get("hurtbox_crouch");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .2;
crouch_idle_anim_speed = 0.1;
crouch_anim_speed = 1;
walk_anim_speed = .4;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 8;
dash_speed = 7.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = dash_speed; //the maximum hsp you can have when jumping from the ground
air_max_speed = dash_speed; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

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
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("s01_landing");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// custom stuff for Sakuya
true_idle_anim_speed = idle_anim_speed;
true_walk_anim_speed = walk_anim_speed;
walk_start_override_done = true;
walk_stop_override_done = true;

true_air_max_speed = air_max_speed;

// trail stuff
trail_history_states = 6;
frames_between_state_snapshots = 2;
frames_until_next_snapshot = frames_between_state_snapshots;
// you'll keep trails through most actions, but only if your velocity vector magnitude is above this threshold
trail_min_velocity = walk_speed*1.5;
trail_max_opacity_pct = 35;
trail_min_opacity_pct = 3;
trail_active = false;

// store 10 previous positions. initialize all to -1,-1
// GML arrays are weird... this is supposedly the most efficient way to create them
prev_poses_x[trail_history_states-1] = -1;
prev_poses_y[trail_history_states-1] = -1;
// store 10 previous sprites_index, image_index, and spr_dir values for trails
prev_spr_indexes[trail_history_states-1] = -1;
prev_img_indexes[trail_history_states-1] = -1;
prev_spr_dirs[trail_history_states-1] = 0; // init this to 0 since 1 is right, -1 is left

// initialize arrays
var i;
// condition is i<trail_history_states-1 because we already set the one at the very end to initialize the array to the right size
for (i=0; i<trail_history_states-1; i++) {
    prev_poses_x[i] = -1;
    prev_poses_y[i] = -1;
    prev_spr_indexes[i] = -1;
    prev_img_indexes[i] = -1;
    prev_spr_dirs[i] = 0;
}

// hover stuff
true_gravity_speed = gravity_speed;
true_max_fall = max_fall;
hover_gravity_multiplier = 0.4;
hover_anim_speed = 0.25;
hovering = false;
can_hover = true;

// dtilt 
dtilt_bounce_speed = 4;
dtilt_landing_cooldown = 0;
move_cooldown[AT_DTILT] = 0;

// max jump hsp is reduced during the dtilt jump cancel window
true_max_jump_hsp = max_jump_hsp;

// knife throw
throw_start_hsp = 0;
jab_knockback_decay_frames = 5;
ring_sprite = hit_fx_create(sprite_get("ring"), 14);
flurry_sprite = hit_fx_create(sprite_get("flurry"), 16);
knife_hitsound_cooldown = 5;
cur_knife_hitsound_cooldown = 0;

// ustrong
ustrong_charge_cooldown_after_hit = 5;
ustrong_charge_hit_cooldown = 0;
explosion_effect = hit_fx_create(sprite_get("explosion"), 26);
cur_chainsaw = undefined;

// MP
max_mp = 300;
mp = max_mp;
mp_regen = 0.075;
mp_cost_basic = 3;
mp_cost_ustrong = 45;
mp_cost_fstrong = 25;
mp_cost_dstrong = 35;
mp_cost_nspecial = 7;
mp_cost_fspecial = 15;
mp_cost_dspecial = 50;
time_since_last_mp_spend = 999;
time_since_last_no_mp_fx = 999;
no_mp_effect = hit_fx_create(sprite_get("no_mp"), 36);
no_mp_l_effect = hit_fx_create(sprite_get("no_mp_l"), 36);
mp_vox_cooldown = 0;
mp_rec_fx = hit_fx_create(sprite_get("mp_recovery"), 36);
mp_rec_l_fx = hit_fx_create(sprite_get("mp_recovery_l"), 36);
mp_parry_penalty = 10;

// fspecial
fspecial_cooldown = 60;
zap_sprite = hit_fx_create(sprite_get("thunder"), 9);

// nspecial
autofire_on = false;
nspecial_cooldown = 30;
nspecial_velocity = 6;
nspecial_cooldown_remaining = 0; // this needs its own cooldown implementation bc i'm using the system one to disable the move from working normally
ring_big_sprite = hit_fx_create(sprite_get("ring_big"), 16);

// fstrong
fstrong_loops_remaining = 0;
fstrong_cancelled = false;

// dstrong
time_since_last_dstrong_hitbox = 0;

// taunt + nitori
nitori_cooldown = 600;
cur_nitori = undefined;

// time stop
timestop_duration = 300;
timestop_drain = mp_regen*4;
timestop_active = false;
timestop_kb_dampening = 0.09;
stored_knockback_limit_growth = 0.33;

// training mode detection
training_mode = false;
// CPU always defaults to "stand" in training mode (i think) but this will return fight from the start in a real fight
if (get_training_cpu_action() != CPU_FIGHT) {
    training_mode = true;
}

// for convenience's sake, define all the same things on ourself that we define on others
timestop_x = -1;
timestop_y = -1;
timestop_spr_index = undefined;
timestop_img_index = undefined;
timestop_spr_dir = undefined;
timestopped = false;
stored_knockback = 0;
stored_angle = 0;
fractional_damage = 0;

// graze
graze_timer = 0;
graze_time_before_proc = 6;
graze_mp_regen = 10;
graze_distance = 10;
graze_cooldown = 0;
graze_cooldown_btwn_procs = 180;
graze_anim_frames = 36;
timestop_graze_cooldown_mult = 0.25;
graze_fx = hit_fx_create(sprite_get("graze"), 36);
graze_l_fx = hit_fx_create(sprite_get("graze_l"), 36);
graze_cooldown_btwn_sfx = 13;
graze_sound_cooldown = 0;
has_grazed_this_frame = false;
parried_attack_this_frame = false;
mp_pink = make_colour_rgb(234, 86, 179);
mp_item_sprite = sprite_get("mp_item");