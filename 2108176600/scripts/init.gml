hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;



//Custom Vars
//player_ma = noone;

set_victory_theme(sound_get("laugh"));
dtilt_offset = [38,140];
dtilt_end = false;
dair_vel = [0,.8];

dspec_attack = false;
dspec_special = false;
dspec_down = false;
dspec_up = false;
dspec_left = false;
dspec_right = false;
dspec_taunt = false;
dspec_char_height = 100;

dstrong_cyl_max = 2;
dstrong_cyl = 0;
nspec_aval = false;
use_nspec = false;
jab_offset = 80;
temp_jab_offset = 0;
dattack_offset = 64;

spr_dir_prev = spr_dir;
prev_attack = AT_JAB;
shadow = noone;
shadow_sprite = asset_get("empty_sprite");
shadow_cooldown = 0;
shadow_cooldown_max = 35;
queue_shadow = false;

ustrong_offset = [30,100];
fstr_art = noone;
uspecial_state = 0;
uspecial_time = 90;
uspecial_timer = 0;
stat_reset = 0;
spr_dir_old = spr_dir;
grav_old = grav;

alive_players = 0;
opp_stocks = 0;

near_cone = false;
cone_dist = 64;

char_heigh_orig = 52;

ground_friction_init = .5;
ground_friction_crouch = 0;
shadow_speed = 2;

glitch_switch = 0;
glitch_switch_interval = 5;
glitch_xp = 0;
glitch_yp = 0;
glitch_xpp = 0;
glitch_ypp = 0;
glitch_x = 0;
glitch_y = 0;
glitch_x_off = 0;
glitch_y_off = 0;
glitch_x_offp = 0;
glitch_y_offp = 0;
taunt_rot = 0;
taunt_type = 0;
taunt_num = 0;
taunt_sprites = 69;
taunt_attacks = 288888;
taunt_scripts = .7;
end_timer = 140;
hurt_sprite = noone;


ph_timer = 240;
ph_timer_max = 10;
ph_x = 0;
ph_y = 0;
ph_duration_max = 5;
ph_duration = 0;
ph_text_arry = [
    "ARE THESE REAL?",
    "-1",
    "Definitive Edition: 'Summer 2020'",
    "YOU ARE NOT GIIK",
    "LOOK BEHIND YOU",
    "DON'T THINK ABOUT LOXODONTS",
    "swallowed != 0",
    "MIXELS",
    "HIME WILL BE REAL IN 3",
    "YOU & ME NOT BY THE DING DONG TREE",
    "PLEASE WAKE UP",
    "6.999999999",
    "THE NEXT DISASTER WILL HAPPEN IN 0 SECONDS",
    "I KNOW WHAT DSPECIAL DOES",
    "REVERT TO THE 11/11 PATCH",
    "LEAVE WHILE YOU CAN",
    "WRASTOR IS FAIR AND BALANCED",
    "DAN FURNACE",
    "MAYPUL DRILL",
    "8 AWESOME ANGLE FLIPPERS",
    "HYPER_REALISTIC_BLOOD_STRIP420.PNG"
    ];
ph_text_rd = 0;
ICU_index = 0;
ICU_index_max = 23;
ICU_timer = 0;
ICU_timer_max = 300;
ICU_x = 0;
ICU_y = 0;

opp_player = 0;
opp_portrait = 0;

x_i = [
    764,
    376,
    259,
    164,
    568,
    431,
    804,
    790,
    332,
    346,
    231,
    543,
    123,
    0
    ];
y_i = [
    431,
    542,
    700,
    332,
    346,
    231,
    543,
    123,
    0,
    100,
    376,
    259,
    164,
    668,
    ];
//
char_height = char_heigh_orig;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .6;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 4;
dash_speed = 12;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = ground_friction_init;
moonwalk_accel = 2;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 12;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = .96; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
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

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
