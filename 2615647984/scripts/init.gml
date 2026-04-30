hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .125;
pratfall_anim_speed = .25;

walk_speed = 5;
walk_accel = 1;
walk_turn_time = 1;
initial_dash_time = 1;
initial_dash_speed = 1;
dash_speed = 5;
dash_turn_time = 1;
dash_turn_accel = 1;
dash_stop_time = 1;
dash_stop_percent = 0; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 6;
jump_speed = 8;
short_hop_speed = 5;
djump_speed = 7;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 5;
double_jump_time = 35; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 7; //maximum fall speed without fastfalling
fast_fall = 8; //fast fall speed
gravity_speed = .4;
hitstun_grav = .45;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 7;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

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

dash_sound = sound_get("dash");
land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
jump_sound = sound_get("jump");
djump_sound = sound_get("djump");
wall_jump_sound = sound_get("jump");
ssl_death_sound = sound_get("ssl_death");

//these are the provided sample SSL hit effects
hfx_explode = hit_fx_create(sprite_get("explode"), 16);
hfx_smaller = hit_fx_create(sprite_get("hfx_smaller"), 24);
hfx_small = hit_fx_create(sprite_get("hfx_small"), 24);
hfx_medium = hit_fx_create(sprite_get("hfx_medium"), 24);
hfx_big = hit_fx_create(sprite_get("hfx_big"), 24);
hfx_bigger = hit_fx_create(sprite_get("hfx_bigger"), 24);
//hit particles, this is how you make a custom hit particle, those are the things that spray out in a fan after hitting someone
set_hit_particle_sprite(1, sprite_get("hit_particle"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

coin_effect = hit_fx_create( sprite_get( "coins" ), 30 );

joy_idle = 0
joy_direc = 1

current_ability = 0;
grabbedid = noone;

kirbyability = 0;

sslability = 0;
prev_djumps = 0; 

abilitygiven = 0
current_ability = 0
abilitygiven = kirbyability
swallowed = 0

dairSFX = true;

//#region Dust FX --------------------------------------------------------------

dust_trail_size = 12;
for(var _i = 0; _i < dust_trail_size; _i++){
    dust_trail[_i] = 
    {x:x, y:y, sprite_index:sprite_get("dust_fly_color"), image_index:0, depth:depth, image_alpha:1, draw_angle:0, life:0}
}
dust_max_life = 16;
dust_trail_position = 0;

dust_effect = [
    hit_fx_create(sprite_get("dust_land"), 24),         //0  = land
    1,                                                  //1  = bigger landing
    hit_fx_create(sprite_get("dust_djump"), 16),        //2  = djump
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