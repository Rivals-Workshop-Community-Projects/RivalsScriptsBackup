vfx_stock_explosion_small = hit_fx_create(sprite_get("stock_explosion_small"), 32)
vfx_stock_explosion_large = hit_fx_create(sprite_get("stock_explosion_large"), 32)
vfx_stock_explosion_large_red = hit_fx_create(sprite_get("stock_explosion_large_red"), 32)
vfx_ascend_ground = hit_fx_create(sprite_get("ascend_vfx_ground"), 25);
vfx_energy = hit_fx_create(sprite_get("vfx_energy"), 24);
vfx_dspec = hit_fx_create(sprite_get("dspecial_vfx"), 18);

shieldsurf_sfx_playing = false

grounded_timer = 0

prev_x = x
prev_y = y

ascend_plat = undefined
ascend_y = 0
ascend_y_increment = 0

uspec_touch_ground = true

fuse_item_trident = 0
fuse_item_shield = 0
fuse_item_trident_queue = 0
fuse_item_shield_queue = 0

fuse_item_timer = 0
fuse_item_hp_trident = 0
fuse_item_hp_shield = 0
//fuse_overlay = false
//fuse_overlay_timer = 0
//fuse_overlay_sprite = sprite_get("empty_sprite")

fuse_draw_alpha = 0
fuse_reticle_x = x
fuse_reticle_y = y
fuse_start_x = x
fuse_start_y = y

fuse_overlay_timer = 0
fuse_overlay_sprite = asset_get("empty_sprite")


timer = 0
practice_mode = false
state_attacking = false
num_wings = 0

dspec_holograms = []
holo_col_1 = c_white
holo_col_2 = c_white
holo_num = 0

ftilt_draw_vfx = 0

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 7.5;
dash_speed = 7.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 1000; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 24;
wall_frames = 2
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .11; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 5;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 5;
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
