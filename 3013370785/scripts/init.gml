is_totk_link = true

timer = 0
ascend_plat = undefined
ascend_y = 0
ascend_burrowing = false
ascend_burrowing_timer = 0
ascend_y_increment = 0

practice_mode = false
draw_practice_text = true

stop_sounds = false

intro_y = y - 1000
intro_x = x

totk_plat_id = noone

dspec_cooldown_amt = 60

//ascend_draw_state = 0
//ascend_draw_timer = 0
vfx_ascend_ground = hit_fx_create(sprite_get("vfx_ascend_ground"), 25);
vfx_earthwake = hit_fx_create(sprite_get("vfx_earthwake"), 56);
vfx_reticle_dissipate = hit_fx_create(sprite_get("ascend_reticle_dissipate"), 20);
vfx_bomb_explosion = hit_fx_create(sprite_get("vfx_bomb_explosion"), 36);
vfx_energy = hit_fx_create(sprite_get("vfx_energy"), 24);
vfx_nspecial = hit_fx_create(sprite_get("nspecial_vfx"), 20);
vfx_rock = hit_fx_create(sprite_get("vfx_rock"), 60);

sfx_ultrahand = sound_get("ScraBuild_Rope_Base_lp_00")
sfx_ustrong = sound_get("rune_search_start")

//uspecial trail vars
trail_segments = 10 //number of segments
trail_init = [undefined, undefined, undefined, undefined]
trail_arr = array_create(trail_segments, trail_init) //[draw_x, draw_y]
trail_index = 0
trail_timer = 0

fuse_attack_activated = false
fuse_attack_timer = 0
fuse_attack = false
fuse_item = 0 //0 = none, 1-4 = fused items
fuse_item_old = 0
/*
1 = homing cart
2 = hoverstone
3 = bomb
4 = rocket
*/

get_item_timer = 0

item_hud_timer = 0

old_free = false
prev_hsp = 0
hsp_change = 0
fspec_jump = false
from_fspec = false
from_nspec = false

//dspecial drawing
spawn_obj = undefined
item_draw = false
ultrahand_draw = false
ultrahand_draw_alpha = 0

ustrong_distance_x = 0
ustrong_distance_y = 0
ustrong_reticle_x = 0
ustrong_reticle_y = 0
ustrong_draw_alpha = 0
ustrong_grabbing = false

dstrong_earthwake_dist = 0

item_spawn_x = 0
item_spawn_y = 0

item_cur_x = 0 //wanted draw locations
item_cur_y = 0
item_draw_x = 0 //actual draw locations
item_draw_y = 0
item_cur_x_offset = 0
item_cur_y_offset = 0
item_spr = asset_get("empty_sprite")

parry_anim = false
parry_anim_timer = 0

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

default_height = 58;
char_height = default_height;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .175;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.25;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 11;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.35;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 28; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp_orig = 10;
walljump_vsp = walljump_vsp_orig;
walljump_time = 32;
wall_frames = 2;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = 0.55;
hitstun_grav = 0.50;
knockback_adj = 1.00; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
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
