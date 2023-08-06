hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 70;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .18;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 11;
initial_dash_speed = 8;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 7;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 1;
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
set_victory_theme(sound_get("ghost_win"));
set_victory_bg(sprite_get("victory"));
prowler_parry_screen = sprite_get("prowler");
pkmn_stadium_front_img = sprite_get("pkmn_front")
pkmn_stadium_back_img = sprite_get("pkmn_back")
wily_robotmaster_img = sprite_get("megaman")

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//stealing tester code
AT_INTRO = 2; //the attack index the intro uses, 2 doesn't overwrite any other attack
has_intro = true; //change to false if you don't have one/don't want it active
//relevant scripts:
//  - update
//  - attack_update (case 2)


//nspecial
knife_bunt = 0;
knife_stuck = noone;
handle_spr = sprite_get("knife_handle");

//uspecial
usp_dir = 0;
vfx_explosion = [x, y - 20, 25];


//dspecial
counter_pos = [0, x];
reset_game_time = 0;
revenge_active = false;
revenge_threshhold = 0;
revenge_target = noone;
revenge_damage = 0;
revenge_strong_charge = 0;

//fspecial
dash_angle = 0;
grab_angle = 0;
grapple_length = 0;
grapple_length_max = 180;
if(has_rune("G")) grapple_length_max = 300;
grapple_limit = 30;
grappled = noone;
grapple_pos = [0, 0, 0, 0];
has_pulled = -1;
djump_stored = false;
strong_cooldown = 0;

//taunt 2
text_timer = 0;
init_stealing = 1;
stolen_goods = 0;
stolen_name = "";
stolen_expression = 0;
stolen_goods_idx = 0;
stolen_data = [
    [0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0],
];

sylvanos_confused = 0;

ghost_stolen_goods = sprite_get("calling_card");
ghost_stolen_name = "Calling card";
ghost_stolen_expression = 1;
ghost_stolen_amount = -1;
ghost_stolen_idx = 0;
/*compat
store a small sprite in init like this

ghost_stolen_goods = sprite_get(...);

remember to give it a proper name with this variable

ghost_stolen_name = "my precious";

set the expression ghost has when looking at it
(0 = confused, 1 = happy)

ghost_stolen_expression = 0;

also set the amount of times your item can be stolen
(setting it to -1 will allow it to be stolen infinite times)

ghost_stolen_amount = 1;

you can also put multiple things in the same strip and use this variable to choose which one is picked

ghost_stolen_idx = 0;
*/

//misc
alt_cur = get_player_color(player);
lwfx_buffer = [];
hit_pos = 0;
anti_cheapie_mode = 0;
death_target = noone;
death_timer = 0;
intro_dust_id = noone;
all_djumps = 1;

if(has_rune("D")){
    air_dodge_speed = 10;
    wave_land_adj = 1.08;
    
    techroll_speed = 14;
    
    roll_forward_max = 14;
    roll_backward_max = 14;
}

if has_rune("H") {
    all_djumps = 3;
    max_djumps = 3;
    
    initial_dash_speed = 9.5;
    dash_speed = 9;
    leave_ground_max = 9; //the maximum hsp you can have when you go from grounded to aerial without jumping
    max_jump_hsp = 9; //the maximum hsp you can have when jumping from the ground
    air_max_speed = 8; //the maximum hsp you can accelerate to when in a normal aerial state
    jump_change = 5; //maximum hsp when double jumping. If already going faster, it will not slow you down
    air_accel = .6;
    air_friction = .04;
    djump_speed = 11.5;
}

//dspecial
revenge_color = make_color_rgb(get_color_profile_slot_r(alt_cur, 0), get_color_profile_slot_g(alt_cur, 0), get_color_profile_slot_b(alt_cur, 0));

//Greenflower
gfzsignspr = sprite_get("greenflower_sign")

//voices
voice = get_synced_var(player);

voice_playing_sound = noone;

VC_ATK_SMALL        = 0;
VC_ATK_BIG          = 2;
VC_HURT             = 3;
VC_DEATH            = 4;
VC_TAUNT            = 5;
VC_STEALING         = 6;
VC_INTRO            = 7;
VC_DODGE            = 8;
VC_FSPECIAL         = 9;
VC_CSS              = 10;

vcs = [
    [4, 1], //VC_ATK_SMALL
    [],
    [4, 1], //VC_ATK_BIG
    [4, 1], //VC_HURT
    [4, 1], //VC_DEATH
    [4, 1], //VC_TAUNT
    [2, 0], //VC_STEALING
    [3, 0], //VC_INTRO
    [3, 1], //VC_DODGE
    [6, 2], //VC_FSPECIAL
    [3, 1], //VC_CSS
];