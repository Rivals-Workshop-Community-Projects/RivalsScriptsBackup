//Compat
//dategirl_init = 0;
//Chatting = true;
Hikaru_Title = "Light Bringer";
steve_death_message = "Steve went closer to the light";
pkmn_stadium_front_img = sprite_get("pkmn_sprite1");
pkmn_stadium_back_img = sprite_get("pkmn_sprite2");
//plushForAmber = sprite_get("plushforamber");
kinniku_front = sprite_get("kinnikufront")
kinniku_behind = sprite_get("kinnikubehind")


//Regular Stuff
hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;
shoryu_obj = -1;
ewgf_input = -1;
ewgf_timer = 0;

alt1_secret = 0;
alt2_secret = 0;
fishe = 0;
shotoTarget = -4;
shotoTurnBuffer = 0;
shotoDir = 0;
shotoMove = 0;
shotoMoveBuffer = 0;
shotoDirHeld = 0;
isShoto = -1;
inputNSpec2 = 0;
inputNSpec = 0;
inputFSpec = 0;
inputUSpec = 0;
inputTimer = 0;
goalpha = 1;

// intro
introTimer = -4;

//Final Smash
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 80;
fs_loops = 0;
fs_cinematic = false;
fs_target = false;

// afterimage
afterImageTimer = 0;
afterImageMax = 16;
afterImage = array_create(afterImageMax, -1);

// Victory
set_victory_bg(sprite_get("victory_bg")); // victory_background.png
set_victory_theme(sound_get("victory"));
//Light Gimmick
lure_timer = 0; //Start off with it lol
lure_fade = 0;
//Final Smash
//fs_char_portrait_y = 60;
//fs_char_chosen_final_smash = "custom";
//fs_has_hit = false;
//fs_cinematic = false;
//fs_tempcheck = 0;

//Hud asset
//lanternhud_CURRENT = 100;
//lanternhud_MAX = 100;


char_height = 52;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .24;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 7.2;
dash_speed = 6.8;
dash_turn_time = 8;
dash_turn_accel = 1.75;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .50;
hitstun_grav = .5;
knockback_adj = (has_rune("K") ? 1.2 : 1.05); //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 9;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .07; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

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
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
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
waveland_sound = asset_get("sfx_waveland_orc");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
splashfx = hit_fx_create( sprite_get( "anglarahitfx" ), 18 );
blank = hit_fx_create( sprite_get( "blank" ), 2 );
splash_dair = hit_fx_create( sprite_get( "bubble_proj" ), 20 );
sweet = hit_fx_create( sprite_get( "sweet" ), 15 );
small = hit_fx_create( sprite_get( "smallhit" ), 15 );
set_hit_particle_sprite(1, sprite_get("particles"))

star = hit_fx_create( sprite_get( "star" ), 15 );

taunt_fstrong = false;

//my_article = noone; //declare to avoid errors
//airLock = false;
//transcounter = 0;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;