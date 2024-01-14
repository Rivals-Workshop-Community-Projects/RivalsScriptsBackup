#region // Hurtbox Sprites
hurtbox_spr = sprite_get("wren_hurtbox");
crouchbox_spr = sprite_get("wren_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;
#endregion

#region // Character Visuals
char_height = 52;
idle_anim_speed = .125;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;
#endregion

#region // Ground Movement
walk_speed = 4.25;
walk_accel = 0.2;
walk_turn_time = 6;         // DO NOT TOUCH
initial_dash_time = 14;
initial_dash_speed = 7.5;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 5;
dash_stop_time = 8;
dash_stop_percent = 1.0;//the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .63;
moonwalk_accel = 2.8;
#endregion

#region // Air Movement
jump_speed = 10;
short_hop_speed = 5.5;
djump_speed = 10;
leave_ground_max = 7;   //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8;       //the maximum hsp you can have when jumping from the ground
air_max_speed = 4;      //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3;        //maximum hsp when double jumping. If already going faster, it will not slow you down
prat_fall_accel = .85;  //multiplier of air_accel while in pratfall
max_djumps = 1;
double_jump_time = 34;  //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 32;
wall_frames = 1;
#endregion

#region // Effective Weight
jump_start_time = 5;    // DO NOT CHANGE
land_time = 4;          // 4 For Non-Heavies

max_fall = 10;          //maximum fall speed without fastfalling
fast_fall = 13;         //fast fall speed
air_friction = .03;
air_accel = .3;
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.15;    //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
#endregion

#region // Landing Variables
prat_land_time = 11;
wave_land_time = 8;
wave_land_adj = 1.35;   //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .13;    //grounded deceleration when wavelanding
#endregion

#region // Crouch Animation
crouch_startup_frames = 3;
crouch_active_frames = 10;
crouch_recovery_frames = 2;

// Crouch Animation Start/End Customization by @SupersonicNK
crouch_start_time = 9; // time in frames it takes for crouch start to stop.
crouch_end_time = 6; // time in frames it takes for crouch stop to stop. interruptable.

// Custom Crouch Internal Variables (managed by the code)
ccrouch_playing = false; // whether the custom crouch animation is playing
ccrouch_phase = 0; // 0 = start, 1 = loop, 2 = uncrouch
ccrouch_timer = 0; // timer for the crouch anim
ccrouch_percent = 0; // 0-1, used to calculate what frame to use when rapidly crouching and uncrouching
#endregion

#region // Parry Animation
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;
#endregion

#region // Tech
tech_active_frames = 3;
tech_recovery_frames = 2;
#endregion

#region // Tech Roll
// Same as the roll animations
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;
#endregion

#region // Airdodge
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

air_dodge_spr = 0;
#endregion

#region // Rolls
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9;       //roll speed
roll_backward_max = 9;
#endregion

#region // State Specific Sounds
land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("sfx_waveland_wre");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
#endregion

#region // Ranno Bubble Offset
bubble_x = 0;
bubble_y = 8;
#endregion

#region // Custom Variables
wren_player_col = get_player_color(player);
wren_yoyo = noone;
wren_wave = noone;
wren_wave_cooldown = 0;
wren_wave_coolmax = 40;
wren_nostall = 0;
wren_nostall_max = 1;
wren_yoyo_old_x = 0;
wren_yoyo_old_y = 0;
wren_prev_attack = AT_JAB;
wren_dtiltwo_buffer = false;
wren_dtiltwo_hitfall = false;
wren_noloop = 0;
wren_noloop_max = 73;

wren_hb_angl = 0;
wren_angl_chk = false;

wren_tidecall_toggle = 0;

#region // Gimmick Stuff
wren_riptide_id = noone;    // Checking for the owner of the status effect, who applied it most recently.
wren_riptide = false;       // Are you caught in the riptide?
wren_caught = false;
wren_caught_cooldown = 0;
wren_enemy_riptide_id = noone;  // to see who is in your whirlspool
#endregion

#region//DEBUG
wren_debug = false;
#endregion

#region//Rivals 2 Mode?
wren_rivaltwo_mode = false;
wren_rtwo_was_hit = false;
wren_rtwo_stopparry = true;
wren_rtwo_cangrabledge = true;
wren_parry_cool = 0;
wren_parry_cool_max = 20;
wren_shield_health_max = 180; // 3 Seconds roughly holding shield to pop.
wren_shield_health = wren_shield_health_max;
wren_shield_anim = 0;
#endregion

#endregion

#region // Custom Sounds
set_victory_theme(sound_get("wren_victory"));
set_victory_bg(CH_ORCANE);
sfx_wren_whirlpool_loop = sound_get("sfx_whirlpool_loop");

wren_charge = 0;
wren_charge_max = 81;
wren_charge_lvl = 0;    // Max is 2
#endregion

#region // Custom VFX
vfx_sweetspot = hit_fx_create(sprite_get("vfx_sweetspot"), 12);
vfx_uspecialfinal = hit_fx_create(sprite_get("vfx_uspecialfinal"), 21)

// Hit Particles
set_hit_particle_sprite( 1, asset_get("empty_sprite") );   // Hide
set_hit_particle_sprite( 2, sprite_get("part_wave") ); // Wave

// HFX
hfx_yoyo_small  = hit_fx_create(sprite_get("hfx_yoyo_small"), 18);
hfx_yoyo_smalt  = hit_fx_create(sprite_get("hfx_yoyo_small"), 18);
hfx_yoyo_big    = hit_fx_create(sprite_get("hfx_yoyo_big"), 21);
hfx_yoyo_huge   = hit_fx_create(sprite_get("hfx_yoyo_huge"), 28);

hfx_waves_small = hit_fx_create(sprite_get("hfx_waves_small"), 18);
hfx_waves_big   = hit_fx_create(sprite_get("hfx_waves_big"), 21);
hfx_waves_huge  = hit_fx_create(sprite_get("hfx_waves_huge"), 28);

vfx_riptide_ichi= hit_fx_create(sprite_get("vfx_riptide_ichi"), 28);

vfx_riptide_ni  = hit_fx_create(sprite_get("vfx_riptide_ichi"), 28);
vfx_riptide_daiichi= hit_fx_create(sprite_get("vfx_riptide_ichi"), 28);
vfx_riptide_daini  = hit_fx_create(sprite_get("vfx_riptide_ichi"), 28);
#endregion

#region // Wave Sprites
// Only a fool would ever do something this stupid
// thankfully, i'm a fool for making alt colors look good
// so all of these had to be done on their own layers
// i'm really sorry for bloating the load time by making a bunch
// of layered sprites, but they look cool so it's okay.
wrave_spr_dashstart = 0;
wrave_spr_dash = 1;
wrave_spr_dashturn = 2;
wrave_spr_dashstop = 3;
wrave_spr_tech = 4;
wrave_spr_roll = 5;
wrave_spr_dattack = 6;
wrave_spr_ftilt = 7;
wrave_spr_dtilt = 8;
wrave_spr_uair = 9;
wrave_spr_fspecial = 10;
wrave_spr_uspecial = 11;
wrave_spr_uspecialex = 12;
wrave_spr_taunt = 13;

wren_wave_col[0] = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 10), get_color_profile_slot_g(get_player_color(player), 10), get_color_profile_slot_b(get_player_color(player), 10));
wren_wave_col[1] = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 9), get_color_profile_slot_g(get_player_color(player), 9), get_color_profile_slot_b(get_player_color(player), 9));
wren_wave_col[2] = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 8), get_color_profile_slot_g(get_player_color(player), 8), get_color_profile_slot_b(get_player_color(player), 8));
wren_wave_col[3] = c_white;

