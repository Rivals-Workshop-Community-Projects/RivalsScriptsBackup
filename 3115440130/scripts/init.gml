window_length = 0
timer = 0
practice_mode = false
state_attacking = false

vfx_airdodge_shard = hit_fx_create(sprite_get("airdodge_shard"), 15)
vfx_fault = hit_fx_create(sprite_get("fault_vfx"), 15)
vfx_rock_shatter = hit_fx_create(sprite_get("nspecial_shatter_vfx"), 20)
vfx_fspec_launch = hit_fx_create(sprite_get("fspecial_launch_vfx"), 20)
vfx_eruption = hit_fx_create(sprite_get("fault_eruption_vfx"), 35)
vfx_dspec_rock = hit_fx_create(sprite_get("dspec_rock"), 8)
vfx_nspec_rock = hit_fx_create(sprite_get("nspec_rock_vfx"), 8)
vfx_molten_large = hit_fx_create(sprite_get("vfx_molten_large"), 24)
vfx_explode = hit_fx_create(sprite_get("dspecial_explosion_vfx_small"), 24)

set_hit_particle_sprite(1, sprite_get("particle_rock"))
set_hit_particle_sprite(2, sprite_get("particle_molten"))

fault_timer = 0

fspec_holograms = []
holo_col_1 = c_white
holo_col_2 = c_white

fspec_angle = 0
hit_rock = false
fspec_spd = 0
fspec_empowered = false

//event_x = 0
//event_y = 0
//event_ledge = 0
//event_hbox = 0

do_dspec_explode = false
dspec_fault_threshold_small = 4 //minimum number of faults for small explosion
dspec_fault_threshold_large = 12 //minimum number of faults for large explosion
dspec_explosion_size = 1 //1 = small, 2 = large
dspec_explosion_timer = -1
dspec_explosion_coords = [x,y]

draw_parry = true

hurtbox_spr = asset_get("wolf_hurtbox");
crouchbox_spr = asset_get("wolf_crouchbox");
air_hurtbox_spr = -1//asset_get("wolf_hurtbox_air");
hitstun_hurtbox_spr = asset_get("wolf_hitstun_hurtbox")

char_height = 44;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .18;
dash_anim_speed = .2;
pratfall_anim_speed = .175;

walk_speed = 4;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.75;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .75;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 7.4;
djump_speed = 11.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = 1.00; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .60;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .11; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 6;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 4;
techroll_recovery_frames = 2;
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
waveland_sound = asset_get("sfx_waveland_kra");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
