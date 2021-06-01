hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("cr_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//other stuff
set_victory_bg(sprite_get("victorybg"));
set_victory_theme(sound_get("vict_cos"));

char_height = 50;
idle_anim_speed = .08;
crouch_anim_speed = .15;
walk_anim_speed = .15;
dash_anim_speed = .34;
pratfall_anim_speed = 0.15;

walk_speed = 10;
walk_accel = 0.2;
walk_turn_time = 9;
initial_dash_time = 12;
initial_dash_speed = 1;
dash_speed = 1;
dash_turn_time = 12;
dash_turn_accel = 2.2;
dash_stop_time = 0;
dash_stop_percent = 1; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.1;
moonwalk_accel = 2.4;

jump_start_time = 5;
jump_speed = 6.5;
short_hop_speed = 3.5;
djump_speed = -1;
djump_accel = -1.2;
djump_accel_start_time = 4;
djump_accel_end_time = 15;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 9; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 7; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .72; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 28; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 4.5;
walljump_vsp = 8.5;
walljump_time = 12;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 10; //fast fall speed
gravity_speed = .2;
hitstun_grav = .45;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 7;
wave_land_adj = 0.85; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 12;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 0;
dodge_active_frames = 0;
dodge_recovery_frames = 0;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 1;
techroll_speed = 7;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 1;	
roll_forward_max = 7; //roll speed
roll_backward_max = 7;

land_sound = asset_get("sfx_birdflap");
landing_lag_sound = asset_get("sfx_birdflap");
waveland_sound = asset_get("sfx_waveland_wra");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_clairen_uspecial_rise");
air_dodge_sound = asset_get("sfx_quick_dodge");

vfx_space_small = hit_fx_create( sprite_get("space_fx"), 20)
vfx_space_extra_small = hit_fx_create( sprite_get("space_extra_small"), 16)
vfx_star_trail = hit_fx_create( sprite_get("star_fx"), 20)
vfx_airdodge_fx = hit_fx_create( sprite_get("airdodge_fx"), 20)

cosmic_whale = sprite_get("cosmic_whale")
grav_jump_protection = 0;
//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//other vars
momentum = 0
nspecial_used = false
orbitting = false
blackhole = noone
orbit_timer = 0
orbit_ending_timer = 0
old_gravity_speed = gravity_speed
old_hitstun_grav_speed = hitstun_grav
shield_size = 1
star = noone
kazot_playing = false
spot_dodge = false
jetpack_vsp = 0
jetpack_hsp = 0
need_remove_hover_sound = false
jetpack = noone
crouchsoundtimer = 40;
djumptimermax = 15;
djumptimer = 0;
arcadeswitch = 1
//if you're reading this im so sorry
arcader1l = 147
arcadeg1l = 213
arcadeb1l = 244
arcader1d = 95
arcadeg1d = 171
arcadeb1d = 173

arcader2l = 140 
arcadeg2l = 222
arcadeb2l = 94
arcader2d = 115
arcadeg2d = 150
arcadeb2d = 55

arcader3l = 217
arcadeg3l = 135
arcadeb3l = 205
arcader3d = 137
arcadeg3d = 82
arcadeb3d = 145

col_r = get_color_profile_slot_r( get_player_color(player), 0);
col_g = get_color_profile_slot_g( get_player_color(player), 0);
col_b = get_color_profile_slot_b( get_player_color(player), 0);






//COMPATIBILITY

//miiverse
miiverse_post = sprite_get("miiverse");
sprite_change_offset("miiverse", 60, 30);

/*//Dedede
arena_title = "A PUN-ny guy";

//kirby
swallowed = 0;
kirbyability = 16;

//Wall-E
walle_taunt_sound = sound_get("mus_moo");
walle_taunt_type = 1;

//PS2
pkmn_stadium_front_img = sprite_get("cheese_front_sprite");
pkmn_stadium_back_img = sprite_get("cheese_back_sprite");
*/

// init.gml

reversed = 0;