// SFX (do I even need all of these??)
snd_Jab_hit = sound_get("hit68");

snd_Dtilt = sound_get("395343__ihitokage__leg-2");

snd_Dattack = sound_get("swing27");
snd_Dattack_hit = sound_get("hit70");

snd_Ftilt = sound_get("hit_s03_e");
snd_Ftilt_hit = sound_get("hit_s06");

snd_Utilt_hit = sound_get("swing08_3");

snd_Fstrong = sound_get("byoro06");
snd_Fstrong_hit = sound_get("hit64");

snd_Dstrong = sound_get("hit17");
snd_Dstrong_hit = sound_get("hit_s07_b");
// snd_ = sound_get("cursor36");
snd_Ustrong = sound_get("432336__mclpyt__swoops-for-fight-etc(3)");
snd_Ustrong_hit = sound_get("hit_s06_r");
// snd_ = sound_get("fm000");
snd_Nspecial = sound_get("doge");

snd_Fspecial_throw = sound_get("throwstar");
snd_Fspecial_hit = sound_get("hit_s09");

// snd_Nair = sound_get("swing02");

snd_Fair = sound_get("hit_s03_a");
snd_Fair_hit = sound_get("hit70");

snd_IMPACT = sound_get("zIMPACT_LOUD");
snd_Uair_hit = sound_get("bosu29");
// snd_ = sound_get("hit58_c");
snd_Dair_hit = sound_get("punchdrive");

snd_Taunt = sound_get("192146__brassknucklesfilms__bone-crunch-fast");
snd_catch = sound_get("hit67");
// snd_float = sound_get("float");
snd_float = sound_get("snd_SURF_LAYERED2");

snd_slash = sound_get("snd_SLASH_LAYERED2");

// hit fx
// hit_fx_create("")
fx_strong_sweetspot = hit_fx_create(sprite_get("strong_sweetspot"), 30);
fx_shuriken_dissolve = hit_fx_create(sprite_get("shuriken_dissolve"), 8);
fx_ghost_hit = hit_fx_create(sprite_get("roundzap"), 14);
// fx_ellipse_hit = hit_fx_create(sprite_get("roundzap"), 14);

friend_created = false;

atk_cooldown = 0; //manual cooldown (eg for teleport)

// ghost stuff
captain_timer = 0;
captain_mode = 0; // Falcon Knee mode
bigskull_cooldown = 0;
//old
atk_pressed = -1;
shld_pressed = -1;
cancel_alarm = -1;
uspec_cancel_alarm = -1;
attack_canceled = false;

// NSPECIAL
has_nspecialed = false;
reverse = -1;
nspec_multiplier = 1.4;
can_Bturn = true; // UNUSED?? Nspecial custom B-reverse

// JAB (bug)
jab_sound = true; //prevent stacked sounds
// JAB parry
last_hit_stun = false;

//TEMP
temp_hurtboxes_set = false;

// other custom vars
wall_x = -88888;
wall_y = -88888;
wall_available = true;
wall_timer = -1;

// CAUGHT SHURIKEN: FSPECIAL
has_teleported = false; //teleport stalling prevention
catch_radius = 6; //increase this to make it easier to catch
holding_boosted = false;
teleport_x = 0;
teleport_y = 0;

caught_fspecial = 0;
can_throw = true;
can_throw_timer = 0;
throw_hsp = -30; //value here doesn't matter
throw_vsp = -30; //value here doesn't matter
// caught_timer = 0; //?

// MOBILITY BOOST (DSPECIAL)
has_been_boosted = false;
skull_radius = 24;

// SOUND LAYERING / PLAYING SOUND ONLY ONCE
hit_sound_played = false;

opponent_stunned = false;
stored_hsp = 0;
stored_vsp = 0;

prev_X = x;
prev_Y = y;
float_sound_playing = false;
vfx_float = hit_fx_create(sprite_get("fx_float"), 1);
vfx_round_zap = hit_fx_create(sprite_get("roundzap"), 28);

//float stuff, original code by RubyNights (for Pomme)
floating = 0;
floatTimer = 0;
floatMax = 30;
floatAnimTimer = 0;
floatMoveSpeed = 60; //2
freeFloat = 0;
freeFloatStop = 0;
floatCancel = 0;
floatDriftSpeed = 0;

floateffectAnimStripLength = 14;
floateffectAnimTimer = 0;
floateffectAnimSpeed = 0.25;

// -----------------------------------------------------------------------------
// DEFAULT CHARACTER VALUES
spr_float = sprite_get("float");
hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = 1/3;
pratfall_anim_speed = .25;

walk_speed = 3.0;
walk_accel = 0.4;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 8;
dash_speed = 7;
dash_turn_time = 6;
dash_turn_accel = 1.8;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 2.2;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 8;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
air_accel_base = air_accel;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .08; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 6;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 3
techroll_active_frames = 1;
techroll_recovery_frames = 4;
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 3;
roll_back_active_frames = 1;
roll_back_recovery_frames = 4;
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
