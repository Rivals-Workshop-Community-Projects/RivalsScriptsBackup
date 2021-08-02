//Tails' Custom Variables

//Non Attack Related Vars

defaultcolor = false

fireball_normal_explode = hit_fx_create(sprite_get("fireball_normal_explode"),22);

debug = 0 //If debug is enabled or not.

at_ledge = false

entereddashstop = false //This checks to see if Tails entered Dash Stop so this way, the skidding SFX doesnt play twice.

didwavedash = 0 //Checks to see if Tails wavedashed.

//Dash Attack

tailsdattackvar = 0

//Up Strong: Regular Bomb

bombcharge = -2 //Variable for Ustrong's bomb charge height modifier.

//Down Strong

ring_dstrong_vfx = hit_fx_create(sprite_get("dstrong_vfx"), 15);

nspec_air_window_timer = 0

//Fspecial: Air Dive

tailsdidhesidebrobot = false

tailsgrabbedrobot = false

fspec_loop = 0

tails_fspec_started_on_ground = 0 //Checks to see if Tails started Fspecial on the ground.

grabbed_player_obj = noone;    //the player object currently being grabbed.

grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.

grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

//Up Special: Flight

flightloop = 3
aerialattack = 0
diveloop = 0

//Down Special

tailsisrobotout = false

tailsdidrobotgethit = false

tailsdspechbox3destroyplease = false //Basically a check to destroy the spawning hitbox of Remote Robot.

tailsdidpressdownbwhenthingisactive = 0 // hell

heyiamtouchingitplsdont = false

tailsdspecheydidtherobotdieyet = 0 //i hate rivals of aether

tailsrobotx = 0

tailsroboty = 0

tailsdidrobotgetparried = false

tailsdidbombhitrobot = false

tailsdidstartingdownbhitboxhit = false

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .14;
crouch_anim_speed = .14;
walk_anim_speed = .18;
dash_anim_speed = .35;
pratfall_anim_speed = .14;

walk_speed = 3.5;
walk_accel = 0.35;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = 9;
dash_speed = 8;
dash_turn_time = 15;
dash_turn_accel = 1.1;
dash_stop_time = 8;
dash_stop_percent = .45; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5;
djump_speed = 9;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 2;
double_jump_time = 24; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 22;
wall_frames = 2;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .48;
hitstun_grav = .48;
knockback_adj = 1.15; //the multiplier to KB dealt to you.

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 8;
wave_land_adj = 1.3; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 8;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

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
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

//SFX List
sfx_airdodge = sound_get("sfx_airdodge")
sfx_blow_1 = sound_get("sfx_blow_1")
sfx_blow_2 = sound_get("sfx_blow_2")
sfx_blow_3 = sound_get("sfx_blow_3")
sfx_dashstart = sound_get("sfx_dashstart")
sfx_dive = sound_get("sfx_dive")
sfx_dstrong_use = sound_get("sfx_dstrong_use")
sfx_energyshot = sound_get("sfx_energyshot")
sfx_flight = sound_get("sfx_flight")
sfx_flight_cheat = sound_get("sfx_flight_cheat")
sfx_flight_stop = sound_get("sfx_flight_stop")
sfx_jump = sound_get("sfx_jump")
sfx_land = sound_get("sfx_land")
sfx_ring = sound_get("sfx_ring")
sfx_ring_bomb = sound_get("sfx_ring_bomb")
sfx_skid = sound_get("sfx_skid")
sfx_slide = sound_get("sfx_slide")
sfx_spin = sound_get("sfx_spin")
sfx_swipe1 = sound_get("sfx_swipe1") //this is kinda a weak swipe sfx
sfx_swipe2 = sound_get("sfx_swipe2")
sfx_swipe3 = sound_get("sfx_swipe3")
sfx_swipe4 = sound_get("sfx_swipe4")
sfx_swipe5 = sound_get("sfx_swipe5")
sfx_swipe6 = sound_get("sfx_swipe6")
sfx_swipe7 = sound_get("sfx_swipe7")
sfx_tail_swipe1 = sound_get("sfx_tail_swipe1")
sfx_tail_swipe2 = sound_get("sfx_tail_swipe2")
sfx_ustrong = sound_get("sfx_ustrong")
sfx_waveland = sound_get("sfx_waveland")

//Kirby's Return to Dream Land SFX
sfx_krtd_bomb_explode = sound_get("sfx_krtd_bomb_explode")
sfx_krtd_bomb_prep = sound_get("sfx_krtd_bomb_prep")
sfx_krtd_grab = sound_get("sfx_krtd_grab")

//Victory
victory_theme = sound_get("victory")

land_sound = sfx_land
landing_lag_sound = sfx_land
waveland_sound = sfx_waveland
jump_sound = sfx_jump
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = sfx_airdodge

set_victory_theme(victory_theme);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//MunoPhone Sprites
spr_alts = sprite_get("alts");
spr_nspec = sprite_get("nspecial_muno");
spr_energy = sprite_get("energy_shot");
spr_fspec = sprite_get("fspecial_muno");
spr_fspec2 = sprite_get("fspecial_2_muno");
spr_uspec = sprite_get("uspecial_muno");
spr_robot_walk = sprite_get("robot_walk_default");
spr_dtilt_muno = sprite_get("dtilt_muno");
spr_ustronk = sprite_get("ustrong_muno");
spr_fair_muno = sprite_get("fair_muno");

//MunoPhone Cheat Code Vars
phone_blurs = 0
phone_flight = 0
phone_dive = 0

//MunoPhone Trigger
user_event(14);