/*
*
*               -------- init.gml -----------
*
*   This file runs on the first frame of the game starting.
*   It's used to tell the game what base stats your character has,
*   and to create things that you will use later like hit effects.
*
*/

grab_timer = 0;
grabbed_player_obj = noone; 
grabbed_player_relative_x = 0;
grabbed_player_relative_y = 0;
set_victory_theme(sound_get("victory_theme"));
set_victory_bg(sprite_get("victory_bg"));

//Smash Land Values-------------------------------------------------------------
//This should only be true if your up special is 1 per air time or has pratfall
tap_jump_protection_enabled = true; //set this to false if your character should not get double jump back if you canceled it into air up attack.

//------------------------------------------------------------------------------
//#region Sound effects---------------------------------------------------------
/** You should give sound effects for each one of these by changing "nothing"
*** to the name of your sound effect.                                         */
dash_sound = sound_get("dash");
land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
jump_sound = sound_get("jump");
djump_sound = sound_get("djump");
wall_jump_sound = sound_get("jump");
ssl_death_sound = sound_get("ssl_death");
//#endregion


//------------------------------------------------------------------------------
//#region Hit FX ---------------------------------------------------------------
/* To use a custom hit effect create it here like the below example.
*  variable = hit_fx_create(sprite_get("NAME OF SPRITE"), NUMBER OF FRAMES TO PLAY);
*  To assign a hit effect to an attack:
*  set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, hfx_explode);
*  This will assign the example hit effect to the first hitbox of jab.
*  You will need to change the sprite offsets of your hit effect sprites in load.gml
*/
fx_expl = hit_fx_create(sprite_get("explode"), 16);
hfx_ssl_smaller = hit_fx_create(sprite_get("hfx_smaller"), 14);
hfx_ssl_small = hit_fx_create(sprite_get("hfx_small"), 14);
hfx_ssl_medium = hit_fx_create(sprite_get("hfx_medium"), 16);
hfx_ssl_big = hit_fx_create(sprite_get("hfx_big"), 18);
hfx_ssl_bigger = hit_fx_create(sprite_get("hfx_bigger"), 18);

set_hit_particle_sprite(1, sprite_get("hit_particle"));
//#endregion--------------------------------------------------------------------


//------------------------------------------------------------------------------
//#region Hurtboxes-------------------------------------------------------------
hurtbox_spr = sprite_get("ryk_hurtbox");
crouchbox_spr = sprite_get("ryk_crouchbox");
air_hurtbox_spr = -1; //-1 uses hurtbox_spr hurtbox
hitstun_hurtbox_spr = -1; //-1 uses hurtbox_spr hurtbox
//#endregion--------------------------------------------------------------------

//------------------------------------------------------------------------------
//#region Animation and Visuals-------------------------------------------------
char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .125;
pratfall_anim_speed = .25;

//sleep animation (only use if you want to have sleep support)
ssl_sleep_enabled = false; //set to true if your character has a sleep animation
ssl_sleep_anim_speed = .1; //sleep animation speed, similar to walk anim speed
ssl_sleep_anim_frames = 2; //number of frames in your sleep strip

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//#endregion--------------------------------------------------------------------


//------------------------------------------------------------------------------
//#region Movement Stats--------------------------------------------------------
//The numbers in comments next to values are the reasonable ranges for characters.
walk_speed = 3.5; //3 - 7 | How fast you move
dash_speed = 3.5; //same as walk
ground_friction = .5; //0.3 - 1 | How much you slide on the ground, lower is slidier.


/* Jump Stats---------------------------------------------
** if you have lower gravity these should be lower numbers
** higher for higher gravity. 
** Try to make sure your character can double jump just barely to top platform on battlefield stages*/
gravity_speed = .6; //average .3 - .6
jump_speed = 12;  //value depends on gravity
short_hop_speed = 7.4; //value depends on gravity
djump_speed = 10.5; //value depends on gravity
/* For Gengar style floaty jumps uncomment and use these
djump_accel = -1.4;
djump_start_time = 4;
djump_accel_end_time = 15;
*/

// Air Stats------------------------------------------
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //3 - 6 | the maximum hsp you can accelerate to when in a normal aerial state
air_accel = .25; //0.2 - 0.4 | Your ability to control your momentum in the air.
prat_fall_accel = .85; //0.4 - 1.5 | multiplier of air_accel while in pratfall
air_friction = .04; //0.2 - 0.7 | How much friction you have while airborne.
max_djumps = 1; //number of double jumps
double_jump_time = 48; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7; //horizontal wall jump speed, adjust with air friction
walljump_vsp = 8; //vertical wall jump speed, adjust with gravity
walljump_time = 32; //time to play walljump animation, can't be less than 31
max_fall = 10; //6 - 11 | maximum fall speed without fastfalling
fast_fall = 15; //7 - 16 | fast fall speed, should be higher than max_fall


/*Character Weight----------------------------------------
** Common Smash land Ranges for knockbac_adj is .95 - 1.1 
** Hitstun gravity should be .5 unless you have a good reason to change it
** Lower hitstun gravity means you are easier to kill off the top, higher is harder. */
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
hitstun_grav = .5; //this determines how hard it is to kill you off the top