#region // Dash Start
wren_wave_spr[0,0] = sprite_get("dashstart_wave3");
wren_wave_spr[0,1] = sprite_get("dashstart_wave2");
wren_wave_spr[0,2] = sprite_get("dashstart_wave1");
wren_wave_spr[0,3] = sprite_get("dashstart_wavetop");
wren_wave_spr[0,4] = sprite_get("dashstart_wavegen");
#endregion
#region // Dash
wren_wave_spr[1,0] = sprite_get("dash_wave3");
wren_wave_spr[1,1] = sprite_get("dash_wave2");
wren_wave_spr[1,2] = sprite_get("dash_wave1");
wren_wave_spr[1,3] = sprite_get("dash_wavetop");
wren_wave_spr[1,4] = sprite_get("dash_wavegen");
#endregion
#region // Dash Turn
wren_wave_spr[2,0] = sprite_get("dashturn_wave3");
wren_wave_spr[2,1] = sprite_get("dashturn_wave2");
wren_wave_spr[2,2] = sprite_get("dashturn_wave1");
wren_wave_spr[2,3] = sprite_get("dashturn_wavetop");
wren_wave_spr[2,4] = sprite_get("dashturn_wavegen");
#endregion
#region // Dash Stop
wren_wave_spr[3,0] = sprite_get("dashstop_wave3");
wren_wave_spr[3,1] = sprite_get("dashstop_wave2");
wren_wave_spr[3,2] = sprite_get("dashstop_wave1");
wren_wave_spr[3,3] = sprite_get("dashstop_wavetop");
wren_wave_spr[3,4] = sprite_get("dashstop_wavegen");
#endregion
#region // Tech
wren_wave_spr[4,0] = sprite_get("tech_wave3");
wren_wave_spr[4,1] = sprite_get("tech_wave2");
wren_wave_spr[4,2] = sprite_get("tech_wave1");
wren_wave_spr[4,3] = sprite_get("tech_wavetop");
wren_wave_spr[4,4] = sprite_get("tech_wavegen");
#endregion
#region // Roll
wren_wave_spr[5,0] = sprite_get("roll_wave3");
wren_wave_spr[5,1] = sprite_get("roll_wave2");
wren_wave_spr[5,2] = sprite_get("roll_wave1");
wren_wave_spr[5,3] = sprite_get("roll_wavetop");
wren_wave_spr[5,4] = sprite_get("roll_wavegen");
#endregion
#region // DAttack
wren_wave_spr[6,0] = sprite_get("dattack_wave3");
wren_wave_spr[6,1] = sprite_get("dattack_wave2");
wren_wave_spr[6,2] = sprite_get("dattack_wave1");
wren_wave_spr[6,3] = sprite_get("dattack_wavetop");
wren_wave_spr[6,4] = sprite_get("dattack_wavegen");
#endregion
#region // FTilt
wren_wave_spr[7,0] = sprite_get("ftilt_wave3");
wren_wave_spr[7,1] = sprite_get("ftilt_wave2");
wren_wave_spr[7,2] = sprite_get("ftilt_wave1");
wren_wave_spr[7,3] = sprite_get("ftilt_wavetop");
wren_wave_spr[7,4] = sprite_get("ftilt_wavegen");
#endregion
#region // DTilt
wren_wave_spr[8,0] = sprite_get("dtilt_wave3");
wren_wave_spr[8,1] = sprite_get("dtilt_wave2");
wren_wave_spr[8,2] = sprite_get("dtilt_wave1");
wren_wave_spr[8,3] = sprite_get("dtilt_wavetop");
wren_wave_spr[8,4] = sprite_get("dtilt_wavegen");
#endregion
#region // UAir
wren_wave_spr[9,0] = sprite_get("uair_wave3");
wren_wave_spr[9,1] = sprite_get("uair_wave2");
wren_wave_spr[9,2] = sprite_get("uair_wave1");
wren_wave_spr[9,3] = sprite_get("uair_wavetop");
wren_wave_spr[9,4] = sprite_get("uair_wavegen");
#endregion
#region // FSpecial
wren_wave_spr[10,0] = sprite_get("fspecial_wave3");
wren_wave_spr[10,1] = sprite_get("fspecial_wave2");
wren_wave_spr[10,2] = sprite_get("fspecial_wave1");
wren_wave_spr[10,3] = sprite_get("fspecial_wavetop");
wren_wave_spr[10,4] = sprite_get("fspecial_wavegen");
#endregion
#region // USpecial
wren_wave_spr[11,0] = sprite_get("uspecial_wave3");
wren_wave_spr[11,1] = sprite_get("uspecial_wave2");
wren_wave_spr[11,2] = sprite_get("uspecial_wave1");
wren_wave_spr[11,3] = sprite_get("uspecial_wavetop");
wren_wave_spr[11,4] = sprite_get("uspecial_wavegen");
#endregion
#region // USpecial EX
wren_wave_spr[12,0] = sprite_get("uspecialex_wave3");
wren_wave_spr[12,1] = sprite_get("uspecialex_wave2");
wren_wave_spr[12,2] = sprite_get("uspecialex_wave1");
wren_wave_spr[12,3] = sprite_get("uspecialex_wavetop");
wren_wave_spr[12,4] = sprite_get("uspecialex_wavegen");
#endregion
#region // Taunt
wren_wave_spr[13,0] = sprite_get("taunt_wave3");
wren_wave_spr[13,1] = sprite_get("taunt_wave2");
wren_wave_spr[13,2] = sprite_get("taunt_wave1");
wren_wave_spr[13,3] = sprite_get("taunt_wavetop");
wren_wave_spr[13,4] = sprite_get("taunt_wavegen");
#endregion
#endregion