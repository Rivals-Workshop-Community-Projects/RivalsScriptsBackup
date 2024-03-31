debug = false;
intro_timer = 0;
intro_speed = 0.3;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 8;
dash_speed = 7.25;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .63;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9.5;
walljump_time = 32;
wall_frames = 3;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .45;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 9;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .07; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 5;
crouch_recovery_frames = 4;

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
air_dodge_active_frames = 3;
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

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

/*====CUSTOM VARIABLES====*/
//length of poison when applied
poison_maxtime = 550;

//jab loop flag
keep_jab = false;

//dair variables
glassbounce = false;

//fstrong variables
k_stun_timer = 0;
k_max_stun_time = 180;
grab_posX = 0;
grab_posY = 0;

//grab container
k_grab_id = noone;

//ring of death variables
deathring = noone;
dissipate_flag = false;

//mote variables
max_motes = 20;
num_motes = 0;
mote_list[max_motes - 1] = 0;
for(var i = max_motes - 1; i >= 0; --i){
    mote_list[i] = 0;
}
mote_index = 0;
MOTE_STORE = 1;
MOTE_CHARGE = 2;
MOTE_DIE = 3;
mote_acc = 0.4;
mote_max_speed = 3.3;

saved_time = 0;

//ring debuff variables
ring_modifier = 0.5;
player_debuff_list[20] = 0;
debuff_hit_lockout = 0;
debuff_hit_lockout_time = 20;
minimum_ring = 7;
max_move_kb = 8;
multi_kb_total = 0;

//special powerup variables
k_can_combo = false;
k_combo = 0;
k_combo_timer = 0;
k_combo_maxtime = 130;
k_combo_anim_windows = [10, 22];
k_combo_anim_speed = 2;
k_combo_anim_timer = 0;
k_combo_attacks = [AT_FTILT, AT_DTILT, AT_UTILT, AT_DATTACK, AT_NAIR, AT_FAIR, AT_UAIR, AT_BAIR, AT_DAIR];
k_combo_perm = false;

k_finish_timer = 0;
k_finish_anim_speed = 4;

//dspecial varables
dspec_container = -4;
adrenaline_timer = 0;
adrenaline_max_time = 500;
dam_mult = 0;
mult_inc = 0.075;
max_mult = 2;

//nspecial variables
dthrows = 0;
fthrows = 0;
uthrows = 0;

//galaxy effects
death_ring_gal = false;
fade_timer = 0;
fade_rate = 0.03;
fx_rot = random_func(0, 360, true);

//this article exists purely to do prerenders independent of player or other articles
renderer = instance_create(0, 0, "obj_article3");

//fspecial and uspecial boost amount
uspec_boost_mult = 1.3;
fspec_boost_mult = 1.3;
/*=======================*/

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

dizzy_spr = sprite_get("dizzyeffect");
finish_spr = sprite_get("combo_finish_flash")
fspec_fx = sprite_get("fspecial2_fx");
uspec_fx = sprite_get("uspecial2_fx");
ball_spr = sprite_get("ball");

mote_destroy_fx = hit_fx_create(sprite_get("mote_destroy"), 40);
combo_buff_fx = hit_fx_create(sprite_get("buff"), 30);
ring_debuff_fx = hit_fx_create(sprite_get("mote_buff"), 60);
adrenaline_hit_fx = [
hit_fx_create(sprite_get("hitfx1"), 35),
hit_fx_create(sprite_get("hitfx2"), 35),
hit_fx_create(sprite_get("hitfx3"), 35)]
adrenaline_hit_small_fx = [
hit_fx_create(sprite_get("smallhitfx1"), 25),
hit_fx_create(sprite_get("smallhitfx2"), 25),
hit_fx_create(sprite_get("smallhitfx3"), 25),
hit_fx_create(sprite_get("smallhitfx4"), 25)]
dmg_fx = hit_fx_create(sprite_get("dmgfx"), 15);

