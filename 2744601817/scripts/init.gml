/*
*
*               -------- init.gml -----------
*
*   This file runs on the first frame of the game starting.
*   
*   
*
*/
//#region Muno -----------------------------------------------------------------

/*
muno_event_type = 0;
user_event(14);
*/

//#region Log Values -----------------------------------------------------------
red_mode = false;
red_num = 2;
red_flash = 0;
stance_cd = 200;
no_cd = false;

draw_init = false;

dattack_jump = false;
dattack_jump_vfx = false;

special_dash = true;
bounce = false;
dash_angle = 0;
dash_dir = 0;
fake_kunai_proj = false;
kunai_proj = 0;
kunai_target = false;
kunai_x_dest = 0;
kunai_y_dest = 0;
special_jump = false;
dash_cd = 130;
old_dash_cd = dash_cd;

strong_charge = 0;

kill_sfx = 0;

kunai = noone;

new_has_hit_player = false;
kill_effects = false;

dair_angle = 320;
utilt_angle = 55;

dtilt_offledge = false;

new_spr_dir = 0;

combo_cd = 0;
combo_num = 0;
combo_buffer = 0;

recharged = 1
recoverytimer = 0;
recoverytick = 0;

indicator_color = get_player_hud_color( player );

trailer_mode = false;

//Grab
old_grabbed_player_obj = noone;
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

//Afterimage
afterimage = array_create(3);

//Switch Alt
joycons = get_player_color(player) = 15
//Kawaii Alt
kawaii = get_player_color(player) = 13

//#endregion

//------------------------------------------------------------------------------
//#region Sound effects --------------------------------------------------------
dash_sound = sound_get("dash");
land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
waveland_sound = sound_get("waveland");
jump_sound = sound_get("jump");
djump_sound = sound_get("djump");
air_dodge_sound = asset_get("sfx_quick_dodge");
log_death_sound = sound_get("death");
//#endregion

//#region Hit FX ---------------------------------------------------------------
set_hit_particle_sprite( 1, sprite_get( "_fx_bhit" ) );
set_hit_particle_sprite( 2, sprite_get( "_fx_rhit" ) );
fx_bhit = hit_fx_create( sprite_get( "_fx_bhit1" ), 14 );
fx_bhit_med = hit_fx_create( sprite_get( "_fx_bhit2" ), 18 );
fx_bhit_large = hit_fx_create( sprite_get( "_fx_bhit3" ), 22 );
fx_bhit_line = hit_fx_create( sprite_get( "_fx_bhit4" ), 24 );
fx_bhit_beams = hit_fx_create( sprite_get( "_fx_bhit5" ), 22 );
fx_bhit_beams_small = hit_fx_create( sprite_get( "_fx_bhit5_small" ), 22 );
fx_rhit = hit_fx_create( sprite_get( "_fx_rhit1" ), 14 );
fx_rhit_med = hit_fx_create( sprite_get( "_fx_rhit2" ), 18 );
fx_rhit_large = hit_fx_create( sprite_get( "_fx_rhit3" ), 22 );
fx_rhit_line = hit_fx_create( sprite_get( "_fx_rhit4" ), 18 );
fx_rhit_beams = hit_fx_create( sprite_get( "_fx_rhit5" ), 22 );
fx_rhit_beams_small = hit_fx_create( sprite_get( "_fx_rhit5_small" ), 22 );
fx_phit = hit_fx_create( sprite_get( "_fx_phit1" ), 14 );
fx_phit_med = hit_fx_create( sprite_get( "_fx_phit2" ), 18 );
fx_phit_large = hit_fx_create( sprite_get( "_fx_phit3" ), 18 );

fx_bdattack = hit_fx_create( sprite_get( "_fx_bdattack" ), 14 );
fx_bdattack2 = hit_fx_create( sprite_get( "_fx_bdattack2" ), 10 );
fx_rdattack = hit_fx_create( sprite_get( "_fx_rdattack" ), 14 );
fx_rdattack2 = hit_fx_create( sprite_get( "_fx_rdattack2" ), 10 );
fx_pdattack = hit_fx_create( sprite_get( "_fx_pdattack" ), 14 );
fx_pdattack2 = hit_fx_create( sprite_get( "_fx_pdattack2" ), 14 );
fx_bdtilt = hit_fx_create( sprite_get( "_fx_bdtilt" ), 10 );
fx_rdtilt = hit_fx_create( sprite_get( "_fx_rdtilt" ), 16 );
fx_rdairspike = hit_fx_create( sprite_get( "_fx_rspike" ), 22 );
fx_bnspec = hit_fx_create( sprite_get( "_fx_bnspec" ), 18 );
fx_rnspec = hit_fx_create( sprite_get( "_fx_rnspec" ), 18 );

fx_bslam = hit_fx_create( sprite_get( "_fx_bslam" ), 16 );
fx_bslam2 = hit_fx_create( sprite_get( "_fx_bslam2" ), 16 );
fx_bzap = hit_fx_create( sprite_get( "_fx_bzap" ), 16 );
fx_slam = hit_fx_create( sprite_get( "_fx_slam" ), 24 );
fx_slam2 = hit_fx_create( sprite_get( "_fx_slam2" ), 24 );
fx_cracks = hit_fx_create( sprite_get( "_fx_cracks" ), 24 );

fx_slash = hit_fx_create( sprite_get( "_fx_slash" ), 16 );
fx_rslash = hit_fx_create( sprite_get( "_fx_rslash" ), 16 );
fx_dash = hit_fx_create( sprite_get( "_fx_dash" ), 14 );

fx_bdash_pixel1 = hit_fx_create( sprite_get( "_fx_bdash_pixel1" ), 14 );
fx_rdash_pixel1 = hit_fx_create( sprite_get( "_fx_rdash_pixel1" ), 14 );
//#endregion

//#region Hurtboxes ------------------------------------------------------------
hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1; //-1 uses hurtbox_spr hurtbox
hitstun_hurtbox_spr = -1; //-1 uses hurtbox_spr hurtbox
//#endregion

//#region Animation and Visuals ------------------------------------------------
char_height = 44;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

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
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 3;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 3;
roll_back_active_frames = 2;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
//#endregion

//#region Stats ----------------------------------------------------------------

//#region Ground ---------------------------------------------------------------
walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;
//#endregion

//#region Air ------------------------------------------------------------------
jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
max_jump_hsp_default = max_jump_hsp;
air_max_speed_default = air_max_speed; 
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 48; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall_default = 10; 
max_fall = max_fall_default; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed

//#endregion

//#region Character Weight -----------------------------------------------------
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
//#endregion

//#region Misc------------------------------------------------------------------
land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding
//#endregion

//#endregion

//------------------------------------------------------------------------------
//#region Compat ---------------------------------------------------------------

kart_sprite = sprite_get("!kart")
kart_engine_sound = sound_get("engine")
kart_frames = 0

//#endregion
