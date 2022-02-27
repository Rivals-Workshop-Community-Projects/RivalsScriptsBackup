hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 42;
idle_anim_speed = .06;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.85;
walk_accel = 0.2;
walk_turn_time = 10;
initial_dash_time = 18;
initial_dash_speed = 8;
dash_speed = 6.4;
dash_turn_time = 20;
dash_turn_accel = 0.2;
dash_stop_time = 23;
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 3.6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 8;
djump_speed = 9.5;
leave_ground_max = 5.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .52;
hitstun_grav = .5;
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//ristar specific variables
dashstopping = 0; //makes dashstop/dashturn more natural feeling (to me atleast)
turnlock = 0; //keep uspecial from b-reversing on liftoff
grabbed = 0; //check who ristar grabbed with NSPECIAL
grabbedx = 0; //check where ristar grabbed them
grabbedy = 0;
diagx = 0; //for diagonal grabs
diagy = 0;
dingdong = 0; //check if ristar hit the right person
abyssmode = 0; //check if runes are on

set_victory_theme( sound_get( "victory" ));

set_victory_bg( sprite_get( "victorybg" ));

if (get_player_color( player ) == 7){
    set_victory_portrait( sprite_get( "gameboyportrait" ));
    set_victory_sidebar( sprite_get( "gameboysidebar" ));
}

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 0;

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

land_sound = sound_get("ris_twinkleland");
landing_lag_sound = sound_get("ris_twinkleland");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("ris_jump");
djump_sound = sound_get("ris_medgrab");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;