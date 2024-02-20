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

walk_speed = 2.8;
walk_accel = .3;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 7.4;
dash_speed = 6.5;
dash_turn_time = 3;
dash_turn_accel = .5;
dash_stop_time = 4;
dash_stop_percent = .0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 11;
jump_frames = 6;
short_hop_speed = 6;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.30;
prat_fall_accel = 0.8; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4;
walljump_vsp = 10;
walljump_time = 4;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .50;
hitstun_grav = .50;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 24;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .03; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 1;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 1;
roll_forward_max = 7.5; //roll speed
roll_backward_max = 7.5;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


////////////////////////// Chara Specific //////////////////////////

cur_skin = get_synced_var(player);
user_event(1);


//attack name list
attack_names = [
    "0",
    "JAB",
    "2",
    "3",
    "FTILT",
    "DTILT",
    "UTILT",
    "FSTRONG",
    "DSTRONG",
    "USTRONG",
    "DATTACK",
    "FAIR",
    "BAIR",
    "DAIR",
    "UAIR",
    "NAIR",
    "FSPECIAL",
    "DSPECIAL",
    "USPECIAL",
    "NSPECIAL",
    "FSTRONG_2",
    "DSTRONG_2",
    "USTRONG_2",
    "USPECIAL_GROUND",
    "USPECIAL_2",
    "FSPECIAL_2",
    "FTHROW",
    "UTHROW",
    "DTHROW",
    "NTHROW",
    "DSPECIAL_2",
    "EXTRA_1",
    "DSPECIAL_AIR",
    "NSPECIAL_2",
    "FSPECIAL_AIR",
    "TAUNT",
    "TAUNT_2",
    "EXTRA_2",
    "EXTRA_3",
    "EXTRA_4",
    "EXTRA_5 (munophone default)",
    "NSPECIAL_AIR",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49"
];

window_end_time = 0;
last_window = 0;

//dstrong
dstrong_initial_vsp = -7.5; //upwards vsp for dstrong
dstrong_post_charge_vsp = 0; //vsp for dstrong right before you start falling
dstrong_falling_vsp = 13.5; //downwards vsp for dstrong
max_charge_hsp = 0.5; //max hsp you can have while charging the move
dstrong_cancel_time = 25; //frames before you can cancel out of the falling window of down strong
dstrong_fall_time = dstrong_cancel_time;

//save state mechanic
save_flash_time = 0;
//color setup is in load.gml

has_saved_state = false; //checks if chara has a move stored
using_stored_attack = false; //locks attack out of being overwritten
loaded_off_uspec = false;
load_max_speed = dash_speed*1.5; //horizontal speed cap after loading an attack so chara doesn't fly off to oblivion
AG_CANT_SAVE_ATTACK = 25; //use this custom attack index value to overwrite how far into the move chara can save their state, 0 means they can do it across the entire attack
//usage: set_attack_value(AT_attack, AG_CAN_SAVE_ATTACK, window); - think of it like setting a strong charge, it includes the window you write down

saved_state = { //all of the data chara can record
    free: 0,
    category: 0,
    strong_window: 0,
    //strong_charge: 0,
    fspec_charge: 0,
    attack: 0,
    window: 0,
    window_timer: 0,
    //spr_dir: 0,
    //hsp: 0,
    //vsp: 0,
}

//fspec
fspec_charge = 0;
fspec_max_charge = 60;

//dspec
artc_savepoint = noone;

//afterimage trails
uses_afterimage_trail = false; //if you want chara to have an afterimage, toggle this, the code will do the rest

trail_cycle = 0; //keeps track of trail rotation
trail_size = 10; //the total size of the trail
trail_draw_size = 0;
repeat (trail_size) //afterimage data setup
{
    trail_vars[trail_cycle] = {
        spr: 0,
        img: 0,
        x: 0,
        y: 0,
        xscale: 0,
        yscale: 0,
        rot: 0
    };
    trail_cycle ++;
}

//vfx
fx_load = hit_fx_create(sprite_get("fx_dspec_star"), 24 );
fx_savestate = hit_fx_create(sprite_get("fx_savestate"), 18 );
fx_dspec_teleport = hit_fx_create(sprite_get("fx_dspec_teleport"), 16 );
fx_strike = hit_fx_create( sprite_get("fx_strike"), 24 );
fx_strike_up = hit_fx_create( sprite_get("fx_strike_up"), 24 );
fx_gouge = hit_fx_create( sprite_get("fx_gouge"), 22 );
