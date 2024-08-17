hurtbox_spr = sprite_get("kirbo_hurtbox");
crouchbox_spr = sprite_get("kirbo_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 48;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .3;
dash_anim_speed = .175;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 7;
dash_speed = 6.25;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 9;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 3;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 36;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .5;
hitstun_grav = .45;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 5;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 5;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("sfx_landinglag");
landing_lag_sound = sound_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("sfx_jump");
djump_sound = sound_get("djump");
air_dodge_sound = sound_get("sfx_airdodge");

explosion_small = hit_fx_create(sprite_get("stock_explosion"), 32);
explosion_big = hit_fx_create(sprite_get("stock_explosion_large"), 32);
fx_groundcracks = hit_fx_create(sprite_get("groundcracks"), 20);
fx_groundcracks2 = hit_fx_create(sprite_get("groundcracks2"), 20);
dspecial2_trail = hit_fx_create(sprite_get("dspecial2_trail"), 15);
uspecial_toot = hit_fx_create(sprite_get("uspecial_vfx"), 8);

set_victory_theme(sound_get("victory_kirbo"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

///Character Specific Variables
groundcracks = noone;

nspecial_hold = 0;
nspec_grabbed = false;
fspec_grabbed = false;
grab_timer = 0;
grabbedtarget = noone;
grabbedtarget2 = noone;
consumed_proj = false;
proj_damage = 1;
game_time = 0; //checks get_gameplay_time() so we don't need to call the function all the time
plat_speed = 0.2; //controls the respawn platform's animation speed without it relying on the player's animation

divine_charge = 0;
shown_divine_charge = 0;
divine_charge_max = 1200;
dspecial_hold = 0;
temp_divine_charge = 0;
charged = 0;
charge_sound_timer = 0;
charge_sound_trigger = 0;
default_height = char_height;

intro_y = y - 1000
intro_x = x - 1040

var color = get_player_color(player)
yellow_color = make_color_rgb(get_color_profile_slot_r(color, 3),get_color_profile_slot_g(color, 3),get_color_profile_slot_b(color, 3))

//Support
Hikaru_Title = "Something About";
arena_title = "Something About";
battle_text = "Do you know where you're going when you die?"
ncode1 = "First you draw a circle, then you dot the eyes,"
ncode2 = "Add a great big smile and Presto!"
ncode3 = "Its Kirbo!"
steve_death_message = "Steve was enlightened";
link_spear_drop = 7;
TCG_Kirby_Copy = 2;