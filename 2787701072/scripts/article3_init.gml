//article3_init

////////////////////////////
////// Goose Climbers //////
////////////////////////////

//init variables (don't touch)
unbashable = true
can_be_grounded = true;
ignores_walls = false;
timer = 0;
strong_charge = 0;
draw_flash = false;

is_goose = true;
state = undefined;
state_timer = 0;
window = 0;
window_timer = 0;
attack = undefined;
next_attack = undefined;

used_uspec = false

prev_state = undefined;
next_state = undefined; //next state to transition to
exit_state = false; //if true, next frame will switch state to next_state
landinglag_var = 0;

crouch_counter = 0;
djump_counter = 0;

is_shorthop = false;

hitstop = 0;
hitstop_full = 0;
has_hit = false;

damage = 0
origID = player_id
prevHitboxID = undefined
prevHitboxNumber = undefined
prevHitboxPlayerID = undefined
prevHitboxAttack = undefined
prevHitboxGroup = undefined
hitstun = 0
invincible = false
hitAngle = 0
hitXDir = 0
hitYDir = 0
hitKnockback = 0
not_hitpause_timer = 0
hitbox_active = false
prev_vsp = 0
prev_hsp = 0

//ai parameters, change to your liking

walk_dist = 70; //ai will walk towards player if outside this radius
dash_dist = 110; //ai will dash towards player if outside this radius
stop_dist = 60; //ai will stop walking/dashing once inside this radius
facing_dist = 4; //ai will not try face player if inside this radius (setting to 0 not advised)

jump_disty = 60; //ai will try jump if player is this y distance above it
jump_distx = 140; //ai will not jump unless within this x distance from player

shorthop_disty = 20; //same as jump_disty but for shorthop
djump_disty = 60; //same as jump_disty but for djump

jump_delay = 5; //ai will delay jumping after this many frames

attack_dist = 1000; //goose will only follow attacks if inside this radius (150 is good for close range)
attack_delay = 10; //number of frames to delay goose attack by (NOTE: must be greater than 3)

input_queue = array_create(attack_delay, undefined) //populated with queued inputs
input_queue_index = 0 //increments by 1 each frame, used to select current input from array


//Define your init variables under here

honk_sfx = sound_get("honk_01");

vfx_feather_side_small = hit_fx_create(sprite_get("vfx_feather_side_small"), 10);
vfx_feather_up_small = hit_fx_create(sprite_get("vfx_feather_up_small"), 10);
vfx_feather_side_large = hit_fx_create(sprite_get("vfx_feather_side_large"), 21);
vfx_feather_up_large = hit_fx_create(sprite_get("vfx_feather_up_large"), 21);

has_picked_up = false; //whether the wt has been picked up in a frame
blue_colour = undefined; //colour slot values for blue wt
yellow_colour = undefined; //colour slot values for yellow wt
next_colour = "blue"; //next colour to pull out
num_wt = 0; //number of wts in game (held + article)
num_wt_article = 0; //number of article wts
num_wt_max = 2; //max number of wt
wt_closest = undefined; //id of closest wt
wt_hitbox_size = 0; //0 means cannot create hitbox, 1 means small, 2 means large
holding_wt = false; //true if holding a walkie talkie
hold_colour = "blue"; //colour of WT held
wt_sprite = undefined; //sprite to draw holding a wt
non_sprite = asset_get("empty_sprite"); //sprite to draw when not holding wt
throwing_wt = false; //when performing a wt strong throw
picking_wt = false; //picking up wt
destroyID = undefined; //id of wt to destroy when picking up

hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

nair_boost = true;

char_height = 48;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .25;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.25;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9;
short_hop_speed = 5;
djump_speed = 8;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.35;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 5;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
wall_frames = 2;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = 0.4;
hitstun_grav = 0.45;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 7;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.07; //grounded deceleration when wavelanding

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
techroll_startup_frames = 2;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_wra");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;