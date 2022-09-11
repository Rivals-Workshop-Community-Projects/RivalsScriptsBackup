taunt_looped = false;

watering_time = 0;
valid_planting_spot = true;
time_to_water = 9;
touching_grass = false;
can_water = false;

windbox_speed = 1.5;
max_windbox_speed = 3;

grass_lifetime = 420;

boosted = false;
strong_charge_modifier = 3;

grass_range = 62;
grass_range_boost = 50;

ignore_stage_data = true;
placed_at_least_one = false;

fspecial_charge = 0;
fspec_hsp = 11;
fspec_vsp = -4.5;
fspec_bounce_hsp = 6;
fspec_bounce_vsp = -8;
fspec_boosted_charge_speed = 1.7;

time_between_levels = 14;
level_1_hsp = 8.5;
level_2_hsp = 10.5;
level_3_hsp = 12.5;
level_4_hsp = 14;
level_5_hsp = 15.5;

fspec_bounce_cooldown = 10;

auto_cancel = false;
should_attack = false;

flash_timer = 0;

boomerang_speed = 0.15;
nspec_cooldown = 40;

flower_crown_effect_length = 150;
time_between_damage = 40;

tp_speed = 24;
tp_dir = 0;
uspec_land_cancel = false;

didnt_leave_ground = false;

uspec_angle = 45;
uspec_cancel_lag = 12;
uspec_cancel_lag_divisor = 1.75;
uspec_boost_lag = floor(uspec_cancel_lag/uspec_cancel_lag_divisor);

headspace_outline = true;

//dream collection kirby support
TCG_Kirby_Copy = 7;

//steve death message
steve_death_message = "Steve became toast";

petal_small = hit_fx_create( sprite_get("hfx_petal_small"), 24 );
petal_big = hit_fx_create( sprite_get("hfx_petal_big"), 24 );
petal_tipper = hit_fx_create( sprite_get("hfx_petal_bigtip"), 24 );

if (get_player_color(player) == 3 || get_player_color(player) == 4 || get_player_color(player) == 6 || get_player_color(player) == 7){
    headspace_outline = false;
}

if (get_player_color(player) == 9 || get_player_color(player) == 10 || get_player_color(player) == 11 || get_player_color(player) == 12 || get_player_color(player) == 15){
    headspace_outline = false;
}

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .15;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .45;
moonwalk_accel = 1.3;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 9.5;
leave_ground_max = 12; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4.5; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 12.5; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .035; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 3;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_may");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
