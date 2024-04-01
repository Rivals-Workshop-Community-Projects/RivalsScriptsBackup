/// ----------------- aa ---------------------///




//vfx
hfx_smaller = hit_fx_create(sprite_get("hfx_smaller"),14);
hfx_small = hit_fx_create(sprite_get("hfx_small"),20);
hfx_medium = hit_fx_create(sprite_get("hfx_medium"),24);
hfx_big = hit_fx_create(sprite_get("hfx_big"),28);

hue_offset=0; //rainbow alt stuff
hue_speed=2; //change this to change the speed of the hueshift



//sfx
sfx_other_bell1 = sound_get("sfx_other_bell1");
sfx_other_bell2 = sound_get("sfx_other_bell3");
sfx_poke_freezeshock = sound_get("sfx_poke_freezeshock");
sfx_poke_frozen = sound_get("sfx_poke_frozen");
sfx_poke_hail = sound_get("sfx_poke_hail");
sfx_poke_icebeam = sound_get("sfx_poke_icebeam");
sfx_poke_iceshard = sound_get("sfx_poke_iceshard");
sfx_poke_icicle = sound_get("sfx_poke_icicle");
sfx_poke_metronome = sound_get("sfx_poke_metronome");
sfx_poke_milk = sound_get("sfx_poke_milk");
sfx_poke_present = sound_get("sfx_poke_present");
sfx_smash_special1 = sound_get("sfx_smash_special1");
sfx_spiral_cryobounce = sound_get("sfx_spiral_cryobounce");
sfx_spiral_crystalshatter = sound_get("sfx_spiral_crystalshatter");
sfx_spiral_hitsoft = sound_get("sfx_spiral_hit_soft_alt_01");
sfx_spiral_pickup = sound_get("sfx_spiral_pickup");
sfx_spiral_treasure = sound_get("sfx_spiral_treasure");
sfx_spiral_snowball = sound_get("sfx_spiral_snowball");
sfx_spiral_sword1 = sound_get("sfx_spiral_sword_01");
sfx_spiral_sword2 = sound_get("sfx_spiral_sword_02");
sfx_spiral_sword3 = sound_get("sfx_spiral_sword_03");
sfx_padoru = sound_get("sfx_padoru")
sfx_padoru_short = sound_get("sfx_padoru_short")

//containtment level 6
sfx_vineboom = sound_get("sfx_vineboom");


//funny
holding_present = false;
present_id = noone;
present_should_exist = false;
tree_id = noone;

//other
should_debug = false;
debugtimer = 1;
fuck_intro = false;
no_u = noone;

/// ----------------- bb ---------------------///
hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .25;
dash_anim_speed = .35;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 7;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .10; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 6;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 5;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 3;
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
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
