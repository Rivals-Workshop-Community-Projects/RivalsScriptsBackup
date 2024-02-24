#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7

omen_fspec_owner = noone
omen_lerp_pos = undefined
omen_frozen_id = noone
omen_frozen_timer = -1
omen_frozen_meter_percent = 0
omen_draw_ice = false
omen_draw_ice_timer = 0

omen_cur_spr_dir = spr_dir
omen_prev_spr_dir = spr_dir
omen_prev_prev_spr_dir = spr_dir
omen_drenched_id = noone
omen_drenched_timer = 0

trailer_mode = false

window_length = 0
timer = 0
practice_mode = false
state_attacking = false
angle_index = 0

debug_orb_element = DEFAULT
debug_reset_loadout = false

essence_cur = 0
essence_max = 100
essence_depletion_rate = 0.1 //essence depeleted every frame
essence_gain_modifier = 1.3
essence_consume_timer = -1
essence_col = c_white

earth_armour = false

shadow_stun_lockout = 0

vfx_nspecial = hit_fx_create(sprite_get("nspecial_vfx"), 30)
vfx_bolt_dissipate = hit_fx_create(sprite_get("bolt_dissipate"), 9)
vfx_bolt_moon = hit_fx_create(sprite_get("bolt_moon"), 26)
vfx_bolt_fire = hit_fx_create(sprite_get("bolt_fire"), 45)
vfx_bolt_ice = hit_fx_create(sprite_get("bolt_ice_explosion"), 39)
vfx_bolt_lightning = hit_fx_create(sprite_get("bolt_lightning_vfx"), 24)
vfx_dattack = hit_fx_create(sprite_get("dattack_vfx"), 16)
vfx_dattack_shoot = hit_fx_create(sprite_get("dattack_shoot_vfx"), 16)
vfx_dash_shadow = hit_fx_create(sprite_get("dash_shadow_vfx"), 60)
vfx_electrified_dissipate = hit_fx_create(sprite_get("electrified_dissipate_vfx"), 20)
vfx_dash_lightning = hit_fx_create(sprite_get("dash_lightning_vfx"), 24)
vfx_dash_lightning_initial = hit_fx_create(sprite_get("dash_lightning_initial_vfx"), 24)
vfx_dash_moon = hit_fx_create(sprite_get("dash_moon_vfx"), 32)
vfx_dash_fire = hit_fx_create(sprite_get("dash_fire_vfx"), 32)
vfx_dash_ice = hit_fx_create(sprite_get("dash_ice_vfx"), 52)
vfx_dash_water = hit_fx_create(sprite_get("dash_water_vfx"), 30)
vfx_moon_crit = hit_fx_create(sprite_get("vfx_crit"), 24)

update_loadout = false
loadout = [DEFAULT,DEFAULT,DEFAULT,DEFAULT] //nspec, fspec, uspec, dspec
prev_loadout = [DEFAULT,DEFAULT,DEFAULT,DEFAULT]
queue_loadout = [undefined, undefined] //will apply loadout at end of attack
loadout_apply_timer = 0
loadout_cols = [DEFAULT,DEFAULT,DEFAULT,DEFAULT]

stored_timer = 0
stored_spirit = DEFAULT
spirit_col = c_white

crit_miss_count = 0

orb_id = noone;

/*
element indexes:
0 = default
1 = moon
*/

electrified_timer = 0

uspec_angle = 0

prev_x = x
prev_y = y

scythe_cancel = false
scythe_get_flash = false
scythe_get_timer = 0

uspec_shadow_timer = -1
uspec_shadow_angle = 90
uspec_shadow_spawn = [x, y]
uspec_shadow_spawn_2 = [x, y]

uspec_ice_count = 0
uspec_ice_timer = 0
uspec_ice_spawn = [x, y]

bolt_holograms = []
lightning_wall_distance = 200

uspec_holograms = []
holo_col_1 = c_white
holo_col_2 = c_white

fspec_rush = false
fspec_has_hit = false
fspec_hit_player = noone
fspec_goto_rush = false
fspec_wall_rush = false
fspec_wall_rush_x = x
fspec_wall_rush_y = y

rush_x = x
rush_y = y

fspec_scythe_rush = false
fspec_scythe_rush_x = x
fspec_scythe_rush_y = y

dspec_perfect = false
dspec_stance = 0 //0 = scythe, 1 = staff
scythe_head_obj = noone
scythe_respawn_timer = 0
switched_stances = false

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .125;
crouch_anim_speed = .125;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.4;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 6.25;
dash_speed = 6.25;
dash_turn_time = 8;
dash_turn_accel = 1.8;
dash_stop_time = 6;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6.5;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.4;
prat_fall_accel = 0.45; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 24; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 18;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = 0.55;
hitstun_grav = 0.50;
knockback_adj = 1.00; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 8;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_cla");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

electrified_stats = {
    "walk_speed": [6, walk_speed],
    "walk_accel": [0.6, walk_accel],
    "dash_speed": [7.5, dash_speed],
    "initial_dash_speed": [7.5, initial_dash_speed],
    "air_max_speed": [5, air_max_speed],
    "air_accel": [0.5, air_accel],
    "gravity_speed": [0.6, gravity_speed],
    "jump_speed": [12, jump_speed],
    "djump_speed": [12, djump_speed],
    "jump_change": [4, jump_change],
    "wave_land_adj": [1.5, wave_land_adj]
}