//Landind Stats------------------------------------------
land_time = 4; //normal landing frames, only change if you have a reason
prat_land_time = 12; // Normal range is 10-15, more if your character rarely enters pratfall or has alternate recovery tools

//#endregion--------------------------------------------------------------------

//------------------------------------------------------------------------------
//Template Debug Messages Toggles-----------------------------------------------
ssl_debug_enabled = true; //togles template debug messages.
ssl_advanced_debug_enabled = false; //togles advanced debug messages, only enable if you really want to know whats going on.



/*
*
*
*
*
*       Don't change the stuff below unless you know what your are doing.
*
*
*
*
*
*
*/
//------------------------------------------------------------------------------
//#region  Do not Change for Smash Land ----------------------------------------


//#region Dust FX --------------------------------------------------------------

dust_trail_size = 12;
for(var _i = 0; _i < dust_trail_size; _i++){
    dust_trail[_i] = 
    {x:x, y:y, sprite_index:sprite_get("dust_fly_large"), image_index:0, depth:depth, image_alpha:1, draw_angle:0, life:0}
}
dust_max_life = 16;
dust_trail_position = 0;

dust_effect = [
    hit_fx_create(sprite_get("dust_land"), 24),         //0  = land
    1,                                                  //1  = bigger landing
    hit_fx_create(sprite_get("dust_djump"), 22),        //2  = djump
    -1,                                                 //3  = dash start (uses walk)
    -1,                                                 //4  = dash (uses walk)
    hit_fx_create(sprite_get("dust_walk"), 12),         //5  = walk
    1,                                                  //6  = tech
    1,                                                  //7  = hit bounce - back
    hit_fx_create(sprite_get("dust_hitbounce"), 12),    //8  = hit bounce - front
    1,                                                  //9  = parry shockwave
    1,                                                  //10 = "fx_parry_bg"
    hit_fx_create(sprite_get("dust_jump"), 12),         //11 = jump
    1,                                                  //12 = dash attack dust
    hit_fx_create(sprite_get("dust_fly"), 16),        //13 = knockback smoke
    1,                                                  //14 = bigger knockback smoke
    1,                                                  //15 = dash turn
    1,                                                  //16 = wrastor djump
    hit_fx_create(sprite_get("dust_fastfall"), 12),     //17 = fastfall
    1,                                                  //18 = small hit bounce - back
    -1,                                                 //19 = small hit bounce - front (uses bounce-front)
    1,                                                  //20 = tech big
    hit_fx_create(sprite_get("dust_killspark"), 30),    //21 = kill spark
    hit_fx_create(sprite_get("dust_killspeed"), 20),    //22 = kill speedlines
    hit_fx_create(sprite_get("dust_killslash"), 24),    //23 = kill "slash"
    hit_fx_create(sprite_get("dust_killstar"), 34)      //24 = kill star particles
];

//#endregion

//Hud Variables
ssl_hud_camera_x = -4;
ssl_hud_camera_y = -4;
ssl_hud_toggle = get_synced_var(player);

ssl_hud_colors = [];
for (var i = 0; i <= 3; i++) {
    var col_R = get_color_profile_slot_r( get_player_color(player), i);
    var col_G = get_color_profile_slot_g( get_player_color(player), i);
    var col_B = get_color_profile_slot_b( get_player_color(player), i);
    
    array_insert(ssl_hud_colors, array_length(ssl_hud_colors),make_color_rgb(col_R, col_G , col_B));
}

x_pos_array = [
    0,
    377,
    258,
    139,
    20
]
device_player = -4;

player_count = 0;
for (var i = 1; i <= 4; i++) {
    if (is_player_on(i)) {
        player_count++;
    }
}

//------------------------------------------------------------------------------
//#region Secret Alts-----------------------------------------------------------
//These variables are used for the secret alt code.
SecretColor = 0; //Current secret color
ColorLock = 0;
ColorLocked = false;

//#endregion--------------------------------------------------------------------


//rivals sfx
waveland_sound = sound_get("nothing");
air_dodge_sound = sound_get("nothing");

//movement stats that you shouldn't change for smash land but can if you want
walk_accel = 1; //only change if you want a walk and run which smash land shouldnt have
walk_turn_time = 1;
initial_dash_time = 1;
initial_dash_speed = 1;

dash_turn_time = 1;
dash_turn_accel = 1;
dash_stop_time = 1;
dash_stop_percent = 0; //the value to multiply your hsp by when going into idle from dash or dashstop
jump_start_time = 5; //standard 5 frames, universal rivals mechanic
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
moonwalk_accel = 1.4;

//wavedash
wave_land_time = 8; 
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding


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

//Tap Jump Protection System by @lamenor
old_djumps = 0;
dj_state_timer = 0;
is_double_jump = false;
is_jumpsquat = false;

//Strong buffer stuff so you can have a neutral strong press
strong_buffer = 0;
strong_pressed = false;
strong_was_pressed = false;

//pokemon template values
display_level = 0;

//#endregion