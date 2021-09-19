hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 54;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 1;
walk_turn_time = 1;
initial_dash_time = 3;
initial_dash_speed = 3.5;
dash_speed = 5.5;
dash_turn_time = dash_speed;
dash_turn_accel = 1.75;
dash_stop_time = 2;
dash_stop_percent = 0.6; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 8;
djump_speed = jump_speed-1.5;
exp_djump_speed = jump_speed-1.5; //explorer custom
leave_ground_max = dash_speed-0.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = dash_speed-0.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = dash_speed-0.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .5;//0.65
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .08; //grounded deceleration when wavelanding

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

land_sound = sound_get("colliding_soft");
landing_lag_sound = sound_get("colliding");
waveland_sound = asset_get("sfx_waveland_may");
jump_sound = sound_get("jump");
djump_sound = sound_get("jump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


aodev = false;

//explorer variables

body = sprite_get("main")
body_filename = "main";
col_check = false;

e_prev_hsp = 0;
e_prev_vsp = 0;
e_prev_x = 0;
e_prev_y = 0;
e_previ_x = 0;
e_previ_y = 0;

runsound_cooldown = 0;
fall_dur = 0;
blink_time = 0;
blink_cooldown = 60;
walkin = false;
doublejumped = false;
heavy_rand = random_func( id%5, 5, true );
double_rand = random_func( id%5, 9, true );
invince_rand = random_func( id%5, 9, true );
equip_rand = random_func( id%5, 7, true );
item_rand = random_func( id%5, 14, true );
thrower_rand = random_func( id%5, 4, true );
harmful_rand = random_func( id%5, 3, true );
deadly_rand = random_func( id%5, 6, true );
emitter_rand = random_func( id%5, 6, true );
bouncy_rand = random_func( id%5, 8, true );
epicgun_rand = random_func( id%5, 2, true );
//solid_img = get_player_color( player )
chair_rand = random_func( id%5, 8, true );
chair = -4;

nsp_remain = 3;
nsp_inc = 0;
nsp_inc_max = 300;
jab_dir = 1;
nair_count_before_land = 0;
jab_alternative = false;
dtilt_c_cooldown = 0;
dtilt_cur_cool = false;
nsp_ground = false;
dattack_c_cooldown = false;
boost_left = 3;
boost_max = 3;
boost_selected = 0;
boost_selected_prev = 0; //used purely for sound effect purposes
boostinit = false;
boostinit_timer = 0;
boostinit_max = 60;
boost_duration = 0;
boost_duration_max = 0;
bouncy_track = -4;
bouncy_y_max = 40;
bouncy_dirselect = 0;
fst_track = [-4, -4, -4, -4, -4, -4, -4]//up to 6
fst_track_amt = 6; //count from 0
usp_did = false;
//usp_did_prev = false;
//usp_did_prev2 = false;

boost_mini = -1;
boost_mini_dur = 20;

AT_BTHROW = 31; //replaces AT_EXTRA_1

//"pseudo-dynamic code base"
//attackdata
AG_PSEUDO_DYNAMIC = 30 //1 or 0, true or false
AG_PD_ITEM = 31 //sprite id
AG_PD_LOC_X = 32
AG_PD_LOC_Y = 33
AG_PD_ROT = 34
AG_PD_ML_PORT = 35 //this will mirror the entire thing
AG_PD_NOT_FORCE_BODY_CELL = 36 //if 1, disables setting cell in animation.gml, to be manually done later.
AG_PD_ALWAYS_FRONT = 37 //overrides windowdata in_front if 1

//windowdata
AG_UP = 70
AG_DOWN = 71
AG_LEFT = 72
AG_RIGHT = 73
AG_ROTATE = 74
AG_BODY_CELL = 75
AG_IN_FRONT = 76 //1 or 0, true or false, 1 if front
AG_DIR = 77 //0 will be interpreted as 1

item_cell = 0;
pseudodynamic_test = false; //set to true to turn the specials into pseudodynamic test movements

//mawral's grab code!
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

grab_cooldown = 0;
grab_cooldown_amt = 0; //increase this to enable cooldown

set_victory_bg( sprite_get( "victorybg" ));
set_victory_theme( sound_get( "victory" ));

heat_time = 0;
heat_max = 50;


Hikaru_Title = "Of Infinity";
arena_title = "Denizen of many lands";
battle_text = "* Somewhere in infinity...";




//