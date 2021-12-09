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

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 6.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 9.5;
short_hop_speed = 4.5;
djump_speed = 8.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
default_air_accel = .4
float_air_accel = .5;
air_accel = default_air_accel;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 12; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .35;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 36;
wave_land_time = 6;
wave_land_adj = 1.6; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .5; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
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
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = sound_get("U_turn");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//Flutter
flutterTimer = 70;
flutterAttack = 0;

NspecialCount = 1;
PinMissile = false;
Dspecial_count = 0;
timestop_ready = false;
timestop = false;
timestop_amount = 60;

hfx_dair_sweetspot = hit_fx_create(sprite_get("hfx_dair_sweetpot"), 27);
hfx_poison_sweetspot = hit_fx_create(sprite_get("poison_hit_sweet"), 30);
hfx_x_scissor = hit_fx_create(sprite_get("hfx_x_scissor"), 24);
hfx_drill_run = hit_fx_create(sprite_get("hfx_drill_run"), 24);
hfx_giga_impact = hit_fx_create(sprite_get("hfx_giga_impact"), 40);

galaxy_timer = 0;

// ============================================================================
// Compatibility shit everyone bugs me to implement

arena_title = "The Stinging Maiden";
Hikaru_Title = "BeeDrill";
toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2  = sprite_get("toonlink_photo");
resort_portrait = sprite_get("resort_painting");
kirbyability = 16;
swallowed = 0;

///codec
ncode1 = "Bug/Poison-type Bee Moémon"
ncode2 = "Abilities include: Poison Jab, Drill Run, and Sniper"
ncode3 = "Running only makes them stronger, fight head on"

// undertale stage compatibility
battle_text = "*Buzzing sounds fill your ear";

//statium
pkmn_stadium_front_img = sprite_get("pokemonfront");
pkmn_stadium_back_img = sprite_get("pokemonback");

//assist
assistAttack = AT_DSPECIAL; //The attack to use as the assist
assistOffsetX = 0; //The horizontal distance they spawn from the player
assistOffsetY = -64; //The vertical distance they spawn from the player
assistGroundOnly = false; //Whether or not they are forced to the ground
assistFloat = true; //Whether or not they stay in place vertically

//tco
tcoart = sprite_get("beedrill_tco");

//feri
feri_costume = sprite_get("feri_costume_beedrill");

//otto
otto_bobblehead_sprite = sprite_get("beedrill_bobble");


//d-d-danganronpa
guiltySprite = sprite_get("beedrillganronpa");

//waaaalllllll-eeeee
walle_taunt_sound = sound_get("wall e drill");
walle_taunt_type = 1;


// Miiverse post
miiverse_post = sprite_get("miiverse_post");


// THIS IS EVERYTHING SANDBERT NEEDS FOR A FINAL SMASH, GAMEPLAY-SIDE:
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "custom";
fs_char_portrait_y = 96;
fs_meter_X = -20;
fs_meter_y = -15;
has_final_smash_hit = false;


//FIGHTERZ
superMove = 14;

