/*
//Mod Support
Hikaru_Title = "Red and Blue"
tcoart = sprite_get("lognestcoart");
nname = "Lognes"
ncode1 = "He can dart around the stage blisteringly fast"
ncode2 = "Carefull when he turns red,"
ncode3 = "It wont hurt as bad but it'll send you flying"
*/

//Lite Mode
lite = false;
liteModeTime = 30;
frameTimer = 0;

recharged = 1
recoverytimer = 0;
recoverytick = 0;
blueprojspawn = true
nbox = 1
ncancel = false
tempsprdir = 0
teleported = false
tauntnumber = 0;

ustrongarticle = false
ustrongarticlestate = 0
construct = noone;


//Galaxy Stuff
black_screen = false;
black_screen_timer = 0;
blood_timer = 0;

//Galaxy Colours
if (get_player_color(player) == 0){
    logRed = make_colour_rgb (234, 29, 35);//(234, 29, 35);
}
else {
    logRed = make_colour_rgb(get_color_profile_slot_r(get_player_color(player), 3), get_color_profile_slot_g(get_player_color(player), 3), get_color_profile_slot_b(get_player_color(player), 3));
}


dotheeffect = true

//Hud Stuff
introhud = true
hudstart = false

// afterimage
afterImageTimer = 0;
afterImageMax = 24;
afterImage = array_create(afterImageMax, -1);

//Sprites
spr_red_dspecial = sprite_get("red_dspecial");
spr_red_fstrong = sprite_get("red_fstrong");
spr_nspecial_proj = sprite_get("nspecial_proj")
spr_rbmark = sprite_get("RBmark2")
spr_kunai_grounded = sprite_get("blue_proj_grounded")
spr_red_kunai_grounded = sprite_get("red_proj_grounded")
spr_red_uspecial = sprite_get("red_uspecial")
spr_femboy = sprite_get("femboy")

//Red Stuff
RedMode = false;


//Mark Stuff
redmark = 0
bluemark = 0
rbmark = 0
mark_target = 0

/*
//Blur
blur = array_create(7);
rollArray = array_create(6, -1);
*/

// vfx roll
rollArray = array_create(6, -1);

//uspecial
has_uspecialed = false;

//Reg Guage Variables
//Red_Gauge = 100;
//combostarter = 5;
//comboender = 15;

//Intro Animation
introTimer = -4;
introTimer2 = 0;

//Cool Effects
blue_stab_1 = hit_fx_create( sprite_get( "BlueStab1" ), 20 );
blue_new_stab_1 = hit_fx_create( sprite_get( "BlueNewStab1" ), 17 );
blue_stab_2 = hit_fx_create( sprite_get( "BlueStab_2" ), 20 );
blue_new_stab_2 = hit_fx_create( sprite_get( "BlueNewStab2" ), 17 );
blue_stab_3 = hit_fx_create( sprite_get( "BlueStab3" ), 20 );
blue_stab_4 = hit_fx_create( sprite_get( "BlueStab_4" ), 20 );
blue_swipe = hit_fx_create( sprite_get( "BlueSwipe" ), 20 );
blue_swipe_2 = hit_fx_create( sprite_get( "BlueSwipe2" ), 20 );
red_swipe = hit_fx_create( sprite_get( "RedSwipe" ), 20 );
red_swipe_2 = hit_fx_create( sprite_get( "RedSwipe2" ), 20 );
red_stab_1 = hit_fx_create( sprite_get( "RedStab1" ), 20 );
red_new_stab_1 = hit_fx_create( sprite_get( "RedNewStab1" ), 17 );
red_stab_2 = hit_fx_create( sprite_get( "RedStab_2" ), 20 );
red_new_stab_2 = hit_fx_create( sprite_get( "RedNewStab2" ), 17 );
red_stab_3 = hit_fx_create( sprite_get( "RedStab3" ), 20 );
red_stab_4 = hit_fx_create( sprite_get( "RedStab_4" ), 20 );
redupb = hit_fx_create( sprite_get( "UpB_Sweetspot" ), 34 );
redupb2 = hit_fx_create( sprite_get( "UpB_Sweetspot2" ), 34 );
blue_recovery = hit_fx_create( sprite_get( "BlueRecovery" ), 8 );
red_recovery = hit_fx_create( sprite_get( "RedRecovery" ), 8 );
meffectb = false

//Projectile Stuff
RedBind = false
BlueBind = false

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 10;
dash_speed = 8.0;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 4;
jump_speed = 14;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .01;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 5;
wave_land_time = 8;
wave_land_adj = 1.5; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
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

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("waveland");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//Hit Particle
set_hit_particle_sprite( 1, sprite_get( "hit_particle_blue" ) );
set_hit_particle_sprite( 2, sprite_get( "hit_particle_red" ) );

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Abyss Runes
if has_rune("A") {
    air_friction = 0;
    air_accel = 2;
}
else{
   air_friction = .02;
   air_accel = .3;
}
    

user_event(14)